;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "distance b/w brackets"
;;;    Module:   "tools;measurements:"
;;;   Version:   1.0  August 1991

;; initiated 8/8/91

(in-package :sparser)

;;;-------
;;; flags
;;;-------

(defparameter *do-end-of-segment-measurements* nil
  "Controls whether the measurements are made or not.  The call
   to the hook for measuring is always called, this establishes
   whether it does any work.")

;;;------------
;;; data array
;;;-----------

(defparameter *length-of-space-b/w-brackets-array* 30)

(defparameter *space-b/w-brackets-array*
  (make-array *length-of-space-b/w-brackets-array*))


(defun initialize-space-b/w-brackets-array ()
  (dotimes (i *length-of-space-b/w-brackets-array*)
    (setf (aref *space-b/w-brackets-array* i)
          0)))


(defun increment-bracket-distance (d)
  (if (< d *length-of-space-b/w-brackets-array*)
    (incf (aref *space-b/w-brackets-array* d))
    (format t "~%~%---------------------------------------------~
                 ~%   distance b/w brackets exceeded limit: ~A~
                 ~%---------------------------------------------~%"
            d)))


(defun display-space-b/w-brackets-array (&optional
                                         (stream *standard-output*))
  (format stream "~%~%Distribution of segment lengths~%")
  (dotimes (i *length-of-space-b/w-brackets-array*)
    (if (< i 10)
      (format stream "~& length  ~A:  ~A~%"
              i (aref *space-b/w-brackets-array* i))
      (format stream "~& length ~A:  ~A~%"
              i (aref *space-b/w-brackets-array* i)))))

;;;-----------
;;; workspace
;;;-----------

;(setq *do-end-of-segment-measurements* nil)
;(setq *do-end-of-segment-measurements* t)
;(Display-space-b/w-brackets-array)

;;;--------
;;; driver
;;;--------

(defun end-of-segment-measurements ()
  ;; called in Segment-parsed1 -- part of the pts file
  (when *do-end-of-segment-measurements*
    (let ((starts-at *left-segment-boundary*)
          (ends-at   *right-segment-boundary*))
      (measure-distance-between-segment-boundaries
       starts-at ends-at)
      )))


(defun measure-distance-between-segment-boundaries (starts-at
                                                    ends-at)
  (if (eq starts-at ends-at)
    (increment-bracket-distance 0)
    (let ((start-index (pos-token-index starts-at))
          (end-index   (pos-token-index ends-at)))
      (increment-bracket-distance (- end-index start-index)))))

