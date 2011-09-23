;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;; 
;;;     File:  "predicates"
;;;   Module:  "grammar;rules:HA:"
;;;  Version:  May 1991         (v1.8.5)

;; initiated 5/3

(in-package :CTI-source)


(defun distance-between-edges (left-edge right-edge)
  ;; returns the number of words between the edges
  (let ((left-ends-at
         (pos-token-index (pos-edge-ends-at left-edge)))
        (right-starts-at
         (pos-token-index (pos-edge-starts-at right-edge))))
    (- right-starts-at
       left-ends-at)))

