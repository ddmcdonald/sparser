;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "switch"
;;;   Module:  "objects;edge vectors:"
;;;  Version:  0.1 May 1993

(in-package :sparser)

;; initiated 4/6/93 v2.3
;; 0.1 (5/14) added setting the variable as part of the switch


(or (boundp '*edge-vector-type*)
    (defparameter *edge-vector-type* :vector
                                     ;; :kcons-list
      ""))


(defun establish-type-of-edge-vector-to-use (keyword)
  (ecase keyword
    (:vector
     (setf (symbol-function 'make-edge-vector-array)
           (symbol-function 'make-ev-array/vector))
     (setf (symbol-function 'cleanout-edge-vector-array)
           (symbol-function 'cleanout-ev-array/vector))
     (setf (symbol-function 'knit-edge-into-position)
           (symbol-function 'knit-edge-into-position/vector))
     (setf (symbol-function 'check-left-against-all-neighbors)
           (symbol-function 'check-left-against-all-neighbors/vector))
     (setf (symbol-function 'check-right-against-all-neighbors)
           (symbol-function 'check-right-against-all-neighbors/vector)))

    (:kcons-list
     (setf (symbol-function 'make-edge-vector-array)
           (symbol-function 'make-ev-array/kcons))
     (setf (symbol-function 'cleanout-edge-vector-array)
           (symbol-function 'cleanout-ev-array/kcons))
     (setf (symbol-function 'knit-edge-into-position)
           (symbol-function 'knit-edge-into-position/kcons))
     (setf (symbol-function 'check-left-against-all-neighbors)
           (symbol-function 'check-left-against-all-neighbors/kcons))
     (setf (symbol-function 'check-right-against-all-neighbors)
           (symbol-function 'check-right-against-all-neighbors/kcons))))

  (setq *edge-vector-type* keyword))

