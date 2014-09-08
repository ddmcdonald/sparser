;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1996,2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "treetops"
;;;    Module:   "analyzers;forest:"
;;;   Version:   1.5 September 2014

;; 1.1  (2/8/91 v1.8.1) added Final-tt/category
;; 1.2  (2/13 v1.8.1) Modified ...-treetop-at to both return words if there
;;      isn't a top edge.
;; 1.3  (3/19 v1.8.1)  Wrote Treetop? predicate
;; 1.4  (4/26 v1.8.4)  Added Next-treetop/rightward
;;      (7/25/94 v2.3) added Number-of-treetops-between
;;      (7/27) added {Right,Left}-treetop-at/edge variation
;; 1.5  (9/28) fixed bug in left-treetop-at/edge. (10/26) added doc.
;;      (12/1) added Treetops-between
;;      (1/2/96) added a variation that only returns edges
;;      (9/8/14) Converted a few functions to methods taking edges.

(in-package :sparser)

;;;--------------------------------
;;; basic navigation over treetops
;;;--------------------------------

(defun right-treetop-at (position)
  (let ((vector (pos-starts-here position)))
    (or (ev-top-node vector)
        (pos-terminal position))))

(defun left-treetop-at (position)
  (let ((vector (pos-ends-here position)))
    (or (ev-top-node vector)
        (pos-terminal (chart-position-before position)))))



;;;--- variants on those with different return values

(defmethod next-treetop/rightward ((e edge))
  (next-treetop/rightward (pos-edge-ends-at e)))

(defmethod next-treetop/rightward ((p position))

  ;; Used by Do-treetop-triggers to scan successive treetops.
  ;; Returns as many as three values: (1) the treetop that starts
  ;; at the position (either an edge or a word), (2) the position
  ;; just after that where the treetop scan should resume, and
  ;; (3) a boolean to indicate whether the treetop being returned
  ;; is a word with multiple interpretations.

  (let ((topnode-field (ev-top-node (pos-starts-here p))))

    (cond ((eq topnode-field :multiple-initial-edges)
           ;; presumes only terminals could have multiple edges
           (values (pos-starts-here p)
                   (chart-position-after p)
                   t))

          (topnode-field   ;; it's an edge 
           (values topnode-field
                   (pos-edge-ends-at topnode-field)))
          (t
           (values (pos-terminal p)
                   (chart-position-after p))))))


(defmethod next-treetop/leftward ((e edge))
  (next-treetop/leftward (pos-edge-starts-at e)))

(defmethod next-treetop/leftward ((p position))
  ;; analogous routine for a leftward walk
  (let* ((vector (pos-ends-here p))
         (topnode-field (ev-top-node vector))
         (next-position (chart-position-before p)))

    (cond ((eq topnode-field :multiple-initial-edges)
           ;; presumes only terminals could have multiple edges
           (values vector
                   next-position
                   t))

          (topnode-field   ;; it's an edge 
           (values topnode-field
                   (pos-edge-starts-at topnode-field)))
          (t
           (values (pos-terminal next-position)
                   next-position)))))




;;;-------- still another variant that takes the highest edge when there
;;;         are multiples

(defmethod right-treetop-at/edge ((e edge))
  (right-treetop-at/edge (pos-edge-ends-at e)))

(defmethod right-treetop-at/edge ((position position))
  (let* ((ev (pos-starts-here position))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           (elt (ev-edge-vector ev)
                (1- (ev-number-of-edges ev))))
          (top-node top-node)
          (t (pos-terminal position)))))


(defmethod left-treetop-at/edge ((e edge))
  (left-treetop-at/edge (pos-edge-starts-at e)))

(defmethod left-treetop-at/edge ((position position))
  (let* ((ev (pos-ends-here position))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           (elt (ev-edge-vector ev)
                (1- (ev-number-of-edges ev))))
          (top-node top-node)
          (t (pos-terminal (chart-position-before position))))))


;;;-------- These insist on edges and return nil on words

(defun right-treetop-at/only-edges (position)
  (let* ((ev (pos-starts-here position))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           (elt (ev-edge-vector ev)
                (1- (ev-number-of-edges ev))))
          (top-node top-node)
          (t nil))))


(defun left-treetop-at/only-edges (position)
  (let* ((ev (pos-ends-here position))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           (elt (ev-edge-vector ev)
                (1- (ev-number-of-edges ev))))
          (top-node top-node)
          (t nil))))




;;;---- and another that only reacts to edges

(defun right-multiword-treetop (position)
  (let* ((ev (pos-starts-here position))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           nil )
          (top-node
           (when (> (number-of-terminals-between
                     position
                     (pos-edge-ends-at top-node))
                    1)
             top-node))
          (t nil))))


(defun left-multiword-treetop (position)
  (let* ((ev (pos-ends-here position))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           nil )
          (top-node
           (when (> (number-of-terminals-between
                     (pos-edge-starts-at top-node)
                     position)
                    1)
             top-node))
          (t nil))))


;;;------------
;;; predicates
;;;------------

(defun treetop? (edge)
  (null (edge-used-in edge)))


(defun treetop-between (start end)
  (let ((treetop-at-start (right-treetop-at/edge start))
        (treetop-at-end   (left-treetop-at/edge  end)))

    (when (eq treetop-at-start treetop-at-end)
      treetop-at-start )))


(defun number-of-treetops-between (start end)
  (let ((next-pos start)
        (count 0)
        tt )
    (loop
      (when (eq next-pos end)
        (return))
      (incf count)
      (multiple-value-setq (tt next-pos)
        (next-treetop/rightward next-pos))
      tt ) ;; quiet the compiler
    count ))


(defun treetops-between (start end)
  (unless (eq start end)
    (let ((next-pos start)
          tt  tts )
      (loop
        (when (eq next-pos end)
          (return))
        (multiple-value-setq (tt next-pos)
          (next-treetop/rightward next-pos))
        (push tt tts))
      (nreverse tts))))
    
      

(defun treetop-does-not-end-the-chart (tt)
  (let* ((ends-at (ev-position (edge-ends-at tt)))
         (terminal (pos-terminal ends-at)))
    (not (eq terminal word::end-of-source))))


(defun final-tt/category (list-of-tts category)
  ;; checks wheter the last edge in the list has the indicated category
  (eq (edge-category (car (last list-of-tts)))
      category))

