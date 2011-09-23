;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "of"
;;;   Module:  "model;sl:whos news:prepositions:"
;;;  version:  1.2  March 1991

;; initiated 2/13
;; 1.1  (3/21 v1.8.1) put in a search limit of 5 treetops
;; 1.2  (3/26)  put in dummy for  name -> company / title "of" ___

(in-package :CTI-source)


(define-word "of")

(set-ca-action word::|of| '(:between-constituent-action
                         . check-patterns/of))


(defparameter *right-siblings/of*
              `((,category::title        ;;  "the new position of deputy director"
                 . (,category::position
                    . ,(lookup/cfr/resolved category::title
                                            `(,category::position ,category::title)))
                 )
                (,category::company
                 . (,category::title
                    . ,(lookup/cfr/resolved category::title
                                            `(,category::title ,category::company)))
                 )
                ;(,category::name
                ; . (,category::title
                ;    . ,(lookup/cfr/resolved category::company
                ;                            `(,category::title ,word::|of| ,category::name)))
                ; )
                ))


(defun check-patterns/of (following-tt)
  (let* ((candidate-to-the-right
          (match-with-sibling-set following-tt
                                  *right-siblings/of*))
         spanning-edge vanila-edge )

    (when candidate-to-the-right
      (multiple-value-bind (preceding-tt rule)
                           (search/left/prep following-tt
                                             candidate-to-the-right
                                             :limit 5)
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
