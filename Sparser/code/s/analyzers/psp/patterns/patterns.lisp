;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "patterns"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  November 2020

;; initiated 12/4/14 breaking out the patterns from uniform-scan1.
;; 2/2/2015 added initial patterns for colons, such as the ratio 1:500
;;  added pattern for GAP:Ras and similar. Smidgen of doc 3/10/15.
;; 3/11/15 "~60". 5/15/15 Moved the pattern maker out to its own file.
;; And colon routines 7/28/15. Cleaned up resolve-ns-pattern and put in
;; more catches for unknown cases 2/5/16

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

(defun resolve-other-punctuation-pattern (pattern start-pos end-pos
                                          &aux (edges (treetops-between start-pos end-pos))
                                            (words (effective-words-given-edges start-pos end-pos)))
  "Called from ns-pattern-dispatch when odd punctuation has been found
   in the sequence."
  ;;/// Caller isn't testing that there aren't also slashes, colons,
  ;; or hyphens in the pattern. Try reordering it in the cond
  ;; in ns-pattern-displatch, but not without more citations to
  ;; test for regressions.
  (push-debug `(,pattern ,words  ,start-pos ,end-pos))
   
  (cond
   ((or (equal pattern `(:tilda :digits))  ;; ~60 in Dec# 52
        (equal pattern `(:tilda :single-digit)))
    ;;/// n.b. does do all it should -- ignores the approximation
    (package-approximation-number start-pos end-pos))

   ((equal pattern '(:tilda :digits :percent-sign)) ;; "~15%"
    ;;/// parser should have noticed the percentage
    ;;/// see above, but it aught to be an approximate-number that
    ;; we use in making the percentage
    (let* ((number (find-or-make-number (second words)))
           (i (find-or-make-individual 'percent :number number)))
      (let ((edge (make-ns-edge
                   start-pos end-pos
                   (category-named 'percent :break-if-none)
                   :rule 'resolve-other-punctuation-pattern
                   :form (category-named 'np)
                   :referent i
                   :words words)))
        (tr :made-edge edge)
        edge)))

   ;; (p "2.22Â±0.25.")
   ((equal pattern '(:number :plus-minus  :number))
    (package-number-plus-error edges start-pos end-pos))
   
   (*work-on-ns-patterns*
    (push-debug `(,pattern ,edges ,start-pos ,end-pos ,words))
    (break "New 'other punctuation' pattern to resolve: ~a" pattern))

   (t (tr :no-ns-pattern-matched)
      (reify-ns-name-and-make-edge start-pos end-pos))))

 
  
;;;----------------------------------
;;; patterns with no slash or hyphen
;;;----------------------------------

;; To-do:  "30–37% identity" (hyphenated-number percent-sign)

(defun resolve-ns-pattern (pattern start-pos end-pos)
  "Called from ns-pattern-dispatch when the sequence does not include
   any special characters, just alphanumerics. This is the 'default'.
   If we return nil, we'll fall back just calling reify-ns-name-and-make-edge
   which, by definition, can't give us better information about what
   we've found."
  ;;(push-debug `(,pattern ,start-pos ,end-pos)) ;; for the new cases
  ;;(break "ns pattern: ~a" pattern)
  (flet ((look-before-punting ()
           ;; Often in an or -- so either breaks or returns nil
           (when *work-on-ns-patterns*
             (break "Unclassified case of ~a between p~a and p~a"
                    pattern (pos-token-index start-pos) (pos-token-index end-pos)))))
    (let ((bio (current-script :biology)))
      (cond
        ((or (equal pattern '(:full :single-digit)) ;; AF6, MEK1, SHOC2
             (equal pattern '(:full :digits)))
         (look-before-punting)
         (reify-ns-name-and-make-edge start-pos end-pos))

        ((equal pattern '(:capitalized :digits)) ;; "No.1" <-- needs handling
         (or (reify-residue-and-make-edge start-pos end-pos)
             (look-before-punting)
             (reify-ns-name-and-make-edge start-pos end-pos)))
        
        ((equal pattern '(:capitalized :single-digit)) ;; Mst1, Mst2
         ;;/// we should track the number, perhaps in a tailored kind of bio-entity
         (reify-ns-name-and-make-edge start-pos end-pos))
        
        ((equal pattern '(:mixed :single-digit)) ;; PLCÎ³1
         (look-before-punting)
         (reify-ns-name-and-make-edge start-pos end-pos))

        ((equal pattern '(:single-cap :single-digit)) ;; "in Figure S1,"
         (let ((left-edge (top-edge-at/starting start-pos)))
           (if (eq (edge-cat-name left-edge) 'music-note) ;; "the C4 quarter note"
             (let ((edges (treetops-between start-pos end-pos)))
               (create-pitches (first edges) (second edges) start-pos end-pos))
             (reify-two-part-label start-pos end-pos :cap-first))))

        ((or (equal pattern '(:single-digit :single-lower)) ;; (Fig. 4c, 4d) in Dec. 42 
             (equal pattern '(:single-digit :single-cap))) ;; "3C" "Histone 2B phosphorylated by..." in Jan 34.
         (reify-two-part-label start-pos end-pos :digit-first))

        ((equal pattern '(:single-cap :digits))
         (or (when bio (reify-residue-and-make-edge start-pos end-pos)) ;; Y420
             (look-before-punting)
             (reify-ns-name-and-make-edge start-pos end-pos)))

        ((equal pattern '(:single-lower :digits))
         (or (when bio (reify-p-protein-and-make-edge start-pos end-pos)) ;; p38
             (when bio (reify-residue-and-make-edge start-pos end-pos))
             (look-before-punting)
             (reify-ns-name-and-make-edge start-pos end-pos)))

        ((equal pattern '(:single-cap :single-digit :single-cap))
         (look-before-punting)
         (reify-ns-name-and-make-edge start-pos end-pos))

        ((or (equal pattern '(:single-cap :digits :single-cap))
             (equal pattern '(:single-lower :digits :single-lower)))
         ;;/// and a bunch more
         (or (when bio (reify-point-mutation-and-make-edge start-pos end-pos))
             (look-before-punting)
             (reify-ns-name-and-make-edge start-pos end-pos)))

        ((or (equal pattern '(:open-angle-bracket :single-digit))
             (equal pattern '(:close-angle-bracket :single-digit))
             (equal pattern '(:equal-sign :single-digit))
             (equal pattern '(:open-angle-bracket :digits))
             (equal pattern '(:close-angle-bracket :digits))
             (equal pattern '(:equal-sign :digits)))
         (throw :punt-on-nospace-without-resolution nil))
        
        (*work-on-ns-patterns*
         (break "New simple pattern to resolve: ~a" pattern))
        
        ;; fall through 
        (t (tr :no-ns-pattern-matched)
           nil)))))




