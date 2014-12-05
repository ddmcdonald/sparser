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


(defun resolve-ns-pattern (pattern words slash? pos-before next-position)
  ;; called by post-accumulator-ns-handler from an 'or' so has to
  ;; return non-nil when it succeeds. 
  (push-debug `(,pattern ,words)) ;; (break "resolve pattern")

  (if slash?
    ()

  ;;/// turn this cond into a macro, or interpret a structured list / structure
  ;; once it clear how best to use it. 
  (cond
   ((equal pattern '(:full :single-digit)) ;; AF6
    (reify-ns-name-and-make-edge words pos-before next-position))

   ((equal pattern '(:full :hyphen :lower))
    (resolve-hyphen-between-two-words pattern words pos-before next-position))

   (*work-on-ns-patterns*
    (push-debug `(,pattern ,words))
    (break "New pattern to resolve: ~a" pattern))
   (t nil)))) ;; fall through


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
      (push-debug `(,left-edge ,right-edge)) (break "???")
      (if rule
        (let ((edge (make-completed-binary-edge left-edge right-edge rule)))
          ;;//// trace goes here
          (revise-form-of-nospace-edge-if-necessary edge))

        (let* ((string (actual-characters-of-word pos-before pos-after words))
               (obo (corresponding-obo string)))
          (if obo
            (make-edge-over-retrieved-obo obo pos-before pos-after)
        
            (else ;; make a structure if all else fails
             ;; but first alert to anticipated cases not working
             (make-hypenated-structure left-edge right-edge))))))))

(defun string-from-nospace-words (words)
  ;;/// something like this ought to exist already, but where?
  (let ((pnames (loop for w in words collect (word-pname w))))
    (apply #'string-append pnames)))

(defun make-edge-over-retrieved-obo (obo pos-before pos-after)
  (push-debug `(,obo ,pos-before ,pos-after)) (break "stub: obo edge"))





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
       :lower)
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

