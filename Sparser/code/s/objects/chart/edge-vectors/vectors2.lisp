;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "vectors"
;;;   Module:  "objects;edge vectors:"
;;;  Version:  2.2 July 2013

;; 2.0 (11/26/92 v2.3) bumped on general principles anticipating changes.
;; 2.1 (4/6/93) Put in switch for kcons vs. vector versions
;; 2.2 (4/1/94) added remove-edge-from-chart
;;     (7/30/13) Added a set of function to lift up the fringe of an
;;      established edge, where one of its edges has been composed
;;      (to the right) with another edge, and reknit everything together
;;      properly. 

(in-package :sparser)


(defun tuck-new-edge-under-already-knit (subsumed-edge top-edge dominating-edge)
  ;; We looked under an edge, identified an edge along its
  ;; fringe (subsumed-edge), and composed that edge with one adjacent
  ;; to the right (left) to form a new edge (top-edge).
  ;; Now we have to reconstruct pointers so that the edge that
  ;; had dominated the subsumed one dominates the new pair.
  (push-debug `(,subsumed-edge ,top-edge ,dominating-edge))
  ;; (setq subsumed-edge (car *) top-edge (cadr *) dominating-edge (caddr *))

  ;; Cleanup the used-in of the subsumed-edge
  (setf (edge-used-in subsumed-edge) top-edge)

  ;; This assumes we're working on the right fringe of
  ;; the dominating edge
  (let ((dominating-ends-at (edge-ends-at dominating-edge))
        (top-ends-at (edge-ends-at top-edge)))
    (push-debug `(,dominating-ends-at ,top-ends-at))
    ;; (setq dominating-ends-at (car *) top-ends-at (cadr *))

    ;; plug in top-edge in place of subsumed-edge
    (set-used-by top-edge dominating-edge)

    ;; replace old subsumed right-daughter (... presumes binary)
    (setf (edge-right-daughter dominating-edge) top-edge)

    ;; Remove the dominating edge from its ends-at vector
    (if (eq dominating-edge (highest-edge dominating-ends-at))
      ;; easy case
      (then 
       (pop-topmost-edge dominating-ends-at)
       ;; insert the dominating edge just above the top edge
       ;; at the end location
       (tuck-in-just-above top-ends-at top-edge dominating-edge))
      (else
       ;; Several edges are above the edge now just above the
       ;; subsumed-edge. They all have to be repositioned (in order)
       ;; at the end-position of the top-edge where sit above it
       ;;(break "check args")
       (move-edges-above-to-new-pos 
        subsumed-edge (edge-ends-at subsumed-edge) top-ends-at)))
    ;;(break "and what else?")
    ;;/// We now have two edges that are adjacent that weren't before
    ;; so we should see if there's a rule and recompute the referent
    ))

(defun move-edges-above-to-new-pos (above-this-one
                                    old-location new-location)
  (push-debug `(,above-this-one ,old-location ,new-location))
  (let* ((index (index-of-edge-in-vector above-this-one old-location)))
    ;;(break "index = ~a" index)
    (let ((edges-to-move (edges-higher-than old-location index)))
      (push-debug `(,edges-to-move))
      (loop for edge in edges-to-move
        do (setf (edge-ends-at edge) new-location))
      (loop for edge in edges-to-move
        do (knit-edge-into-position edge new-location)))))


(defun tuck-in-just-above (ev edge-below edge-above)
  ;; Assumes that the edge-below (top-edge) is already in the ev.
  ;; We add the edge-above (dominating-edge) just above it
  ;; in the vector and adjust things accordingly. 
  (push-debug `(,ev ,edge-below ,edge-above)) (break "stub: check tuck"))

(defun pop-topmost-edge (ev)
  "Remove the topmost edge from this vector and adjust
   the other fields to fit."
  (let* ((topmost (ev-top-node ev))
         (index (index-of-edge-in-vector topmost ev))
         (count (ev-number-of-edges ev))
         (array (ev-edge-vector ev)))  (break "correct args?")
    (setf (aref array index) nil) ;; remove it
    (setf (ev-number-of-edges ev) (1- count)) ;; adjust count
    (let ((next-item-down (aref array (1- index))))
      (setf (ev-top-node ev) next-item-down))))


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
