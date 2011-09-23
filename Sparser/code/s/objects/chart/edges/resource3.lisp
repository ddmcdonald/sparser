;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "resource"
;;;   Module:  "objects;edges:"
;;;  Version:  3.2 August 1994

;; 3.0 (9/7/92 v2.3) updated the references to edge fields
;; 3.1 (4/7/93) changed name to Make-the-edge-resource for ease of documentation
;; 3.2 (8/1/94) added *left-most-edge-valid-position* and started cleaning up

(in-package :sparser)


;;;----------
;;; globals
;;;----------

(defparameter *all-edges* nil
  "A resource array, initialized by Initialize-edge-array.")

(or (boundp '*length-of-edge-resource*)
    (defparameter *length-of-edge-resource* 500))


(defun make-the-edge-resource ()
  (setq *all-edges*
        (make-array *length-of-edge-resource*
                    :element-type t))
  (dotimes (n *length-of-edge-resource* *all-edges*)
    (setf (aref *all-edges* n)
          (make-edge
           :position-in-resource-array n))))


;;;-------------------
;;; resource pointers
;;;-------------------

(defvar *index-of-furthest-edge-ever-allocated* 0)

(defvar *leftmost-edge-valid-position* nil)


(defvar *position-of-next-available-edge-in-resource* 0)

(defvar *first-active-edge-in-resource* nil)

(defvar *next-active-edge-to-do* nil)

(defvar *most-recently-activated-edge*  nil)


(defvar *some-edges-released* nil)

(defvar *edge-resource-is-fragmented* nil)

(defvar *edge-resource-is-wrapped* nil)



;;;----- HA parameters

(defvar *edge-just-done* nil
  "Set by Do-only-treetop-edges just after it examines an edge.")

(defvar *edge-waiting-on-scan* nil
  "Set by Do-only-treetop-edges if an edge comes back that could
   possibly have expanded rightward except that the next chart
   position hadn't yet been scanned and assessed.")



(defun initialize-edge-resource (&optional reason)
  (let ( edge )
    (dotimes (n (if *edge-resource-is-wrapped*
                  *length-of-edge-resource*
                  *index-of-furthest-edge-ever-allocated*))
      (setq edge (aref *all-edges* n))
      (release-edge-to-resource edge reason)))

  (setq *position-of-next-available-edge-in-resource* 0
        *index-of-furthest-edge-ever-allocated* 0
        *leftmost-edge-valid-position* nil

        *first-active-edge-in-resource*   nil
        *next-active-edge-to-do*          nil
        *most-recently-activated-edge*    nil

        *some-edges-released*         nil
        *edge-resource-is-fragmented* nil
        *edge-resource-is-wrapped*    nil

        *edge-just-done*       nil
        *edge-waiting-on-scan* nil
        ))

#|
(defun next-edge-after (prior-edge)
  ;; called from Next-edge-that-is-active, part of the parsing
  ;; routines.  That routine is walking through the allocated
  ;; edges, checking for ones that still need to be checked for
  ;; compositions with their neighbors.
  ;;
  (let* ((prior-index
          (when prior-edge
            ;; catches the case of the parser's first call
            ;; when there is no earlier edge
            (edge-position-in-resource-array prior-edge)))
         (next-index (if prior-edge
                       (1+ prior-index)
                       0)))
    (when (= next-index *length-of-edge-resource*)
      (setq next-index 0))

    (edge# next-index)))
|#


;;;----------------------
;;;  allocate, release
;;;----------------------

(defun next-edge-from-resource ()
  ;; called by any of the edge-creating routines in analyzers:psp:edges
  ;; as the way to get an edge object to set up.  The resource is of a
  ;; fixed length, and wraps and reuses edges once that many edges have
  ;; been used.
  ;;   No provision is presently made to ensure that the edge returned
  ;; by this routine is not still "in use", i.e. either active and looking
  ;; for combinations, or incorporated into a tree that is still needed for
  ;; ongoing analyses.  Instead an ample number of edges is allocated so
  ;; that the "active front" of the chart will have moved far beyond the
  ;; edges that are reused.
  ;;
  (let ((edge (aref *all-edges*
                    *position-of-next-available-edge-in-resource*))
        (next-index
         (incf *position-of-next-available-edge-in-resource*)))
    
    (cond
     (*edge-resource-is-wrapped*
      ;; mark the next edge as inactive so that routines can
      ;; recognize when they have reached the end of the resource.
      (let ((next-edge
             (if (= next-index *length-of-edge-resource*)
               (then
                 (setq *position-of-next-available-edge-in-resource* 0)
                 (edge# 0))
               (edge# *position-of-next-available-edge-in-resource*))))
        (setf (edge-starts-at next-edge) nil)))
     
     ((= next-index *length-of-edge-resource*)
      (setq *position-of-next-available-edge-in-resource* 0
            *edge-resource-is-wrapped* t)
      (setf (edge-starts-at (edge# 0)) nil))
     
     (t (incf *index-of-furthest-edge-ever-allocated*)))

    (when *edge-resource-is-wrapped*
      ;; the next edge has been deactivated, which makes the edge after
      ;; that the earliest edge that is still valid.  Setting this
      ;; flag lets other routines know what portions of the chart
      ;; are covered by valid edges.
      (let ((prior-leftmost-valid *leftmost-edge-valid-position*)
            (leftmost-this-time
             (pos-token-index 
              (pos-edge-starts-at
               (edge#
                ;; this edge will be recycled next
                (if (= *position-of-next-available-edge-in-resource*
                       (1- *length-of-edge-resource*))
                  0
                  (1+ *position-of-next-available-edge-in-resource*)))))))
        (if prior-leftmost-valid
          (unless (< leftmost-this-time prior-leftmost-valid)
            (setq *leftmost-edge-valid-position*
                  leftmost-this-time))
          (setq *leftmost-edge-valid-position* leftmost-this-time))

        ;(format t "[~A] "*leftmost-edge-valid-position*)
        ))

    (when *trace-edge-resource*
      (format t "~&Allocating edge #~A~
                 ~%  next available edge is ~A~%"
              (edge-position-in-resource-array edge)
              (edge# *position-of-next-available-edge-in-resource*)))

    (initialize-edge edge)
    edge ))



(defun release-edge-to-resource (edge &optional reason position)
  ;; called by Initialize-edge-resource
  (when *trace-edge-resource*
    (if position
      (format t "~%Releasing edge #~A~
                 ~%  to clear position ~A"
              (edge-position-in-resource-array edge) position)
      (format t "~%Releasing edge #~A~
                 ~%  because ~A"
              (edge-position-in-resource-array edge) reason)))

  (unless (or (eq reason :initializing-run)
              (eq reason :clearing-position))
    (break "Releasing an edge for an undocumented reason.~
            ~%  Check the callers of this routine for an ~
            unexpected pattern"))

  ;; mark it as not in use
  (setf (edge-starts-at edge) nil)

  ;; make sure it doesn't have any spurious state left over
  (initialize-edge edge)

  (setq *some-edges-released* t)
  edge)


(defun initialize-edge (edge)
  (setf (edge-category edge)  nil)
  (setf (edge-form edge)      nil)
  (setf (edge-referent edge)  nil)
  (setf (edge-rule edge)      nil)
  (setf (edge-left-daughter edge)   nil)
  (setf (edge-right-daughter edge)  nil)
  (setf (edge-used-in edge)         nil))

