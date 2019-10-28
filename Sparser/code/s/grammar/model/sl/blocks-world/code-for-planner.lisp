;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2019 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "code-for-planner"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  October 2019

(in-package :sparser)

;;;--------------------------------------------------
;;; Given, static parameters that will be initially set and then not changed
;;;--------------------------------------------------

(defvar *R* "The set of all relations in the situation")
(defvar *O* "The set of all objects in the situation")
(defvar *focus* "The object in focus")

;;; some useful constants, types of relations, etc.
(defparameter *horizontal-orientations* (list "left" "right"))
(defparameter *ec-relations* (list "support" "on"))
(defparameter *all-possible-relations* (list "on" "support" "touching" "left" "right" "behind" "front"))

;;;--------------------------------------------------
;;; Sequester parameters inside a tailored structure
;;;--------------------------------------------------

(defvar *tp-parameters* nil
  "Set by instantiate-tp-parameters to an instance of the dynamically
   constructed tp-parameters class. Holds the values of the state
   parameters that govern the text planner's operation. All the 
   constructed get and set methods reference the current value of
   this variable. Resetting or binding this variable to an instance
   with a different set of values for the parameters will transparently
   change the system's behavior, or could be saves to record
   experiments. Encapsulating all the global state parameters in 
   a structure like this means that this code is reentrant.")

(defparameter *tp-parameter-spec*
  '(;; (slot "doc")
    (dt "The derivation tree we're working on")
    (focus "Identifiers the block (if any) that is in focus")
    (ground "Identifies the block(s) if any that will serve as the ground in the eventual realization")
    (relations "The set of all *currently pertinent* relations to the computation")
    (R "The set of all spatial relations at play in the situation")
    (objects "The set of all objects involved in the situation")
    )
  "A schema that is used to define the state parameters and any other
   scrachpad information the text planner needs.")

(defmacro instantiate-tp-parameters ()
  "Reads the *tp-parameter-spec* to dynamically define a class.
   Takes in the given information (set of relations, objects, focus) and
   stores them in variables (to later be stored in *tp-parameters*).
   Sets *tp-parameters* to an empty instance of the class 
   (// maybe add the date as a name?) and creates get and set
   methods for each parameter. Note that these methods have one less
   argument than they usually would since they are written as
   slot accessor on the instance."
  (declare (special *tp-parameter-spec* *tp-parameters*))
  (flet ((getter-name (slot-name)
           (intern (string-append '#:tp-get- slot-name)
                   (find-package :sparser)))
         (setter-name (slot-name)
           (intern (string-append '#:tp-set- slot-name)
                   (find-package :sparser))))
    
    (let* ((parameter-list *tp-parameter-spec*)
           (slot-expressions ; integrated into the defclass form
            (loop for triple in parameter-list
               as slot-name = (first triple)
               as doc = (second triple)
               collect `(,slot-name
                         :documentation ,doc)))
           (getter-functions
            (loop for triple in parameter-list
               as slot-name = (first triple)
               as getter-name = (getter-name slot-name)
               collect
                 `(defgeneric ,getter-name ()
                    (:method ()
                      (declare (special *tp-parameters*))
                      (slot-value *tp-parameters* ',slot-name)))))
           (setter-functions
            (loop for triple in parameter-list
               as slot-name = (first triple)
               as setter-name = (setter-name slot-name)
               collect
                 `(defgeneric ,setter-name (value)
                    (:method ((value T))
                      (declare (special *tp-parameters*))
                      (setf (slot-value *tp-parameters*',slot-name)
                            value)))))
           (class-form
            `(defclass tp-parameters ()
               ,slot-expressions)))
      
      (let ((tp-class (eval class-form)))
        (setq *tp-parameters* (make-instance tp-class))
        `(progn ,@getter-functions ,@setter-functions)))))

(instantiate-tp-parameters)

;;;--------------------------------------------------
;;; Simple test situation for debugging
;;;--------------------------------------------------

;;; For now, dealing only with two-bloc situations: assuming that these heuristics will 
;;; leave us with only a single option as the "ground". I.e., we are not dealing wth "between" 
;;; situations, where the focus object is left of something and right of something else, or 
;;; supporting something and supported by something else. 

;;; The test situation contains a red, green and blue block. Red is left of (and touching) blue and blue is left
;;; of green. 
;;; With red as the focus, the filters should pick out "blue" as the ground and return:
;;; "The red bloc is left of and touching the blue block."
;;; With blue as the focus, the filters should pick out red as the ground (even though blue is between red and
;;; green, it's not touching green) and return:
;;; "The blue block is right of and touching the red block."
;;; With green as the focus, the filters should pick blue as the ground and return:
;;; "The green block is right of the blue block."

(defparameter *R* (list (list "left" "red" "green") (list "left" "blue" "green") 
  (list "left" "red" "blue") (list "touching" "red" "blue") (list "right" "green" "blue") 
  (list "right" "green" "red") (list "right" "blue" "red") (list "touching" "blue" "red")))

(defparameter *O* (list "red" "blue" "green"))
(defparameter *focus* "red")

(defun execute ()
"Main method for generating a description of a situation. Updates the parameters of
*tp-parameters* as various facts about the situation are unconvered/considered, 
incrementally building up the derivation tree."
  (let ((fun 'car))
   (funcall fun *order-of-operations*)
   (when *order-of-operations*
    (setf *order-of-operations* (cdr *order-of-operations*))
    (execute))))


;;;--------------------------------------------------
;;; Functions, in order of execution, that incrementally build the representation
;;;--------------------------------------------------

(defun initialize-givens (R O focus)
  "Initializes the parameters of the *tp-parameters* object with given information."
  ;;setting up all the given information ;;
  (tp-set-dt (mumble::make-dtn :referent (sp::category-named 'be))) ;; creating a copular clause dt
  (tp-set-objects O)
  (tp-set-focus focus)
  (tp-set-r R))

(defun filter-focus-relations ()
  "Filters all the relations in :R slot of *tp-parameters* to only contain those that keep arg in focus."
  (let ((arg (tp-get-focus)))
 (tp-set-relations 
  (remove-if-not #'(lambda (x) (equal (cadr x) arg)) (tp-get-R)))))

(defun filter-for-transitivity ()
  "Filters :relations slot of *tp-parameters* for relations that are not true by transitivity."
   (tp-set-relations (remove-if #'true-by-transitivity (tp-get-relations))))

;;called by filter-for-transitivity
(defun true-by-transitivity (rel)
  "Given a relation between f and g, determines whether this relationship is only 'true by
  transitiviy' and thus not worth realizing- i.e. if (left f b) and (left b g) are in R, then
  (left f g) is true by transitivity. Used to filter :relations slot of *tp-parameters*."
  (let ((relation (car rel))
        (arg1 (cadr rel))
        (arg2 (caddr rel))
        (r (tp-get-R)))
        (some #'(lambda (x) (and 
          (member `(,relation ,x ,arg2) r :test #'equal) 
          (member `(,relation ,arg1 ,x) r :test #'equal))) (tp-get-objects))))


(defun remove-redundancies ()
  "Given a set of relations between f & g, removes any relations are subsets of other
  relations, mainly 'touch' and 'support' or 'on'."
  (if (is-in-vertical-relation?)
    (remove-if #'ec-rel? (tp-get-relations))))

;;called by remove-redundancies
(defun ec-rel? (rel)
  "Determines whether or not f & g participate in an EC relationship."
  (equal (first rel) "touching"))

;;called by remove-redundancies
(defun is-in-vertical-relation? ()
  "Determines whether f & g are in a vertical relationship (i.e. 'support' or 'on')."
  (some #'(lambda (x) (or (equal (first x) "support") (equal (first x) "on"))) (tp-get-relations)))

; (defun is-ec? ()
;   "Determines whether or not f & g participate in an EC relationship."
;   (some #'(lambda (x) (equal (first x) "touch") (tp-get-relations))))

(defun generate-focus-node ()
  "Generates a dtn from the f(ocus) object."
 (let* ((block (mumble::noun "block"))
      (dtn (mumble::make-dtn :resource block))
      (color (mumble::adjectivial-modifier (tp-get-focus))))
    (mumble::make-adjunction-node color dtn)
    (mumble::always-definite dtn)
      (tp-set-focus dtn)))

;; returns the object(s) with which arg has the most relations in R
;; perhaps not a useful heuristic when the others are combined
; (defun has-most-relations-with (arg)
;   (let ((counts (mapcar #'(lambda (x) (cons x (count x *R* :key #'caddr :test #'equal))) *O*)))
;     (car (alexandria::extremum counts #'> :key #'cdr))))

(defun generate-ground-node ()
  "Generates a dtn from the g(round) object.
  For now, assuming there's only one possibel ground object.
  As a result, we just take the second object in the first ordered pair 
  in our filtered list of relations."
 (let* ((block (mumble::noun "block"))
      (dtn (mumble::make-dtn :resource block))
      (color (mumble::adjectivial-modifier (third (first (tp-get-relations))))))
    (mumble::make-adjunction-node color dtn)
    (mumble::always-definite dtn)
      (tp-set-ground dtn)))


;;;-------------------------
;;; Order of Operations
;;;-------------------------

(defparameter *order-of-operations* (list (initialize-givens *R* *O* *focus*) (filter-focus-relations)
(filter-for-transitivity) (remove-redundancies) (generate-focus-node) 
(generate-ground-node))
"The order of operations for the above functions")

