;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "gofers"
;;;    Module: "analyzers;SDM&P:
;;;   Version: February 2013

;; Broken out of scan1 2/28/13.

(in-package :sparser)

;; See also the code in objects/chart/edge-vectors/object2

(defun no-edge-over-segment-head ()
  (not (edge-over-segment-head)))

(defun edge-over-segment-head ()
  (let ((right-end *right-segment-boundary*)
	(left-end (chart-position-before *right-segment-boundary*)))
    (edge-between left-end right-end)))

(defun edge-over-segment ()
  (edge-between *left-segment-boundary* *right-segment-boundary*))

(defun head-word-of-segment ()
  (let* ((right-end *right-segment-boundary*)
	 (left-end (chart-position-before *right-segment-boundary*))
	 (word (pos-terminal left-end)))
    (values word left-end right-end)))

(defun edge-over-segment-suffix ()
  (let* ((right-ev (pos-ends-here *right-segment-boundary*))
	 (top-node (ev-top-node right-ev)))
    (when (eq top-node :multiple-initial-edges)
      ;; arbitrarily take the most recent edge
      (setq top-node (highest-edge right-ev)))
    top-node))

(defun edge-over-segment-prefix ()
  (let ((left-pos-start (pos-starts-here *left-segment-boundary*)))
    (when left-pos-start
      (ev-top-node left-pos-start))))

(defun segment-minimal-prefix ()
  ;; The segment is covered by an edge or at least a large part
  ;; of its left end is.
  (let* ((ev (pos-starts-here *left-segment-boundary*))
         (array (ev-edge-vector ev)))
    ;; should check *edge-vector-type*
    (aref array 0)))
    
(defun where-prefix-edge-ends ()
  (let* ((left-pos-start (pos-starts-here *left-segment-boundary*))
	 (top-edge (ev-top-node left-pos-start)))
    (if (eq top-edge :multiple-initial-edges)
      (let ((longest (longest-edge-starting-at *left-segment-boundary*)))
	(ev-position (edge-ends-at longest)))
      (ev-position (edge-ends-at top-edge)))))

(defun words-in-segment-after-prefix ()
  (let ((left-pos (where-prefix-edge-ends)))
    (words-between left-pos *right-segment-boundary*)))

(defun category-of-right-suffix ()
  (let ((suffix (edge-over-segment-suffix)))
    (unless suffix
      (break "category-of-right-suffix -- expected there to be a suffix edge"))
    (edge-category suffix)))

(defun referent-of-right-suffix ()
  (let ((suffix (edge-over-segment-suffix)))
    (unless suffix
      (break "referent-of-right-suffix -- expected there to be a suffix edge"))
    (edge-referent suffix)))

(defun segment-length ()
  (- (pos-token-index *right-segment-boundary*)
     (pos-token-index *left-segment-boundary*)))

(defun words-in-segment ()
  (words-between *left-segment-boundary* *right-segment-boundary*))

(defun format-words-in-segment (&optional (stream *standard-output*))
  (format stream "~&\"~{~a ~}\" " (mapcar #'word-pname (words-in-segment))))

