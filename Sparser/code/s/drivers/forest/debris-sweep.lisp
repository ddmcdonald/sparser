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

;; (trace-debris-sweep)

(defun sweep-debris-in-sentence (sentence)
  "Runs the debris sweeper over this sentence and integrates
   it into the paragraph level state layout"
  ;;/// one step at a time
  (sweep-debris-treetops sentence)
  (format t "~&~%") ;; formatting the repl
  )

(defgeneric sweep-debris-treetops (sentence)
  (:method ((sentence sentence))
    (let* ((start-pos (starts-at-pos sentence))
           (end-pos (ends-at-pos sentence))
           (rightmost-pos start-pos)
           (sentence-initial? t)
           (count 0)
           tt  prior-tt  pos-after form )
      (tr :debris-sweep-sentence sentence)
      (loop
         (multiple-value-setq (tt pos-after)
           (next-treetop/rightward rightmost-pos))
         (incf count)

         (if (edge-p tt)
           (then
             (setq form (edge-form tt))
             (tr :debris-tt count (or form (edge-category tt)))
             
             (when (category-p form)
               (case (cat-name form)

                 (pp
                  (when sentence-initial?) ; preposed-pp
                  )

                 (conjunction ) ; stranded conjunction

                 (punctuation
                  ;; *the-punctuation-semicolon*
                  )

                 ))

             (when (word-p (edge-category tt))
               (let ((pname (pname (edge-category tt))))
                 (cond
                   ((string-equal pname ",")) ; loose-comma
                   ))))
           (else
             (unless (word-p tt)
               (error "Ill-formed chart object: ~a" tt))
             ;; a bare, uncovered word - usually a bug
             (tr :debris-bare-word count tt)))
                     

         (when (eq pos-after end-pos)
           (return)) ;; leave the loop
         (when sentence-initial?
           (setq sentence-initial? nil))
         (setq rightmost-pos pos-after
               form nil ; reinitialize
               prior-tt tt))

       )))
