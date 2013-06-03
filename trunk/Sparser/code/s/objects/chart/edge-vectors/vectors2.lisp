;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "vectors"
;;;   Module:  "objects;edge vectors:"
;;;  Version:  2.2 April 1994

;; 2.0 (11/26/92 v2.3) bumped on general principles anticipating changes.
;; 2.1 (4/6/93) Put in switch for kcons vs. vector versions
;; 2.2 (4/1/94) added remove-edge-from-chart

(in-package :sparser)


;;;-------------------------------
;;; adding edges to edge-vectors
;;;-------------------------------

(defun knit-edge-into-positions (edge
                                 starting-vector
                                 ending-vector)

  ;; The edge has been filled out, all we have to do is add it
  ;; to the appropriate edge-vector arrays.  Since this call
  ;; has already differentiated which vectors are involved
  ;; (i.e. which one does it start in, which one end), then
  ;; the same primitive call can be used on each.

  (knit-edge-into-position edge starting-vector)
  (knit-edge-into-position edge ending-vector))



(defun knit-edge-into-position (edge vector)
  (declare (ignore edge vector))
  (error "No value for this switched function.~
          ~%Call Establish-type-of-edge-vector-to-use"))


(defun knit-edge-into-position/vector (edge vector)
  (let ((array (ev-edge-vector vector))
        (count (ev-number-of-edges vector)))
    (declare (special *maximum-number-of-edges-in-an-edge-vector*))
    (when (= 0 count)
      ;; This may be the very first time the edge vector at this point
      ;; in the chart has had edges, have to check and put in an array
      ;; if needed
      (when (null array)
        (setf (ev-edge-vector vector)
              (setq array (make-edge-vector-array)))))

    (when (>= count *maximum-number-of-edges-in-an-edge-vector*)
      (error "Parser design-limit reached.~
              ~%  The parser is about introduce one more edge into~
              ~%  an edge-vector than the pre-constructed data structure~
              ~%  is designed to allow.~
              ~%     This usually indicates you have a runaway circular~
              ~%  set of rules in your grammar, and you should rewrite~
              ~%  your grammar accordingly.  If this is a reasonable~
              ~%  parse, however, consult your vendor to have an increase~
              ~%  in the limit installed.~
              ~%     edge: ~A~
              ~%     edge-vector: ~A"
             edge vector))

    (setf (aref array count) edge)
    (setq count (incf (ev-number-of-edges vector)))
    (setf (ev-top-node vector) edge)
    vector))


(defun knit-edge-into-position/kcons (edge vector)
  (let ((list-so-far (ev-edge-vector vector)))
    (setf (ev-edge-vector vector)
          (kcons edge list-so-far))
    (incf (ev-number-of-edges vector))
    (setf (ev-top-node vector) edge)
    vector))



;;;----------------
;;; removing edges
;;;----------------

(defun remove-edge-from-chart (edge)
  (let ((starting-vector (edge-starts-at edge))
        (ending-vector (edge-ends-at edge)))

    (remove-edge-from-position starting-vector edge)
    (remove-edge-from-position ending-vector edge)))


(defun remove-edge-from-position (ev edge)
  (ecase *edge-vector-type*
    (:vector (remove-edge-from-vector-ev ev edge))
    (:kcons-list
     (break "Stub: write the routine for removing an edge from an~
             ~%edge-vector based on kcons lists."))))

(defun remove-edge-from-vector-ev (ev edge)
  (let ((array (ev-edge-vector ev))
        (count (ev-number-of-edges ev)))
    (unless (eq edge
                (aref array (1- count)))
      (break "Only the topmost edge in a vector may be deleted~
              ~%for ~A, the top edge is ~A~
              ~%and the edge to be deleted is ~A"
             ev (aref array (1- count)) edge))
    (setf (aref array
                (decf (ev-number-of-edges ev)))
          nil)
    edge ))
