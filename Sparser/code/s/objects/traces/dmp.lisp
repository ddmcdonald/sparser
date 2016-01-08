;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "DM&P"
;;;   Module:  "objects;traces:"
;;;  Version:  February 1995

;; initiated 3/28/94 v2.3, added more 7/13. 8/11 adding traces for
;; the introduction of terms.  Small tweeks ...8/16.  11/17 cases for
;; capitalization. Teeked them 11/23.  Added some for vg-mining 1/3 ..1/17
;; 1/23 fixed glitch.  2/13 added traces for RR processing

(in-package :sparser)


(defun trace-terms ()
  (setq *trace-term-introduction* t))

(defun unTrace-terms ()
  (setq *trace-term-introduction* nil))


(defun trace-dm&p ()
  (setq *trace-DM&P* t))

(defun unTrace-dm&p ()
  (setq *trace-DM&P* nil))


(defun step-dm&p ()
  (setq *step-dm&p* t))

(defun unStep-dm&p ()
  (setq *step-dm&p* nil))


(defun trace-rr ()
  (setq *trace-realization-patterns* t))

(defun unTrace-rr ()
  (setq *trace-realization-patterns* nil))





;;----- dispatch

(deftrace :doing-DM&P-on-segment (starts-at ends-at coverage)
  ;; called from dm/Dispatch-on-segment-coverage
  (when *trace-DM&P*
    (trace-msg "Doing DM&P on the segment between p~A and p~A ~
                ~%  \"~A\"  that is ~A"
               (pos-token-index starts-at)
               (pos-token-index ends-at)
               (string-of-words-between starts-at ends-at)
               coverage)))


(deftrace :dm&p/segment-is-function-word (starts-at)
  ;; called from dm/Analyze-segment
  (when *trace-DM&P*
    (trace-msg "[dm&p] segment is the function word \"~A\""
               (word-pname (pos-terminal starts-at)))))

(deftrace :segment-is-a-section-marker (starts-at)
  ;; called from dm/Analyze-segment
  (when *trace-DM&P*
    (trace-msg "[dm&p] segment is the section marker ~A"
               (word-pname
                (pos-terminal
                 (chart-position-after (chart-position-after starts-at)))))))




(deftrace :scan-under-edge-covering-whole-segment (edge)
  (when *trace-DM&P*
    (trace-msg "[dm&p] edge over whole segment:~%     ~A" edge))
  (when *step-dm&p* (break)))

(deftrace :whole-seg/anticipated-form (form)
  (when *trace-DM&P*
    (trace-msg "[dm&p]     with an anticipated form: ~A" form))
  (when *step-dm&p* (break)))





(deftrace :scan-treetops/from-right ()
  (when *trace-DM&P*
    (trace-msg "[dm&p] Scanning treetops without a prefix"))
  (when *step-dm&p* (break)))



(deftrace :scan-treetops/prefixed (prefix-edge)
  ;; called from Scan-treetops/prefixed
  (when *trace-DM&P*
    (trace-msg "[dm&p] Scanning treetops with prefix:~%  ~A" prefix-edge))
  (when *step-dm&p* (break)))

(deftrace :prefix-is-informative (category)
  ;; called from Do-prefixed-segment
  (when *trace-DM&P*
    (trace-msg "[dm&p]     which yields ~A" (cat-symbol category)))
  (when *step-dm&p* (break)))

(deftrace :prefix-is-content-word ()
  ;; called from Scan-treetops/prefixed
  (when *trace-DM&P*
    (trace-msg "[dm&p]     which is a content word"))
  (when *step-dm&p* (break)))

(deftrace :prefix-is-polyword ()
  ;; called from Scan-treetops/prefixed
  (when *trace-DM&P*
    (trace-msg "[dm&p]     which is a polyword"))
  (when *step-dm&p* (break)))



(deftrace :two-terms-indeterminate (tt1 tt2)
  (when *trace-DM&P*
    (trace-msg "[dm&p] mining indeterminate relationship between~
                ~%    ~A  ~A" tt1 tt2 ))
  (when *step-dm&p* (break)))

(deftrace :mining-two-new ()
  (when *trace-DM&P*
    (trace-msg "[dm&p]    which are both new"))
  (when *step-dm&p* (break)))

(deftrace :both-known ()
  (when *trace-DM&P*
    (trace-msg "[dm&p]    which are both known"))
  (when *step-dm&p* (break)))

(deftrace :mining-first-known-second-new ()
  (when *trace-DM&P*
    (trace-msg "[dm&p]    the first of which is known"))
  (when *step-dm&p* (break)))

(deftrace :mining-first-new-second-known ()
  (when *trace-DM&P*
    (trace-msg "[dm&p]    the second of which is known"))
  (when *step-dm&p* (break)))







(deftrace :dm/scan-words ()
  (when *trace-DM&P*
    (trace-msg "[dm&p] Scanning segment without any known terms"))
  (when *step-dm&p* (break)))



;;----- mining

(deftrace :mining-unmarked-term/stem (word stem)
  (when *trace-DM&P*
    (trace-msg "mining an unmarked term with a stem~
                ~%   word = \"~A\"  stem = \"~A\""
               (word-pname word) (word-pname stem)))
  (when *step-dm&p* (break)))

(deftrace :mining-unmarked-term (word)
  (when *trace-DM&P*
    (trace-msg "mining an unmarked term \"~A\""
               (word-pname word)))
  (when *step-dm&p* (break)))


(deftrace :mining-head (w)
  (when *trace-DM&P*
    (trace-msg "mining a head: \"~A\"" (word-pname w)))
  (when *step-dm&p* (break)))

(deftrace :mining-classifier (w)
  (when *trace-DM&P*
    (trace-msg "mining a classifier: \"~A\"" (word-pname w)))
  (when *step-dm&p* (break)))

(deftrace :mining-verb (w)
  (when *trace-DM&P*
    (trace-msg "mining a verb: \"~A\"" (word-pname w)))
  (when *step-dm&p* (break)))

(deftrace :mining-noun/verb (w)
  (when *trace-DM&P*
    (trace-msg "mining a noun/verb: \"~A\"" (word-pname w)))
  (when *step-dm&p* (break)))


(deftrace :noting-instance (unit name-of-variable)
  (when *trace-DM&P*
    (trace-msg "noting an instance of ~A as a ~A"
               unit name-of-variable))
  (when *step-dm&p* (break)))


(deftrace :dm&p/function-word-mined (word)
  (when *trace-DM&P*
    (trace-msg "mining a function word: ~A~
                ~%   Shouldn't there be an edge?" (word-pname word)))
  (when *step-dm&p* (break)))


;;----------------------------------------------------
;; There is a trace on events over segments that is
;; usually on, and an incremental trace of the treetops
;; that would usually go to a buffer.  This predicate
;; coordinates them, and these are the traces over
;; segment actions. 

(defun readout-segments? ()
  (when *readout-segments*
    (if *inline-treetop-readout*
      (if (eq *stream-to-readout-treetops-to*
              *standard-output*)
        nil ;; stop it -- they'll clash
        t)
      t)))


(unless (boundp '*stream-for-segment-trace*)
  (defparameter *stream-for-segment-trace* *standard-output*))


(deftrace :anounce-pair-term ()
  (when (readout-segments?)
    (format *stream-for-segment-trace*
            "   constructed a pair term~%")))

(deftrace :pair-term-premature ()
  (when (readout-segments?)
    (format *stream-for-segment-trace*
              "   pair only seen once")))

(deftrace :pw-created-from-hypenate-word-pair (string)
  (when (readout-segments?)
    (format *stream-for-segment-trace*
              "   created polyword \"~A\"" string)))

(deftrace :length-of-long-segment (word-count)
  (when (readout-segments?)
    (format *stream-for-segment-trace*
              "   Long segment: ~A words" word-count)))



;;;-------------------
;;; introducing terms
;;;-------------------

(deftrace :new-unmarked-term (term word)
  (when *trace-term-introduction*
    (let ((*print-short* t))
      (trace-msg "Unmarked: created ~A for \"~A\"" term (word-pname word)))))

(deftrace :unmarked-term-from-edge (term edge)
  (when *trace-term-introduction*
    (let ((*print-short* t))
      (trace-msg "Unmarked: returning ~A from ~A"
                 term (cfr-symbol (edge-rule edge))))))

(deftrace :unmarked-pw (term pw-edge)
  (when *trace-term-introduction*
    (let ((*print-short* t))
      (trace-msg "Unmarked: returning ~A for polyword ~A"
                 term (pw-symbol (edge-category pw-edge))))))

(deftrace :mined-verb (verb word)
  (when *trace-term-introduction*
    (let ((*print-short* t))
      (trace-msg "Verb term ~A returned for \"~A\""
                 verb (word-pname word)))))

(deftrace :verb-term-from-edge (term edge)
  (when *trace-term-introduction*
    (let ((*print-short* t))
      (trace-msg "Verb: returning ~A from ~A"
                 term (cfr-symbol (edge-rule edge))))))

(deftrace :mined-head-term (head word)
  (when *trace-term-introduction*
    (let ((*print-short* t))
      (trace-msg "NP head term ~A returned for \"~A\""
                 head (word-pname word)))))

(deftrace :mined-classifier-term (classifier word)
  (when *trace-term-introduction*
    (let ((*print-short* t))
      (trace-msg "NP classifier term ~A returned for \"~A\""
                 classifier (word-pname word)))))

(deftrace :noticed-term (unit edge name-of-variable)
  (when *trace-term-introduction*
    (let ((*print-short* t))
      (trace-msg "Noticed ~A from ~A understood as a ~A"
                 unit (cfr-symbol (edge-rule edge))
                 name-of-variable))))

(deftrace :term-from-long-segment-edge (term edge)
  (when *trace-term-introduction*
    (let ((*print-short* t))
      (trace-msg "Long segment: returning ~A from ~A~
                  ~%for \"~A\"  individual #~A"
                 term (cfr-symbol (edge-rule edge))
                 (edge-left-daughter edge)
                 (indiv-uid term)))))


;;;-----------------------
;;; capitalized sequences
;;;-----------------------

(deftrace :dm&p/Single-Span-cap-seq (start-pos end-pos)
  ;; called from dm&p/Single-Span-cap-seq
  (when *trace-DM&P*
    (trace-msg "Mining a single-span cap.seq: \"~A\""
               (string-of-words-between start-pos end-pos))))

(deftrace :dm&p/all-new-words-cap-seq (start-pos end-pos)
  ;; called from dm&p/New-Words-cap-seq
  (when *trace-DM&P*
    (trace-msg "Mining a cap.seq. of all new words: \"~A\""
               (string-of-words-between start-pos end-pos))))

(deftrace :dm&p/Some-known-cap-seq (start-pos end-pos)
  ;; called from dm&p/Some-known-cap-seq
  (when *trace-DM&P*
    (trace-msg "Mining a cap.seq. with some edges: \"~A\""
               (string-of-words-between start-pos end-pos))))


;;;--------------------------------------
;;; the state machine within verb groups
;;;--------------------------------------

(defparameter *trace-vg-mining* nil)

(defun trace-vg-mining ()
  (setq *trace-vg-mining* t))

(defun untrace-vg-mining ()
  (setq *trace-vg-mining* nil))


(deftrace :mine-vg (prefix-edge form action)
  ;; called from Mine-vg
  (when (or *trace-vg-mining* *trace-DM&P*)
    (trace-msg "Exploring a VG via ~A~
                ~%   based on ~A~
                ~%   which has the form ~A"
               action prefix-edge form)))

(deftrace :mine-vg/next-tt (next-tt)
  ;; called from MVG/any-aux-or-verb
  (when (or *trace-vg-mining* *trace-DM&P*)
    (trace-msg "The next treetop is ~A" next-tt)))

(deftrace :mine-vg/adverb-check (word)
  ;; called from MVG/adv-check-before-mvb
  (when (or *trace-vg-mining* *trace-DM&P*)
    (trace-msg "It is the unknown word \"~A\",~
                ~%  checking whether is is an adverb ~
                morphologically" (word-pname word))))

(deftrace :mine-vg/ends-seg-interpreting-as-verb (word)
  (when (or *trace-vg-mining* *trace-DM&P*)
    (trace-msg "It is the word \"~A\",~
                ~%    it isn't an adverb, and the segment is ~
                finished.~%    Concluding that it is a verb."
               word)))

(deftrace :mine-vg/adv-check-before-ing/en ()
  ;; called from mvg/Adv-check-before-ing/en
  (when (or *trace-vg-mining* *trace-DM&P*)
    (trace-msg "checking for it being an adverb")))

(deftrace :mine-vg/ing/en-check ()
  ;; called from Check-for-ing/en
  (when (or *trace-vg-mining* *trace-DM&P*)
    (trace-msg "checking its morphology for ing/en")))



;;;--------------------------------
;;; recording realization patterns
;;;--------------------------------

(deftrace :rr-of-segment (segment start-pos end-pos)
  ;; called from Record-realization-patterns
  (when *trace-realization-patterns*
    (trace-msg "Recording realization pattern for ~A~
                ~%   \"~A\""
               segment (string-of-words-between start-pos end-pos))))

(deftrace :no-rr-made ()
  ;; called from Record-realization-patterns
  (when *trace-realization-patterns*
    (trace-msg "   no record made")))

(deftrace :adding-realization-type (individual realization-type)
  ;; called from Extend-rr
  (when *trace-realization-patterns*
    (trace-msg "   adding ~A to ~A" realization-type individual)))
