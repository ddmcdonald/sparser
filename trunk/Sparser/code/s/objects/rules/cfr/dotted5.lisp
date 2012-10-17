;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990-1998  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "dotted"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   5.2 March 2007

;; initiated November 1990 (v1.5)
;; 4.0 (9/4/92 v2.3) Cleaned up a bit to fit other cleanups
;;     (10/23) changed how dotted rule categories are indexed to their
;;      grammar modules.
;; 4.1 (3/8/93) Modified the algorithm to make the way it handles multiple
;;      completions sensible.
;; 4.2 (5/6) fixed a conceptualization bug in that
;;     (8/25) added Edge-of-dotted-intermediary
;; 5.0 (3/15/94) Tweeked def. of 'dotted-rule', and added sensitivity to
;;      duplication flags within Make-dotted-rule. 3/15 wrote Dotted-category
;; 5.1 (10/25/95) Thought through the patterning of dotted rules when
;;      "chief executive" had been being preempted by "chief executive officer"
;;      as a duplicate rule. Fixed the algorithm so that they now work, but
;;      left a stub in Make-dotted-rule for a case that seems possible but which
;;      I can't set up and which isn't used in the current grammar.
;;     (1/5/96) added Dotted-rule? and Source-of-dotted-rule
;;     Trivially tweaked 2/16/98 to bump the fasl for new source.
;; 5.2 (3/7/07) Got the case that hadn't previously presented itself and
;;      used the commented out call to make-dotted-rule1 in the chance that
;;      I wrote that in 1995 with a good understanding of the whole process
;;      and the assumption that it would work but wanted to leave in the
;;      note/Stub.

(in-package :sparser)

;;;--------------------------------------------------------
;;; predicates, access functions for parts of dotted rules
;;;--------------------------------------------------------

(defun edge-of-dotted-intermediary (e)
  ;; is this edge the result of completing a category that was
  ;; constructed to name the dotted intermediary cases of a
  ;; nary rule before all of the rhs daughters are found
  (eq :dotted-intermediary
      (edge-form e)))


(defun nary-rule (cfr)
  ;; predicate that checks whether the cfr has more than two immediate
  ;; constituents
  (member :n-ary (cfr-plist cfr)))


(defun dotted-rule (cfr) 
  ;; predicate.  These rules will exist only because they are needed
  ;; as an intermediate case in some n-ary rule.  The second case
  ;; is needed because the first is available only once the cfr
  ;; is finished, and we sometimes need to ask this question before
  ;; that
  (or (member :dotted-rule (cfr-plist cfr))
      (eq :dotted-intermediary (cfr-form cfr))))

(defun dotted-rule? (cfr)
  ;; variant motivated by Sort-cfrs-by-order-of-definition where
  ;; it turned out that the condition tested in Dotted-rule doesn't
  ;; get all the cases of cfrs with unusual symbols.
  (if (dotted-rule cfr)
    t
    (if (member :rolled-out-from (cfr-plist cfr))
      t
      nil)))

(defun source-of-dotted-rule (dotted-cfr)
  (unless (dotted-rule? dotted-cfr)
    (break "Caller passed in a cfr that wasn't dotted"))
  (or (car (cadr (member :dotted-rule (cfr-plist dotted-cfr))))
      (cadr (member :rolled-out-from (cfr-plist dotted-cfr)))))


(defun dotted-rule1 (cfr)
  ;; variant used in Adjudicate-multiple-edges/HA/both-ends because
  ;; the regular one didn't work on the case of the pw rule for
  ;; "chief officer" vs. "chief TITLE" in "chief retail services
  ;; officer"
  (null (cfr-symbol cfr)))


(defun nary-of-dotted-rule (dotted)
  ;; returns the full rule for which the dotted rule was created
  (let ((entry (cadr (member :dotted-rule (cfr-plist dotted)))))
    (first entry)))

(defun intermediaries-of-nary-rule (cfr)
  (unless (nary-rule cfr)
    (error "Cannot take intermediaries of a rule that is not N-ary"))
  (let ((entry (cadr (member :n-ary (cfr-plist cfr)))))
    (cadr entry)))

(defun set-intermediaries-of-nary-rule (cfr intermediaries)
  (let ((entry (cadr (member :n-ary (cfr-plist cfr)))))
    (setf (second entry) intermediaries)))


(defun original-rhs-of-nary-rule (cfr)
  (unless (nary-rule cfr)
    (error "Cannot take intermediaries of a rule that is not N-ary"))
  (let ((entry (cadr (member :n-ary (cfr-plist cfr)))))
    (car entry)))



(defun dotted-category (c)
  (member #\_ (symbol-name (cat-symbol c))))


;;;-------------------
;;; policy parameters
;;;-------------------

;; When we're only accepting n-aries in non-top-edges-only mode,
;; then we don't have to worry about subsets of the constituents
;; being pre-empted by legitimate smaller rules, and consequently
;; we can cut down on the subsets of the rhs that we form.
;;   Arbitrarily I've decide to have the remaining rollout come 
;; from the left rather than the right.

;(or (boundp '*rollout-naries-from-the-right*)
;    (defparameter *rollout-naries-from-the-right* nil))

(or (boundp '*rollout-naries-from-the-left*)
    (defparameter *rollout-naries-from-the-left* t))

;;;--------
;;; driver
;;;--------

(defun create-dotted-intermediaries-of-nary-rule (cfr)

  ;; called from Knit-into-psg-tables.  Drives all the work of
  ;; setting up a cfr that involves more than two immediate constituents.

  (let ((rhs (cfr-rhs cfr))
        dotted-rules )

    ;(when *rollout-naries-from-the-right*
    ;  (setq dotted-rules
    ;        (rollout-naries-from-the-right rhs cfr)))

    (when *rollout-naries-from-the-left*
      (setq dotted-rules
            (append (rollout-naries-from-the-left rhs cfr)
                    dotted-rules)))

    (setf (cfr-plist cfr)
          `(:n-ary (,rhs ,dotted-rules)
            ,@(cfr-plist cfr)))
    cfr ))

;;;------------------------
;;; rollout from the right
;;;------------------------

#| unused as of 10/31 -- won't have kept up with any changes in
   the interim, so check carefully if it's to be resurected

(defun rollout-naries-from-the-right (rhs cfr)
  (let ((reversed-constituents (reverse rhs)))

    (let ((dotted-rules
           (make-sucessive-dotted-rules-from-the-right
            (pop reversed-constituents)
            (pop reversed-constituents)
            reversed-constituents
            nil
            cfr)))

      (let ((last-rule (first dotted-rules)))
        ;; We convert the last rule to look like the original rule,
        ;; since it is going to be the one that takes part in the
        ;; parsing process, not the original.
        (setf (cfr-category   last-rule) (cfr-category   cfr))
        (setf (cfr-completion last-rule) (cfr-completion cfr))
        (setf (cfr-form       last-rule) (cfr-form       cfr))
        (setf (cfr-referent   last-rule) (cfr-referent   cfr))
        (remove-dotted-tag last-rule)

        dotted-rules))))


(defun make-sucessive-dotted-rules-from-the-right
       (right-daughter
        left-daughter
        remaining-constituents
        accumulated-rules
        cfr)

  (let* ((daughters (list left-daughter right-daughter)))

    (let ((new-rule (make-dotted-rule daughters
                                      remaining-constituents
                                      cfr)))
      (if remaining-constituents
        (make-sucessive-dotted-rules-from-the-right
         (cfr-category new-rule)
         (pop remaining-constituents)
         remaining-constituents
         (push new-rule accumulated-rules)
         cfr)
        (push new-rule
              accumulated-rules)))))      |#

;;;---------------
;;; from the left
;;;---------------

(defun rollout-naries-from-the-left (rhs cfr)
  ;; Called from Create-dotted-intermediaries-of-nary-rule
  ;; or Construct-polyword-cfr
  (let ((constituents (copy-list rhs)))
    (let ((dotted-rules
           (make-sucessive-dotted-rules-from-the-left
            ;; n.b. remember that these pop's are sequential
            (pop constituents)    ;; left daughter
            (pop constituents)    ;; right daughter
            constituents          ;; remaining constituents
            nil                   ;; accumulated rules
            1  (1- (length rhs))  ;; number of terms to the left / right
            cfr)))                ;; the parent rule

      (let ((last-rule (first dotted-rules)))
        ;; We convert the last rule to look like the original
        ;; rule.  The original can't execute anyway since it's
        ;; nary and only binary rules get completed.
        (setf (cfr-category   last-rule) (cfr-category   cfr))
        (setf (cfr-completion last-rule) (cfr-completion cfr))
        (setf (cfr-form       last-rule) (cfr-form       cfr))
        (setf (cfr-referent   last-rule) (cfr-referent   cfr))
        (remove-dotted-tag last-rule)
        
        dotted-rules))))


(defun make-sucessive-dotted-rules-from-the-left
       (left-daughter
        right-daughter
        remaining-constituents
        accumulated-rules
        terms-to-the-left  terms-to-the-right
        parent-rule )

  (let* ((daughters (list left-daughter right-daughter)))

    (let ((new-rule (make-dotted-rule daughters
                                      remaining-constituents
                                      terms-to-the-left
                                      terms-to-the-right
                                      parent-rule)))

      (if remaining-constituents
        (make-sucessive-dotted-rules-from-the-left
         (cfr-category new-rule)
         (pop remaining-constituents)
         remaining-constituents
         (push new-rule accumulated-rules)
         (1+ terms-to-the-left)
         (1- terms-to-the-right)
         parent-rule )
        (push new-rule
              accumulated-rules)))))


;;;---------------------------
;;; constructing dotted rules
;;;---------------------------

(unless (boundp '*check-construction-of-nary-rules*)
  ;; useful in debugging any changes to how n-ary rules are
  ;; constructed.
  (defparameter *check-construction-of-nary-rules* nil))


(defun make-dotted-rule (daughters
                         remaining-constituents
                         terms-to-the-left
                         terms-to-the-right
                         parent-rule )

  (declare (special *dotted-rules-can-duplicate-regular-rules*))

  (let* ((category (category-of-dotted-rule daughters))
         (existing-rule/s (lookup/cfr nil daughters))
         existing-dotted-rule )

    (if existing-rule/s
      (if (null remaining-constituents)
        ;; We're in the middle of a roll-out that is making dotted
        ;; rules one daughter at a time.  On this instance we're
        ;; taking up the 2d of the two daughters in the argument.
        ;; When there aren't any remaining constituents we know
        ;; that we're now making the last rule in the chain.
        ;;   We know that we wouldn't be here unless there were
        ;; three or more terms in the rhs of the parent rule,
        ;; so in this situation the existing-rule/s should be
        ;; have a dotted category as their lhs.
        ;;  The question is whether they carry on longer, i.e. that
        ;; we're presently defining a pattern that corresponds to
        ;; the prefix of some longer rule.
	  #|
        (break "Stub: The state of affairs down this branch of the code ~
              ~%couldn't be created during testing, but was a logical ~
              ~%possibility given the format of the data.~
              ~%But now it has been created:~
              ~%    daughters: ~A~
              ~%  parent-rule: ~A~%~%" daughters parent-rule) |#

      ;; if there's only one constituent remaining  then we should make 
        ;; a new rule since it will be the one to carry the lhs, form and
        ;; referent information that makes the rule unique.
        (make-dotted-rule1 category
                           daughters
                           remaining-constituents
                           terms-to-the-left
                           terms-to-the-right
                           parent-rule )

        (if (setq existing-dotted-rule
                  (any-rule-in-list-is-dotted existing-rule/s))

          ;; if there's an existing dotted rule then we take it. 
          ;; We'll just be adding another rightward combination to its
          ;; category.   Otherwise the existing rules shouldn't also
          ;; themselves get another rightward combination because that
          ;; would be mucking in the real grammar and could lead to
          ;; nasty overgeneration, so for that case we make a dotted
          ;; rule to get the further combinations.
          existing-dotted-rule

          (else
            ;; The existing rule is not dotted.

            (if *dotted-rules-can-duplicate-regular-rules*
              ;; We're permitted to complement it with a dotted rule 
              ;;for the same pattern, and a check in Dotted-rule-hack
              ;; will sort things out.
              (make-dotted-rule1 category
                                 daughters
                                 remaining-constituents
                                 terms-to-the-left
                                 terms-to-the-right
                                 parent-rule )

              (duplication-msg existing-rule/s category)))))

      ;; an of course if there's no existing rule we have to make one
      (make-dotted-rule1 category
                         daughters
                         remaining-constituents
                         terms-to-the-left
                         terms-to-the-right
                         parent-rule ))))



(defun any-rule-in-list-is-dotted (rules)
  ;; when called from Make-dotted-rule there would only be one.
  ;; In any case we return the first one we see.
  (when (not (consp rules))
    (setq rules (list rules)))
  (dolist (r rules)
    (when (dotted-rule r)
      (return-from any-rule-in-list-is-dotted r)))
  nil )



(defun make-dotted-rule1 (category
                          daughters
                          remaining-constituents
                          terms-to-the-left
                          terms-to-the-right
                          parent-rule )
  (let ((new-rule
         (make-cfr :category category
                   :rhs daughters
                   :form :dotted-intermediary
                   :referent nil )))

    (when *check-construction-of-nary-rules*
      (format t "~&~%as part of ~A~
                 ~%formed the rule~
                 ~%   ~A ~%"
              parent-rule new-rule)
      (when (y-or-n-p "Break?")
        (break "within Make-dotted-rule")))

    (knit-into-psg-tables new-rule)

    (setf (cfr-plist new-rule)
          (cons :dotted-rule
                (cons (list
                       parent-rule daughters remaining-constituents)
                      (cfr-plist new-rule))))

    (let ((parent-symbol (cfr-symbol parent-rule)))

      (catalog/cfr new-rule
                   (intern (concatenate 'string
                             (symbol-name parent-symbol)
                             "/"
                             (format nil "~A" terms-to-the-left)
                             "."
                             (format nil "~A" terms-to-the-right))
                           *phrase-structure-rule-package*))
      new-rule )))


(defun remove-dotted-tag (cfr)
  ;; Once we have rolled out all the dotted rules, the outer most
  ;; rule covers the same span as the original rule -- i.e. its dot
  ;; has move all the way to the end.  In this respect the completion
  ;; of this rule has the same "solid" status as the completion of
  ;; a regular unary or binary rule.  To make this plain to the parser
  ;; we have to remove the evidence it would use to construe the
  ;; edge as coming from a dotted rule.  At the same time we need
  ;; a record of the rule's history so that we can manage it properly
  ;; during deletions and term-overwriting.

  (let* ((the-cons (member :dotted-rule (cfr-plist cfr)))
         (two-further (cddr the-cons))
         (original-cfr (car (cadr the-cons))))

    (if the-cons
      (then
        (if (eq the-cons (cfr-plist cfr))
          (setf (cfr-plist cfr) two-further)
          (else
            (rplaca the-cons (car two-further))
            (rplacd the-cons (cdr two-further))))
        (setf (cfr-plist cfr)
              (cons :rolled-out-from
                    (cons original-cfr
                          (cfr-plist cfr)))))
      (else
        (when *check-construction-of-nary-rules*
          (break/debug "The rule doesn't have a dotted tag ~
                        so there's nothing to remove"))))))



(defun category-of-dotted-rule (daughters)
  (let ((left-pname (pname-for (first daughters)))
        (right-pname (pname-for (second daughters))))

    (def-category/expr
      (intern (concatenate 'string
                           left-pname "_" right-pname)
              *category-package*)
      :source :dotted-rule )))

