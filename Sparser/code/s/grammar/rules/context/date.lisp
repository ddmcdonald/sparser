;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,2015  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "date"
;;;   Module:  "analyzers;context:"
;;;  Version:  June 1992

(in-package :sparser)

;; Written in June 1992
;; 10/6/15 #+ignored pull-date-out-of-edge-sequence to quiet the
;; compiler. And this may be moot in any case unless that old
;; corpus is reused.


;;;----------------------------------------------------------------
;;; the date on which an article was written ( "DD" field in DCI )
;;;----------------------------------------------------------------

(define-context-variable *article-date* nil
  "This will be bound to the value of the DD field in a DCI or
   Tipster article.  It is a #<date>.")

#+ignore ;; unless/until we find a caller
(defun pull-date-out-of-edge-sequence (start-pos end-pos)
  (declare (ignore start-pos end-pos)))


(defun pull-out-date-from-edge (edge)
  ;; called from Analyze-segment-as-article-source and returns what
  ;; will be the referent of the edge that spans the sgml-delimited
  ;; edge over the article's source field.
  (let ((ref (edge-referent edge)))
    (if ref
      (then
        (setq *article-date* ref)
        ref )
      :no-referent-computed-for-date-edge)))

