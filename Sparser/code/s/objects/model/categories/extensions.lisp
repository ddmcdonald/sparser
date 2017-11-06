;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "extensions"
;;;   Module:  "objects;model:categories:"
;;;  version:  

;; Initiated 10/24/13 to add extensions motivated by C3.
;; 8/12/15 Giving it some real flesh. 

(in-package :sparser)

;;;----------------------------
;;; restrictions on variables
;;;----------------------------

(defun handle-variable-restrictions (category restrictions)
  "Called from decode-category-parameter-list.
   A restriction is expressed as a pair of variable name
     and value restriction given in the usual form.
   A category can not 'restrict' one of its own variables.
     That doesn't make sense. It has to be inherited from one of
     its supercategories (frequently a mixin).
   We implement this by creating a new variable,
     with the same name as the inherited one (which we record),
     but with this new value restriction.
   The new variables are added to the slots field of the category
     after any variables that the category has already defined.
   We add a tag to the old variable(s) -- :restricts -- and set
     it to the new variable(s). On the category we set the
     property :restrictions to the list of the new variables."

  (flet ((def-restriction (restriction)
           (let ((var-name (car restriction))
                 (exp (cadr restriction)))
             (when (find-variable-in-category var-name category)
               (error "~a is a local variable bound by ~a~
                      ~%It does not make any sense to 'restrict' ~
                      a variable that is defined by the category."
                      var-name category))
             (let ((upper-var
                    (find-variable-for-category var-name category)))
               (unless upper-var
                 (error "None of the super categories of ~a ~
                         define a variable named ~a."
                        category var-name))

               ;;/// Should we check that this restriction is more
               ;; specific than the restriction its inheriting from?
               (let* ((restriction 
                       (resolve-variable-restriction exp))
                      ;; see find/make-lambda-variable-for-category
                      (new-var
                       (make-lambda-variable
                        :name var-name
                        :value-restriction  restriction
                        :category category)))
                 (setf (get-tag :restricts new-var) upper-var)
                 new-var)))))

    (let ((restriction-variables
           (loop for r-exp in restrictions
             collect (def-restriction r-exp))))
      ;; Save the restriction expression
      ;;/// substitute real variables for names
      (setf (get-tag :restrictions category) restrictions)
      
      ;; Add in the new variables
      (setf (cat-slots category)
            (append (cat-slots category)
                    restriction-variables))

      restriction-variables)))


;;;---------------
;;; documentation
;;;---------------

(defun store-category-documentation (category documentation)
  (setf (get-tag :documentation category) documentation))
