;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "rule-inference-scan"
;;;   Module:  "drivers;DA:"
;;;  Version:  July 2020

;; initiated 7/15/20 for the post-parsing document driver that looks
;; for opportunities to infer rules from the debris

(in-package :sparser)



(defgeneric induction-sweep (document)
  (:documentation "After parsing is complete, sweep over the
    visible treetops looking for rule-induction triggers")
  (:method ((a article))
    (loop for s in (children a) do (induction-sweep s)))
  (:method ((s section))
    (loop for p in (children s) do (induction-sweep p)))
  (:method ((p paragraph))
    (loop for s in (sentences-in-paragraph p) do (induction-sweep s)))
  (:method ((s sentence))
    ;; modeled on loop in identify-relations
    (let ((start-pos (starts-at-pos s))
          (end-pos (ends-at-pos s)))
      (when (edge-between start-pos end-pos)
        ;; Has to be some debris for us to get traction
        (return-from induction-sweep))
      
      (let ((rightmost-pos start-pos)
            category form
            tt prior-tt pos-after trigger)
        (loop
           (multiple-value-setq (tt pos-after)
             (next-treetop/rightward rightmost-pos))    
           (setq category (edge-category tt)
                 form (edge-form tt)) 
           (format t "~&tt: ~a" tt)
           
           (when (or (setq trigger (rule-trigger? category))
                     (setq trigger (rule-trigger? form)))
             (format t "  trigger: ~a" trigger)
             ;; #|(rule-trigger-action trigger)|# 
             (funcall trigger tt prior-tt))
           
           (when (eq pos-after end-pos)
             (return))
           (setq rightmost-pos pos-after
                 prior-tt tt))))))
         
