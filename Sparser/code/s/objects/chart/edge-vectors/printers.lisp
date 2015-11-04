;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991,1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "printers"
;;;   Module:  "objects;edge vectors:"
;;;  Version:  2.1 November 1993

;; 1.1  propagates effect of adjustments to Edge-vector object
;; 1.2  (1/29/91 v1.8)  Added another case to Display-edge-vector for
;;      when the position hasn't been used and so has no array or count
;; (11/15 v2.1) commented out the unfinished routines to avoid msgs
;;      about them.
;; 2.0 (11/26/92 v2.3) bumped on general principles anticipating changes.
;; 2.1 (11/2/93) fleshed out stub for case of kcons-based edge vectors

(in-package :sparser)


;;;------------
;;; structure
;;;------------

(defun print-edge-vector-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<edges " stream)
  (write-string (symbol-name (ev-direction obj)) stream)
  (write-string " " stream)
  (princ (pos-token-index (ev-position obj)) stream)
  (write-string ">" stream))


;;;----------------------
;;; list out the vector
;;;----------------------

(defun display-edge-vector (ev
                            &optional (stream *standard-output*))
  ;; called from display-chart-edges
  (ecase *edge-vector-type*
    (:vector (display-edge-vector/vector ev stream))
    (:kcons-list (display-edge-vector/kcons ev stream))))


(defun display-edge-vector/vector (ev
                                   &optional (stream *standard-output*))
  (let ((vector (ev-edge-vector ev))
        (count  (ev-number-of-edges ev))
        (p (ev-position ev)))
    
    (if (or (null count)
            (= count 0))
      (format stream "~&no edges ~A ~A: ~A"
              (ev-direction ev) (pos-token-index p) (pos-terminal p))
      (else
        (format stream "~&edges ~A ~A: ~A"
                (ev-direction ev) (pos-token-index p) (pos-terminal p))
        (dotimes (n count)
          (format stream "~%  ~A ~A" n (aref vector n)))))
    (terpri stream)))


(defun display-edge-vector/kcons (ev
                                  &optional (stream *standard-output*))
  (let* ((list-of-edges (ev-edge-vector ev))
         (p (ev-position ev))
         (count (1+ (length list-of-edges))))
    (if list-of-edges
      (then
        (format stream "~&edges ~A ~A: ~A"
                (ev-direction ev) (pos-token-index p) (pos-terminal p))
        (dolist (edge list-of-edges)
          (format stream "~%  ~A ~A" (decf count) edge)))

      (format stream "~&no edges ~A ~A: ~A"
              (ev-direction ev) (pos-token-index p) (pos-terminal p)))
    (terpri stream)))
    



;;------------------ unfinished
#|(defun display-EV/edges (ev
                         &optional (stream *standard-output*)
                         &key (indent 0)
                              (inverse-order nil))
  (when label
    (format stream "~&~A~%" ev))
  (let ((edges (ev-edge-vector ev)))
    (if (null edges)
      (format stream "~&~Ano edge array yet~%" (spaces indent))
      /// )))

(defun display-EV/data (ev
                        &optional (stream *standard-output*)
                        &key (indent 0)
                             (label t))
  /// ) |#

;;;------------------------------
;;; printers embedded in others      
;;;------------------------------

(defun princ-edge-vector-position-number (ev stream)
  (princ (pos-token-index (ev-position ev))
         stream))

