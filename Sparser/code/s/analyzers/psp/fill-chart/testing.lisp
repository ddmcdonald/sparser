;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "testing"
;;;   Module:  "analyzers;psp:fill-chart:"
;;;  Version:  January 1995

;; initated 1/6/95. Tweeked format statement 1/24

(in-package :sparser)


(defun test_chart-filling (string)
  (let (t-start t-end t-total total-in-seconds tps
        position
        (token-count 0)
        (*display-word-stream* nil))

    (initialize-tokenizer-state)
    (initialize-chart-state)
    (when *initialize-with-each-unit-of-analysis*
      (per-article-initializations))

    (setq t-start (get-internal-run-time))
    
    (establish-character-source/string string)
    (initialize-tokenizer-state)
    (initialize-chart-state)

    (loop
      (setq position (scan-next-position))
      (if (eq (pos-terminal position)
              word::end-of-source)
        (return)
        (incf token-count)))
    
    (setq t-end (get-internal-run-time)
          t-total (- t-end t-start)
          total-in-seconds (/ t-total
                              internal-time-units-per-second)
          tps (/ token-count
                 total-in-seconds))

    (format t "~&speed: ~4,1F  tokens/second" (float tps))))
