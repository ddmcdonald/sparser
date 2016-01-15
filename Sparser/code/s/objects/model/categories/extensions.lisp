;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
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
  ;; called from decode-category-parameter-list
  (push-debug `(,category ,restrictions))
  (flet ((def-restriction (restriction)
    #| A restriction is expressed as a pair of variable name
       and value restriction given in the usual form. |#
           (let ((var-name (car restriction))
                 (exp (cadr restriction)))

    #| A category cannot 'restrict' on of its own variables.
       That doesn't make sense. It has to be inherited from one of
       its supercategories (freequently a mixin). |#
             (when (find-variable-in-category var-name category)
               (push-debug `(,category ,restrictions))
               (error "~a is a local variable bound by ~a~
                      ~%It does not make any sense to 'restrict' ~
                      a variable that is defined by the category."
                      var-name category))
             (let ((upper-var
                    (find-variable-for-category var-name category)))
               (unless upper-var
                 (push-debug `(,category ,restrictions))
                 (error "None of the super categories of ~a ~
                         define a variable named ~a."
                        category var-name))

               ;;/// Should we check that this restriction is more
               ;; specific than the restriction its inheriting from?
               (let* ((restriction 
                       (resolve-variable-restriction exp))

    #| So we can implement this by creating a new variable,
       with the same name as the inherited one (which we record),
       but with this new value restriction. |#
               ;; see find/make-lambda-variable-for-category
                      (new-var
                       (make-lambda-variable
                        :name var-name
                        :value-restriction  restriction
                        :category category)))
                 (setf (get-tag :restricts new-var) upper-var)
                 new-var)))))

#|  One complication is with anything that uses the set of
slots on the category as an easy saturation test, but since
that's a naisent idea subject to change, and because we'll
mark the category and the new variable to record their provinance
it's not a deal breaker. |#

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


  ;; create the store
  ;; When the category is C, the restriction on variable V is R


;;;---------------
;;; documentation
;;;---------------

(defun store-category-documentation (category documentation)
  (setf (get-tag :documentation category) documentation))
