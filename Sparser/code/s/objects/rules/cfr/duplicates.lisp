;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2011-2016  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "duplicates"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   July 2016

;; broken out from [define] 9/6/92 v2.3
;; 0.1 (11/1) fixed polarity of dotted rules can be duplicated.
;; 0.2 (12/21) broke out the routine into a check and a judgement
;; 0.3 (3/8/93) revised the check to allow multiple-completions
;; 0.4 (8/27) changed the polarity renamed the check
;; 0.5 (4/24/95) reworked the message to be more explicit and to anticipate
;;      a call from Establish-multiplier with a list of existing rules.
;; 0.6 (10/25) renamed the dotted dup. flag to be clearer, changed the rules in
;;      when a dotted rule can be made when not in 'all-edges' mode, put in 
;;      more documentation 
;;     (1/19/11) Added flag to break when illegal duplicates have been found
;; 0.7 (3/9/13) Discovered that the tests in duplication-check are duplicated
;;      in establish-multiplier, which calls the duplication-msg itself.
;;      Clarified the duplication message. 1/30/14 Added doc. aimed at
;;      sorting this out further.
;; 0.8 (5/12/15) Made duplication-check aware of *deliberate-duplication*
;;     (6/7/15) Fixed C&S mistake in that code

(in-package :sparser)

;;;---------------------------
;;; policy-marking parameters
;;;---------------------------

(defvar *permit-rules-with-duplicate-rhs* nil
    "Set by one of the switches routines. Should always be nil
     unless the 'all-edges' parsing protocol is being used.")


(defvar *dotted-rules-can-duplicate-regular-rules* nil
    "A binary rule may correspond to a prefix of an n-ary rule.
     In this case we will want a dotted-rule that has the same
     rhs at the binary rule, and there is a parsing-time check
     to lookahead to see if the n-ary rule is going to complete
     and in that case take the dotted rule as the analysis of
     the prefix in preference to the binary rule.
     Standard case: 'chief executive' and 'chief executive officer'" )

(defvar *break-on-illegal-duplicate-rules* nil
    "Faciliate debugging and clean up by stopping the load / rule-execution 
     when an illegal duplicate has been found.")


;;;-------------------
;;; duplication check
;;;-------------------

(defun redefinition-of-rule (existing-cfr/s lhs rhs form)
  "Called as part of defining a cfr. The existing-cfr/s were
   found on the basis of the labels in its righthand side.
   If the lhs and form of the rule being defined are
   the same as that of some existing rule (i.e. we're
   redefining some rule that we've already got) then we
   have a duplication, which is ok only in certain limited
   curcumstances."
  (if (listp existing-cfr/s)
    (some (lambda (cfr) (redefinition-of-rule cfr lhs rhs form)) existing-cfr/s)
    (and (eq lhs (cfr-category existing-cfr/s))
         (equal rhs (cfr-rhs existing-cfr/s))
         (eq form (cfr-form existing-cfr/s)))))


;;;------------------
;;; possible actions
;;;------------------

(defun duplication-check (existing-cfr
                          lhs rhs form referent source)
  "It's been determined that the rule is a duplicate, i.e. it is
   putting a new lhs or form on a rhs that has already been defined.
   What we do depends on how the policy flags are set. If the flags
   permit it, we let the rule go through, otherwise we announce the
   illegal duplication. Since this routine is the end of a tail-recursive
   chain, that will keep the rule from going through."
  (declare (optimize debug)
           (special *deliberate-duplication*))
  (check-type existing-cfr cfr)
  (cond (*permit-rules-with-duplicate-rhs*
         (construct-cfr lhs rhs form referent source))

        ((dotted-rule existing-cfr)
         (if *dotted-rules-can-duplicate-regular-rules*
           (construct-cfr lhs rhs form referent source)
           (or (duplicate-rule existing-cfr lhs)
               (construct-cfr lhs rhs form referent source))))

        (*deliberate-duplication*
         (if (and (eq lhs (cfr-category existing-cfr))
                  (eq form (cfr-form existing-cfr)))
           existing-cfr
           (or (duplicate-rule existing-cfr lhs)
               (construct-cfr lhs rhs form referent source))))

        (t (or (duplicate-rule existing-cfr lhs)
               (construct-cfr lhs rhs form referent source)))))

#| The path to the call to other duplication check 
from establish-multiplier 
  < knit-in-binary-rule < construct-cfr < define-cfr
   < i/r/s-make-the-rule < r/r/s-multiply-through/rhs < r/r/s-multiply-through/lhs
     < instantiate-rule-schema < make-rules-for-rdata 
       < dereference-and-store?-rdata-schema < setup-rdata 
          < decode-category-parameter-list < define-category/expr

from define-cfr it depends on whether redefinition-of-rule says yes,
  which is gated by lookup/cfr on the lhs and rhs returning a rule/s.


|#

(define-condition duplicate-rule (error)
  ((existing-cfr :initarg :existing-cfr :reader existing-cfr)
   (new-lhs :initarg :new-lhs :reader new-lhs))
  (:report (lambda (condition stream &aux
                    (existing-cfr (existing-cfr condition)))
             (format stream
                     "Illegal rule duplication ~@[in the file ~a~].~%~
                      Can't use the righthand side ~a with the new lhs ~a~%~
                      because ~a already uses that rhs with the lhs ~a."
                     *file-being-lloaded*
                     (cfr-rhs existing-cfr)
                     (new-lhs condition)
                     (cfr-symbol existing-cfr)
                     (cfr-category existing-cfr)))))

(defun duplicate-rule (existing-cfr new-lhs &aux
                       (existing-cfr (if (consp existing-cfr)
                                       (car existing-cfr)
                                       existing-cfr)))
  (declare (optimize debug))
  (check-type existing-cfr cfr)
  (unless (syntactic-rule? existing-cfr) ;; has a keyword there
    (check-type new-lhs category))
  (when *break-on-illegal-duplicate-rules*
    (restart-case (error 'duplicate-rule
                         :existing-cfr existing-cfr
                         :new-lhs new-lhs)
      (make-new ()
        :report "Construct the new rule anyway."
        nil)
      (use-old ()
        :report "Use the existing rule."
        existing-cfr))))
