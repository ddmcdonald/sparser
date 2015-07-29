;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "patterns"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  July 2015

;; initiated 12/4/14 breaking out the patterns from uniform-scan1.
;; 2/2/2015 added initial patterns for colons, such as the ratio 1:500
;;  added pattern for GAP:Ras and similar. Smidgen of doc 3/10/15.
;; 3/11/15 "~60". 5/15/15 Moved the pattern maker out to its own file.
;; And colon routines 7/28/15

(in-package :sparser)


; (setq *work-on-ns-patterns* t)
; (setq *work-on-ns-patterns* nil)

;;;--------
;;; driver
;;;--------

(defparameter *work-on-ns-patterns* nil
  "Forces resolve-ns-pattern to return nil rather than complain
   that it's got an uncharacterized pattern.")
;; (p "the TGF-b pathway.")
;; (p "PLX4032.")
;; (p "MEK1 (also known as MAP2K1).")
;; (p "~60.")
;; (p "the Bcl-2/Bcl-xL proteins.")
;; (p "SHOC2/Sur-8.")
;; "EGFR-positive cells (EGFRhi)" 
;; (p "EGFR-hi.")
;; "regulatory factors, such as IL-1a"
;; "BRAF(V600E)" "short hairpin RNA (shRNA)" "region Y-box 10 (SOX10)"
;; "mono- and di- ubiquitinated K-Ras"
;; phospho-ERBB3, T677A mutant HER2, ERK-mediated 
;; shRNA

;;;-------------------------------------------------------------
;;; patterns with punctuation other than slash, hypen, or colon
;;;-------------------------------------------------------------

(defun resolve-other-punctuation-pattern (pattern words other-punct
                                          start-pos end-pos)
  (push-debug `(,pattern ,words ,other-punct ,start-pos ,end-pos))
  (cond
   ((or (equal pattern `(:tilda :digits))  ;; ~60 in Dec# 52
        (equal pattern `(:tilda :single-digit)))
    ;;/// n.b. does do all it should -- ignores the approximation
    (package-approximation-number words start-pos end-pos))

   ((equal pattern '(:tilda :digits :percent-sign))
    ;;/// parser should have noticed the percentage
    ;;/// see above, but it aught to be an approximate-number that
    ;; we use in making the percentage
    (let* ((number (find-or-make-number (second words)))
           (i (find-or-make-individual 'percent :number number)))
      (let ((edge (make-edge-over-long-span
                   start-pos end-pos
                   (category-named 'percent :break-if-none)
                   :rule 'resolve-other-punctuation-pattern
                   :form (category-named 'np) ;; ???
                   :referent i
                   :words words)))
        (tr :made-edge edge)
        edge)))
   
   (*work-on-ns-patterns*
    (push-debug `(,pattern ,start-pos ,end-pos ,words))
    (break "New 'other punctuation' pattern to resolve: ~a" pattern))

   (t (tr :no-ns-pattern-matched)
      (reify-ns-name-and-make-edge words start-pos end-pos))))

 



  
;;;----------------------------------
;;; patterns with no slash or hyphen
;;;----------------------------------

(defun resolve-ns-pattern (pattern words start-pos end-pos)
  ;; called from collect-no-space-segment-into-word as its last
  ;; resort. If we return nil we fall through to a call to 
  ;; reify-ns-name-and-make-edge that will just assume that
  ;; the span is the name of something. 
  (cond
   ((or (equal pattern '(:full :single-digit)) ;; AF6, MEK1, SHOC2
        (equal pattern '(:full :digits)))
    (reify-ns-name-and-make-edge words start-pos end-pos))

   ((equal pattern '(:capitalized :digits))
    (or (reify-residue-and-make-edge words start-pos end-pos)
        (reify-ns-name-and-make-edge words start-pos end-pos)))

   ((equal pattern '(:mixed :single-digit)) ;; PLCγ1
    (reify-ns-name-and-make-edge words start-pos end-pos))

   ((equal pattern '(:single-cap :digits))
    (or (reify-residue-and-make-edge words start-pos end-pos)
        (reify-ns-name-and-make-edge words start-pos end-pos)))

   ((equal pattern '(:single-lower :digits))
    (or (reify-p-protein-and-make-edge words start-pos end-pos) ;; p38
        (reify-residue-and-make-edge words start-pos end-pos)
        (reify-ns-name-and-make-edge words start-pos end-pos)))

   ((or (equal pattern '(:single-digit :single-lower)) ;; (Fig. 4c, 4d) in Dec. 42 
        (equal pattern '(:single-digit :single-cap))) ;; "Histone 2B phosphorylated by..." in Jan 34.
    (reify-two-part-label words start-pos end-pos))

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




