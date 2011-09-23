;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "polywords"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:  4.4 August 1993

;; 3.0 (10/2/92 v2.3) tweeked interactions with scan as that routine
;;      was broken down into smaller parts.
;; 3.1 (12/29) integrated capitalization checks
;; 4.0 (3/11/93) put in the capacity to handle multiple completions
;;      and put in a switch so the hairy version doesn't have to be
;;      used in :topmost-edges
;;     (5/6) finishing that routine
;; 4.1 (10/29) updated the checks against status.
;; 4.2 (4/4/94) added another case that 'status' can be in, added checks for
;;      subsuming known capitalized variants.
;; 4.3 (7/22) changed status check in Extend-mc-pw
;; 4.4 (8/1) elaborated mix-case check to allow competion of lc's as a default if the
;;      specific case doesn't complete
;;     (8/4) added field for the rule to the edges these form

(in-package :sparser)

;;;--------
;;; switch
;;;--------

(unless (boundp '*polyword-routine*)
  (defparameter *polyword-routine*
                :multiple-completions
                ;; :single-completions
                ))


;;;--------
;;; driver
;;;--------

(defun do-polyword-fsa (word cfr position-scanned)
  ;; The cfr is just a hook, the word at this position is the first
  ;; word of that and possibly many other polyword-based cfrs, and
  ;; we'll go with the longest of them that completes.
  ;; Loop through fsa1 until some completion has been found,
  ;; then loop through fsa2 looking for a longer one.
  
  (declare (ignore cfr))
  (tr :polyword-start word position-scanned)
  (ecase *polyword-routine*
    (:multiple-completions
     (extend-mc-pw nil word nil
                   position-scanned
                   (chart-position-after position-scanned)))
    (:single-completions
     (polyword-fsa1 word
                    position-scanned
                    (chart-position-after position-scanned)))))


;;;------------------------------
;;; multiple completions version
;;;------------------------------

(defun extend-mc-pw (complete-before-this
                       ;; A list of (rule . position) reflecting
                       ;; polywords that completed on the prior word or
                       ;; earlier.  If nothing extends on this scan
                       ;; these are instantiated.  All the cases in this
                       ;; list will have ended at the same position since
                       ;; the protocol is 'longest takes all' rather
                       ;; than to complete every completed prefix sequence
                       ;; that ever occurs
                     word
                       ;; only has a value on the first step of the call.
                       ;; It's the word that triggered the polyword
                     dotted
                       ;; These are dotted categories that might extend
                       ;; or complete with the scan we are going to make
                     initial-position
                       ;; the position before the first word in any
                       ;; of the possible pw sequences.  Any pw that
                       ;; completes has this as its starting position
                     next-position
                       ;; the position we are about to scan. Any ongoing
                       ;; cases that complete at this point will end on
                       ;; this position.
                     )

  (let ((status (pos-assessed? next-position)))
    (unless status
      (scan-next-position))    

    (let ((next-word (pos-terminal next-position))
          newly-complete
          extended-dotted 
          rule/s )
      (tr :pw-word-check next-word)

      ;; populate the accumulators by multiplying the argument cases
      ;; against the new word. There are two cases, and they all do
      ;; exactly the same thing. But since their results are reflected
      ;; in updates to lists that they all have to see, and since Push
      ;; is dramatically faster than Append, it seems expedient (if ugly)
      ;; to just roll it all out in line here rather than take the
      ;; overhead of subroutines.
      (when word
        ;; first time through
        (setq rule/s (multiply-words/case-from-position
                      word next-word initial-position next-position))
        (if rule/s
          (if (consp rule/s)
            (dolist (r rule/s)
              (if (dotted-rule r)
                (then (tr :pw-word-extends)
                      (push r extended-dotted))
                (else
                  (tr :pw-complete-looking-further (cfr-category r))
                  (push r newly-complete))))
            (else
              (if (dotted-rule rule/s)
                (then
                  (tr :pw-word-extends)
                  (push rule/s extended-dotted))
                (else
                  (tr :pw-complete-looking-further (cfr-category rule/s))
                  (push rule/s newly-complete)))))
          (tr :pw-word-doesnt-extend)))
                

      (when dotted
        (if (cdr dotted)
          (dolist (dot dotted)
            (setq rule/s (multiply-label-and-word/case-from-pos
                          (cfr-category dot) next-word next-position))
            (if rule/s
              (if (consp rule/s)
                (dolist (r rule/s)
                  (if (dotted-rule r)
                    (then (tr :pw-word-extends)
                          (push r extended-dotted))
                    (else
                      (tr :pw-complete-looking-further (cfr-category r))
                      (push r newly-complete))))
                (else ;; there's just one rule returned, no list
                  (if (dotted-rule rule/s)
                    (then
                      (tr :pw-word-extends)
                      (push rule/s extended-dotted))
                    (else
                      (tr :pw-complete-looking-further (cfr-category rule/s))
                      (push rule/s newly-complete)))))
              (tr :pw-word-doesnt-extend)))
          (else
            (setq rule/s (multiply-label-and-word/case-from-pos
                          (cfr-category (car dotted)) next-word next-position))
            (if rule/s
              (if (consp rule/s)
                (dolist (r rule/s)
                  (if (dotted-rule r)
                    (then (tr :pw-word-extends)
                          (push r extended-dotted))
                    (else
                      (tr :pw-complete-looking-further (cfr-category r))
                      (push r newly-complete))))
                (else ;; there's just one rule returned, no list
                  (if (dotted-rule rule/s)
                    (then
                      (tr :pw-word-extends)
                      (push rule/s extended-dotted))
                    (else
                      (tr :pw-complete-looking-further (cfr-category rule/s))
                      (push rule/s newly-complete)))))
              (tr :pw-word-doesnt-extend)))))


      ;; appreciate the results and return or recurse as appropriate

      (if (null extended-dotted)
        (then
          ;; nothing continues from here. If there's anything complete
          ;; now or already complete from before then take it, otherwise 
          ;; return nil
          (cond (newly-complete
                 (dolist (r newly-complete)
                   (make-edge-over-long-span
                    initial-position
                    (chart-position-after next-position)
                    (cfr-category r)
                    :rule r
                    :form (cfr-form r)
                    :referent (cfr-referent r)))
                 (chart-position-after next-position))

                (complete-before-this
                 ;; write their rules, which they have with them
                 (let ( rule  ending-position )
                   (dolist (pair complete-before-this)
                     (setq rule (car pair)
                           ending-position (cdr pair))
                     (make-edge-over-long-span
                      initial-position
                      ending-position
                      (cfr-category rule)
                      :rule rule
                      :form (cfr-form rule)
                      :referent (cfr-referent rule)))
                   ending-position))

                (t nil)))
        (else
          ;; something completed, so we package up any newly complete
          ;; polywords and recurse
          (when newly-complete
            (let ((position-after (chart-position-after next-position)))
              (setq newly-complete
                    (mapcar #'(lambda (r)
                                (cons r position-after))
                            newly-complete))))

          (extend-mc-pw (or newly-complete
                            complete-before-this)
                        nil   ;; 'word' parameter
                        extended-dotted
                        initial-position
                        (chart-position-after next-position)))))))




;;;-----------------------------------
;;; unique, single completion version
;;;-----------------------------------

(defun polyword-fsa1 (last-label first-position next-position)
  (let ((status (pos-assessed? next-position)))
    (if status
      (case status
        (:scanned )
        (:boundaries-introduced )
        (:ended-segment )
        (otherwise (scan-next-position)))
      (scan-next-position))
  
    (let ((next-word (pos-terminal next-position)))
      (tr :pw-word-check next-word)
      (let ((rule
             (if (word-p last-label)  ;; true on first step
               (multiply-words/case-from-position
                last-label next-word first-position next-position)
               (multiply-label-and-word/case-from-pos
                last-label next-word next-position))))
      (if rule
        (if (dotted-rule rule)
          (then
            (tr :pw-word-extends)
            (polyword-fsa1 (cfr-category rule)
                           first-position
                           (chart-position-after next-position)))
          (else
            ;; it's a real rule, something that can complete.
            ;; We look for anything longer but take it if nothing
            ;; pans out.
            (tr :pw-complete-looking-further (cfr-category rule))
            (polyword-fsa2 rule
                           (cfr-category rule)
                           first-position
                           (chart-position-after next-position))))
        (else
          (tr :pw-word-doesnt-extend)
          nil ))))))



(defun polyword-fsa2 (pending-rule last-label
                      first-position pending-position)

  (let* ((status (pos-assessed? pending-position)))
    (if status
      (case status
        (:scanned )
        (:boundaries-introduced )
        (:ended-segment )
        (otherwise (scan-next-position)))
      (scan-next-position))
    
    (let ((next-word (pos-terminal pending-position)))
      (tr :pw-word-check next-word)
      (let ((rule (multiply-label-and-word/case-from-pos
                   last-label next-word pending-position)))
        (if rule
          (if (dotted-rule rule)
            (then
              (tr :pw-word-extends)
              (polyword-fsa2 pending-rule
                             (cfr-category rule)
                             first-position
                             (chart-position-after pending-position)))
            
            ;; replace the pending rule with this new complete one
            (else
              (tr :pw-complete-looking-further (cfr-category rule))
              (polyword-fsa2 rule
                             (cfr-category rule)
                             first-position
                             (chart-position-after pending-position))))
          
          ;; take what we've got
          (else
            (let ((edge (make-edge-over-long-span
                         first-position
                         pending-position
                         (cfr-category pending-rule)
                         :rule pending-rule
                         :form (cfr-form pending-rule)
                         :referent (cfr-referent pending-rule))))
              (tr :pw-doesnt-extend-taking-complete edge)
              pending-position )))))))



;;;--------------------------
;;; word-checking subroutine
;;;--------------------------

(defun multiply-words/case-from-position (lc1 lc2
                                          pos1 pos2)

  ;; The positions carry the capitalization information. The words
  ;; are just the canonical lowercase versions of the word's spelling,
  ;; and there has been no stemming.
  
  (let ((caps-count1
         (etypecase lc1
           (word (word-capitalization-variants lc1))
           (category nil)))
        (caps-count2 
         (etypecase lc2
           (word (word-capitalization-variants lc2))
           (category lc2))))
    ;; The capitalization that a word comes in with only matters if
    ;; the word is sensitive to capitalization, in that one or more
    ;; rules reference it in other than lowercase form, which is
    ;; reflected in a special field on the word object.
    
    (let ((label-to-use1
           (if caps-count1
             (word-that-fits-position lc1 caps-count1 pos1)
             lc1))
          (label-to-use2
           (if caps-count2
             (word-that-fits-position lc2 caps-count2 pos2)
             lc2)))
      
      (let ((most-specific-completion
             (multiply-labels label-to-use1 label-to-use2)))

        (if most-specific-completion
          most-specific-completion

          ;; if there isn't a rule specific to this combination of
          ;; capitalizations, try the lowercase.
          (multiply-labels lc1 lc2))))))



(defun multiply-label-and-word/case-from-pos (label1 lc2 pos2)
  ;; like the case above, but we've gone beyond the first two words
  ;; of the polyword so we're comparing the label of a dotted rule
  ;; (or whatever) with a new word and only the word might be specialized
  ;; by its capitalization
      
  (let ((caps-count2 
         (etypecase lc2
           (word (word-capitalization-variants lc2))
           (category lc2))))
    (let ((label-to-use2
           (if caps-count2
             (word-that-fits-position lc2 caps-count2 pos2)
             lc2)))

      (let ((most-specific-completion
             (multiply-labels label1 label-to-use2)))
        (if most-specific-completion
          most-specific-completion
          (multiply-labels label1 lc2))))))




(defun word-that-fits-position (lc-word variants position)
  ;; the caller should ensure that there are some variants before
  ;; we make all these checks. If there aren't any, then the
  ;; lower-case, canonical version is always the one we go with.
  (let ((actual-capitalization
         (pos-capitalization position)))

    (if (eq actual-capitalization :lower-case)
      lc-word

      ;(sort-out-multiple-word-variants
      ; variants lc-word actual-capitalization)
      ;;  // consider reviving this as a common routine that also
      ;; works within [analyzers;FSA:words] should there be a need
      ;; to complicate that routine any further
      (let ((exact-match
             (find actual-capitalization variants
                   :key #'word-capitalization)))

        (if exact-match
          exact-match
          (let ((subsuming-match (subsuming-variant actual-capitalization
                                                    variants)))

            (if subsuming-match
              subsuming-match
              lc-word )))))))

