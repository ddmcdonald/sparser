;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "source"
;;;   Module:  "analyzers;context:"
;;;  Version:  June 1992

;; populated 6/25/92

(in-package :sparser)


;;;-------------------------------------------
;;;  the article's "source" -- the SO field
;;;-------------------------------------------

(define-context-variable  *article-source* nil
  "This will be bound to the value of the SO field in a DCI or
   Tipster article.  It is typically a news service.")


(defun pull-out-source-from-edge (edge)
  ;; called from Analyze-segment-as-article-source and returns what
  ;; will be the referent of the edge that spans the sgml-delimited
  ;; edge over the article's source field.
  (let ((ref (edge-referent edge)))
    (if ref
      (then
        (setq *article-source* ref)
        ref )
      :no-referent-computed-for-source-edge)))

