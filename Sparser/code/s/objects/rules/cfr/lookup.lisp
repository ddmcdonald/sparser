;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "lookup"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   5.2 December 1994

;; 5.0 (9/3/92 v2.3) bumped the version to make changes that simplify
;;      the accounting. Revised most of the routines.
;;     (11/1) did multiply-through-nary-rhs
;; 5.1 (3/8/93) added capability to search through rhs with multiple
;;      completions and tweeked some return values.
;; 5.2 (8/27) added find/cfr because it was in the documentation and
;;      tweeked Multiply-through-terms-of-rhs to check against lhs
;;     (12/30/94) added Lookup-syntactic-rule

(in-package :sparser)


;;;-----------------------------------
;;; looking up rules from expressions
;;;-----------------------------------

(defun lookup/cfr/expression (lhs-symbol rhs)
  
  ;; called by Def-cfr/expr and similar macro intermediaries to check
  ;; whether the rule expressions being passed in pick out an already
  ;; existing cfr -- in which case we'll return it instead of making
  ;; a new one.  Returns the decoded labels to avoid having to do
  ;; them again.

  ;; This routine does not check whether the lhs being passed in
  ;; matches the lhs of the rule it finds, such duplication checks
  ;; are done by the caller. (N.b. this doesn't apply to single
  ;; words since they can have multiple definitions -- here the input
  ;; lhs is used as the key to locate the correct cfr if it already
  ;; exists.)

  (let ((lhs-label
         (resolve/make lhs-symbol :source :def-category))
        (rhs-list-of-labels
         (if (and (eq 1 (length rhs))
                  (stringp (first rhs))
                  (not-all-same-character-type (first rhs)))
           (list (or (polyword-named (first rhs))
                     (define-polyword/expr (first rhs))))
           (mapcar #'resolve/make rhs))))

    (let ((cfr (lookup/cfr lhs-label rhs-list-of-labels)))

      (values cfr lhs-label rhs-list-of-labels))))



(defun find-cfr (lhs-expression rhs-expressions)

  ;; intended for external use by users, filters for the lhs when
  ;; there are multiple definitions

  (when lhs-expression ;; i.e. allow it to be nil
    (typecase lhs-expression
      (symbol )
      (string )
      (otherwise (error "The input to find/cfr is just like that of ~
                         Def-cfr~%  i.e. the labels should be given as ~
                         symbols or strings."))))
  (unless (listp rhs-expressions)
    (error "The second argument to find/cfr, the labels for the ~
            righthand side~%of the rule, must be a list"))

  (multiple-value-bind (cfr/s lhs rhs)
                       (lookup/cfr/expression lhs-expression
                                              rhs-expressions)
    (declare (ignore lhs rhs))

    cfr/s ))




;;;-------------------------------------------------------
;;; finding the rule that corresponds to a righthand side
;;;-------------------------------------------------------

(defun lookup/cfr (lhs-label rhs-list-of-labels)

  ;; This routine emulates what will happen at runtime, returning
  ;; the cfr this rhs picks out if there is one.
  ;; If it's a binary rule, it's straight multiplication, though if
  ;;  multiple lhs are allowed, a further check is made against the
  ;;  list that the multiplication may send back.
  ;; If it's n-ary, it's a cascade of multiplications.
  ;; If it's unary, we include the lhs label to pick out the right
  ;;  one among the several meanings (cfrs) a word might have, except
  ;;  for the case of polywords, which we treat as n-ary rules since
  ;;  that's how they're handled at runtime.

  (if (null (cdr rhs-list-of-labels)) ;; length = 1
    (lookup-unary-rule lhs-label rhs-list-of-labels)
    (multiply-through-terms-of-rhs rhs-list-of-labels lhs-label)))


(defun multiply-through-terms-of-rhs (list-of-rhs-terms
                                      &optional lhs )
  ;; a broken out version of above (rather than having a single
  ;; case statement on length) e.g. used for form rules since they
  ;; are more restricted than general cfrs
  (let ((cfr/s
         (if (> (length list-of-rhs-terms) 2)
           (multiply-through-nary-rhs list-of-rhs-terms)
           (apply #'multiply-labels list-of-rhs-terms))))

    (when cfr/s
      (if lhs ;; then we're looking to see if a particular rule
              ;; exists so we check against this lhs and return
              ;; the corresponding cfr
        (then
          (if (listp cfr/s)
            (then (dolist (cfr cfr/s)
                    (when (eq lhs (cfr-category cfr))
                      (return-from multiply-through-terms-of-rhs
                                   cfr)))
                  nil )
            (if (eq lhs (cfr-category cfr/s))
              cfr/s
              nil )))
        cfr/s ))))


;;;-------
;;; cases
;;;-------

(defun lookup-unary-rule (lhs rhs)
  ;; go through the unary rules for the word (or label) on the rhs
  ;; looking for one whose lhs is the same as the one passed in,
  ;; otherwise return nil.
  (let* ((rule-set (rule-set-for (first rhs)))
         (rules (when rule-set
                  (rs-single-term-rewrites rule-set))))

    (when rules
      (dolist (cfr rules)
        (when (eq (cfr-category cfr) lhs)
          (return-from lookup-unary-rule cfr)))
      nil )))



(defun multiply-through-nary-rhs (rhs-terms)
  (let ((rule
         (catch :nary-multiply
           (check-for-left-rollout nil rhs-terms))))
    (if rule
      (then
        ;; it's probably the final rule in the role out, so we 
        ;; lookup the 'real' rule it stands in for
        (if (listp rule)
          ;; several rules already have this rhs
          rule

          (let ((n-ary-rule
                 (cadr (member :rolled-out-from (cfr-plist rule)))))
            (or n-ary-rule rule))))

      nil )))


(defun check-for-left-rollout (last-prefix-category
                               remaining-rhs-terms)
  (if last-prefix-category
    (let ((prefix
           (multiply-labels last-prefix-category
                            (first remaining-rhs-terms))))
      (if prefix
        ;; check whether there is one definition or many
        (if (listp prefix)
          (lookup/multiple-completions prefix
                                       (cdr remaining-rhs-terms))
          (if (cdr remaining-rhs-terms)
            (check-for-left-rollout (cfr-category prefix)
                                    (cdr remaining-rhs-terms))
            (throw :nary-multiply prefix)))
        (else
          (throw :nary-multiply nil))))

    (let ((prefix
           (multiply-labels (first remaining-rhs-terms)
                            (second remaining-rhs-terms))))    
      (if prefix
        (if (listp prefix)
          (lookup/multiple-completions prefix
                                       (cddr remaining-rhs-terms))
          (if (cddr remaining-rhs-terms)
            (check-for-left-rollout (cfr-category prefix)
                                    (cddr remaining-rhs-terms))
            (throw :nary-multiply prefix)))
        (else
          (throw :nary-multiply nil))))))


(defun lookup/multiple-completions (rules remaining-terms)
  (if (null remaining-terms)
    ;; if there are no more terms to be folded in, then we're done
    (throw :nary-multiply rules)

    (let ((intermediary-dotted-rules
           (remove-if-not #'(lambda (r)
                              (eq :dotted-intermediary
                                  (cfr-form r)))
                          rules)))
      (if intermediary-dotted-rules
        (then
          ;; see if any of them fit this rhs
          (dolist (r intermediary-dotted-rules)
            ;; take the first rule that fits the terms
            (when (check-for-left-rollout (cfr-category r)
                                          remaining-terms)
              (return-from lookup/multiple-completions r)))

          ;; otherwise declare there's no rule with this rhs
          (throw :nary-multiply nil))
        (else
          (throw :nary-multiply nil))))))




(defun lookup-syntactic-rule (binary-rhs)
  (let ((left-rs (label-rule-set (first binary-rhs)))
        (right-rs (label-rule-set (second binary-rhs))))
    (when (and left-rs right-rs)

      (let ((left-ids (rs-right-looking-ids left-rs))
            (right-ids (rs-left-looking-ids right-rs)))
        (when (and left-ids right-ids)

          (let ((left-form-id (cdr left-ids))
                (right-form-id (cdr right-ids)))
            (when (and left-form-id right-form-id)

              (multiply-ids left-form-id
                            right-form-id))))))))

