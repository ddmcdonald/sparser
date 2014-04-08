;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "resource"
;;;    Module:   "tools:basics"
;;;   Version:   March 2014

;; initiated 7/15/13 to provide a general facility for automating
;; the construction and management of resources. 9/17/13 Got it to
;; turn over and do useful things, but still has loose ends.
;; 3/24/14 Added a facility for automatic the find-or-make setup.

;;;-----------------------------------
;;; Resource of recyclable data types 
;;;-----------------------------------

(defclass resource-specification (named-object)
  ((storage-type
    :initform :recycled-list
    :initarg :storage-type :accessor storage-type
    :documentation "Determines indexing, access, ... methods")
   (access-type
    :documentation "Supplies a way to get one of these by accessing
      the resource itself.")
   (type-name :type symbol :initarg :type-name 
    :documentation "The name of the class (or perhaps struct) that
      we are creating a resource for.")
)
  (:documentation ""))



(defclass resource ()
  ((class :type symbol :initarg :name :accessor resource-class-name
    :documentation "Name of the class this is a resource for")
   (store :type list :accessor resource-store
    :documentation "A kcons list of all the available instances")
   (next-instance :accessor next-instance
    :documentation "A pointer into the store to the next instance
     to use")
   (counter :initform -1 :accessor instance-counter
    :documentation "")
   )
  (:documentation ""))

(defmethod print-object ((r resource) stream)
  (print-unreadable-object (r stream :type t)
    (format stream "~a" (resource-class-name r))))


#| 
The type that we create
It's initialization method
its reclaim method
Its clean method

with a kons list
an init function
  which creates an alloq
the instance need to put itself somewhere that we can get it back 
from, perhaps a global table


That's a pack of methods, so the resource initialization has to 
make them according to the spec given in the class instance
|#

(defun allocate-next-instance (r) ;; make a method on subtypes of resource
  (let* ((index (incf (instance-counter r)))
         (i (nth index (resource-store r))))
    (unless i
      (error "Ran out of ~a. Implement the resource incrementer" r))
    i))

(defun initialize-resource (r) ;; ditto
  (loop for a in (resource-store r)
    do (clear a))
  (setf (instance-counter r) -1)
  r)

(defun next-indexical-name (class-keyword)
  (let* ((r (get-resource class-keyword))
         (n (instance-counter r))) ;; hmmm - interects with allocate
    (let ((pname (string-append (symbol-name (resource-class-name r))
                                "-"
                                n)))
      (intern pname (find-package :sparser)))))
  


(defvar *classname-to-resource* (make-hash-table)
  "Holds the resource information for the class: from a keyword
  based on the class name to an instance of the resource class.
  Accessed by get-resource. Created by make-resource.")

(defun get-resource (keyword)
  (unless (symbolp keyword)
    (error "Argument should be a keyword symbol for the name ~
            of the class"))
  (unless (keywordp keyword)
    (setq keyword (intern (symbol-name keyword)
                          (find-package :keyword))))
  (let ((r (gethash keyword *classname-to-resource*)))
    (unless r
      (error "No resource defined for the class ~a~
            ~%Use define-resource" keyword))
    r))

(defmacro define-resource (class-name 
                           &key count delta)
  `(define-resource/expr ',class-name ,count ,delta))

(defun define-resource/expr (class-name count delta)
  (unless count (setq count 100))
  (unless delta (setq delta 50))
  (unless (symbolp class-name)
    (error "The first argument must be a symbol naming the class"))
  (let ((key (intern (symbol-name class-name)
                     (find-package :keyword)))
        (r (make-instance 'resource :name class-name)))
    (setf (gethash key *classname-to-resource*) r)
    (let ((instances
           ;; These are recycled so can use a conventional
           ;; list otherwise look at allocate-a-rasher-of-psi
           (loop for i from 1 to count
             collect (make-instance class-name :index i))))
      (setf (resource-store r) instances) 
      ;;/// make it circular? with a token at the split?
      (setf (next-instance r) (car instances))
      r)))


(defgeneric clear (object)
  (:documentation "Reinitialize the slots of the object and
    indicate that it is avaiable to (re-)allocate."))

(defmethod clear ((anything t))
  ;; These use call-next-method, so they need a place
  ;; where that chain of calls will stop.
  anything)


;;;-------------------------------
;;; Find-or-make facility creator
;;;-------------------------------

(defun setup-find-or-make (class-name) ;;&key (storage-type :table))
  "Makes a customized table, get function, and find or make function
   for the indicated class. If the class-name was the symbol 'speaker
   then it makes a special variable SPEAKER-TABLE that is bound to
   a hashtable from symbols to instances. Given the symbol that names
   the instance the function GET-SPEAKER will retrieve it. The function
   FIND-OR-MAKE-SPEAKER will make an instance of the speaker class
   with the symbol it takes as an argument. The function CLEAR-SPEAKER
   will reinitialize the table.

   Presumes, but doesn't check, that the class inherits from has-name
   to simplify (by burning in) the initialization parameters of the
   class. "

;  (ecase storage-type ;; alist??
;    (:table))
  (unless (symbolp class-name)
    (error "Class argument should be the symbol that names the class"))
  (let* ((class-string (symbol-name class-name))
         (sparser-package (find-package :sparser))
         (table-name (intern (string-append "*" class-string "-TABLE*")
                             sparser-package))
         (finder-name (intern (string-append "FIND-OR-MAKE-" class-string)
                              sparser-package))
         (getter-name (intern (string-append "GET-" class-string)
                              sparser-package))
         (clear-name (intern (string-append "CLEAR-" class-string)
                             sparser-package)))
    ;; Could return a progn that does all this, but this version
    ;; is easier to incrementally debug
    (let ((table-form `(defvar ,table-name (make-hash-table))))
      (eval table-form))
    (let ((getter-form `(defun ,getter-name (name)
                          (gethash name ,table-name))))
      (eval getter-form))
    (let ((fom-form `(defun ,finder-name (name)
                       (or (,getter-name name)
                           (let ((i (make-instance ',class-name :name name)))
                             (setf (gethash name ,table-name) i)
                             i)))))
      (eval fom-form))
    (let ((clear-form `(defun ,clear-name ()
                         (clrhash ,table-name)) ))
      (eval clear-form))
    class-string))





