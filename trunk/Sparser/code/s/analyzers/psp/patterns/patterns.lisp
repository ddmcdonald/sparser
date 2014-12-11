;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "patterns"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  December 2014

;; initiated 12/4/14 breaking out the patterns from uniform-scan1.

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defparameter *work-on-ns-patterns* nil
  "Forces resolve-ns-pattern to return nil rather than complain
   that it's got an uncharacterized pattern.")
;; "the TGF-b pathway"  "PLX4032"
;; "MEK1 (also known as MAP2K1)"
;; "the Bcl-2/Bcl-xL proteins"  "SHOC2/Sur-8"
;; "EGFR-positive cells (EGFRhi)" "EGFR-hi"
;; "regulatory factors, such as IL-1a"
;; "BRAF(V600E)" "short hairpin RNA (shRNA)" "region Y-box 10 (SOX10)"
;; "mono- and di- ubiquitinated K-Ras"
;; phospho-ERBB3, T677A mutant HER2, ERK-mediated 
;; shRNA


(defun resolve-ns-pattern (pattern words slash? pos-before pos-after)
  ;; called by post-accumulator-ns-handler from an 'or' so has to
  ;; return non-nil when it succeeds. 
  (push-debug `(,pattern ,words)) ;; (break "resolve pattern")

  (if slash?
    (divide-and-recombine-ns-pattern-with-slash
     pattern words slash? pos-before pos-after)

    ;;/// turn this cond into a macro, or interpret a structured list / structure
    ;; once it clear how best to use it. 
    (cond
     ((or (equal pattern '(:full :hyphen :single-lower)) ;; TGF-b
          (equal pattern '(:capitalized :hyphen :single-digit)) ;; Sur-8, Bcl-2
          (equal pattern '(:full :hyphen :single-digit :single-lower)) ;; IL-1a
          (equal pattern '(:full :hyphen :single-digit :single-digit))) ;;/// IL-1a -bug somewhere
      ;; We accept these as terms that won't deccompose or involve
      ;; a rule. Experience may show that to be false, but it's a start
      (reify-ns-name-and-make-edge words pos-before pos-after))

     ((equal pattern '(:full :hyphen :lower)) ;; "GTP-bound" "EGFR-positive"
      (resolve-hyphen-between-two-words pattern words pos-before pos-after))

     ((equal pattern '(:single-cap :hyphen :lower)) ;; Y-box
      ;;(break "stub :single-cap :hyphen :lower")
      (reify-ns-name-and-make-edge words pos-before pos-after))

     ((equal pattern '(:full :single-digit)) ;; AF6, MEK1, SHOC2
      (reify-ns-name-and-make-edge words pos-before pos-after))

;     ((equal pattern '(:capitalized)) ;; a segment within a sequence

     (*work-on-ns-patterns*
      (push-debug `(,pattern ,words))
      (break "New pattern to resolve: ~a" pattern))

     ;; fall through
     (t nil))))

;; "SHOC2/Sur-8"  (p "the Raf/MEK/ERK pathway.") "PI3K/AKT signaling"
(defun divide-and-recombine-ns-pattern-with-slash (pattern words slash-positions
                                                   pos-before pos-after)
  ;; Assumes that slash has precedence over any other punctuation,
  ;; so it does a resolve-pattern of each of the segements between
  ;; slashes and then recombines them into a slash-structure along the
  ;; lines of make-hypenated-structure and such.
  ;;//// slashes often indicate two proteins that differ in just
  ;; their suffix. What's that pattern?
  ;; At this point the terminals are covered by edges. They probably
  ;; have what we want. A second time around they certainly will.
  (push-debug `(,slash-positions ,pos-before ,pos-after ,words ,pattern))
  (when (eq (first slash-positions) pos-before)
    (break "Slash is initial term in no-space region between p~a and p~a"
           (pos-token-index pos-before) (pos-token-index pos-after)))

  (let* ((segment-start pos-before)
         segment-pattern  segments  remainder )
    (multiple-value-setq (segment-pattern remainder)
      (pop-up-to-slash pattern))

    (dolist (slash-pos slash-positions)
      (let ((resolution (resolve-slash-segment 
                         segment-pattern segment-start slash-pos)))
        (unless resolution
          (push-debug `(,segment-pattern ,segment-start ,slash-pos))
          (break "resolver returned nil"))
        (push resolution segments)
        (setq segment-start (chart-position-after slash-pos))
        (multiple-value-setq (segment-pattern remainder)
          (pop-up-to-slash remainder))))

    (push (resolve-slash-segment segment-pattern segment-start pos-after)
          segments)

    (package-slashed-sequence
     (nreverse segments) words pos-before pos-after)))


(defun resolve-slash-segment (segment-pattern start-pos end-pos)
  (format t "~&Looking at slash segment from p~a to p~a~
           ~%  pattern = ~a~
           ~%  words = ~s~%"
          (pos-token-index start-pos)
          (pos-token-index end-pos)
          segment-pattern (string-of-words-between start-pos end-pos))
  (let ((single-edge (span-covered-by-one-edge? start-pos end-pos)))
    ;; is there one edge between the start of this portion and
    ;; the position of the slash? Then we're done
    (or single-edge
        (let ((words (words-between start-pos end-pos)))
          (resolve-ns-pattern segment-pattern words nil
                              start-pos end-pos)))))

(defun pop-up-to-slash (pattern)
  ;; Subroutine of divide-and-recombine-ns-pattern-with-slash but might
  ;; make a useful utility with a bit of abstraction
  (let ((slash-index (position :forward-slash pattern)))
    (if slash-index
      (values (subseq pattern 0 slash-index)
              (subseq pattern (1+ slash-index)))
      (values pattern nil))))



;;;-------
;;; cases
;;;-------

(defun resolve-hyphen-between-two-words (pattern words
                                         pos-before pos-after)
  ;; Have to distinguish between anticipated cases where the edges would
  ;; compose except for the hypen between the words and cases 
  ;; like "Sur-8" where it's the name of a protein
  (push-debug `(,pos-before ,pos-after ,pattern))
  (let ((left-edge (right-treetop-at/edge pos-before))
        (right-edge (left-treetop-at/edge pos-after)))
    ;; lifted from nospace-hyphen-specialist
    (let ((rule (or (multiply-edges left-edge right-edge)
                    (multiply-edges right-edge left-edge))))
      ;; "GTP-bound"
      ;;(push-debug `(,left-edge ,right-edge)) (break "???")
      (if rule
        (let ((edge (make-completed-binary-edge left-edge right-edge rule)))
          ;;//// trace goes here
          (revise-form-of-nospace-edge-if-necessary edge))
        (else ;; make a structure if all else fails
         ;; but first alert to anticipated cases not working
         (make-hypenated-structure left-edge right-edge))))))




;;;------------------------------------------------
;;; recognizing patterns in the character sequence
;;;------------------------------------------------

(defun characterize-word-type (position word)
  ;; return a indicator read by resolve-ns-pattern to identify
  ;; a general pattern with an established interpretation. 
  (let* ((caps (pos-capitalization position))
         (start-ev (pos-starts-here position))
         (top-edge (ev-top-node start-ev)))
    ;;(break "For ~s caps = ~a, top-edge = ~a" (word-pname word) caps top-edge)
    (case caps
      (:digits
       (if (= 1 (length (word-pname word)))
        :single-digit
        :digits))
      (:initial-letter-capitalized
       :capitalized) ;; "Gly", "Ras"
      (:single-capitalized-letter
       :single-cap)
      (:all-caps
       :full)
      (:mixed-case
       :mixed ) ;;(characterize-type-for-mixed-case word))
      (:lower-case
       (if  (= 1 (length (word-pname word)))
         :single-lower
         :lower))
      (:punctuation
       (keyword-for-word word))
      (otherwise (break "~a is a new case to characterize for p~a and ~s~
                       ~%under ~a"
                        caps
                        (pos-token-index position) 
                        (word-pname word)
                        top-edge)))))

(defun characterize-type-for-mixed-case (word)
  (let* ((pname (word-pname word))
         (length (length pname))
         (ends-in-s? (eql #\s (aref pname (1- length)))))
    (when ends-in-s?
      ;; is the remainder a known word?
      )))

;;/// move
(defun keyword-for-word (word)
  (let ((symbol-in-word-package (word-symbol word)))
    (intern (symbol-name symbol-in-word-package)
            (find-package :keyword))))

