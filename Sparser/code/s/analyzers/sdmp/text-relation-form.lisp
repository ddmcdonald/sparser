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

(defvar *text-relation-top-initialized* nil
  "Flag to do things we might do in-line in the text-relation-class
   file")

(defmacro def-text-relation (name supercs &rest key-arg-pairs)
  `(def-text-relation/expr ',name ',supercs
     ,@(quote-every-second-one key-arg-pairs)))

(defun def-text-relation/expr (name names-of-supercs
                               &key doc
                                    args
                                    slots
                                    action
                                    )
  (unless *text-relation-top-initialized*
    (initialize-top-text-relations)
    (setq *text-relation-top-initialized* t))
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
      ;; come in as simple strings
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
  (let* ((class-name (tr-class-name tr))
         (supercs (tr-super-classes tr))
         (superc-names
          (loop for name in supercs
            collect (tr-class-name name)))
         (slots (tr-class-slots tr)))      

    (let ((form `(defclass ,class-name ,superc-names
                   ,slots)))
      (let* ((the-class (eval form))
             (its-name (class-name the-class)))
        (setf (tr-class tr) its-name)
        its-name))))

