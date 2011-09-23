;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "to"
;;;   Module:  "model;sl:whos news:prepositions:"
;;;  version:  February 1991      system version 1.8.1

;; initiated 2/14

(in-package :CTI-source)


(or (boundp 'word::|to|)
    (define-word "to"))

(set-ca-action word::|to| '(:between-constituent-action
                         . check-patterns/to))


(defparameter *right-siblings/to*
              `((,category::title
                 . (,category::job-event/co!__!title
                    . ,(lookup/cfr/resolved
                        category::job-event/pers!__
                        `(,category::job-event/pers!__!title ,category::title)))
                 )
                ))


(defun check-patterns/to (following-tt)
  (let* ((candidate-to-the-right
          (match-with-sibling-set following-tt
                                  *right-siblings/to*))
         spanning-edge vanila-edge )

    (when candidate-to-the-right
      (multiple-value-bind (preceding-tt rule)
                           (search/left/prep following-tt
                                             candidate-to-the-right
                                             :limit 10)
        (when preceding-tt
          (let ((parent-of-preceding-tt
                 (edge-used-in preceding-tt)))
            
            (if parent-of-preceding-tt
              (then
                (setq spanning-edge
                      (make-CA-binary-edge preceding-tt
                                           following-tt
                                           rule
                                           :matrix-edge following-tt
                                           :direction :left))
                (replace-&-promulgate-edge
                 parent-of-preceding-tt  ;; edge whose daughter is replaced
                 spanning-edge           ;; the replacement
                 preceding-tt))          ;; the daughter that gets replaced

              (setq vanila-edge
                    (make-default-binary-edge preceding-tt
                                              following-tt
                                              rule)))
            ;(break "check edges")
            :done))))))
