;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc. 
;;; copyright (c) 1992,2012-2013  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "printers"
;;;   Module:  "objects;edges:"
;;;  Version:  March 2013

;; initiated 8/90
;; (7/21/92 v2.3) patched printer for case of label being a word
;; (9/2) added reference-category cases
;; (10/5) added polyword case
;; (10/18) added mixin.  (3/15/12) quiet compiler (3/5/13) handle case
;;  of no label on the edge.

(in-package :sparser)


(defun print-edge-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<edge" stream)
  (princ (edge-position-in-resource-array obj) stream)
  (write-string " " stream)
  (if (null (edge-starts-at obj))
    (then
      (write-string "inactive, resource " stream)
      (princ (edge-position-in-resource-array obj) stream))
    (else
      (princ-edge-vector-position-number (edge-starts-at obj) stream)
      (write-string " " stream)
      (let ((label (edge-category obj)))
        (typecase label
          ((or category referential-category mixin-category)
           (princ-category label stream))
          (word
           (princ-word label stream))
          (polyword
           (princ-polyword label stream))
          (otherwise 
           ;; category label is probably nil somehow
           (if (edge-category obj)
             (format stream "[new label type: ~a]" (type-of (edge-category obj)))
             (write-string "[empty label]" stream)))))
      (write-string " " stream)
      (princ-edge-vector-position-number (edge-ends-at obj) stream)))
  (write-string ">" stream))



(defun the-edges ( &optional (stream *standard-output*))
  (declare (special *edge-resource-is-wrapped*
                    *length-of-edge-resource*
                    *position-of-next-available-edge-in-resource*))
  (if *edge-resource-is-wrapped*
    (then
      (dotimes (i *length-of-edge-resource* '*all-edges*)
        (format stream "~&~A~%" (aref *all-edges* i))))

    (do ((i 0 (1+ i)))
        ((= i *position-of-next-available-edge-in-resource*)
         '*all-edges*)
      (format stream "~&~A~%" (aref *all-edges* i)))))
