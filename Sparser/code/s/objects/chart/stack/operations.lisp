;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "operations"
;;;   Module:  "objects;chart:stack:"
;;;  Version:  0.1 May 1994

;; initiated 6/9/92 v2.2, added traces 7/13.
;; 0.1 (5/5/94) changed to tr traces

(in-package :sparser)

;;;----------------
;;; print routines
;;;----------------

(defun print-pending-left-opener-stack ( &optional
                                         (stream *standard-output*))
  (let ( location j )
    (if (= -1 *top-of-pending-left-openers-stack*)
      (format stream "~&The pending left opener stack is empty~%")
      (do ((i -1 (1+ i)))
          ((= i *top-of-pending-left-openers-stack*)
           :pending-left-openers-stack)
        (setq j (1+ i))
        (format stream "~&~A.~4,2t~A ~8,2t~A~%"
          j
          (etypecase (setq location
                           (cdr (aref *stack-of-pending-left-openers* j)))
            (edge (format nil "e~A"
                          (edge-position-in-resource-array location)))
            (position (format nil "p~A"
                              (pos-token-index location))))
          (car (aref *stack-of-pending-left-openers* j)))))))



;;;------------
;;; push & pop
;;;------------

(defun push-on-pending-left-opener (object location)
  (let ((cell (cons object location))
        (index (incf *top-of-pending-left-openers-stack*)))
    (setf (aref *stack-of-pending-left-openers* index) cell)
    (tr :pushing-onto-section-stack index object)))


(defun pop-off-top-pending-left-opener ( &optional expected-object )
  (declare (ignore expected-object))
  (let* ((index *top-of-pending-left-openers-stack*)
         (cell (aref *stack-of-pending-left-openers* index)))

    (tr :popping-off-section-stack index (car cell))

    (decf *top-of-pending-left-openers-stack*)
    (values (car cell)
            (cdr cell))))

