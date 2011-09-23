;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "next word"
;;;   Module:  "analyzers;psp:scan:"
;;;  Version:  May 1993

(in-package :sparser)

#|  Provides a way to traverse the bottom of the chart word-by-word
when there are words that (for some reason, such as being derived from
a polyword or fsa) span more than one position.  |#

(defun next-word (position-before)
  ;; called from, e.g., PFWPNF
  (let ((ev (pos-starts-here position-before))
        edge pairs )
    (if (ev-top-node ev)
      (then ;; there's an edge of some sort, check for it being a word
        (if (= 1 (ev-number-of-edges ev))
          (if (word-p (edge-category (setq edge (ev-top-node ev))))
            (values (edge-category edge)
                    (pos-edge-ends-at edge))
            (values (pos-terminal position-before)
                    (chart-position-after position-before)))
          (else
            ;; collect up the words and end-positions from all the
            ;; edges labeled by words
            (ecase *edge-vector-type*
              (:kcons
               (dolist (edge (ev-edge-vector ev))
                 (when (word-p (edge-category edge))
                   (push (cons (edge-category edge)
                               (pos-edge-ends-at edge))
                         pairs))))
              (:vector
               (let ((edges (ev-edge-vector ev)))
                 (dotimes (i (ev-number-of-edges ev))
                   (setq edge (aref edges i))
                   (when (word-p (edge-category edge))
                     (push (cons (edge-category edge)
                                 (pos-edge-ends-at edge))
                           pairs))))))
            (if pairs
              (if (cdr pairs) ;; is there more than one?
                (values pairs
                        :depends-on-word)
                (else
                  (values (car (first pairs))
                          (cdr (first pairs)))))

              (values (pos-terminal position-before)
                      (chart-position-after position-before))))))

      (else
        (values (pos-terminal position-before)
                (chart-position-after position-before))))))

