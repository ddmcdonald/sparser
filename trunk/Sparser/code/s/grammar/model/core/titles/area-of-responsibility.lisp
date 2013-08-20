;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "area of responsibility"
;;;   Module:  "model;core:titles:"
;;;  version:  August 2013

;; initiated 5/17/95. 8/19/13 Revised to use search for an np and
;; to add the area to a modified-title rather than make an edge

(in-package :sparser)

;;;----------
;;; DA rules
;;;----------

;;--- "director of engineering" -- 1995, was just a word
;; "Deputy Chief of Staff of the Iranian Armed Forces" 

(define-debris-analysis-rule  title-of-area1
  :pattern ( title "of" np )
  :action title-of-area1/action )

(defun title-of-area1/action ()
  (let* ((title-edge (lookup-matched-tt 'first))
         (title (edge-referent title-edge)) ; 
         (np-edge (lookup-matched-tt 'third))
         (np-ref (edge-referent np-edge)))
    (unless (itypep (edge-referent title-edge) 'modified-title)
      (setf (edge-referent title-edge)
            (setq title (convert-to-modified-title title))))

    ;; Really ought to have a rule that packages this property.
    ;; Then could just call make-binary-edge
    (bind-variable 'area-of-responsibility np-ref title)
    (let ((start (pos-edge-starts-at title-edge))
          (end (pos-edge-ends-at np-edge)))
      (make-edge-over-long-span start end category::title
        :rule :title-of-area1/action
        :form category::np
        :referent title))))
       
      



;; 1995
;;--- "general manager of personal communications services"
#| 'gap' items still under development
(define-debris-analysis-rule  title-of-area2
  :pattern ( title "of" (:gap :no-close-class-words) )
  :action title-of-area2/action )

(defun testing-actions2 () ;; title-of-area2/action
  (break "found it -- figure out how to make the edge"))  |#

