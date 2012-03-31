;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1996,2012  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "resource"
;;;   Module:  "objects;chart:edges:"
;;;  Version:  4.0 March 2012

;; 3.0 (9/7/92 v2.3) updated the references to edge fields
;; 3.1 (4/7/93) changed name to Make-the-edge-resource for ease of documentation
;; 3.2 (8/1/94) added *left-most-edge-valid-position* and started cleaning up
;; 4.0 (1/24/95) inserted a call to long-term-ify/individual.
;;     (1/1/96) getting problems with it. (1/14-16) working on the problems,
;;      Grossly remodularized the routine.  (5/30) debugging that.
;;     (3/4/12) Pulled out globals to own file to quiet compiler. More 3/15.

(in-package :sparser)


;;;--------------
;;; constructors
;;;--------------

(defun make-the-edge-resource ()
  (setq *all-edges*
        (make-array *length-of-edge-resource*
                    :element-type t))
  (dotimes (n *length-of-edge-resource* *length-of-edge-resource*)
    (setf (aref *all-edges* n)
          (make-edge
           :position-in-resource-array n))))



(defun initialize-edge-resource (&optional reason)
  (declare (special *edge-just-done* *edge-waiting-on-scan*))
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




;;;----- HA parameters

(defvar *edge-just-done* nil
  "Set by Do-only-treetop-edges just after it examines an edge.")

(defvar *edge-waiting-on-scan* nil
  "Set by Do-only-treetop-edges if an edge comes back that could
   possibly have expanded rightward except that the next chart
   position hadn't yet been scanned and assessed.")



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
  ;; that the "active region" of the chart will have moved far beyond the
  ;; edges that are reused.
  ;;
  (declare (special *trace-edge-resource*))
  (let ((edge (aref *all-edges*
                    *position-of-next-available-edge-in-resource*))
        (next-index (incf *position-of-next-available-edge-in-resource*)))
    
       
    ;; Reset to the beginning of the resourse if needed.
    (when (= next-index *length-of-edge-resource*)
      (setq *position-of-next-available-edge-in-resource* 0
            *edge-resource-is-wrapped* t))
        
    (when *trace-edge-resource*
      (format t "~&Allocating edge #~A~
                 ~%  next available edge is ~A~%"
              (edge-position-in-resource-array edge)
              (edge# *position-of-next-available-edge-in-resource*)))


    (if *edge-resource-is-wrapped*
      (manage-wrapped-edge-resource)
      (incf *index-of-furthest-edge-ever-allocated*))
    
    ;; Clear out any state from this edge before letting it get used
    (initialize-edge edge)

    edge ))
     
     


(defun manage-wrapped-edge-resource ()
  ;; Called from Next-edge-from-resource. The edge resource is
  ;; wrapped and we need to clear out the edge that will be used
  ;; next. (N.b. not the one being returned by the ongoing call to 
  ;; Next-edge-from-resource but the one that will be returned
  ;; by the next such call). 
  ;;   We deactivate the edge after we have converted the discourse
  ;; history information of its referent to a long-term format,
  ;; and then we update the status information of from where in the
  ;; chart edges are valid. (Most of that occurs in the subroutine.)

  (declare (special *text-out*))
  (let ((next-edge (edge# *position-of-next-available-edge-in-resource*)))

    (unless (deactivated? next-edge)
      ;; The chart is recycling faster than the edge resource, and so
      ;; there's already been a call to long-term-ify/individual and
      ;; to Deactivate-edge that was initiated by Bump-&-store-word using
      ;; Long-term-ify/edge-referents/at to do the work.  Since it's
      ;; gotten there first, there's nothing for us to do now.
      
      ;; If we're running the workbench then we won't be able to
      ;; see this edge from its referent (or rather the edge that the
      ;; referent would point to will now have a completely different
      ;; set of values.  As a result we should probably make the 
      ;; discourse-history adjustments that will indicate
      ;; that the edge shouldn't be looked for.
      (when *text-out*
        (when (individual-p (edge-referent next-edge))
          ;(format t "~&Long-term-ifying ~A~
          ;           ~%   of ~A~%" (edge-referent next-edge) next-edge)
          (long-term-ify/individual (edge-referent next-edge)
                                    (pos-edge-starts-at next-edge)
                                    (pos-edge-ends-at next-edge))))
      
      (deactivate-edge next-edge))))




(defun deactivate-edge (edge   &optional leftmost-valid-position)
  ;; Called from Manage-wrapped-edge-resource or, when the call is initiated
  ;; by the chart recycling, from Long-term-ify/edge-referents/at, which
  ;; is itself called from Bump-&-store-word. In the case of those calls
  ;; we get the position passed in, otherwise we calculate it.
  (declare (special *trace-edge-resource*))

  (when *trace-edge-resource*
    (format t "~&Deactivating ~A~%" edge))

  (setf (edge-starts-at edge) nil)
  ;; Deactivates the next edge that the edge resource will use.
  ;; This makes the resource maintain (at least) one deactivated
  ;; edge in the middle of its circular view so that there's a low-level
  ;; way to see where the valid edges start.  If the chart is recycling
  ;; faster than the edges then there will be a whole set of deactivated
  ;; edges in the middle of the resource. 


  (if leftmost-valid-position
    (update-leftmost-edge-valid-position leftmost-valid-position)

    (update-leftmost-edge-valid-position
     (pos-edge-ends-at edge))))


(defun deactivated? (edge)
  (null (edge-starts-at edge)))



(defun update-leftmost-edge-valid-position (position)
  ;; As edges are deactivated, either because the edge resource is recycling
  ;; or the chart is recycling, The point in the chart where we have
  ;; valid edges keeps moving rightwards.  If we're recycling the chart
  ;; then the progress is monotonic.  If it's the edge resource then depending
  ;; of the size of the edge it can go backwards or forwards, hence the
  ;; check that we don't regress.

  (if (null *leftmost-edge-valid-position*)
    ;; Then we've never recycled anything before this moment
    (setq *leftmost-edge-valid-position* position)

    (let ((prior-leftmost-valid *leftmost-edge-valid-position*))
      (cond
       ((position-precedes position prior-leftmost-valid))
        ;; don't do anything, we're regressing.
        
       ((eq position prior-leftmost-valid))  ;; ditto

       (t (setq *leftmost-edge-valid-position* position))))))





#| original
(defun next-edge-from-resource ()
  ;; called by any of the edge-creating routines in analyzers:psp:edges
  ;; as the way to get an edge object to set up.  The resource is of a
  ;; fixed length, and wraps and reuses edges once that many edges have
  ;; been used.
  ;;   No provision is presently made to ensure that the edge returned
  ;; by this routine is not still "in use", i.e. either active and looking
  ;; for combinations, or incorporated into a tree that is still needed for
  ;; ongoing analyses.  Instead an ample number of edges is allocated so
  ;; that the "active region" of the chart will have moved far beyond the
  ;; edges that are reused.
  ;;
  (let ((edge (aref *all-edges*
                    *position-of-next-available-edge-in-resource*))
        (next-index (incf *position-of-next-available-edge-in-resource*))
        next-edge )

    ;; wrapping check / maintainance
    (cond
     (*edge-resource-is-wrapped*
      ;; mark the next edge as inactive so that routines can
      ;; recognize when they have reached the end of the resource.
      (setq next-edge
            (if (= next-index *length-of-edge-resource*)
              (then
                (setq *position-of-next-available-edge-in-resource* 0)
                (edge# 0))
              (edge# *position-of-next-available-edge-in-resource*))))
     
     ((= next-index *length-of-edge-resource*)
      (setq *position-of-next-available-edge-in-resource* 0
            *edge-resource-is-wrapped* t)
      (setf (edge-starts-at (edge# 0)) nil))
     
     (t (incf *index-of-furthest-edge-ever-allocated*)))


    (when next-edge
      ;; If we're running the workbench then we won't be able
      ;; to see this edge from its referent (or rather the edge that
      ;; the referent access will have a completely different
      ;; set of values.  As a result we should probably make the 
      ;; discourse-history adjustments that will indicate
      ;; that the edge shouldn't be looked for.
      (when (individual-p (edge-referent next-edge))
        ;(format t "~&Long-term-ifying ~A~
        ;           ~%   of ~A~%" (edge-referent next-edge) next-edge)
        (long-term-ify/individual (edge-referent next-edge)
                                  (pos-edge-starts-at next-edge)
                                  (pos-edge-ends-at next-edge)))
      (setf (edge-starts-at next-edge) nil))


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
    edge )) |#



(defun release-edge-to-resource (edge &optional reason position)
  ;; called by Initialize-edge-resource
  (declare (special *trace-edge-resource*))
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

