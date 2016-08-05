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
;; 3/21/2015 SBCL caught a frank error - search for SBCL in code below.
;; 1/16/2016 Revamped to use new plist interface, removed SBCL comment.

(in-package :sparser)

;;;--------------------------------------------------------
;;; predicates, access functions for parts of dotted rules
;;;--------------------------------------------------------

(defun edge-of-dotted-intermediary (e)
  "Is this edge the result of completing a category that was
constructed to name the dotted intermediary cases of an N-ary
rule before all of the rhs daughters are found?"
  (eq :dotted-intermediary (edge-form e)))

(defun nary-rule (cfr)
  "Checks whether the cfr has more than two immediate constituents."
  (get-tag :n-ary cfr))

(defun dotted-rule (cfr) 
  "Predicate for dotted rules. These rules exist only because they are
needed as an intermediate case in some N-ary rule."
  ;; The second case is needed because the first is available only once the
  ;; cfr is finished, and we sometimes need to ask this question before that.
  (or (get-tag :dotted-rule cfr)
      (eq :dotted-intermediary (cfr-form cfr))))

(defun dotted-rule? (cfr)
  "Variant motivated by sort-cfrs-by-order-of-definition, where
it turned out that the condition tested in dotted-rule doesn't
get all the cases of cfrs with unusual symbols."
  (or (dotted-rule cfr)
      (get-tag :rolled-out-from cfr)))

(defun source-of-dotted-rule (dotted-cfr)
  (check-type dotted-cfr (satisfies dotted-rule?) "a dotted rule")
  (or (get-tag :dotted-rule dotted-cfr)
      (get-tag :rolled-out-from dotted-cfr)))

(defun original-rhs-of-nary-rule (cfr)
  (check-type cfr (satisfies nary-rule) "an N-ary rule")
  (first (get-tag :n-ary cfr)))

(defun intermediaries-of-nary-rule (cfr)
  (check-type cfr (satisfies nary-rule) "an N-ary rule")
  (second (get-tag :n-ary cfr)))

(defun set-intermediaries-of-nary-rule (cfr intermediaries)
  (check-type cfr (satisfies nary-rule) "an N-ary rule")
  (setf (second (get-tag :n-ary cfr)) intermediaries))

;;;-------------------
;;; policy parameters
;;;-------------------

;; When we're only accepting n-aries in non-top-edges-only mode,
;; then we don't have to worry about subsets of the constituents
;; being pre-empted by legitimate smaller rules, and consequently
;; we can cut down on the subsets of the rhs that we form.
;;   Arbitrarily I've decide to have the remaining rollout come 
;; from the left rather than the right.

;(defvar *rollout-naries-from-the-right* nil))

(defvar *rollout-naries-from-the-left* t)

;;;--------
;;; driver
;;;--------

(defun create-dotted-intermediaries-of-nary-rule (cfr)
  "Called from knit-into-psg-tables. Drives all the work of setting up
a cfr that involves more than two immediate constituents."
  (let ((rhs (cfr-rhs cfr))
        dotted-rules )

    ;(when *rollout-naries-from-the-right*
    ;  (setq dotted-rules
    ;        (rollout-naries-from-the-right rhs cfr)))

    (when *rollout-naries-from-the-left*
      (setq dotted-rules
            (append (rollout-naries-from-the-left rhs cfr)
                    dotted-rules)))

    (setf (get-tag :n-ary cfr) `(,rhs ,dotted-rules))

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

(defvar *check-construction-of-nary-rules* nil
  "Debug construction of N-ary rules.")

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
    (setf (get-tag :dotted-rule new-rule)
          `(,parent-rule ,daughters ,remaining-constituents))

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
  "Once we have rolled out all the dotted rules, the outermost rule
covers the same span as the original rule -- i.e., its dot has moved
all the way to the end. In this respect the completion of this rule
has the same \"solid\" status as the completion of a regular unary
or binary rule. To make this plain to the parser, we have to remove
the evidence it would use to construe the edge as coming from a dotted
rule. At the same time, we need a record of the rule's history so that
we can manage it properly during deletions and term-overwriting."
  (setf (get-tag :rolled-out-from cfr)
        (prog1 (first (get-tag :dotted-rule cfr))
          (remove-tag :dotted-rule cfr))))

(defun category-of-dotted-rule (daughters)
  (let ((left-pname (pname (first daughters)))
        (right-pname (pname (second daughters))))

    (def-category/expr
      (intern (concatenate 'string
                           left-pname "_" right-pname)
              *category-package*)
      :source :dotted-rule )))

