;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "stranded comma"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  January 1996

;; initiated 1/2/96

(in-package :sparser)


(set-ca-action word::comma 'check-for-appositive-debris)


(defun check-for-appositive-debris (edge-over-comma)
  (let ((prior-constituent
         (left-treetop-at/only-edges (pos-edge-starts-at edge-over-comma)))
        (following-constituent
         (right-treetop-at/only-edges (pos-edge-ends-at edge-over-comma))))

    (when (and prior-constituent following-constituent)

      (let ((rule (multiply-edges prior-constituent following-constituent)))
        (when rule
          (make-completed-binary-edge prior-constituent
                                      following-constituent
                                      rule))))))
