;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "case setup"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  May 1995

;; broken out of [define-rule] 4/27.  Tweeked ..5/2

(in-package :sparser)

;;;-----------------------------------------
;;; setting up the rule tableau from schema
;;;-----------------------------------------

;;--- drivers

(defun decode-selected-case-&-populate-rule-tableau ()
  ;; Subsequent calls from rdt/Setup-next-pattern when the button
  ;; is clicked on
  (let ((body (second *rdt/selected-schema-case*))
        (descriptors (third *rdt/selected-schema-case*)))
    (unless body
      (error "Threading bug: no schema has been selected"))
    (unless descriptors
      (error "Threading bug: the schema does not include descriptors"))
    (populate-rule-tableau body descriptors)))


;;--- subroutines

(defun rdtsp (symbol)  ;; "rdt/symbol-print"
  (etypecase symbol
    (symbol (string-downcase (symbol-name symbol)))
    (word (word-pname symbol))))

(defun rdt/pms (substitution-variable collection-global)
  ;; "Push onto the Mapping Schema"
  (push (cons substitution-variable collection-global)
        *rdt/mapping-schema*))



;;;-------------------
;;; setting up syntax
;;;-------------------

(defun populate-rule-tableau (body descriptors)
  ;; Called from Decode-selected-case-&-populate-rule-tableau

  ;; all cfrs have a lhs
  (let* ((lhs-symbol (first body))
         (known-value (rdt/mapping-value lhs-symbol)))
    (if known-value
      (nail-down-rdtrpw-field/lhs known-value)
      (else 
        (ccl:set-dialog-item-text *rdtrpw/lhs-input*
                                  (rdtsp lhs-symbol))
        (rdt/pms (first body) '*rdt/lhs-label*))))
  
  ;; provision for either one or two items on the rhs
  (ecase (cadr (member :length-of-rhs descriptors))
    (1
     (let* ((rhs-symbol (first (second body)))
            (known-value (rdt/mapping-value rhs-symbol)))
       (if known-value
         (nail-down-rdtrpw-field/rhs-left known-value)
         (else
           (ccl:set-dialog-item-text *rdtrpw/rhs/left/input*
                                     (rdtsp rhs-symbol))
           (rdt/pms rhs-symbol '*rdt/rhs-left-label*)
           (ccl:radio-button-push *rdtrpw/rhs/left/radio-button*)
           (ccl:set-current-key-handler *rdt/rule-populating-window*
                                        *rdtrpw/rhs/left/input*)))
       (setq *rdt/input-field-for-selected-edge*
             *rdtrpw/rhs/left/input*)))
    
    (2
     (let* ((rhs-left-symbol (first (second body)))
            (left-known (rdt/mapping-value rhs-left-symbol))
            (rhs-right-symbol (second (second body)))
            (right-known (rdt/mapping-value rhs-right-symbol)))
       (if left-known
         (nail-down-rdtrpw-field/rhs-left left-known)
         (else
           (ccl:set-dialog-item-text *rdtrpw/rhs/left/input*
                                     (rdtsp rhs-left-symbol))
           (rdt/pms rhs-left-symbol '*rdt/rhs-left-label*)))
       (if right-known
         (nail-down-rdtrpw-field/rhs-right right-known)
         (else
           (ccl:set-dialog-item-text *rdtrpw/rhs/right/input*
                                     (rdtsp rhs-right-symbol))
           (rdt/pms rhs-right-symbol '*rdt/rhs-right-label*)))

       (cond
        ((and left-known right-known))
        (left-known
         (ccl:radio-button-push *rdtrpw/rhs/right/radio-button*)
         (ccl:set-current-key-handler *rdt/rule-populating-window*
                                      *rdtrpw/rhs/right/input*))
        (right-known
         (ccl:radio-button-push *rdtrpw/rhs/left/radio-button*)
         (ccl:set-current-key-handler *rdt/rule-populating-window*
                                        *rdtrpw/rhs/left/input*))
        (t
         (ccl:radio-button-push *rdtrpw/rhs/right/radio-button*)
         (ccl:set-current-key-handler *rdt/rule-populating-window*
                                      *rdtrpw/rhs/right/input*))))
     (setq *rdt/input-field-for-selected-edge*
           *rdtrpw/rhs/right/input*)))
  

  (let ((head (cadr (member :head-edge descriptors))))
    (ecase head
      (right-edge
       (ccl:set-dialog-item-text *rdtrpw/rhs/left/description*
                                 "left-edge   complement / specifier")
       (ccl:set-dialog-item-text *rdtrpw/rhs/right/description*
                                 "right-edge   head"))
      (left-edge
       (ccl:set-dialog-item-text *rdtrpw/rhs/left/description*
                                 "left-edge   head")
       (ccl:set-dialog-item-text *rdtrpw/rhs/right/description*
                                 "right-edge   complement / specifier"))))

  ;; semantics
  (decode-referent-into-rule-tableau descriptors)

  ;; control specifier for other setup routines
  (setq *rdt/case-descriptors* descriptors))



;;;----------------------
;;; Setting up semantics
;;;----------------------

(defun decode-referent-into-rule-tableau (descriptors)
  ;; dispatch off the facet of the referent expression that
  ;; governs what is shown on the tableau.
  (cond
   ((member :instantiate-individual descriptors)
    (setq *rdt/schema-type* :instantiate-individual)
    (drirt/instantiate-individual descriptors))

   ((member :daughter descriptors)
    (drirt/daughter))

   (t  (drirt/just-bindings descriptors))))



;;--- new individual and some bindings

(defun drirt/Instantiate-individual (descriptors)
  ;; e.g. :instantiate-individual result-type
  ;;      :binds (classifier left-edge
  ;;              base right-edge)
  (let ((result-parameter
         (cadr (member :instantiate-individual descriptors
                       :test #'eq))))
    (ccl:set-dialog-item-text *rdtrpw/result-input*
                              (rdtsp result-parameter))
    (rdt/pms result-parameter '*rdt/result-category*)
    (push `(,result-parameter . result-parameter) *rdt/mapping*)

    (drirt/decode-bindings-into-rule-tableau descriptors)))


(defun drirt/Decode-bindings-into-rule-tableau (descriptors)
  (let ((head-edge (cadr (member :head-edge descriptors)))
        (pairs (cadr (member :binding-spec descriptors :test #'eq)))
        head-edge-bound?  comp-edge-bound?  )

    (do* ((parameter (car pairs) (car remainder))
          (edge (cadr pairs) (cadr remainder))
          (remainder (cddr pairs) (cddr remainder))
          (count 1 (incf count)))
         ((or (null parameter)
              (> count 2))
          (when (and (> count 2) (not (null parameter)))
            (break "More than two slots specified -- the tableau ~
                    needs extension")))
      
      (if (eq edge head-edge)
        (then
          (setq head-edge-bound? t)
          (ccl:set-dialog-item-text
           *rdtrpw/headline-input* (rdtsp parameter))
          (rdt/pms parameter '*rdt/head-line-category*)
          (push `(,parameter . head-line-parameter) *rdt/mapping*)
          (ccl:set-dialog-item-text
           *rdtrpw/headline-description* (rdtsp edge)))
        (else
          (setq comp-edge-bound? t)
          (ccl:set-dialog-item-text
           *rdtrpw/comp-input* (rdtsp parameter))
          (rdt/pms parameter '*rdt/comp-category*)
          (push `(,parameter . comp-parameter) *rdt/mapping*)
          (ccl:set-dialog-item-text
           *rdtrpw/comp-description* (rdtsp edge)))))

    (unless head-edge-bound?
      (warp-head-widgets-off-screen))
    (unless comp-edge-bound?
      (warp-comp-widgets-off-screen))

    (ecase head-edge
      ;; the default layout is comp above head, corresponding to
      ;; the head being the right edge.  If it's the left, then
      ;; we have to switch their order on the window.
      (right-edge )
      (left-edge
       (when head-edge-bound?
         (warp-head-widgets-to-comp-position))
       (when comp-edge-bound?
         (warp-comp-widgets-to-head-position))))))



(defun drirt/Just-bindings (descriptors)
  ;; A case in Decode-referent-into-rule-tableau.
  ;; Make the result widgets disappear and then do the bindings
  (warp-result-widgets-off-screen)
  (drirt/decode-bindings-into-rule-tableau descriptors))


(defun drirt/Daughter ()
  ;; A case in Decode-referent-into-rule-tableau -- no semantics
  ;; to do at all
  (warp-result-widgets-off-screen)
  (warp-comp-widgets-off-screen)
  (warp-head-widgets-off-screen))



;;;--------------------------------------------------------
;;; per-field routines when the value has already been set
;;;--------------------------------------------------------

(defun nail-down-rdtrpw-field/lhs (known-value)
  (let ((string
         (etypecase known-value
           (word (word-pname known-value))
           ((or referential-category category mixin-category)
            (string-downcase
             (symbol-name (cat-symbol known-value)))))))

    (ccl:set-dialog-item-text *rdtrpw/lhs-input* string)))


(defun nail-down-rdtrpw-field/rhs-left (known-value)
  (let ((string
         (etypecase known-value
           (word (word-pname known-value))
           ((or referential-category category mixin-category)
            (string-downcase
             (symbol-name (cat-symbol known-value)))))))

    (ccl:set-dialog-item-text *rdtrpw/rhs/left/input* string)))


(defun nail-down-rdtrpw-field/rhs-right (known-value)
  (let ((string
         (etypecase known-value
           (word (word-pname known-value))
           ((or referential-category category mixin-category)
            (string-downcase
             (symbol-name (cat-symbol known-value)))))))

    (ccl:set-dialog-item-text *rdtrpw/rhs/right/input* string)))


