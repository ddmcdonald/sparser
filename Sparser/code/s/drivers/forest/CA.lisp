;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1996,2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "CA"
;;;   Module:  "drivers;forest:"
;;;  Version:  4.2 October 2014

;; 3.0 (7/16/92 v2.3) Changed things to trigger off form rather than category
;; 4.0 (4/27/95) put in the polyword case, converted to TR traces, and
;;      remodularized it.
;; 4.1 (1/2/96) put a category-trigger back in. Don't remember why it was
;;      pulled in the first place, so using both
;; 4.2 (10/24/14) Refactoring so that the action check is independent
;;      from the action trigger. 

(in-package :sparser)

(defun conceptual-analysis-action (tt)
  (tr :checking-for-ca-action tt)
  (typecase tt
    (edge (or (ca-action (edge-form tt))
              (ca-action (edge-category tt))))
    (word (ca-action tt))
    (polyword (ca-action tt))
    (otherwise
     (push-debug `(,tt))
     (error "Unexpected type of treetop: ~a~%  ~a"
            (type-of tt) tt))))

(defun do-conceptual-analysis-off-new-treetop (tt)
  ;; called from do-treetop
  (let ((action (conceptual-analysis-action tt)))
    (if action
      (then (tr :has-ca-action action)
            (funcall action tt))

      (tr :has-no-ca-action))))

