;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "for"
;;;   Module:  "model;sl:whos news:prepositions:"
;;;  version:  February 1991      system version 1.8.1

;; initiated 2/13

(in-package :CTI-source)


(define-word "for")

(set-ca-action word::|for| '(:between-constituent-action
                          . check-patterns/for))

(defparameter *right-siblings/for*
              `((,category::company
                 . (,category::title
                    . ,(lookup/cfr/resolved category::title
                                            `(,category::title ,category::company)))
                 )
                ))


(defun check-patterns/for (following-tt)
  (let* ((candidate-to-the-right
          (match-with-sibling-set following-tt
                                  *right-siblings/for*))
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
                                           :rule rule
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

