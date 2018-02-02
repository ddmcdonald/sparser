;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2015-2018  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "init"
;;;   Module:  "objects;chart:edge vectors:"
;;;  Version:  February 2018

;; 2.0 (11/26/92 v2.3) bumped on general principles anticipating changes.
;; 2.1 (4/6/93) Moved some code around and put in switch for kcons vs. vector
;; 2.2 (5/23/94) added more fields to init. fn.
;; 1/6/2015 Make the number of possible edges larger -- biology has deep right recursions

(in-package :sparser)

;;;-------------------------------------
;;; initializing the edge-vector object
;;;-------------------------------------

(defun initialize-edge-vector (ev position)
  "Called by initialize-position, but that routine can
   be called in circumstances where the whole chart needs to be
   cleaned, so we adjust the position field in case it's not 
   the one it should be. Otherwise the direction is immutable
   and everything else get's zero'd."
  (if (ev-edge-vector ev)
    (cleanout-edge-vector-array ev)
    (setf (ev-edge-vector ev)
          (make-edge-vector-array)))
  (setf (ev-position ev)        position)
  (setf (ev-top-node ev)        nil)
  (setf (ev-number-of-edges ev) 0)
  (setf (ev-boundary ev)        nil)  
  (setf (ev-marker ev)          nil)
  (setf (ev-plist ev)           nil)
  ev)


;;;------------------------
;;; the edge-record proper
;;;------------------------

(defvar *maximum-number-of-edges-in-an-edge-vector* 40
  "The number of edges that can be piled up on a given position
(starting or ending there). If this overflows, it is probably
because of a loop in the phrase structure rules. Note that
this flag is only meaningful when using 'array' edge-vectors;
for 'kcons' edge-vectors there is no limit.")

(defun make-edge-vector-array ()
  (error "No value for this switched function.~
          ~%Call Establish-type-of-edge-vector-to-use"))

(defun make-ev-array/vector ()
  (make-array *maximum-number-of-edges-in-an-edge-vector*
              :initial-element nil))

(defun make-ev-array/kcons ()
  ;; nothing to do since the initial state of the field is
  ;; to point to Nil
  )


;;;--------------------------------
;;; reinitializing the edge-record
;;;--------------------------------

(defun cleanout-edge-vector-array (array)
  (declare (ignore array))
  (error "No value for this switched function.~
          ~%Call Establish-type-of-edge-vector-to-use"))


(defun cleanout-ev-array/vector (ev)
  (let ((array (ev-edge-vector ev))
        edge )
    (if (listp array)
      (setf (ev-edge-vector ev) (make-ev-array/vector))
      (else
        (dotimes (n *maximum-number-of-edges-in-an-edge-vector*)
          (setq edge (aref array n))
          (when edge
            (setf (aref array n) nil)))
        array ))))


(defun cleanout-ev-array/kcons (ev)
  (let ((list-of-edges (ev-edge-vector ev)))
    (if (arrayp list-of-edges)
      ;; this will be the case when shifting from :vector ev's to
      ;; kcons ev's.
      (setf (ev-edge-vector ev) nil)
      (else
        (setf (ev-edge-vector ev) nil)
        (do ((cell list-of-edges remainder)
             (remainder (cdr list-of-edges) (cdr remainder)))
            ((null cell))
          (deallocate-kons cell))))))

