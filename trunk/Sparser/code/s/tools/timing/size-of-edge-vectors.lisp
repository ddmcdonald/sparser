;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "size of edge vectors"
;;;    Module:   "tools;measurements:"
;;;   Version:   1.0 December 1991

;; initiated 12/13/91

(in-package :sparser)

;;;------------
;;; data array
;;;-----------

(defparameter *maximum-permitted-count-in-an-edge-vector* 10
  "If we find an edge vector with more than this number of edges
   we'll blow out the measurement vector.")

(defparameter *size-of-starting-vectors*
  (make-array *maximum-permitted-count-in-an-edge-vector*
              :element-type 'integer))

(defparameter *size-of-ending-vectors*
  (make-array *maximum-permitted-count-in-an-edge-vector*
              :element-type 'integer))


;;;--------
;;; driver
;;;--------

(defun size-of-edge-vectors ()
  ;; called from toplevel after a parse has finished.
  ;; Scans the chart from beginning to end, counting the number
  ;; of edges that start/end at each position by accumulating
  ;; the information into two arrays.
  (initialize-ev-count-arrays)
  (dotimes (i (or (and *position-array-is-wrapped*
                       *number-of-positions-in-the-chart*)
                  *next-array-position-to-fill*))
    (count-start-vector (chart-array-cell i))
    (count-end-vector   (chart-array-cell i)))
  (display-edge-vector-sizes))


(defun initialize-ev-count-arrays ()
  (dotimes (i *maximum-permitted-count-in-an-edge-vector*)
    (setf (aref *size-of-starting-vectors* i) 0)
    (setf (aref *size-of-ending-vectors* i)   0)))


(defun display-edge-vector-sizes (&optional
                                  (stream *standard-output*))
  (terpri stream)
  (dotimes (i *maximum-permitted-count-in-an-edge-vector*)
    (format stream "length ~A:~11,2tstarts: ~A~23,2tends: ~A~%"
            i (aref *size-of-starting-vectors* i)
            (aref *size-of-ending-vectors* i))))



(defun count-start-vector (position)
  (let ((n (ev-number-of-edges (pos-starts-here position))))
    (when (null n)
      (setq n 0))
    (if (>= n *maximum-permitted-count-in-an-edge-vector*)
      (format t "~%~%-----------------------------------------~
                   ~%   number of edges exceeded limit: ~A~
                   ~%-----------------------------------------~%"
              n)
      (incf (aref *size-of-starting-vectors* n)))))


(defun count-end-vector (position)
  (let ((n (ev-number-of-edges (pos-ends-here position))))
    (when (null n)
      (setq n 0))
    (if (>= n *maximum-permitted-count-in-an-edge-vector*)
      (format t "~%~%-----------------------------------------~
                   ~%   number of edges exceeded limit: ~A~
                   ~%-----------------------------------------~%"
              n)
      (incf (aref *size-of-ending-vectors* n)))))

