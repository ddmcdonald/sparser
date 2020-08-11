;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "rule-inference-scan"
;;;   Module:  "drivers;DA:"
;;;  Version:  July 2020

;; initiated 7/15/20 for the post-parsing document driver that looks
;; for opportunities to infer rules from the debris

(in-package :sparser)

;; (trace-induction-sweep)

(defgeneric induction-sweep (document)
  (:documentation "After parsing is complete, sweep over the
    visible treetops looking for rule-induction triggers.
    When a trigger pattern is encountered, apply it to record that
    instance of the potential rule (see, infer-preposition-rule for
    the best worked-out case). Not integrated yet (7/18/20).")
  (:method ((a article))
    (loop for s in (children a) do (induction-sweep s)))
  (:method ((s section))
    (loop for p in (children s) do (induction-sweep p)))
  (:method ((p paragraph))
    (when (not (string-equal "" (content-string p)))
      (tr :sweep/doc-element p)
      (loop for s in (sentences-in-paragraph p) do (induction-sweep s))))
  (:method ((s sentence))
    ;; modeled on loop in identify-relations
    (declare (special *sentence-terminating-punctuation*))
    (tr :sweep/doc-element s)
    (let ((start-pos (starts-at-pos s))
          (end-pos (ends-at-pos s)))
      (when end-pos ; final sentence has to be terminated
        (when (edge-between start-pos end-pos)
          ;; Has to be some debris for us to get traction
          (tr :sweep/no-debris)
          (return-from induction-sweep))
        
        (let ((rightmost-pos start-pos)
              category form
              tt prior-tt pos-after trigger)
          (loop
             (multiple-value-setq (tt pos-after)
               (next-treetop/rightward rightmost-pos))

             (when (memq tt *sentence-terminating-punctuation*)
               (return))
             (when (typep tt 'edge-vector) ;; "when" in isolation
               (setq tt (highest-edge tt)))
 
             (setq category (edge-category tt)
                   form (edge-form tt))
             (tr :sweep/considering tt category form)
             
             (when (or (setq trigger (rule-trigger? category))
                       (setq trigger (rule-trigger? form)))
               (tr :sweep/triggered trigger)
               ;; #|(rule-trigger-action trigger)|# 
               (funcall trigger tt prior-tt))
             
             (when (eq pos-after end-pos)
               (return))
             (setq rightmost-pos pos-after
                   prior-tt tt)))))))
         
