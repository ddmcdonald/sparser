;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2013-2021  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "multiplier"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   February 2021

;; 3.0 (9/4/92 v2.3) Tweeked things to appreciate form rule ids
;;     (10/12) fixed typos
;; 3.1 (12/21) allowed Establish-multiplier to permit lists as the
;;      value of multiplications if the flag is set that way
;; 3.2 (3/8/93) updated Disable-cfr to handle form ids too
;; 3.3 (3/15/94) tweeked Establish-multiplier to be more sensitive to the
;;      duplication flags
;; 3.4 (4/24/95) the order of args in the call to Duplication-msg was wrong now.
;;     (10/25) changed the name of the duplicate dotted rules flag
;;     (3/9/13) Added the break-on-duplicates flag.
;;     (3/10/15) Coverted break in dup check to a cerror
;; 3.4 (5/12/15) Folded in *deliberate-duplication*

(in-package :sparser)


;;;------------------------------------
;;; install data for multiplying edges
;;;------------------------------------

(defun establish-multiplier (left-id right-id cfr)
  ;; called as a core part of defining a binary rule.  Enforces
  ;; the dictum that every rhs can have only a single parent, 
  ;; which makes it somewhat redundant with the duplication-check
  ;; function. See the calling pattern written next to that fn.

  (declare (special *deliberate-duplication*))

  (let ((existing-rule/s (multiply-ids left-id right-id)))
    (when existing-rule/s
      (cond
        ((or *permit-rules-with-duplicate-rhs*
             (and *dotted-rules-can-duplicate-regular-rules*
                  (or (dotted-rule cfr)
                      (and (cfr-p existing-rule/s)
                           (dotted-rule existing-rule/s)))))
         (setq cfr
               (if (listp existing-rule/s)
                 (cons cfr existing-rule/s)
                 (list cfr existing-rule/s))))
        (*deliberate-duplication*
         (when (consp existing-rule/s)
           (error "stub: extend for multiple existing rules"))
         ;; Are the two left-hand sides the same object?
         ;; If so we just accept the rule and do nothing, since its
         ;; pattern has already been knit in.
         (unless (eq (cfr-category existing-rule/s) ;; old one
                     (cfr-category cfr)) ;; new one
           (unless (duplicate-rule existing-rule/s (cfr-category cfr))
             (return-from establish-multiplier))))
        (t (unless (duplicate-rule existing-rule/s (cfr-category cfr))
             (return-from establish-multiplier)))))

    (let ((target-site (+ left-id right-id)))
      (setf (gethash target-site
                     *edge-multiplication-table*)
            cfr)
      target-site)))



;;;------------------------------------------------------
;;; "filtering" rules -- keeping them from forming edges
;;;------------------------------------------------------
#|
  The idea of filtering lexical rules is to facilitate tailoring
the vocabulary of a particular Sparser configuration. Rather than
not loading these rules (e.g. by having them in specific grammar
modules and omitting those modules from the load), the rules are
loaded, but they are prohibited from adding edges to the chart --
they are 'filtered out'.

  The master gate is *filter-vocabulary*, which is defined in
init/parameters.lisp. If this global is nil then nothing is
filtered. It can be set in a script so that it the filtering can go into effect
at load time, e.g. the 'score' script, which is defined in
init/loaders/scripts.lisp with all the other scripts. Note that
any script can be set up in ~/sparser/sparser.asd to tailor
the whole configuration of the load.

The filtering takes place at two points.
 1. During word lookup. As words are tokenized they are passed to
find-word (analyzers/tokenizer/lookup.lisp) which has to distinguish
between known and unknown words. A prerequisite for a word being 'known'
is having a rule-set. If there are single-term rules in the rule set
that we are going to filter (see supress-rules?), then the word is
shunted to unknown word processing. The offending rule is still there,
but we get the opportunity to, e.g., consult Comlex and bring in other
readings.

 2. At make-completed-unary-edge. One of the early sweeps through
a sentence introduces all the edges over each of the words. The words
will specify the single-term rules that would introduce the edges for
their different senses (e.g. the noun and verb senses of a word like "increase"),
and these rules are passed one at a time through make-completed-unary-edge.
There, if the flag *filter-vocabulary* is up, the rule object is passed to
ignore-rule?, and if that function determines that the rule should be ignored
then we immediately return from the call without creating an edge.
|#

(defvar *rule-categories-to-ignore* nil
  "The basic mechanism for ignoring a rule is by checking its lefthand
   side against a list of proscribed categories. This variable holds
   a list of the categories (in the Sparser package), and it set in
   setup-vocabulary-suppression according to the set specified by
   the value of *filter-vocabulary*")


(defun setup-vocabulary-suppression ()
  "Consult the value of *filter-vocabulary* and set up the corresponding
   filters."
  ;;/// if this evolves into a lot of cases and/or more structure to
  ;; the filtering, then define a standalone-definition capability so these
  ;; can be distributed to closer to what they control.
  (declare (special *filter-vocabulary* *rule-categories-to-ignore*))
  (when *filter-vocabulary*
    (ecase *filter-vocabulary*
      (:score
       (setq *rule-categories-to-ignore*
             '(cellular-location cell-type cell-line
               protein transcription-factor ; protein
               protein-domain binding-domain ; protein-domain
               molecule ; "Ct" in bio;other-defs-from-reach
               fiscal-quarter ; core/time/fiscal
               amino-acid ; "his"
               timezone ; dossiers/timezones, masks some state names - "CT"
               )))
      (:nothing
       (setq *rule-categories-to-ignore* nil)))))

;; (setup-vocabulary-suppression)
;;   Re-run this function if you make a change during a session



(defun ignore-rule? (rule)
  "Called from make-completed-unary-edge."
  (declare (special *filter-vocabulary* *rule-categories-to-ignore*))
  (let ((name (cat-name (cfr-category rule))))
    (memq name *rule-categories-to-ignore*)))
  

(defgeneric supress-rules? (word)
  (:documentation "Called during find-word when we're deciding whether
    the word just supplied by finish-token is 'known' or 'unknown'.
    Usually, having an associated rule-set is enough to determine that
    the word is known, but if the single-term-rewrite rules are the sort
    that we should ignore, then we pass the word through as unknown.
    Returning non-nil marks the word as unknown.")
  (:method ((rs rule-set))
    (declare (special *filter-vocabulary*))
    (when *filter-vocabulary*
      (let* ((unary-rules (rs-single-term-rewrites rs)))
        ;; don't want to check if "at least one rule is to be ignored"
        ;;  want to check that there is no non-ignorable rule
        ;;(some #'ignore-rule? unary-rules)
        (not (loop for rule in unary-rules
                     thereis (not (ignore-rule? rule))))
        
        ))))



;;;--------------------------
;;; turning rules on and off
;;;--------------------------

(defun disable-cfr (cfr)
  ;; removes the rules entry in the hash table, but doesn't otherwise
  ;; affect it, allowing it to later be enabled again by putting the
  ;; entry back.   Only works on primary labels, not form labels

  (let* ((left-ids
          (car (rs-right-looking-ids
                (rule-set-for (first (cfr-rhs cfr))))))
         (second-term (second (cfr-rhs cfr)))
         (right-ids
          (when second-term
            (car (rs-left-looking-ids
                  (rule-set-for second-term))))))

    (if second-term
      (let ((left-id
             (etypecase left-ids
               (number left-ids)
               (cons (car left-ids))))
            (right-id
             (etypecase right-ids
               (number right-ids)
               (cons (car right-ids)))))

        (let* ((target-site (+ left-id right-id))
               (entry (gethash target-site
                               *edge-multiplication-table*)))

          (etypecase entry
            (cfr (setf (gethash target-site
                                *edge-multiplication-table*)
                       nil))
            (cons
             (setf (gethash target-site
                            *edge-multiplication-table*)
                   (remove cfr entry))))))


      ()) ;; ??do we have to do anything for a single-term rule
          ;; Is this the equivalent of deleting the rule, given
          ;; that the primary purpose here is with abbreviations
    cfr ))


(defun enable-cfr (cfr)
  ;; removes the rules entry in the hash table, but doesn't otherwise
  ;; affect it, allowing it to later be enabled again by putting the
  ;; entry back
  (let ((left-id
         (car (rs-right-looking-ids
               (rule-set-for (first (cfr-rhs cfr))))))
        (right-id
         (car (rs-left-looking-ids
               (rule-set-for (second (cfr-rhs cfr)))))))

    (let ((target-site (+ left-id right-id)))
      (setf (gethash target-site
                     *edge-multiplication-table*)
            cfr)
      cfr )))



;;;------------------------------
;;; getting the next multipliers
;;;------------------------------

(defun next-right-looking-id ()
  (setq *next-right-looking-label-ID*
        (+ *next-right-looking-label-ID*
           *increment-for-right-looking-label-IDs*)))

(defun next-left-looking-id ()
  (incf *next-left-looking-label-ID*))


;;;-----------------------------------------
;;; record the multiplier with the daughter
;;;-----------------------------------------

(defun lookup/make-right-looking-label-id (rule-set)

  ;; This is for labels that are left-daughters in binary rules.
  ;; These combine with edges to their right.

  (let* ((ids (rs-right-looking-ids rule-set))
         (label-id (car ids)))

    (unless label-id
      (if ids
        (rplaca ids (setq label-id (next-right-looking-id)))
        (setf (rs-right-looking-ids rule-set)
              (cons (setq label-id (next-right-looking-id))
                    nil))))
    label-id ))


(defun lookup/make-right-looking-form-id (rule-set)
  (let* ((ids (rs-right-looking-ids rule-set))
         (form-id (cdr ids)))

    (unless form-id
      (if ids
        (rplacd ids (setq form-id (next-right-looking-id)))
        (setf (rs-right-looking-ids rule-set)
              (cons nil
                    (setq form-id (next-right-looking-id))))))
    form-id ))
       



(defun lookup/make-left-looking-label-id (rule-set)

  ;; This is for labels that are right-daughters in binary rules.
  ;; These combine with edges to their left.

  (let* ((ids (rs-left-looking-ids rule-set))
         (label-id (car ids)))

    (unless label-id
      (if ids
        (rplaca ids (setq label-id (next-left-looking-id)))
        (setf (rs-left-looking-ids rule-set)
              (cons (setq label-id (next-left-looking-id))
                    nil))))
    label-id ))


(defun lookup/make-left-looking-form-id (rule-set)
  (let* ((ids (rs-left-looking-ids rule-set))
         (form-id (cdr ids)))

    (unless form-id
      (if ids
        (rplacd ids (setq form-id (next-left-looking-id)))
        (setf (rs-left-looking-ids rule-set)
              (cons nil
                    (setq form-id (next-left-looking-id))))))
    form-id ))
  


