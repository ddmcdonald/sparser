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


(defun resolve-hyphen-pattern (pattern words hyphen-positions start-pos end-pos)
  (cond
   ((or (equal pattern '(:full :hyphen :single-lower)) ;; TGF-b
        (equal pattern '(:capitalized :hyphen :single-digit)) ;; Sur-8, Bcl-2
        (equal pattern '(:full :hyphen :single-digit :single-lower)) ;; IL-1a
        (equal pattern '(:full :hyphen :single-digit :single-digit))) ;;/// IL-1a -bug somewhere
    ;; We accept these as terms that won't deccompose or involve
    ;; a rule. Experience may show that to be false, but it's a start
    (reify-ns-name-and-make-edge words start-pos end-pos))

   ((equal pattern '(:full :hyphen :lower)) ;; "GTP-bound" "EGFR-positive"
    (resolve-hyphen-between-two-words pattern words start-pos end-pos))

   ((equal pattern '(:single-cap :hyphen :lower)) ;; Y-box
    ;;(break "stub :single-cap :hyphen :lower")
    (reify-ns-name-and-make-edge words start-pos end-pos))

   ((and *work-on-ns-patterns*
         (memq :hyphen pattern))
    (push-debug `(,pattern ,start-pos ,end-pos))
    (break "New hyphen pattern to resolve: ~a" pattern))

   (t (nospace-hyphen-specialist hyphen-positions start-pos end-pos))))


(defun resolve-ns-pattern (pattern words start-pos end-pos)
  (cond
   ((or (equal pattern '(:full :single-digit)) ;; AF6, MEK1, SHOC2
        (equal pattern '(:full :digits)))
    (reify-ns-name-and-make-edge words start-pos end-pos))

   ((equal pattern '(:single-cap :single-digit :single-cap))
    (reify-ns-name-and-make-edge words start-pos end-pos))

   ((or (equal pattern '(:single-cap :digits :single-cap))
        (equal pattern '(:single-lower :digits :single-lower)))
    ;;/// and a bunch more
    (or (reify-point-mutation-and-make-edge words start-pos end-pos)
        (reify-ns-name-and-make-edge words start-pos end-pos)))

   (*work-on-ns-patterns*
    (push-debug `(,pattern ,start-pos ,end-pos ,words))
    (break "New pattern to resolve: ~a" pattern))

   ;; fall through
   (t (tr :no-ns-pattern-matched)
      nil)))


(defun resolve-non-slash-ns-pattern (pattern words hyphen-positions
                                     pos-before pos-after) 
  (tr :trying-to-resolve-ns-pattern pattern)
  (let ((relevant-hyphen-positions
         (when hyphen-positions 
           (loop for pos in hyphen-positions 
             when (position-is-between pos pos-before pos-after)
             collect pos))))
  
    (or (when relevant-hyphen-positions
          (resolve-hyphen-pattern 
           pattern words relevant-hyphen-positions pos-before pos-after))
        (resolve-ns-pattern pattern words pos-before pos-after)
        (reify-ns-name-and-make-edge words pos-before pos-after))))




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

(defun characterize-words-in-region  (start-pos end-pos)
  ;; Returns a pattern. Presumes that the whole region has been scanned.
  (let ((position start-pos)
        (word (pos-terminal start-pos))
        pattern-elements  element )
    (loop
      (setq element (characterize-word-type position word))
      (push element pattern-elements)
      (setq position (chart-position-after position))
      (when (eq position end-pos)
        (return))
      (setq word (pos-terminal position)))
    (nreverse pattern-elements)))


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

