;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2012-2013 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "form-rule form"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   0.5 January 2013

;; initiated 9/3/92 v2.3, 
;; 0.1 (10/12) formulated better now that it's getting used
;;     (5/12/93) Added subroutines that had been left out
;; 0.2 (6/1) Revised it pretty heavily with extra subroutines and a
;;      provision to allow explicit lhs when called from a rule schema
;; 0.3 (2/24/98) added a reference to the global schema that created
;;      the rule to Construct-form-cfr.
;; 0.4 (3/10/05) Adjusted treatment of new-category in Def-form-rule/resolved
;;      to accomodate a new pattern in etf.
;; 0.5 (10/27/11) Added :head arg to form rules to allow unconventional
;;      composition patterns when the semantic term is to be the head
;;      rather than the form term. Motivated by generalizations to prepositions
;;      for relative locations.
;; 0.6 (10/10/12) Patched call to def-form-rule/resolved from define-rewriting-form-rule
;;      to provide a new third argument. (1/29/13) Wrote define-form-rule-from-schema

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun def-form-rule/expr (rhs-expressions
                           &key ((:form form-expression))
                                ((:head edge-for-the-head))
                                ((:referent referent-expression))
                                ((:new-category new-category-symbol)))

  ;; Expansion of Def-form-rule, the form for creating cfrs that are
  ;; based on combinations of category labels and "form" labels that
  ;; reflect standard syntactic categorizations as opposed to the
  ;; "semantic" categorizations used in the category field of a rule.

  (case (length rhs-expressions)
    (1 (error "A form rule has to have 2 terms in its righthand side.~
               ~%This one has just one: rhs = ~A"
                rhs-expressions))
    (2 )
    (otherwise
     (error "A form rule has to have 2 terms in its righthand side.~
             ~%This one has more:  rhs = ~A"
            rhs-expressions)))
     
  (let ((rhs (mapcar #'(lambda (exp)
                         (resolve/make exp :source :def-category))
                     rhs-expressions))
        (new-category
         (when new-category-symbol
           (if (keywordp new-category-symbol)
             new-category-symbol
             (find-or-make-category-object new-category-symbol
                                           :def-category))))
        (form-category (when form-expression
                         (resolve-form-label form-expression)))
        (referent (when referent-expression
                   (resolve-referent-expression referent-expression))))

    (when edge-for-the-head
      (unless (memq edge-for-the-head '(:left-edge :right-edge))
        (error "form rule: the :head argument must be one of the ~
                keywords :left-edge or :right-edge~%The value passed ~
                in was ~a" edge-for-the-head)))

    (when form-expression
      (unless form-category
        (error "form rule: There is no form category with ~
                the name ~A" form-expression)))

    (def-form-rule/resolved rhs form-category edge-for-the-head
                            referent new-category)))



(defun def-form-rule/resolved (rhs form head-edge referent
                               &optional new-category)

  ;; called from Instantiate-rule-schema as well as being just a
  ;; subroutine for the expansion of the def-form-rule macro just above.
  ;; When called as part of instantiating a schema it may depart from
  ;; the stand-alone definitions and provide an explicit lhs for the
  ;; rule (the "new-category") rather than let the rule carry-up the
  ;; head category of the rhs
  
  (multiple-value-bind (edge form-category regular-label)
                       (check-for-just-one-form-category rhs)

    ;; "edge" will be a keyword indicating which of the two labels
    ;; in the rhs is the form category -- it is recorded in the cfr's
    ;; completion field as a signal to Make-completed-binary-edge that
    ;; it should dispatch to special processing

    (when (eq new-category form-category)
      ;; (3/10/05) We can get here from i/r/s-make-the-rule, which is part of
      ;; instantiate-rule-schema, where the test that says it should make a
      ;; form rule is that one of the rhs terms is a form category.  That path
      ;; was used earlier in the no-common-noun/definite (etc.) schemas where
      ;; the lhs corresponds to a referential category.  But now I want schemas
      ;; for common adjuncts and modifiers (e.g. "today") that bind slots
      ;; that are well above the domain-specific slots that are the ones that
      ;; are usually given in a mapping. For these schema, e.g. pre-verb-adverb,
      ;; the lhs is a dummy -- a copy of the form category on the rhs, so we
      ;; ignore the usually impact of 'new-category'.
      (setq new-category nil))

    ;; is there already a rule based on this rhs ?
    (let ((form-rs (rule-set-for form-category))
          (regular-rs (rule-set-for regular-label)))

      (if (and form-rs regular-rs)
        (let* ( form-id regular-id cfr )
          (if head-edge
            ;; The usual situation is that we have a semantically labeled edge
            ;; like "will" that we want to be swallowed by the head-line
            ;; edge on the basis of the head-line's form label (e.g. vg).
            ;; But sometimes, notably with prepositions these days (10/11),
            ;; we're capturing the generality of the prepositions via a form
            ;; label on their word edges, and composing them with semantic
            ;; edges. In these situations the head line is the oposite of
            ;; the usual. The :head keyword in def-form-rule lets you set up
            ;; this override.
            (setq edge head-edge) 
            (ecase edge
              (:left-edge
               ;; the left (first) label of the pair in the rhs is
               ;; the form category
               (setq form-id (cdr (rs-right-looking-ids form-rs))
                     regular-id (cdr (rs-left-looking-ids regular-rs))))
              (:right-edge
               (setq form-id (cdr (rs-left-looking-ids form-rs))
                     regular-id (cdr (rs-right-looking-ids regular-rs))))))
            
          (if (and form-id regular-id)
            (then
              (setq cfr
                    (if (eq edge :left-edge)
                      (multiply-ids form-id regular-id)
                      (multiply-ids regular-id form-id)))
              (if cfr
                (then
                  (if (eq (cfr-category cfr) :syntactic-form)
                    ;; the lhs of a form rule isn't a category since
                    ;; they don't operate in the usual way
                    (revise-cfr-ancilaries cfr form referent)
                    (else
                      (sort-out-conflicting-lhs-of-form-rule cfr)
                      :foo )))

                (else  ;; no cfr already defined
                  (construct-form-cfr (if new-category
                                        (cons edge new-category)
                                        edge)
                                      rhs
                                      form
                                      referent))))

            (else  ;; both ids aren't defined yet
              (construct-form-cfr (if new-category
                                    (cons edge new-category)
                                    edge)
                                  rhs
                                  form
                                  referent))))

        (else  ;; both rule-sets aren't defined yet
          (construct-form-cfr (if new-category
                                (cons edge new-category)
                                edge)
                              rhs
                              form
                              referent))))))



(defun define-rewriting-form-rule (rhs form referent)
  ;; Called from i/r/s-make-the-rule with resolved arguments when the
  ;; *new-dm&p* flag is set. This runs with -every- ETF-based rule
  ;; instantiation, so we have to be somewhat careful about which cases
  ;; we create rewriting form rules for and about the interaction with
  ;; the creation of conventional form rules that are stipulated in
  ;; the realization mapping
  (declare (special *schema-being-instantiated*))
  (unless *schema-being-instantiated*
    (break "Expected *schema-being-instantiated* to have been set"))
  (when (and (memq/assq :head referent)
             (memq/assq :binding referent))
    (let* ((head-side (cadr (memq/assq :head referent)))
           (revised-rhs (interpolate-form-category-in-rhs-of-schema
                         rhs head-side *schema-being-instantiated*)))
      ;;(break "revised rhs = ~a" revised-rhs)
      (when revised-rhs
        (let* ((cfr (def-form-rule/resolved revised-rhs form head-side referent))
               (variable-to-be-bound
                (first (second (memq/assq :binding referent))))
               (v/r (var-value-restriction variable-to-be-bound)))
          ;; modify a conventional form rule by elaborating its completion
          ;; field using information we glean from the instantiated
          ;; referent.
          ;;(break "cfr = ~a" cfr)
          (when v/r
            (let ((completion-keyword (cfr-completion cfr)))
              (setf (cfr-completion cfr)
                    `(,completion-keyword ,variable-to-be-bound))))
          ;;(break "cfr = ~a~%completion = ~a"
          ;;	 cfr (cfr-completion cfr))
          cfr)))))


(defun define-form-rule-from-schema (schr)
  ;; Called from find-form-rule
  (let ((form (schr-lhs schr))
        (rhs (schr-rhs schr))
        (head-edge (cadr (memq :head-edge (schr-descriptors schr))))
        (referent-exp (referent-for-schema schr))
        (*schema-being-instantiated* schr))
    (declare (special *schema-being-instantiated*))
    (let ((cfr (def-form-rule/expr rhs
                                   :form form
                 :head (intern (symbol-name head-edge)
                               (find-package :keyword))
                 :referent referent-exp)))
      cfr)))
                 



;;;----------
;;; builders
;;;----------

(defun construct-form-cfr (edge rhs form referent)
  (declare (special *schema-being-instantiated*))
  (let ((cfr (make-cfr :category :syntactic-form
                       :rhs rhs
                       :form form
                       :referent referent
                       :schema *schema-being-instantiated*)))

    (when *schema-being-instantiated*
      (setf (schr-form-rule *schema-being-instantiated*) cfr))

    (setf (cfr-plist cfr) (list :form-rule ))
    (setf (cfr-completion cfr) edge)

    (note-file-location cfr)
    ;;// hack source (note-grammar-module cfr :source //// )

    (knit-form-rule-into-psg-tables cfr)

    (let ((r-symbol (gen-cfr-symbol)))
      (catalog/cfr cfr r-symbol))

    cfr ))


(defun form-rule? (cfr)
  (when (cfr-p cfr)
    (when (member :form-rule (cfr-plist cfr))
      t)))



(defun revise-cfr-ancilaries (cfr form referent)
  ;; called from Def-form-rule/expr when the cfr was already defined
  ;; and is being revised. The form and referent were resolved by
  ;; the caller
  (setf (cfr-form cfr) form)
  (setf (cfr-referent cfr) referent)
  cfr )


(defun sort-out-conflicting-lhs-of-form-rule (cfr)
  ;; We're defining a form rule but that rhs is already defined
  ;; for a regular rule
  (break "There is already a regular rule with the rhs:~
          ~%    ~A   ~A~
          ~%where they have the lhs ~A~
          ~%~
          ~%A form rule with that rhs cannot be defined until that ~
          rule is deleted."
         (first (cfr-rhs cfr)) (second (cfr-rhs cfr))
         (cfr-category cfr)))




;;;-------------
;;; subroutines
;;;-------------

(defun check-for-just-one-form-category (rhs)
  ;; we're checking the rhs of a form rule, so there can only be two
  ;; labels, and we have to keep track of which of the two is the form
  ;; rule.
  (let ( form-category  regular-label edge-designator )
    (mapcar
     #'(lambda (label edge)
         (if (word-p label)
           (then
             (if regular-label
               (error "Form rule: there is no form category in ~
                       this righthand side:~%   ~A" rhs)
               (setq regular-label label)))
           (else
             (if (member :form-category (unit-plist label))
               (then
                (if form-category
                  (error "Form rule: both of the labels in this ~
                          righthand side are are form categories:~
                          ~%   ~A" rhs)
                  (setq form-category label
                        edge-designator edge)))
               (else
                 (if regular-label
                   (error "Form rule: there is no form category in ~
                           this righthand side:~%   ~A" rhs)
                   (setq regular-label label)))))))

     rhs
     '(:left-edge :right-edge))

    (unless form-category
      (break "Form rule: there is no form category in this righthand ~
              side:~%   ~A" rhs))
    (unless regular-label
      (break "Form rule: there is no regular category in this righthand ~
              side:~%   ~A" rhs))

    (values edge-designator
            form-category
            regular-label)))
