;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "area of responsibility"
;;;   Module:  "model;core:titles:"
;;;  version:  May 1995

;; initiated 5/17/95

(in-package :sparser)


(define-category  area-of-responsibility
  :specializes nil
  :instantiates nil )   ;; just a shell

;;;----------
;;; DA rules
;;;----------

;;--- "director of engineering"

;; there's a weirdness in the comparison of this netword
;; with the one in place at the bottom of people/names-to-people
;; and it's screwing up the load.
#+ignore
(define-debris-analysis-rule  title-of-area1
  :pattern ( title "of" (:word) )
  :action title-of-area1/action )

(defun title-of-area1/action ()
  (let* ((data-for-word (lookup-matched-tt 'third))
         (word       (first data-for-word))
         (pos-before (second data-for-word))
         (pos-after  (third data-for-word)))

    (let ((edge (make-chart-edge
                 :starting-position pos-before
                 :ending-position pos-after
                 :category  category::area-of-responsibility
                 :form  (category-named 'np)
                 :referent  word   ;; ??? depends on later consumers knowing
                                   ;; what to do
                 :rule-name :title-of-area1 )))
      edge )))



;;--- "general manager of personal communications services"
#| 'gap' items still under development
(define-debris-analysis-rule  title-of-area2
  :pattern ( title "of" (:gap :no-close-class-words) )
  :action title-of-area2/action )

(defun testing-actions2 () ;; title-of-area2/action
  (break "found it -- figure out how to make the edge"))  |#

