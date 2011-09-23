;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994,1995,1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "CA"
;;;   Module:  "drivers;forest:"
;;;  Version:  4.1 January 1996

;; 3.0 (7/16/92 v2.3) Changed things to trigger off form rather than category
;; 4.0 (4/27/95) put in the polyword case, converted to TR traces, and
;;      remodularized it.
;; 4.1 (1/2/96) put a category-trigger back in. Don't remember why it was
;;      pulled in the first place, so using both

(in-package :sparser)


(defun do-conceptual-analysis-off-new-treetop (tt)
  ;; called from do-treetop

  (tr :checking-for-ca-action tt)
  (let ((action (etypecase tt
                  (edge (or (ca-action (edge-form tt))
                            (ca-action (edge-category tt))))
                  (word (ca-action tt))
                  (polyword (ca-action tt)))))

    (if action
      (then (tr :has-ca-action action)
            (funcall action tt))

      (tr :has-no-ca-action))))

