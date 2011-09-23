;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "action"
;;;   Module:  "analyzers;sectionizing:"
;;;  Version:  1.5 January 1995

;; trivial version implemented 8/90
;; redone from scratch 12/8/93 v2.3
;; 0.1 (12/17) Added throw to terminate ongoing PNF parses, and introduction of
;;      a [ at the end of the edge. 
;; 0.2 (1/5/94) appreciated that we could get a word as well as an edge
;; 0.3 (5/18) promulgating change in arg. pattern to bracket introductions
;; 0.4 (7/27) added pause-check
;; 0.5 (1/4/95) reinstalled introducing brackets at start pos
;;     (1/9) added Span-region-with-section-marker-edge

(in-package :sparser)


;;;--------------------------
;;; generic creation routine
;;;--------------------------

(defun span-region-with-section-marker-edge (sm start-pos end-pos)

  ;; this is useful when the observation that we have a section marker
  ;; at this point in the chard is made through some implicit pattern
  ;; recognition rather than by having predefined the specific words
  ;; involved

  (let ((edge (make-chart-edge
               :starting-position start-pos
               :ending-position end-pos
               :category (sm-word sm)
               :form category::section-marker
               :referent sm)))
    edge ))




;;; completion action

(defun establish-section-within-document (sm edge pos-before)
  ;; Called from Carry-out-actions because the word labeling this edge
  ;; has :section-marker and the sm as its completion action.
  ;; The 'edge' can also be a word, e.g. for paragraph-starts. 
  ;;   It is the 'argument' passed in to Carry-out-actions
  ;; The position-before is the position at which the edge starts
  ;;   or the one just before the word.

  (tr :establishing-section sm pos-before)

  (if *current-section-type*
    (then (tr :prior-section *current-section-type*)
          (terminate-ongoing-section pos-before))
    (else (tr :no-prior-section)))

  ;; now that the prior section (if any) has had a chance to
  ;; use these state variables, update them.
  (setq *current-section-type* sm)
  (setq *pos-current-section-starts-at* pos-before)

  (let ((initiation-action (sm-initiation-action sm)))
    (when initiation-action
      (funcall initiation-action edge pos-before))

    ;; introduce a [ in case it isn't automatically there from the
    ;; word (or whatever) that introduced the SM edge.
    (let ((end-pos (etypecase edge
                     (edge (pos-edge-ends-at edge))
                     (word (chart-position-after pos-before))))
          (sm-word (sm-word sm)))
      
      (unless ([-on-position-because-of-word? end-pos sm-word)
        (place-boundary/begins-after
         sm-word end-pos (find-bracket :[ :after 'phrase)))
      (unless (]-on-position-because-of-word? pos-before sm-word)
        (place-boundary/ends-before
         sm-word pos-before (find-bracket :] :before 'phrase))))

    (when *pnf-has-control*
      ;; PNF has scanned the maximal span of capitalized words,
      ;; which has included a section-marker word. Now we're in the
      ;; second phrase of PNF, doing the word-actions for each word
      ;; in the span. Since we know that a section-marker can't be
      ;; part of a name (and we know that the word or pattern that
      ;; prompts the insertion of this section marker is definitive,
      ;; but that's the problem of whatever introduces it), we must
      ;; pre-empt the PNF process and break its sequence here.
      (tr :pnf/sm-encountered  pos-before)
      (throw :early-termination-of-pnf-parse pos-before)) 

    sm ))


(defun terminate-ongoing-section (pos-before)
  ;; the position is the one before the word/edge that initiated
  ;; the start of the next section.

  (let ((sm *current-section-type*))
    (when sm
      ;; have to allow for there not being a current section, since
      ;; we're using the same machinery at the very start of an
      ;; article as later on.

      (tr :terminating-section sm pos-before)

      (let ((termination-action (sm-termination-action sm)))
        (when termination-action
          (funcall termination-action pos-before))

	(unless *nothing-Mac-specific*
	  (synchronize/should-we-pause? sm pos-before))

        (setq *current-section-type* nil)
        sm ))))

