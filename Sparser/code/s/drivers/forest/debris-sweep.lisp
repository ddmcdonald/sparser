;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "debris-sweep"
;;;   Module:  "drivers;forest:"
;;;  Version:  January 2021

;; Initiated 1/15/20 to identify discourse relations and other
;; patterns in the debris left after pass one. Design is similar
;; to sweep-sentence-treetops but maintains state across multiple
;; sentences.

(in-package :sparser)


(defgeneric sweep-debris-treetops (sentence)
  (:method ((sentence sentence))
    (let* ((start-pos (starts-at-pos sentence))
           (end-pos (ends-at-pos sentence))
           (rightmost-pos start-pos)
           (sentence-initial? t)
           (count 0)
           tt  prior-tt  pos-after form )
      (loop
         (multiple-value-setq (tt pos-after)
           (next-treetop/rightward rightmost-pos))
         (incf count)

         (when (edge-p tt) (setq form (edge-form tt)))

         (format t "~&~a. ~a" count form)

         (when (category-p form)
           (case (cat-name form)

             (pp
              (when sentence-initial?) ; preposed-pp
              )

             (conjunction ) ; stranded conjunction

             ))

          (when (word-p (edge-category tt))
           (let ((pname (pname (edge-category tt))))
             (cond
               ((string-equal pname ",")) ; loose-comma
               )))
    


         (when (eq pos-after end-pos)
           (return)) ;; leave the loop
         (when sentence-initial?
           (setq sentence-initial? nil))
         (setq rightmost-pos pos-after
               form nil ; reinitialize
               prior-tt tt))

       )))
