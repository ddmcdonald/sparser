;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1996 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "hyphen"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:  0.3 June 1996

;; initiated 1/11/94 v2.3.  Fleshed out for sequences of hyphens 5/18
;; Added hyphenated words 8/12
;; 0.1 (10/26) restricted automatic construction of hypenated words to case
;;      where there was no analysis of the prior text
;; 0.2 (10/12/95) made the sequence of hyphens routine put in a segment boundary.
;; 0.3 (11/17) distinguished two from more hyphen sequences in the label
;;     (5/24/96) added an explicit bracket assignment to the category that spans
;;      "--" since the explicit introduction of brackets that's done in the fsa
;;      isn't appreciated by Scan.
;;     (6/27) changed call to label-rule-set to word-.. to avoid the undefined function
;;      warning that's been a nuisance.

(in-package :sparser)

;;;---------------------------------
;;; link up the routine to the word
;;;---------------------------------

(let* ((hyphen word::hyphen)
       (rs (word-rules hyphen)))
  (if rs
    (setf (rs-fsa rs)
          (cons 'hyphen-routine (rs-fsa rs)))
    (else
      (setf (word-rule-set hyphen)
            (setq rs (make-rule-set :backpointer hyphen)))
      (setf (rs-fsa rs) '( hyphen-routine )))))


;;;---------------------------
;;; 1st routine -- word-level 
;;;---------------------------

(defun hyphen-routine (hyphen-word start-pos)

  ;; We've be called by the fsa driver Do-fsa-field at the moment
  ;; that the first hyphen in what may be a sequence of hyphenated
  ;; words has been scanned. 
  ;;   ///The fact that the words have been linked by hyphens is
  ;; taken to mean that they would be interpreted as a group or
  ;; that some otherwise default pairing of these words with their
  ;; neighbors should be overridden by spanning them with an edge
  ;; and thus making them invisible to those neighbors.
  ;;   ///In Sparser's terms, this means that any phrase boundaries
  ;; the words might introduce should be overridden

  (declare (ignore hyphen-word))
  (let ((next-pos (chart-position-after start-pos)))
    (unless (pos-terminal next-pos)
      (scan-next-position))
    (let ((next-word (pos-terminal next-pos)))

      (cond ((eq next-word word::hyphen)
             (scan-for-sequence-of-hyphens
              2 (chart-position-after next-pos) start-pos))

            ((null (pos-preceding-whitespace next-pos))
             (look-for-hyphenated-words
              start-pos next-pos next-word))
            ))))



(defun look-for-hyphenated-words (pos-before-hyphen
                                  next-pos next-word)

  ;; Only dealing with two word dm&p case while trying to cope with
  ;; the interaction of hyphen defaults with specifically noted hyphens
  ;; in explicit rules (e.g. the measurement and age in "43-year-old")
  ;; ///Also consider the variety of things that could start after
  ;; the hyphen such as polywords and multiple edges over the next
  ;; word.  Priority should go to edge definitions (ML) if they
  ;; complete over the whole sequence (otherwise those edges are
  ;; debris to be analyzed)

  (when *do-domain-modeling-and-population*
    ;; If there is no analysis of the items to the left then assume
    ;; that there will be none to the right and let the hyphenate-pair-
    ;; of-words hack go through, otherwise do nothing.

    (unless (ev-top-node (pos-ends-here pos-before-hyphen))
      ;(break "got through")
      (construct-hyphenated-word-pair pos-before-hyphen
                                      next-pos next-word))))


(defun construct-hyphenated-word-pair (pos-before-hyphen
                                       next-pos next-word)
    (let* ((pos-before-prior-word (chart-position-before pos-before-hyphen))
           (word-before-hyphen (pos-terminal pos-before-prior-word))
           (multi-word-string
            (concatenate 'string
                         (word-pname word-before-hyphen)
                         "-"
                         (word-pname next-word)))
           (polyword (define-polyword/expr multi-word-string)))

      (let ((pw-rule (pw-fsa polyword)))
        (unless (cfr-p pw-rule)
          (break "Violated assumption: the fsa field of the polyword~
                  ~%~A contains something other than a cfr:~
                  ~%  ~A" polyword pw-rule))
        (tr :pw-created-from-hypenate-word-pair multi-word-string)
        (let ((end-pos
               (chart-position-after next-pos)))
          (make-edge-over-long-span pos-before-prior-word
                                    end-pos
                                    (cfr-category pw-rule)
                                    :form (cfr-form pw-rule)
                                    :referent (cfr-referent pw-rule)
                                    :rule pw-rule)
          end-pos ))))
                                    





(defun scan-for-sequence-of-hyphens (number-so-far
                                     next-pos
                                     start-pos)
  (unless (pos-terminal next-pos)
    (scan-next-position))
  (let ((next-word (pos-terminal next-pos)))
    (if (eq next-word word::hyphen)
      (scan-for-sequence-of-hyphens (1+ number-so-far)
                                    (chart-position-after next-pos)
                                    start-pos)
      (make-edge-over-accumulated-hyphens
       number-so-far start-pos next-pos))))



(define-category sequence-of-hyphens)
(assign-brackets sequence-of-hyphens ( ].phrase  phrase.[ ))

(define-category pair-of-hyphens)
(assign-brackets pair-of-hyphens ( ].phrase  phrase.[ ))



(defun make-edge-over-accumulated-hyphens (length
                                           start-pos end-pos)
  (case length
    (2  (make-chart-edge :starting-position start-pos
                         :ending-position end-pos
                         :category (category-named 'pair-of-hyphens)
                         :rule-name :hyphen-routine ))
    (otherwise
     (make-chart-edge :starting-position start-pos
                      :ending-position end-pos
                      :category (category-named 'sequence-of-hyphens)
                      :rule-name :hyphen-routine )))

  ;; be sure that it terminates/starts segments
  ;;   5/96 This scheme doesn't work because Scan is looking for brackets
  ;;    on the label on the edge that an fsa introduces. It doesn't look
  ;;    for a bracket unless it sees it on the label.
  ;;(introduce-segment-separating-brackets
  ;; end-pos (category-named 'sequence-of-hyphens) :new)

  end-pos )

