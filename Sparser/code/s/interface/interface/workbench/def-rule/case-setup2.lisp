;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "case setup"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  2.0 January 1996

;; broken out of [define-rule] 4/27.  Tweeked ..5/2
;; 1.0 (6/15) redesigned the basis of what field you go to next to take fixed
;;      fields into effect.  (7/27) added case of ref.spec. being just a category
;;     (10/24) added the possibility that a rhs term is a word.
;; 2.0 (12/10) looking to fix bugs with 'nailed-down' treatment ...1/17/96
;; 2.1 (6/27/96) evicerated Update-nailed-down-state since it now seems superfluous
;;      Check the note in readou;/

(in-package :sparser)

;;;-----------------------------------------
;;; setting up the rule tableau from schema
;;;-----------------------------------------

;;--- driver

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

  (let ((previously-nailed-down-fields *rdt/nailed-down-fields*))
    (setq *rdt/nailed-down-fields* nil)
    ;; Since this is managed by a subroutine, we start it at nil
    ;; each time and do the cross-pattern management here rather
    ;; than introduce a notion of 1st-pattern and update that (12/18/95)
    
    
    ;; all cfrs have a lhs
    (let* ((lhs-symbol (first body))
           (known-value (rdt/mapping-value lhs-symbol))
           (has-slash? (constructed-eft-label? lhs-symbol))
           )
      
      
      (if (or known-value has-slash?)
        (nail-down-rdtrpw-field/lhs (or known-value
                                        lhs-symbol))
        (else 
          (update-nailed-down-state lhs-symbol previously-nailed-down-fields)
          (ccl:set-dialog-item-text *rdtrpw/lhs-input*
                                    (rdtsp lhs-symbol))
          (rdt/pms (first body) '*rdt/lhs-label*)))
      
      #|(if known-value
        (nail-down-rdtrpw-field/lhs known-value)
        (else
          (ccl:set-dialog-item-text *rdtrpw/lhs-input*
                                    (rdtsp lhs-symbol))
          (rdt/pms (first body) '*rdt/lhs-label*)))|#
      
      (when (constructed-eft-label? lhs-symbol)
        (update-nailed-down-state lhs-symbol previously-nailed-down-fields)))
    
    
    ;; provision for either one or two items on the rhs
    (ecase (cadr (member :length-of-rhs descriptors))
      (1
       (let* ((rhs-symbol (first (second body)))
              (known-value (if (word-p rhs-symbol)
                             rhs-symbol
                             (rdt/mapping-value rhs-symbol)))
              (rhs-has-slash? (unless (word-p rhs-symbol)
                                (constructed-eft-label? rhs-symbol))))
         
         (if (or known-value rhs-has-slash?)
           (nail-down-rdtrpw-field/rhs-left (or known-value
                                                rhs-symbol))
           (else
             (update-nailed-down-state rhs-symbol previously-nailed-down-fields)
             (ccl:set-dialog-item-text *rdtrpw/rhs/left/input*
                                       (rdtsp rhs-symbol))
             (rdt/pms rhs-symbol '*rdt/rhs-left-label*)
             (ccl:radio-button-push *rdtrpw/rhs/left/radio-button*)
             (ccl:set-current-key-handler *rdt/rule-populating-window*
                                          *rdtrpw/rhs/left/input*)
             (setq *rdt/input-field-for-selected-edge*
                   *rdtrpw/rhs/left/input*)))))
      
      (2
       (let* ((rhs-left-symbol (first (second body)))
              (left-known (if (word-p rhs-left-symbol)
                            rhs-left-symbol
                            (rdt/mapping-value rhs-left-symbol)))
              (left-has-slash? (unless (word-p rhs-left-symbol)
                                 (constructed-eft-label? rhs-left-symbol)))
              (rhs-right-symbol (second (second body)))
              (right-known (if (word-p rhs-right-symbol)
                             rhs-right-symbol
                             (rdt/mapping-value rhs-right-symbol)))
              (right-has-slash? (unless (word-p rhs-right-symbol)
                                  (constructed-eft-label? rhs-right-symbol))))
         
         (if (or left-known left-has-slash?)
           (nail-down-rdtrpw-field/rhs-left (or left-known
                                                rhs-left-symbol))
           (else
             (update-nailed-down-state rhs-left-symbol previously-nailed-down-fields)
             (ccl:set-dialog-item-text *rdtrpw/rhs/left/input*
                                       (rdtsp rhs-left-symbol))
             (rdt/pms rhs-left-symbol '*rdt/rhs-left-label*)))
         
         (if (or right-known right-has-slash?)
           (nail-down-rdtrpw-field/rhs-right (or right-known
                                                 rhs-right-symbol))
           (else
             (update-nailed-down-state rhs-right-symbol previously-nailed-down-fields)
             (ccl:set-dialog-item-text *rdtrpw/rhs/right/input*
                                       (rdtsp rhs-right-symbol))
             (rdt/pms rhs-right-symbol '*rdt/rhs-right-label*)))
         
         
         (if (or (and left-known right-known)
                 (or left-has-slash? right-has-slash?))
           (compute-initial-rdt-input-field)
           (else
             (cond
              ;; if one is known (slashed or a word), make the other be
              ;; the site of action
              ((or left-known left-has-slash?)
               (ccl:radio-button-push *rdtrpw/rhs/right/radio-button*)
               (ccl:set-current-key-handler *rdt/rule-populating-window*
                                            *rdtrpw/rhs/right/input*))
              ((or right-known right-has-slash?)
               (ccl:radio-button-push *rdtrpw/rhs/left/radio-button*)
               (ccl:set-current-key-handler *rdt/rule-populating-window*
                                            *rdtrpw/rhs/left/input*))
              (t
               (ccl:radio-button-push *rdtrpw/rhs/right/radio-button*)
               (ccl:set-current-key-handler *rdt/rule-populating-window*
                                            *rdtrpw/rhs/right/input*)))
             ;; the default
             (setq *rdt/input-field-for-selected-edge*
                   *rdtrpw/rhs/right/input*))))))
    
    
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
                                   "right-edge   complement / specifier"))
        (:referent-is-a-category
         )))
    
    ;; semantics
    (decode-referent-into-rule-tableau descriptors body)
    
    ;; control-specifier for other setup routines
    (setq *rdt/case-descriptors* descriptors)
    
    (unless *rdt/input-field-for-selected-edge*
      (break "Bad threading: no value for the input field when ~
              setup is finished."))))




;;;----------------------
;;; Setting up semantics
;;;----------------------

(defun decode-referent-into-rule-tableau (descriptors case-body)
  ;; dispatch off the facet of the referent expression that
  ;; governs what is shown on the tableau.
  (cond
   ((member :instantiate-individual descriptors)
    (setq *rdt/schema-type* :instantiate-individual)
    (drirt/instantiate-individual descriptors))

   ((member :referent-is-a-category descriptors)
    (drirt/referent-is-category case-body))

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



;;--- just bindings

(defun drirt/Just-bindings (descriptors)
  ;; a case in Decode-referent-into-rule-tableau.
  ;; Make the result widgets disappear and then do the bindings
  (warp-result-widgets-off-screen)
  (drirt/decode-bindings-into-rule-tableau descriptors))


;;--- referent spec. is 'daughter'

(defun drirt/Daughter ()
  ;; a case in Decode-referent-into-rule-tableau -- no semantics
  ;; to do at all
  (warp-result-widgets-off-screen)
  (warp-comp-widgets-off-screen)
  (warp-head-widgets-off-screen))


;;--- referent spec. is a category

(defun drirt/referent-is-category (case-expression)
  ;; a case in Decode-referent-into-rule-tableau.
  (warp-comp-widgets-off-screen)
  (warp-head-widgets-off-screen)
  (let ((category-name (third case-expression)))
    (ccl:set-dialog-item-text
     *rdtrpw/result-input* (rdtsp category-name))
    (rdt/pms category-name '*rdt/result-category*)
    (push `(,category-name . result-parameter) *rdt/mapping*)))





;;;--------------------------------------------------------
;;; per-field routines when the value has already been set
;;;--------------------------------------------------------

#|  These 'nail-down' routines compute what string should be put in the
field to prompt the user and return it.  Along the way they set up state
information that's used by the mapping routines. |#


(defun nail-down-rdtrpw-field/lhs (known-value)
  ;; called from Populate-rule-tableau
  (let ((string
         (etypecase known-value
           (word (word-pname known-value))
           ((or referential-category category mixin-category)
            (string-downcase
             (symbol-name (cat-symbol known-value))))
           (symbol
            (symbol-name known-value)))))

    (ccl:set-dialog-item-text *rdtrpw/lhs-input* string)
    (setq *rdt/lhs-label* :nailed-down)
    (push (cons *rdtrpw/lhs-input* known-value)
          *rdt/nailed-down-fields*)
    string ))



(defun nail-down-rdtrpw-field/rhs-left (known-value)
  (let ((string
         (etypecase known-value
           (word (word-pname known-value))
           ((or referential-category category mixin-category)
            (string-downcase
             (symbol-name (cat-symbol known-value))))
           (symbol
            (symbol-name known-value)))))

    (ccl:set-dialog-item-text *rdtrpw/rhs/left/input* string)
    (setq *rdt/rhs-left-label* :nailed-down)
    (push (cons *rdtrpw/rhs/left/input* known-value)
          *rdt/nailed-down-fields*)
    string ))



(defun nail-down-rdtrpw-field/rhs-right (known-value)
  (let ((string
         (etypecase known-value
           (word (word-pname known-value))
           ((or referential-category category mixin-category)
            (string-downcase
             (symbol-name (cat-symbol known-value))))
           (symbol
            (symbol-name known-value)))))

    (ccl:set-dialog-item-text *rdtrpw/rhs/right/input* string)
    (setq *rdt/rhs-right-label* :nailed-down)
    (push (cons *rdtrpw/rhs/right/input*
                known-value)
          *rdt/nailed-down-fields*)
    string ))


;;;-------------------------------------------------------------
;;; Taking cases -off- that list once they've been instantiated
;;;-------------------------------------------------------------

(defun update-nailed-down-state (symbol previously-nailed-down-fields)
  ;; called from Populate-rule-tableau
  (declare (ignore symbol previously-nailed-down-fields))
  ;; 6/27/96 -- evicerating this because it no longer needs to do any
  ;; work since we don't ever have to adjust what's nailed down because
  ;; it should stay that way since the only place that needs to be hacked
  ;; is in decoding the schema. //If we felt ambitious, we could change
  ;; the spelling of a nailed down category once there'd been enough
  ;; information to do the decoding, but that's fluff at the moment.
  )
#|  original code
  (unless (symbolp symbol)
    (break "Design assumption wrong -- the caller passed in something ~
            other than a symbol here: ~A~%" symbol))
  (when (rassoc symbol previously-nailed-down-fields)
    (let ((rdt-field (assoc symbol *rdt/mapping*)))
      (unless rdt-field
        (break "Expected *rdt/mapping* to have a nailed-down field ~
                for ~A" symbol))
      (setq *rdt/mapping*
            (delete rdt-field *rdt/mapping* :test #'equal)))) |#




;;;-------------------------------------------------------
;;; adjusting the input field when the default is blocked
;;;-------------------------------------------------------

(defun compute-initial-rdt-input-field ()
  ;; Called from Populate-rule-tableau when some field is nailed down

  (if (assoc *rdtrpw/rhs/right/input* *rdt/nailed-down-fields*)

    (if (assoc *rdtrpw/rhs/left/input* *rdt/nailed-down-fields*)

      (if (assoc *rdtrpw/lhs-input* *rdt/nailed-down-fields*)
        ;; then maybe a semantic field is still open
        (push/activate-first-semantic-input-field *rdtrpw/lhs-radio-button*)

        (else  ;; lhs is left
          (ccl:radio-button-push *rdtrpw/lhs-radio-button*)
          (rdt/lhs-radio-button-action *rdtrpw/lhs-radio-button*)))

      (else  ;; rhs/left isn't nailed down, so make it the input field
        (ccl:radio-button-push *rdtrpw/rhs/left/radio-button*)
        (rdt/rhs/left-radio-button-action *rdtrpw/rhs/left/radio-button*)))

    (else  ;; rhs/right isn't nailed down, so make it the input field
      (setq *rdt/input-field-for-selected-edge*
                 *rdtrpw/rhs/right/input*))))

