;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2019 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "code-for-planner"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  October 2019

(in-package :sparser)


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
    )
  "A schema that is used to define the state parameters and any other
   scrachpad information the text planner needs.")

(defmacro instantiate-tp-parameters ()
  "Reads the *tp-parameter-spec* to dynamically define a class.
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

;; (instantiate-tp-parameters)

