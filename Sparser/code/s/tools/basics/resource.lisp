;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "resource"
;;;    Module:   "tools:basics"
;;;   Version:   September 2013

;; initiated 7/15/13 to provide a general facility for automating
;; the construction and management of resources. 9/17/13 Got it to
;; turn over and do useful tings 

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


(defun allocate-next-instance (r) ;; make a method on subtypes of resource
  (let* ((index (incf (instance-counter r)))
         (i (nth index (resource-store r))))
    ;;/// initalize ???
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

