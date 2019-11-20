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
(defparameter *non-vertical-orientations* '("left" "right" "behind" "front"))
(defparameter *ec-relations* '("support" "on" "touch"))
(defparameter *all-possible-relations* '("on" "support" "touch" "left" "right" "behind" "front"))

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

;;; For now, dealing only with two-block situations: assuming that
;;; these heuristics will leave us with only a single option as the
;;; "ground". I.e., we are not dealing wth "between" situations, where
;;; the focus object is left of something and right of something else,
;;; or supporting something and supported by something else.

;;; The test situation contains a red, green and blue block. Red is
;;; left of (and touching) blue and blue is left of green.

;;; With red as the focus, the filters should pick out "blue" as the
;;; ground and return:
;;; "The red bloc is left of and touching the blue block."

;;; With blue as the focus, the filters should pick out red as the
;;; ground (even though blue is between red and green, it's not
;;; touching green) and return:
;;; "The blue block is right of and touching the red block."

;;; With green as the focus, the filters should pick blue as the
;;; ground and return:
;;; "The green block is right of the blue block."

#| The list function is redundant if you've got literals
like these. Enclosing something in parentheses creates a list.
What the list means -- like is it a function call or just
an enumeration -- is a matter of the context in which the list appears
|#
(defparameter *R*
  '(("left" "red" "green")
    ("left" "blue" "green") 
    ("left" "red" "blue")
    ("touch" "red" "blue")
    ("right" "green" "blue") 
    ("right" "green" "red")
    ("right" "blue" "red")
    ("touch" "blue" "red")))

(defparameter *O* '("red" "blue" "green"))
(defparameter *focus* "red")

(defun execute-planner ()
"Main method for generating a description of a situation. Updates the parameters of
*tp-parameters* as various facts about the situation are unconvered/considered, 
incrementally building up the derivation tree."
  (let ((fun 'car))
   (funcall fun *order-of-operations*)
   (when *order-of-operations*
    (setf *order-of-operations* (cdr *order-of-operations*))
    (execute-planner))))

(defun ex-planner ()
  (flet ((pr (string &rest args)
           ;; replace with real TR traces when it's clearer what to trace
           (apply #'trace-msg string args)))
    (let ((step (pop *order-of-operations*)))
      ;; get the next thing to do
      (if step
        ;; It's like we're taking this step by passing it to the REPL
        (then
          (pr "About to execute ~a" step)
          (eval step)
          (ex-planner))
        (else
          ;; nothing to do. It's likely that we're done
          (let ((dtn (tp-get-dt)))
            (if dtn
              (m::say dtn)
              (break "no dtn?"))))))))

(defun tp () ;; saves typing
  (reinitialize-text-planner)
  (ex-planner))

;;;--------------------------------------------------
;;; Helpers
;;;-----------------------------------------wp---------

#| The mumble package has a short form -- m --  Similarly the sparser package
 can be abbreviated to sp  |#

#| The other option is to shift package in the middle of the file.
This set of helpers has a plethora of package qualified symbols.
You could start the section with (in-package :mumble) and make them
all redundant.  The mumble test file that this is largely cribing from
is all the in mumble package.

Doing that would also make let you avoid the overly complicated
(and therefor more prone to mistakes and harder to maintain) way
you've been getting the symbol for the parameter. 

It would have a further benefit -- the symbols that name parameters
and such only have the values we want if they're in the mumble package.
E.g.
sp> (in-package :mumble)
#<package "MUMBLE">
m> (parameter-named 'o)
#<parameter o>
m> (parameter-named 'sp::o)
nil
m> (parameter-named 'sp::prep-object)
nil
|#


(defun support-something (something)
  (let ((dtn (m::make-dtn :resource (m::verb "support" 'svo)
                          :referent 'support-something)))
    (m::make-complement-node 'm::o something dtn)
    dtn))

(defun realize-orientation (orientation something)
  (cond
    ((string= orientation "left") (left-of-something something))
    ((string= orientation "right") (right-of-something something))
    ((string= orientation "front") (front-of-something something))
    (t (back-of-something something))))

(defun left-of-something (something)
  (let ((dtn (m::make-dtn :resource (m::phrase-named 'm::of-genitive)
                          :referent 'of-something)))
    (m::make-complement-node (m::name (m::parameter-named 'm::p)) something dtn)
    (m::make-adjunction-node (m::adjectivial-modifier "left") dtn)
    dtn))

(defun right-of-something (something)
  (let ((dtn (m::make-dtn :resource (m::phrase-named 'm::of-genitive)
                          :referent 'of-something)))
    (m::make-complement-node (m::name (m::parameter-named 'm::p)) something dtn)
    (m::make-adjunction-node (m::adjectivial-modifier "right") dtn)
    dtn))

;;;"behind" causing trouble right now
(defun back-of-something (something)
  (let ((dtn (m::make-dtn :resource (m::phrase-named 'm::of-genitive)
                          :referent 'of-something)))
    (m::make-complement-node (m::name (m::parameter-named 'm::p)) something dtn)
    (m::make-adjunction-node (m::adjectivial-modifier "back") dtn)
    dtn))

(defun front-of-something (something)
  (let ((dtn (m::make-dtn :resource (m::phrase-named 'm::of-genitive)
                          :referent 'of-something)))
    (m::make-complement-node (m::name (m::parameter-named 'm::p)) something dtn)
    (m::make-adjunction-node (m::adjectivial-modifier "front") dtn)
    dtn))

;;;taken from sparser/test/mumble.lisp
(defun conjoin (a b)
  (let ((conj (m::make-dtn :referent `(and ,a ,b)
      :resource (m::phrase-named 'm::two-item-conjunction))))
    (m::make-complement-node (m::parameter-named 'm::one) a conj)
    (m::make-complement-node (m::parameter-named 'm::two) b conj)
    conj))

(defun orientation-and-connection (direction something)
  (let ((orientation (m::present-tense (m::make-dtn :resource (m::phrase-named 'm::of-genitive) :referent 'of-something)))
        (connection (m::present-tense (m::make-dtn :resource (m::verb "touch" 'svo) :referent 'touch-something))))
    (m::make-adjunction-node (m::adjectivial-modifier direction) orientation)
    (m::make-complement-node 'm::p something orientation)
    (m::make-complement-node 'm::o something connection)
    (conjoin orientation connection)))


;;;--------------------------------------------------
;;; Functions, in order of execution, that incrementally build the representation
;;;--------------------------------------------------

(defun initialize-givens (R O focus)
  "Initializes the parameters of the *tp-parameters* object with given information."
  ;;setting up all the given information
  (tp-set-objects O)
  (tp-set-focus focus)
  (tp-set-r R))

(defun filter-focus-relations ()
  "Filters all the relations in :R slot of *tp-parameters* to only
   contain those that keep arg in focus."
  (let ((arg (tp-get-focus)))
    (tp-set-relations 
     (remove-if-not #'(lambda (x) (equal (cadr x) arg))
                    (tp-get-R)))))

#| Lisp programmers fall into two camps as to whether they implement simple
data structures with lists, selecting the field they want using car and cadr
(or equivalently first and second), or they use structs (or even classes) so that
every field has a name that's evokative of its function.
  Rusty likes lists. I like classes. Alex liked structs for the uncomplicated things.

When you're getting the real object and relation data over the wire via the facilitator
everything will start out as a long string of characters and will need to be
read out (parsed, for small values of parse) into a representation of object
and their relationships. That's when you can see what you want as the representation
and make a choice. 
|#


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
    (some #'(lambda (x)
              (and (member `(,relation ,x ,arg2) r :test #'equal) 
                   (member `(,relation ,arg1 ,x) r :test #'equal)))
          (tp-get-objects))))

(defun remove-redundancies ()
  "Given a set of relations between f & g, removes any relations are subsets of other
  relations, mainly 'touch' and 'support' or 'on'."
  (if (is-in-vertical-relation?)
    (remove-if #'ec-rel? (tp-get-relations))))

;;called by remove-redundancies
(defun ec-rel? (rel)
  "Determines whether or not f & g participate in an EC relationship."
  (member rel *ec-relations* :test #'string=))

;;called by remove-redundancies
(defun is-in-vertical-relation? ()
  "Determines whether f & g are in a vertical relationship (i.e. 'support' or 'on')."
  (some #'(lambda (x) (or (equal (first x) "support")
                          (equal (first x) "on")))
        (tp-get-relations)))


(defun generate-focus-node ()
  "Generates a dtn from the f(ocus) object."
  (let* ((block (m::noun "block"))
         (dtn (m::make-dtn :resource block :referent 'a-block))
         (color (m::adjectivial-modifier (tp-get-focus))))
    (m::make-adjunction-node color dtn)
    (m::always-definite dtn)
    (tp-set-focus dtn)))

;; returns the object(s) with which arg has the most relations in R
;; perhaps not a useful heuristic when the others are combined
; (defun has-most-relations-with (arg)
;   (let ((counts (mapcar #'(lambda (x) (cons x (count x *R* :key #'caddr :test #'equal))) *O*)))
;     (car (alexandria::extremum counts #'> :key #'cdr))))

(defun generate-ground-node ()
  "Generates a dtn from the g(round) object.
  For now, assuming there's only one possible ground object.
  As a result, we just take the second object in the first ordered pair 
  in our filtered list of relations."
 (let* ((block (m::noun "block"))
      (dtn (m::make-dtn :resource block :referent 'the-block))
      (color (m::adjectivial-modifier (third (first (tp-get-relations))))))
    (m::make-adjunction-node color dtn)
    (m::always-definite dtn)
      (tp-set-ground dtn)))

;;returns passivized, or otherwise alternate constructions, for a given relation
;;i.e. 
; (defun get-alternate-realizations (rel)
;   (:method ((rel string))
;     (let ((r (category-named rel)))

;   (:method ((rel relation))

;;called by combine-relations-into-predicate
(defun non-vertical-orientation? ()
  "Determines whether f and g are in an orientation that isn't vertical (i.e. left, right, front, back)"
  (some #'(lambda (x) (member (first x) *non-vertical-orientations* :test #'string-equal)) (tp-get-relations)))

;; called by combine-relations-into-predicate
(defun is-ec? ()
   (some #'(lambda (x) (member (first x) *ec-relations* :test #'string=)) (tp-get-relations)))


(defun combine-relations-into-predicate ()
  (let ((r (tp-get-relations))
        (ground (tp-get-ground)))
    (cond
      ((is-in-vertical-relation?)
       ;; in this case we only have one applicable predicate -
       ;; 'support' or 'on' -- but could be realized in multiple ways
       (if (eq (first (first r) "on"))
         (on-something ground)
         (support-something ground)))
      ((is-ec?)
        ;; in this case we need a combined representation
       (orientation-and-connection (first (non-vertical-orientation?)) ground))
      (t (let ((direction (first (first r))))
           ;; standalone direction, not EC: left, right, front, behind?
           (realize-orientation direction ground))))))

(defun build-realization ()
  "Builds the final dtn from focus and predicate."
  (let ((dtn (m::present-tense (m::make-dtn :resource  (m::phrase-named  'm::s-be-comp)
                          :referent 'copular-predication))))
    (m::make-complement-node (m::parameter-named 'm::s) (tp-get-focus) dtn)
    (m::make-complement-node (m::parameter-named 'm::c) (combine-relations-into-predicate) dtn)
    (tp-set-dt dtn)))

;;;-------------------------

;;; Order of Operations
;;;-------------------------

#| Your (backquote (quote ...)) seems to be a mystical cargo culting (I needed that before, so I probably
need it now too). The backquote doesn't do any work unless there a comma (embedded eval)
somewhere in the list that you're backquoting. None in here, so a regular quote will 
work fine.  Also I moved the list into a one-item-per-line form because it was much
easier for me to scan and get a sense of the scope of the operations
|#

(defparameter *order-of-operations*
  '((initialize-givens *R* *O* *focus*)
    (filter-focus-relations)
    (filter-for-transitivity)
    (remove-redundancies)
    (generate-focus-node) 
    (generate-ground-node)
    (build-realization))
  "The order of operations for the above functions")

(defun reinitialize-text-planner ()
  ;; this will have been depleted
  (setq *order-of-operations*
        '((initialize-givens *R* *O* *focus*)
          (filter-focus-relations)
          (filter-for-transitivity)
          (remove-redundancies)
          (generate-focus-node) 
          (generate-ground-node)
          (build-realization)))
  ;; make a clean one
  (setq *tp-parameters* (make-instance 'tp-parameters)))

