;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "patterns"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  June 2015

;; initiated 12/4/14 breaking out the patterns from uniform-scan1.
;; 2/2/2015 added initial patterns for colons, such as the ratio 1:500
;;  added pattern for GAP:Ras and similar. Smidgen of doc 3/10/15.
;; 3/11/15 "~60". 5/15/15 Moved the pattern maker out to its own file.

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


;;;---------------------------------------------
;;; patterns with a colon (only ratios for now)
;;;---------------------------------------------

(defun resolve-colon-pattern (pattern words colon-positions start-pos end-pos)
  ;; (push-debug `(,pattern ,words ,hyphen-positions ,start-pos ,end-pos))
  ;; (break "starting colon pattern: ~a" pattern)
  (let ((count 0))
    (dolist (item pattern)
      (when (eq item :colon ) (incf count)))
    (case count
      (1 (one-colon-ns-patterns
          pattern words colon-positions start-pos end-pos))
      (otherwise
       (when *work-on-ns-patterns*
         (push-debug `(,pattern ,words ,colon-positions ,start-pos ,end-pos))
         (error "Write the code for ~a colons in a no-space sequence" count))))))

(defun one-colon-ns-patterns (pattern words colon-positions start-pos end-pos)
  (cond
   ((or
     (equal pattern '(:single-digit :colon :single-digit))
     (equal pattern '(:single-digit :colon :digits))
     (equal pattern '(:digits :colon :single-digit))
     (equal pattern '(:digits :colon :digits)))
    (make-number-colon-number-structure 
     (right-treetop-at/edge start-pos) 
     (left-treetop-at/edge end-pos)))
   ((or
     (equal pattern '(:full :colon))
     (equal pattern '(:lower :colon))
     (equal pattern '(:lower :colon :full))
     (equal pattern '(:lower :colon :lower))
     (equal pattern '(:full :colon :full))
     (equal pattern '(:full :colon :lower)))
    (make-word-colon-word-structure 
     (right-treetop-at/edge start-pos) 
     (left-treetop-at/edge end-pos)))

   (*work-on-ns-patterns*
    (push-debug `(,pattern ,words ,colon-positions ,start-pos ,end-pos))
    (break "unknown NS pattern with one colon:~%  ~a" pattern))

   ;; fall through
   (t (tr :no-ns-pattern-matched)
      (reify-ns-name-and-make-edge words start-pos end-pos))))


;;;-------------------------------------------------------------
;;; patterns with punctuation other than slash, hypen, or colon
;;;-------------------------------------------------------------

(defun resolve-other-punctuation-pattern (pattern words other-punct
                                          start-pos end-pos)
  (push-debug `(,pattern ,words ,other-punct ,start-pos ,end-pos))
  (cond
   ((or (equal pattern `(:tilda :digits))  ;; ~60 in Dec# 52
        (equal pattern `(:tilda :single-digit)))
    (package-approximation-number words start-pos end-pos))
   
   (*work-on-ns-patterns*
    (push-debug `(,pattern ,start-pos ,end-pos ,words))
    (break "New pattern to resolve: ~a" pattern))

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

   ((equal pattern '(:single-cap :digits))
    (or (reify-residue-and-make-edge words start-pos end-pos)
        (reify-ns-name-and-make-edge words start-pos end-pos)))

   ((equal pattern '(:single-lower :digits))
    (or (reify-p-protein-and-make-edge words start-pos end-pos) ;; p38
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




