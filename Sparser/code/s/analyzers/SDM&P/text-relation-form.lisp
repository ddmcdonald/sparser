;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "text-relation-form"
;;;    Module: "analyzers;SDM&P:
;;;   Version: March 2013

;; Initiated 3/12/13

(in-package :sparser)

;;;------
;;; form
;;;------

(defmacro def-text-relation (name supercs &rest key-arg-pairs)
  `(def-text-relation/expr ',name ',supercs
     ,@(quote-every-second-one key-arg-pairs)))

(defun def-text-relation/expr (name names-of-supercs
                               &key doc
                                    args
                                    slots
                                    action
                                    )
  ;; check the super relations are valid
  (mapcar #'(lambda (symbol)
              (or (text-relation-named symbol)
                  (error "There is no text-relation ~
                          named ~a" symbol)))
          names-of-supercs)
  (let* ((tr-name (canonical-tr-name name))
         (tr (or (text-relation-named name)
                (let ((new-tr (make-instance 'text-relation
                                :name tr-name)))
                  (index-text-relation-type tr-name new-tr)
                  new-tr))))
    ;; The name is fixed, we (re)define everything else
    ;; without trying to be clever
    (when names-of-supercs
      (setf (tr-super-classes tr) names-of-supercs))
    (when doc
      (setf (tr-doc tr) doc))
    (when args
      (setf (tr-arguments tr) args))
    (when slots
      (setf (tr-class-slots tr) slots)
      (let* ((slot-names (mapcar #'car slots))
             (parameters
              (loop for symbol in slot-names
                collect (intern (symbol-name symbol)
                                (find-package :keyword)))))
        (setf (tr-slot-names tr) parameters)))
    (when action
      (setf (tr-action tr) action))

    (make-class-for-text-relation tr)
    tr))
    

;;;----------------------------
;;; class for noting instances
;;;----------------------------

(defun make-class-for-text-relation (tr)
  (let ((class-name (tr-class-name tr))
        (supercs (tr-super-classes tr))

 ;                  collect (tr-class-name name)))
        (slots (tr-class-slots tr)))

    (when (and (slot-boundp tr 'arguments)
               (tr-arguments tr))
      ;; These we count, so we automatically add this
      ;; slot to provide that
      (setq slots
            `((instance-count :type integer :initform 0 
                              :accessor number-of-instances)
              ,@slots)))      

    (let ((form `(defclass ,class-name ,supercs
                   ,slots)))
      (let* ((the-class (eval form))
             (its-name (class-name the-class)))
        (setf (tr-class tr) its-name)
        its-name))))

