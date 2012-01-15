;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2011  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "object"
;;;   Module:  "objects;chart:edge-vectors:"
;;;  Version:  2.5 October 2011

;; 2.0 (11/26/92 v2.3) bumped on general principles anticipating changes.
;;     (5/5/93) Added Preterminal-edges
;;     (5/15) added Span-covered-by-one-edge?
;;     (6/2) added Highest-edge
;; 2.1 (1/21/94) elaborated def. of Starting-edge-just-under
;; 2.2 (2/24) fixed a bug in that elaboration
;; 2.3 (3/30) fixed a typo in Index-of-edge-in-vector
;; 2.4 (5/11) added marker and plist fields to the object
;;     (11/23) found missing case in Starting-edge-just-under
;;     (1/30/95) added kcons version for it
;; 2.5 (2/27) changed case of edge index being 1 in Starting-edge-just-under
;;      to fix bug in opening edges via wb/treetops-below-edge
;;     (9/6) added Edge-vector-contains-edge? (2/22/07) added longest-edge-starting-at
;;     (10/18/11) added search-ev-for-edge

(in-package :sparser)


(defstruct (edge-vector
            (:conc-name #:ev-)
            (:print-function print-edge-vector-structure))

  edge-vector      ;; a vector of edges
  top-node         ;; an edge
  number-of-edges  ;; an integer
  boundary         ;; a phrase boundary
  position         ;; a #<position>
  direction        ;; a keyword, e.g. :|ending at|
  marker           ;; an expansion site for things like font-shift indicators
  plist            ;; for annotations such as who put on the boundaries
  )


;;;------------------
;;; access functions
;;;------------------

(defun ev/s (position#)
  (let ((position (position# position#)))
    (pos-starts-here position)))

(defun ev/e (position#)
  (let ((position (position# position#)))
    (pos-ends-here position)))


(defun pos-edge-starts-at (edge)
  (ev-position (edge-starts-at edge)))

(defun pos-edge-ends-at (edge)
  (ev-position (edge-ends-at edge)))


;;;--------------------------------
;;; searching through edge vectors
;;;--------------------------------

(defun edge-vector-contains-edge? (ev edge)
  (member edge (preterminal-edges (ev-position ev))))


(defun search-ev-for-edge (ev label)
  "Scan up from the bottom-most edge on the edge-vector for 
   an edge that has the indicated label. Return that edge
   if it exists. look-for-submerged-matching-conj-edge is
   the motivating case."
  (when (eq *edge-vector-type* :kcons-list)
    (push-debug `(,ev ,label))
    (break "Stub: search-ev-for-edge needs to be extended to ~
            handle :kcons-list edge-vectors"))
  (let ((vector (ev-edge-vector ev))
        edge )
    (dotimes (i (ev-number-of-edges ev))
      (setq edge (aref vector i))
      (when (eq (edge-category edge) label)
        (return-from search-ev-for-edge edge)))
    nil))

(defun edges-on-ev-above (edge ev)
  "Scan up to the edge, then return a list of the edges above
   that, including the edge, ordered from bottom to top."
  ;; 1st consumer is conjoin-and-rethread-edges
  ;; Only works on vectors because I'm in a hurry and the odds
  ;; are that they're all that will be used for something like this
  (let ((vector (ev-edge-vector ev))
        e  edges-above  accumulate? )
    (dotimes (i (ev-number-of-edges ev))
      (setq e (aref vector i))
      (when (eq e edge)
        (setq accumulate? t))
      (when accumulate?
        (push e edges-above)))
    (nreverse edges-above)))



(defun span-covered-by-one-edge? (start end)
  ;; return the edge that starts and ends at the indicated positions
  ;; if there is one
  (let ((start-vector (pos-starts-here start))
        (end-vector (pos-ends-here end)))

    ;; check the easy case
    (let ((start-top (ev-top-node start-vector))
          (end-top (ev-top-node end-vector)))

      (when start-top
        (when end-top
          (if (eq start-top end-top)
            start-top
            (let ( start-edge end-edge )
              ;; sigh. there must be an easier way
              (dotimes (i (ev-number-of-edges start-vector))
                ;; starts with the earliest node and works up to
                ;; the most recent
                (setq start-edge (aref (ev-edge-vector start-vector) i))
                (dotimes (j (ev-number-of-edges end-vector))
                  (setq end-edge
                        (aref (ev-edge-vector end-vector) j))
                  (when (eq start-edge end-edge)
                    (return-from span-covered-by-one-edge? start-edge))))
              nil )))))))
                              




(defun top-edge-at/ending (position)
  ;; returns the top-edge that ends at the position
  (ev-top-node (pos-ends-here position)))

(defun top-edge-at/starting (position)
  ;; returns the top-edge that starts at the position
  (ev-top-node (pos-starts-here position)))



(defun preterminal-edges (position)
  ;; return a list of the edges that start at this position and
  ;; span just the one word here.
  (let ((starting-ev (pos-starts-here position)))
    (if (null (ev-top-node starting-ev))
      nil
      (let ((ending-ev (pos-ends-here (chart-position-after position)))
            (vector (ev-edge-vector starting-ev))
            preterminals )

        (ecase *edge-vector-type*
          (:kcons-list
           (if (eq (edge-ends-at (car vector))
                   ending-ev)
             ;; if the first edge ends at the next position
             ;; then all the rest do
             vector
             (dolist (edge vector)
               (when (eq (edge-ends-at edge)
                         ending-ev)
                 (push edge preterminals)))))
          (:vector
           (let ( edge )
             (dotimes (i (ev-number-of-edges starting-ev))
               (setq edge (aref vector i))
               (when (eq (edge-ends-at edge)
                         ending-ev)
                 (push edge preterminals))))))

        preterminals ))))


(defun highest-edge (ev)
  ;; returns the edge most recently added to the vector
  (let ((vector (ev-edge-vector ev)))
    (ecase *edge-vector-type*
      (:kcons-list
       (car vector))
      (:vector
       (aref vector (1- (ev-number-of-edges ev)))))))


(defun longest-edge-starting-at (position)
  (let* ((ev (pos-starts-here position))
	 (array (ev-edge-vector ev))
	 (count (ev-number-of-edges ev))
	 (index -1)
	 (length 0)
	 edge  )
    (case *edge-vector-type*
      (:vector
       (do ((e (aref array (incf index)) (aref array (incf index))))
	   ((= index count))
	 (when (> (edge-length e) length)
	   (setq edge e)
	   (setq length (edge-length e)))))
      (otherwise
       (break "Stub - write the version for kcons lists")))
    (values edge length)))

(defun starting-edge-just-under (edge position)
  (let* ((ev (pos-starts-here position))
         (count (ev-number-of-edges ev))
         (array (ev-edge-vector ev))
         (top-edge (ev-top-node ev)))

    (ecase *edge-vector-type*
      (:kcons-list
       (let ((length (length array)))
         (cond
          ((= length 1)  ;; no edge underneath
           (pos-terminal position))
          ((= count 0)
           (pos-terminal position))
          (t
           (let ((sublist (member edge (reverse array))))
             (if (cdr sublist) ;; more than just the one edge
               (second sublist)
               (pos-terminal position)))))))

      (:vector
       (cond
        ((eq edge top-edge) ;;most common case
         (if (= count 1)
           (pos-terminal position)
           (aref array (- count 2))))
        ((= count 0)
         (pos-terminal position))
        (t
         (let (( i (index-of-edge-in-vector edge ev)))
           (cond ;((= i 1)
                 ; (pos-terminal position))
                 ((= i 0)
                  (pos-terminal position))
                 (t
                  (aref array (1- i)))))))))))
           


(defun index-of-edge-in-vector (edge ev
                                &optional (count (ev-number-of-edges ev))
                                          (vector (ev-edge-vector ev)))
  (ecase *edge-vector-type*
    (:kcons-list (break "Stub: write the kcons-list version"))
    (:vector
     (dotimes (i count (break "The edge ~A~%is not included in the ~
                              edge vector ~A" edge ev))
       (when (eq edge (elt vector i))
         (return-from index-of-edge-in-vector i))))))


(defun vector-contains-edge-of-category (vector category)
  ;; called by CA search routines, e.g. for conjunctions
  (let ((number-of-edges (ev-number-of-edges vector))
        (array (ev-edge-vector vector))
        edge )
    (do ((i (1- number-of-edges) (1- i)))
        ((< i 0) nil)
      (setq edge (aref array i))
      (when (eq (edge-category edge)
                category)
        (return edge)))))

