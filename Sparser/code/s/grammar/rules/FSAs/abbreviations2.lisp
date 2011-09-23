;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "abbreviations"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:  2.2 September 1995

;; 2.0 (11/11/92 v2.3) new design to go with new style of caps fsa
;;     (5/22/93) finishing the job
;; 2.1 (5/5/94) added check against capitalization. Fixed case in it 5/10
;;     (4/30/95) added traces
;; 2.2 (9/6) broke out the routine that makes the edges so there can be a check
;;      for masked end-of-sentence periods.


(in-package :sparser)


;;;-------
;;; table
;;;-------

(defparameter *word/s-for-abbreviation* (make-hash-table :test #'eq)
  "Table from abbreviations (words) to the word or list of words
   they are abbreviations for.")



;;;----------
;;; def-form
;;;----------

(defun define-abbreviation (full-word-string abbrev-string
                            &optional name-prefix? )
  (let* ((full-word (define-word/expr full-word-string))
         (abbrev-word (define-word/expr abbrev-string))
         (rs (word-rules abbrev-word)))

    (unless rs
      (setq rs (setf (word-rule-set abbrev-word)
                     (make-rule-set :backpointer abbrev-word))))

    (unless (member 'abbreviation (rs-fsa rs))
      (setf (rs-fsa rs) (cons 'abbreviation (rs-fsa rs))))

    (when name-prefix?
      (push-onto-plist abbrev-word t :name-prefix))

    (let ((correspondences (gethash abbrev-word
                                    *word/s-for-abbreviation*)))
      (if correspondences
        (if (consp correspondences)
          (unless (member full-word correspondences :test #'eq)
            (setf (gethash abbrev-word *word/s-for-abbreviation*)
                  (cons full-word correspondences)))
          (unless (eq full-word correspondences)
            (setf (gethash abbrev-word *word/s-for-abbreviation*)
                  (list full-word correspondences))))
        (else
          (setf (gethash abbrev-word *word/s-for-abbreviation*)
                full-word)))

      correspondences )))


(defun abbreviation-is-a-prefix? (abbrev-word)
  (get-tag-for :name-prefix abbrev-word))


;;;-----------------------
;;; maintainance routines
;;;-----------------------

(defun abbreviation? (word)
  (gethash word *word/s-for-abbreviation*))

(defun delete-abbreviation (abbrev-string full-word-string)
  (let ((full-word (resolve-string-to-word full-word-string))
        (abbrev-word (resolve-string-to-word abbrev-string)))
    (unless full-word
      (error "~A is not defined as a word" full-word-string))
    (unless abbrev-word
      (error "~A is not defined as a word" abbrev-string))
    (delete/abbreviation abbrev-word full-word)))


(defun delete/abbreviation (abbrev full-word)
  (let ((cases (gethash abbrev *word/s-for-abbreviation*)))
    (unless cases
      (error "~A is not an abbreviation" abbrev))
    (if (consp cases)
      (then
        (unless (member full-word cases :test #'eq)
          (error "~A is not an abbreviation for ~A" full-word abbrev))
        (setf (gethash abbrev *word/s-for-abbreviation*)
              (remove full-word cases :test #'eq)))
      (else
        (unless (eq full-word cases)
          (error "~A is not an abbreviation for ~A" full-word abbrev))
        (setf (gethash abbrev *word/s-for-abbreviation*) nil)

        ;; since this is the only case for the abbreviation,
        ;; we have to pull the fsa too
        (let* ((rs (word-rules abbrev))
               (fsa-field (rs-fsa rs)))
          (if (cdr fsa-field)  ;; are there other fsas?
            (setf (rs-fsa rs) (remove 'abbreviation fsa-field))
            (setf (rs-fsa rs) nil)))))))



;;;---------------------------------
;;; making edges over abbreviations
;;;---------------------------------


(defun make-edge-over-abbreviation (&key start-pos end-pos
                                         abbreviation full-word)

  ;; A common locus for this operation so we can check for the case of
  ;; the abbreviation period masking an end-of-sentence period.

  (unless (pos-terminal end-pos)
    ;; n.b. accepting this scan w/o checking for what can happen
    ;; in the middle could be precarious. See what the do in
    ;; Cap-seq-continues-from-here? as a pointer.
    (scan-next-position))

  (let ( split-off-the-period )
    (when (word-at-this-position-is-capitalized? end-pos)
      (unless (abbreviation-is-a-prefix? abbreviation)
        ;; That notes cases like "Sen. Kennedy" where the period doesn't
        ;; signal an end-of-sentence.
        (setq split-off-the-period t)))

    (if split-off-the-period
      (let ((edge (make-chart-edge
                   :starting-position start-pos
                   :ending-position (chart-position-after start-pos)
                   :category full-word
                   :form nil
                   :referent full-word
                   :rule :abbreviation-fsa )))

        (setf (edge-right-daughter edge) :literal-in-a-rule)
        ;; This choice may be odd (though maybe it isn't), but making
        ;; this edge look like it's a literal will make the check
        ;; in Sortout-edges-over-single-cap-word happy without going
        ;; through contortions.

        ;; return Nil as a signal to any call that has to
        ;; communicate back to PNF
        nil )

      (let ((edge (make-chart-edge
                   :starting-position start-pos
                   :ending-position end-pos
                   :category full-word
                   :form nil
                   :referent full-word
                   :rule :abbreviation-fsa )))
        
        ;; The generic edge-creation routine doesn't consider this
        ;; simple case with a defacto binary edge
        (setf (edge-right-daughter edge) 
              (word-named "."))
        
        edge ))))



;;;-----------------------
;;; inline check from PNF
;;;-----------------------

(defun check-for-abbreviation-before-position (position)
  
  ;; Called from Checkout-period-for-capseq which is part of the 
  ;; proper name fsa.  It functions there as a predicate.
  ;; The current position (the argument) has a period in it.
  ;; We determines whether the word at the prior position is
  ;; an abbreviation and if so we span it and the period with an edge.

  (let* ((prior-position (chart-position-before position))
         (lc-abbrev-word? (pos-terminal prior-position))
         (caps-variant? (capitalized-correspondent
                             lc-abbrev-word? prior-position))
         full-word )

    (if (setq full-word
              (or (gethash lc-abbrev-word? *word/s-for-abbreviation*)
                  (when caps-variant?
                    (gethash caps-variant? *word/s-for-abbreviation*))))

      (let ((edge (make-edge-over-abbreviation
                   :start-pos  prior-position
                   :end-pos    (chart-position-after position)
                   :abbreviation (or caps-variant?
                                     lc-abbrev-word?)
                   :full-word full-word )))

        (tr :abbrev-check-found-one lc-abbrev-word? full-word)

        (if edge
          ;; It can happen that the abbreviation, because it incorporates
          ;; the period, will mask an end-of-sentence period.  That is
          ;; checked for in Make-edge-over-abbreviation, which, to signal
          ;; that it has detected that situation, will sometimes return Nil
          ;; even though it does in fact make an edge and enter it into the
          ;; chart.  We need this signal so that we can pass it back to
          ;; the PNF scaning routines as evidence that it should stop the
          ;; scan with the abbreviation and not continue further.
          edge 
          nil ))


      (else
        (tr :abbrev-check-found-nothing lc-abbrev-word?)
        ;; signal to the caller that there's no abbreviation to
        ;; go with this period so it should do something else
        nil ))))


(defun look-ahead-for-abbreviation (position)
  ;; same idea, but called at a different point because of the ] that
  ;; is associated with periods.
  (check-for-abbreviation-before-position position))





;;;-----------------------------------------------------------------
;;; fsa routine when called from main sequence (e.g. for lowercase)
;;;-----------------------------------------------------------------

(defun abbreviation (abbrev-word position-before-word)
  (when *trace-fsas*
    (format t "~&Starting FSA for the abbreviation ~A at p~A~%"
            abbrev-word
            (pos-token-index position-before-word)))

  (let ((next-position (chart-position-after position-before-word)))
    (when (null (pos-assessed? next-position))
      (scan-next-position))
    (let ((next-terminal (pos-terminal next-position)))
      
      (if (eq next-terminal word::period)
        (let ((word/s (gethash abbrev-word *word/s-for-abbreviation*))
              (position-after-period
               (chart-position-after next-position)))
          (unless word/s
            (break/debug "Miss-threading in a definition.~%The ~
                          word ~A triggered the abbreviation fsa~
                          ~%  but doesn't have any associated words.~%"
                         abbrev-word))
          (if (consp word/s)
            (then
              (when *trace-fsas*
                (format t "~&  Next word is a period. Introducing ~
                           edges for the words~%   ~A" word/s))
              (dolist (word word/s)
                (make-chart-edge
                 :starting-position position-before-word
                 :ending-position position-after-period
                 :category word
                 :form nil
                 :referent word
                 :rule :abbreviation-fsa)))
            (else
              (when *trace-fsas*
                (format t "~&  Next word is a period. Introducing ~
                           an edge for the word~%   ~A" word/s))
              (make-chart-edge
               :starting-position position-before-word
               :ending-position position-after-period
               :category word/s
               :form nil
               :referent word/s
               :rule :abbreviation-fsa)))

          position-after-period )

        (else
          (when *trace-fsas*
            (format t "~&  The next terminal is ~A so the abbreviation ~
                       does not succeed.~%" next-terminal))
          nil )))))

