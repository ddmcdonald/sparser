;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2015  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "traces"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  July 2015

;; Broken out from driver 2/5/13. Added more cases 9/11/14. Imported
;; cases from traces/scan-patterns 7/21/15. 

(in-package :sparser)

(defparameter *trace-ns-sequences* nil)

(defun trace-ns-sequences ()
  (setq *trace-ns-sequences* t))

(defun untrace-ns-sequences ()
  (setq *trace-ns-sequences* nil))


;;-- lifted from scan-patterns
(deftrace :no-space-sequence-started-at (p)
  (when (or *trace-ns-sequences*)
    (trace-msg "[ns] simple no-space collector started at p~a"
	       (pos-token-index p))))

(deftrace :no-space-initial-long-edge (edge)
  (when (or *trace-ns-sequences*)
    (trace-msg "[ns] with initial long edge ~a" edge)))

(deftrace :ns-word-sweep (word)
  ;; called from sweep-to-end-of-ns-regions
  (when *trace-ns-sequences*
    (trace-msg "[ns] swept over ~s" (word-pname word))))

(deftrace :ns-edge-sweep (edge)
  ;; called from sweep-to-end-of-ns-regions
  (when *trace-ns-sequences*
    (trace-msg "[ns] swept over edge e~a"
               (edge-position-in-resource-array edge))))

(deftrace :ns-next-position-is (p)
  ;; called from sweep-to-end-of-ns-regions
  (when *trace-ns-sequences*
    (trace-msg "[ns] the next position is p~a"
               (pos-token-index p))))

(deftrace :ns-return-because-whitespace (p)
  ;; called from sweep-to-end-of-ns-regions
  (when *trace-ns-sequences*
    (trace-msg "[ns] returning from sweep: whitespace before p~a"
               (pos-token-index p))))

(deftrace :ns-return-because-bracket-punct (word)
  ;; called from sweep-to-end-of-ns-regions
  (when *trace-ns-sequences*
    (trace-msg "[ns] returning from sweep: ~s is bracket punctuation"
               (word-pname word))))

(deftrace :ns-return-word-never-in-ns-seq (word)
  ;; called from sweep-to-end-of-ns-regions
  (when *trace-ns-sequences*
    (trace-msg "[ns] returning from sweep: ~s is never is a ns sequence"
               (word-pname word))))

(deftrace :ns-return-punch-terminates-seq (word p)
  ;; called from sweep-to-end-of-ns-regions
  (when *trace-scan-patterns*
    (trace-msg "[ns] returning from sweep: ~s is sequence terminating ~
                punctuation~%    Moving position to p~a"
               (word-pname word)  (pos-token-index p))))

(deftrace :no-space-sequence-made-word (word)
  (when (or *trace-ns-sequences*)
    (trace-msg "[ns] made word ~a" word)))

(deftrace :no-space-made-edge (edge)
  (when (or *trace-ns-sequences*)
    (trace-msg "[ns] made edge ~a" edge)))


(deftrace :bailing-from-ns/end-pos-is-the-string (string)
  (when (or *trace-ns-sequences*)
    (trace-msg "[ns] bailing: end-pos is ~s" string)))

(deftrace :bailing-from-ns/start-pos-is-the-string (string)
  (when (or *trace-ns-sequences*)
    (trace-msg "[ns] bailing: start-pos is ~s" string)))

(deftrace :bailing-from-ns/end-pos-less-than-start-pos (start-pos end-pos)
  (when (or *trace-ns-sequences*)
    (trace-msg "[ns] bailing: start (~a) less than end (~a)."
               start-pos end-pos)))


(deftrace :looking-at-ns-segment (start-pos end-pos)
  (when *trace-ns-sequences*
    (trace-msg "[ns] Looking at the segment ~s"
               (string-of-words-between start-pos end-pos))))

(deftrace :segment-ns-pattern (pattern)
  (when *trace-ns-sequences*
    (trace-msg "[ns] The pattern is ~a" pattern)))

(deftrace :ns-pattern-includes-edges (edges)
  (when *trace-ns-sequences*
    (trace-msg "[ns] It includes edges ~a" edges)))

(deftrace :ns-sort-out-pattern-with-edges ()
  (when *trace-ns-sequences*
    (trace-msg "[ns] Sorting out pattern involving multi-word edges")))

(deftrace :ns-segment-layout (layout)
  (when *trace-ns-sequences*
    (trace-msg "[ns] After parsing the layout is ~a" layout)))

(deftrace :ns-scare-quote ()
  (when *trace-ns-sequences*
    (trace-msg "[ns] Looking for possibility of scare quotes")))

(deftrace :ns-looking-at-slash-patterns ()
  (when *trace-ns-sequences*
    (trace-msg "[ns] Looking for a matching slash pattern")))

(deftrace :ns-looking-at-hyphen-patterns ()
  (when *trace-ns-sequences*
    (trace-msg "[ns] Looking for a matching hyphen pattern")))

(deftrace :ns-slash-hyphen-combination ()
   (when *trace-ns-sequences*
    (trace-msg "[ns] Looking for a matching slash and hyphen pattern")))

(deftrace :ns-hyphen-and-colon-patterns ()
  (when *trace-ns-sequences*
    (trace-msg "[ns] Looking for a hyphen + colon patterns")))

(deftrace :ns-looking-at-colon-patterns ()
  (when *trace-ns-sequences*
    (trace-msg "[ns] Looking for a matching colon pattern")))

(deftrace :ns-other-punct (punct)
  (when *trace-ns-sequences*
    (trace-msg "[ns] Looking for pattern with ~a" punct)))

(deftrace :ns-taking-default ()
  (when *trace-ns-sequences*
    (trace-msg "[ns] Looking at default patterns")))



(deftrace :resolve-hyphen-between-two-words (words)
  (when *trace-ns-sequences*
    (trace-msg "[ns] Resolving hyphen between two words: ~s" words)))

(deftrace :resolve-hyphen-between-two-terms (words)
  (when *trace-ns-sequences*
    (trace-msg "[ns] Resolving hyphen between two terms: ~s" words)))

(deftrace :two-word-hyphen-edge (edge)
  (when *trace-ns-sequences*
    (trace-msg "[ns]   resolved to e~a"
               (edge-position-in-resource-array edge))))

(deftrace :defaulting-two-word-hyphen ()
  (when *trace-ns-sequences*
    (trace-msg "[ns]   Using the default hyphenated structure: bio-entity")))

(deftrace :salient-hyphenated-literal ()
  (when *trace-ns-sequences*
    (trace-msg "[ns]   Using salient hyphenated-literal")))



(deftrace :two-hyphen-default-edge (edge)
  (when *trace-ns-sequences*
    (trace-msg "[ns]   Defaulted to e~a"
               (edge-position-in-resource-array edge))))
(deftrace :two-hyphen-default-structure (i edge)
  ;; called from make-hyphenated-structure
  (when *trace-ns-sequences*
    (trace-msg "[ns]   Defaulted to e~a with referent ~a"
               (edge-position-in-resource-array edge) i)))


(deftrace :number-colon-number-default-edge (edge)
  (when *trace-ns-sequences*
    (trace-msg "[ns]   Defaulted to e~a"
               (edge-position-in-resource-array edge))))

(deftrace :word-colon-word-default-edge (edge)
  (when *trace-ns-sequences*
    (trace-msg "[ns]   Defaulted to e~a"
               (edge-position-in-resource-array edge))))


(deftrace :resolve-hyphens-between-three-words (words)
  (when *trace-ns-sequences*
    (trace-msg "[ns] Resolving hyphen between three words: ~s" words)))

(deftrace :three-hyphen-default-edge (edge)
  (when *trace-ns-sequences*
    (trace-msg "[ns]   Defaulted to e~a"
               (edge-position-in-resource-array edge))))







(deftrace :ns-considering-sequence-starting-with (word-before word-after)
  (when *trace-ns-sequences*
    (trace-msg "[ns] first word: ~a, second word: ~a"
	       word-before word-after)))

(deftrace :moved-ns-start-pos-in-front-of-pw (pos-before)
  (when *trace-ns-sequences*
    (trace-msg "[ns] 'first word' is a polyword~
              ~%   moved position-before to ~a" pos-before)))

(deftrace :moved-ns-start-pos-in-front-of-edge (edge)
  (when *trace-ns-sequences*
    (trace-msg "[ns] 'first word' is an edge~
              ~%   moved position-before to start of ~a" edge)))

(deftrace :ns-second-word-not-in-ns-sequence (word-after)
  (when *trace-ns-sequences*
    (trace-msg "[ns] aborting because ~a doesn't belong in a ns sequence"
	       word-after)))

(deftrace :ns-first-word-is-bracket-punct (word-before position)
  (declare (ignore position))
  (when *trace-ns-sequences*
    (trace-msg "[ns] aborting because first word, ~a, is bracket punctuation"
	       word-before)))

(deftrace :first-or-second-is-bracket-punct (word-before word-after)
  (when *trace-ns-sequences*
    (trace-msg "[ns] aborting because one of these is bracket punctuation~
              ~%   ~a ~a" word-before word-after)))

(deftrace :ns-source-exhausted ()
  (when *trace-ns-sequences*
    (trace-msg "[ns] dropping out of the loop: reached EOS")))

(deftrace :ns-whitespace (next-position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] dropping out of the loop: whitespace before ~a"
	       next-position)))

(deftrace :ns-scanned-punctuation (p)
  (when *trace-ns-sequences*
    (trace-msg "[ns] loop: scanned ~s" p)))

(deftrace :ns-terminating-punctuation (word)
  (when *trace-ns-sequences*
    (trace-msg "[ns] dropping out of the loop: ~a is terminating punctuation"
	       word)))

(deftrace :ns-scanned-word (word)
  (when *trace-ns-sequences*
    (trace-msg "[ns] loop: scanned ~a" word)))

(deftrace :ns-installing-terminal-edges  (word)
  (when *trace-ns-sequences*
    (trace-msg "[ns] installing any edges on ~a" word)))

(deftrace :ns-adding-word (word)
  (when *trace-ns-sequences*
    (trace-msg "[ns] adding the word ~a" word)))
  
(deftrace :ns-reached-eos-at (next-position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] dropping out of the loop: reached EOS at ~a"
	       next-position)))

(deftrace :ns-parsing-between (pos-before next-position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] parsing between ~a and ~a"
	       pos-before next-position)))

(deftrace :ns-layout (layout)
  (when *trace-ns-sequences*
    (trace-msg "[ns] layout after parsing b/w boundaries is ~a"
	       layout)))

(deftrace :ns-returning-position (next-position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] finished at position ~a" next-position)))



(deftrace :ns-edge-pattern (label-pattern)
  (when *trace-ns-sequences*
    (trace-msg "[ns] Edge pattern: ~a" label-pattern)))

(deftrace :ns-one-hyphen-patterns ()
  (when *trace-ns-sequences*
    (trace-msg "[ns] Looking at one hyphen patterns")))







(deftrace :ns-two-hyphen-patterns ()
  (when *trace-ns-sequences*
    (trace-msg "[ns] Looking at two hyphen patterns")))

(deftrace :hyphen-specialist (left-edge right-edge)
  ;; called from nospace-hyphen-specialist
  (when *trace-ns-sequences*
    (trace-msg "[ns hyphen] looking for relationship between e~a and e~a"
               (edge-position-in-resource-array left-edge)
               (edge-position-in-resource-array right-edge))))

(deftrace :resolve-hyphen-b/w-two-words/missing-an-edge (left-edge right-edge)
  (when *trace-ns-sequences*
    (trace-msg "[ns hyphen] resolve-hyphen-between-two-words. ~
                Punting. One of these is a word~%~a ~a"
               left-edge right-edge)))

(deftrace :ns-punt-left-referent-is-a-word (ref)
  (when *trace-ns-sequences*
    (trace-msg "[ns hyphen] Punting. Can't work with word referent: ~a" ref)))


(deftrace :make-right-head-with-agent-left ()
  (when *trace-ns-sequences*
    (trace-msg "[ns hyphen] Applying make-right-head-with-agent-left")))

(deftrace :ns-found-subject-var-in (variable right-ref)
  (when *trace-ns-sequences*
    (trace-msg "[ns hyphen] Found subject ~a in ~a" variable right-ref)))
(deftrace :ns-no-subject-var-in (right-ref)
  (when *trace-ns-sequences*
    (trace-msg "[ns hyphen] No subject variable in ~a"  right-ref)))


(deftrace :ns-found-usable-rule (rule)
  (when *trace-ns-sequences*
    (trace-msg "[ns hyphen] applying rule: ~a" rule)))










(deftrace :scare-quotes-creating-edge-around (word)
  ;; called from scare-quote-specialist
  (when *trace-ns-sequences*
    (trace-msg "[ns quotes] looking at single quotes around ~s"
               (word-pname word))))

(deftrace :scare-quotes-wrong-number-of-words (n)
  ;; called from scare-quote-specialist
  (when *trace-ns-sequences*
    (trace-msg "[ns quotes]  A scare quote involves 3 'word'. Got ~a" n)))

(deftrace :made-edge (edge)
  (when *trace-ns-sequences* ;;//// lots more cases probably
    (trace-msg "[ns]   made edge ~a" edge)))

(deftrace :trying-to-resolve-ns-pattern (pattern)
  (when *trace-ns-sequences*
    (trace-msg "[ns] Checking pattern: ~a" pattern)))

(deftrace :no-ns-pattern-matched ()
  (when *trace-ns-sequences* 
    (trace-msg "[ns]   No pattern matched")))

(deftrace :slash-ns-pattern (pos-before pos-after)
  (when *trace-ns-sequences* 
    (trace-msg "[ns] Looking at ns-sequence with a slash between p~a and p~a"
               (pos-token-index pos-before)
               (pos-token-index pos-after))))

(deftrace :resolve-slash-segment (segment-pattern start-pos end-pos)
  (when *trace-ns-sequences* 
    (trace-msg "[ns] Looking at slash segment from p~a to p~a~
              ~%   pattern = ~a~
              ~%   words = ~s"
          (pos-token-index start-pos)
          (pos-token-index end-pos)
          segment-pattern (string-of-words-between start-pos end-pos))))

(deftrace :slash-segment-covered (edge)
  (when *trace-ns-sequences* 
    (trace-msg "[ns]  The segment is already covered by e~a"
               (edge-position-in-resource-array edge))))

(deftrace :slash-recursive-resolution ()
  (when *trace-ns-sequences* 
    (trace-msg "[ns]   The segment has to be analyzed")))

(deftrace :reified-ns-name (referent start-pos end-pos)
  (when *trace-ns-sequences* 
    (trace-msg "[ns] The referent ~a~
              ~%   was created for the ns span ~s~
              ~%   between p~a and p~a"
               referent 
               (string-of-words-between start-pos end-pos)
               (pos-token-index start-pos)
               (pos-token-index end-pos))))

(deftrace :ns-made-approximation (number)
  ;; called from package-approximation-number 
  (when *trace-ns-sequences* 
    (trace-msg "[ns] formed an approximation of ~a" number)))
               
(deftrace :making-ns-pair-on (category)
  (when *trace-ns-sequences* 
    (trace-msg "[ns] Making a no-space pair as a ~a" category)))
