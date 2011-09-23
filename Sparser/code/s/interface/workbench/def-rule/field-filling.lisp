;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "field filling"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  June 1995

;; broken out of [define-rule] 4/27.  Tweeked ...6/16

(in-package :sparser)

;;;---------------------------------------
;;; accumulators of the user's selections
;;;---------------------------------------

(defparameter *rdt/lhs-label* nil)
(defparameter *rdt/rhs-left-label* nil)
(defparameter *rdt/rhs-right-label* nil)

(defparameter *rdt/result-category* nil)
(defparameter *rdt/head-line-category* nil)  ;;//actuall a variable
(defparameter *rdt/comp-category* nil)       ;; ditto


(defun initialize-rdt-accumulators ()
  (setq *rdt/lhs-label* nil
        *rdt/rhs-left-label* nil
        *rdt/rhs-right-label* nil
        *rdt/result-category* nil
        *rdt/head-line-category* nil
        *rdt/comp-category* nil))



;;;----------------------------------------------------
;;; wiring the edges view and inspector to fill fields 
;;;----------------------------------------------------

;;--- edges view

(defun wire-edges-table-to-rdt-input-fields ()
  (setq *additional-edge-selection-action*
        'Fill-rdt-field-with-selected-edge))

(defun release-edges-table-from-rdt-input-fields ()
  (setq *additional-edge-selection-action* nil))

(defun fill-rdt-field-with-selected-edge (edge)
  (ccl:set-window-layer *rdt/rule-populating-window* 0)
  (let* ((label (edge-category edge))
         (string
          (etypecase label
            (word
             (format nil "\"~A\"" (word-pname label)))
            ((or referential-category category mixin-category)
             (string-downcase (symbol-name (cat-symbol label))))
            (polyword
             (format nil "\"~A\"" (pw-pname label))))))
    ;(format t "~&~%Filling the current field with:~
    ;         ~%   string = ~A~
    ;         ~%    label = ~A~%~%" string label)
    (fill-rdt-field string label)))


;;--- inspector

(defun wire-inspector-to-rdt-input-fields ()
  (setq *additional-inspector-selection-action*
        'Fill-rdt-field-with-selection-from-inspector))

(defun release-inspector-from-rdt-input-fields ()
  (setq *additional-inspector-selection-action* nil))

(defun fill-rdt-field-with-selection-from-inspector (item)
  (ccl:set-window-layer *rdt/rule-populating-window* 0)
  (etypecase item
    (lambda-variable
     (fill-rdt-field (string-downcase (var-name item))
                     item))
    (referential-category
     (fill-rdt-field (string-downcase (cat-symbol item))
                     item))))




;;;---------------------------------------------------------
;;; common path for filling fields given a string and label
;;;--------------------------------------------------------

(defun fill-rdt-field (string label)

  ;; dispatches off the currently identified field, fills that field
  ;; with the string and sets the corresponding label variable with 
  ;; the label.  Then it moves the state of the tableau onto the
  ;; next case.

  (cond
   ((eq *rdt/input-field-for-selected-edge*  *rdtrpw/rhs/right/input*)
    (ccl:set-dialog-item-text *rdtrpw/rhs/right/input* string)
    (setq *rdt/rhs-right-label* label)
    (ccl:radio-button-push *rdtrpw/rhs/left/radio-button*)
    (rdt/rhs/left-radio-button-action *rdtrpw/rhs/left/radio-button*)) 

   ((eq *rdt/input-field-for-selected-edge*  *rdtrpw/rhs/left/input*)
    (ccl:set-dialog-item-text *rdtrpw/rhs/left/input* string)
    (setq *rdt/rhs-left-label* label)
    (ccl:radio-button-push *rdtrpw/lhs-radio-button*)
    (rdt/lhs-radio-button-action *rdtrpw/lhs-radio-button*))

   ((eq *rdt/input-field-for-selected-edge*  *rdtrpw/lhs-input*)
    (ccl:set-dialog-item-text *rdtrpw/lhs-input* string)
    (setq *rdt/lhs-label* label)
    (push/activate-first-semantic-input-field *rdtrpw/lhs-radio-button*))

   ((eq *rdt/input-field-for-selected-edge*  *rdtrpw/headline-input*)
    (ccl:set-dialog-item-text *rdtrpw/headline-input* string)
    (setq *rdt/head-line-category* label)
    (push/activate-next-semantic-input-field :just-did-the-headline))

   ((eq *rdt/input-field-for-selected-edge*  *rdtrpw/comp-input*)
    (ccl:set-dialog-item-text *rdtrpw/comp-input* string)
    (setq *rdt/comp-category* label)
    (push/activate-next-semantic-input-field :just-did-the-complement))

   ((eq *rdt/input-field-for-selected-edge*  *rdtrpw/result-input*)
    (ccl:set-dialog-item-text *rdtrpw/result-input* string)
    (setq *rdt/result-category* label)
    (push/activate-next-semantic-input-field :just-did-the-result-type)))
  
  (is-rdt-tableau-completely-filled-in?))



(defun push/activate-First-semantic-input-field (button-of-current-field)
  (declare (ignore button-of-current-field))
  (cond
   ((rassoc 'head-line-parameter *rdt/mapping*)
    (ccl:radio-button-push *rdtrpw/headline-radio-button*)
    (rdt/head-line-radio-button-action *rdtrpw/headline-radio-button*))
   ((rassoc 'comp-parameter *rdt/mapping*)
    (ccl:radio-button-push *rdtrpw/comp-radio-button*)
    (rdt/comp-radio-button-action *rdtrpw/comp-radio-button*))
   ((rassoc 'result-parameter *rdt/mapping*)
    (ccl:radio-button-push *rdtrpw/result-radio-button*)
    (rdt/result-radio-button-action *rdtrpw/result-radio-button*))))


(defun push/activate-Next-semantic-input-field (field-just-finished)
  ;; called from Fill-rdt-field to make the move to the next
  ;; semantic option modulo the set of fields defined for this rule schema
  (ecase field-just-finished
    (:just-did-the-headline
     (cond ((rassoc 'comp-parameter *rdt/mapping*)
            (ccl:radio-button-push *rdtrpw/comp-radio-button*)
            (rdt/comp-radio-button-action *rdtrpw/comp-radio-button*))
           ((rassoc 'result-parameter *rdt/mapping*)
            (ccl:radio-button-push *rdtrpw/result-radio-button*)
            (rdt/result-radio-button-action *rdtrpw/result-radio-button*))))

    (:just-did-the-complement
     (when (rassoc 'result-parameter *rdt/mapping*)
       (ccl:radio-button-push *rdtrpw/result-radio-button*)
       (rdt/result-radio-button-action *rdtrpw/result-radio-button*)))

    (:just-did-the-result-type)))





;;;---------------------------------------------
;;; filling fields by directly typing in values
;;;---------------------------------------------

(defmethod view-key-event-handler ((input-box rdtrpw/text-input-box)
                                   char )
  ;(format t "~&~A~%" char)
  (cond ((eq char #\newline)
         (rdtrpw/interpret-typed-chars-as-category))
        ((eq char #\enter)
         (rdtrpw/interpret-typed-chars-as-category))
        (t
         (call-next-method input-box char))))


(defun rdtrpw/label-for-string (string input-box
                                &optional lambda-variable? )
  ;; Called from rdtrpw/Interpret-typed-chars-as-category
  ;; The string is what the user typed into the field. We look up
  ;; the word or category that corresponds to the string. If it's
  ;; a new category we ask for confirmation so that typos are
  ;; minimized.
  (unless (equal string "")
    (if (eq (elt string 0) #\" )
      (interpret-rdtrpw-string-as-word string)
      (if lambda-variable?
        (interpret-rdtrpw-string-as-lambda-variable string input-box)
        (interpret-rdtrpw-string-as-category string input-box)))))

(defun interpret-rdtrpw-string-as-word (string)
  (let ( pname  word )
    (setq pname (subseq string 1))
    (setq pname (subseq pname 0 (- (length pname) 1)))
    (setq word (resolve-string-to-word/make pname))    ;; /// use check
    word ))

(defun interpret-rdtrpw-string-as-category (string input-box)
  (setq *rdtrpw/input-box-being-filled* input-box)
  (let* ((symbol (intern string
                         *category-package*))
         (category (resolve-symbol-to-category symbol)))

    (if category
      category
      (launch-unknown-category-query-dialog string))))

(defun interpret-rdtrpw-string-as-lambda-variable (string input-box)
  ;; We can get here if the user is cycling through the boxes
  ;; by hand rather than by clicking from views.   We interpret the
  ;; string as a lambda variable.  ///Later we can test it for
  ;; compatibility with the reference category.
  (declare (ignore input-box))
  (let* ((symbol (intern string *sparser-source-package*))
         (var (lambda-variable-named symbol)))
    ;; /////// needs a query if it's not defined
    var ))




(defun rdtrpw/Interpret-typed-chars-as-category ()
  (cond
   ((eq *rdt/input-field-for-selected-edge*  *rdtrpw/lhs-input*)
    (setq *rdt/lhs-label*
          (rdtrpw/label-for-string
           (ccl:dialog-item-text *rdtrpw/lhs-input*)
           *rdtrpw/lhs-input*))
    (push/activate-first-semantic-input-field *rdtrpw/lhs-radio-button*)) 

   ((eq *rdt/input-field-for-selected-edge*  *rdtrpw/rhs/left/input*)
    (setq *rdt/rhs-left-label*
          (rdtrpw/label-for-string
           (ccl:dialog-item-text *rdtrpw/rhs/left/input*)
           *rdtrpw/rhs/left/input*))
    (ccl:radio-button-push *rdtrpw/lhs-radio-button*)
    (rdt/lhs-radio-button-action *rdtrpw/lhs-radio-button*))

   ((eq *rdt/input-field-for-selected-edge*  *rdtrpw/rhs/right/input*)
    (setq *rdt/rhs-right-label*
          (rdtrpw/label-for-string
           (ccl:dialog-item-text *rdtrpw/rhs/right/input*)
           *rdtrpw/rhs/right/input*))
    (ccl:radio-button-push *rdtrpw/rhs/left/radio-button*)
    (rdt/rhs/left-radio-button-action *rdtrpw/rhs/left/radio-button*))

   ((eq *rdt/input-field-for-selected-edge*  *rdtrpw/headline-input*)
    (setq *rdt/head-line-category*
          (rdtrpw/label-for-string
           (ccl:dialog-item-text *rdtrpw/headline-input*)
           *rdtrpw/headline-input*))
    (push/activate-next-semantic-input-field :just-did-the-headline))

   ((eq *rdt/input-field-for-selected-edge*  *rdtrpw/comp-input*)
    (setq *rdt/comp-category*
          (rdtrpw/label-for-string
           (ccl:dialog-item-text *rdtrpw/comp-input*)
           *rdtrpw/comp-input*
           :variable ))
    (push/activate-next-semantic-input-field :just-did-the-complement))

   ((eq *rdt/input-field-for-selected-edge*  *rdtrpw/result-input*)
    (setq *rdt/result-category*
          (rdtrpw/label-for-string
           (ccl:dialog-item-text *rdtrpw/result-input*)
           *rdtrpw/result-input*))
    (push/activate-next-semantic-input-field :just-did-the-result-type)))
  
  (is-rdt-tableau-completely-filled-in?))






;;;------------------------------
;;; actions by the Radio Buttons
;;;------------------------------

;; When the button is pushed, make the corresponding field be the
;; field that input will go to. 

(defun rdt/lhs-radio-button-action (lhs-button)
  ;; *rdtrpw/lhs-radio-button*
  (when (ccl:radio-button-pushed-p lhs-button)
    ;(format t "~&lhs button pushed~%")
    (setq *rdt/input-field-for-selected-edge*
          *rdtrpw/lhs-input*)
    (ccl:set-current-key-handler *rdt/rule-populating-window*
                                 *rdtrpw/lhs-input*)))


(defun rdt/rhs/left-radio-button-action (rhs-left/button)
  ;; *rdtrpw/rhs/left/radio-button*
  (when (ccl:radio-button-pushed-p rhs-left/button)
    ;(format t "~&rhs-left button pushed~%")
    (setq *rdt/input-field-for-selected-edge*
          *rdtrpw/rhs/left/input*)
    (ccl:set-current-key-handler *rdt/rule-populating-window*
                                 *rdtrpw/rhs/left/input*)))


(defun rdt/rhs/right-radio-button-action (rhs-right/button)
  ;; *rdtrpw/rhs/right/radio-button*
  (when (ccl:radio-button-pushed-p rhs-right/button)
    ;(format t "~&rhs-right button pushed")
    (setq *rdt/input-field-for-selected-edge*
          *rdtrpw/rhs/right/input*)
    (ccl:set-current-key-handler *rdt/rule-populating-window*
                                   *rdtrpw/rhs/right/input*)))


(defun rdt/head-line-radio-button-action (head-line-button)
  ;; *rdtrpw/headline-radio-button*
  (when (ccl:radio-button-pushed-p head-line-button)
    ;(format t "~&head-line button pushed~%")
    (setq *rdt/input-field-for-selected-edge*
          *rdtrpw/headline-input*)
    (ccl:set-current-key-handler *rdt/rule-populating-window*
                                 *rdtrpw/headline-input*)))


(defun rdt/comp-radio-button-action (comp-button)
  ;; *rdtrpw/comp-radio-button*
  (when (ccl:radio-button-pushed-p comp-button)
    ;(format t "~&comp button pushed~%")
    (setq *rdt/input-field-for-selected-edge*
          *rdtrpw/comp-input*)
    (ccl:set-current-key-handler *rdt/rule-populating-window*
                                 *rdtrpw/comp-input*)))


(defun rdt/result-radio-button-action (result-button)
  ;; *rdtrpw/result-radio-button*
  (when (ccl:radio-button-pushed-p result-button)
    ;(format t "~&result button pushed~%")
    (setq *rdt/input-field-for-selected-edge*
          *rdtrpw/result-input*)
    (ccl:set-current-key-handler *rdt/rule-populating-window*
                                 *rdtrpw/result-input*)))




;;;--------------------------------------------
;;; checking whether enough has been filled in 
;;;   that the mapping could be evaluated
;;;--------------------------------------------

(defun are-rdt-fields-complete? (descriptors)
  (when *rdt/lhs-label*
    (ecase (cadr (member :length-of-rhs descriptors :test #'eq))
      (1
       (when *rdt/rhs-left-label*
         (are-rdt-semantic-fields-complete? descriptors)))
      (2
       (when (and *rdt/rhs-left-label*
                  *rdt/rhs-right-label*)
         (are-rdt-semantic-fields-complete? descriptors))))))


(defun are-rdt-semantic-fields-complete? (descriptors)
  (cond
   ((member :daughter descriptors :test #'eq)
    t )
   ((member :instantiate-individual descriptors :test #'eq)
    (when *rdt/result-category*
      (are-rdt-bindings-complete?
       (cadr (member :binding-spec descriptors :test #'eq)))))
   (t (are-rdt-bindings-complete?
       (cadr (member :binding-spec descriptors :test #'eq))))))
    

(defun are-rdt-bindings-complete? (binding-pairs)
  (if binding-pairs
    (ecase (/ (length binding-pairs) 2)
      (1 
       (or *rdt/head-line-category*
           *rdt/comp-category*))
      (2
       (and *rdt/head-line-category*
            *rdt/comp-category*)))
    t ))

