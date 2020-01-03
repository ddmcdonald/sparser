;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2019 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "tuck"
;;;   Module:  "objects/chart/edge vectors/"
;;;  Version:  December 2019

;; Initiated 9/19/13 from code formerly in DA. 9/22/13 modifying it
;; to work in either direction. 9/29/14 fixed tuck-in-just-above to
;; work in both directions, not just leftwards

(in-package :sparser)


(defun tuck-new-edge-under-already-knit (subsumed-edge new-edge 
                                         dominating-edge direction)
  "We looked under an edge, identified an edge along its
   fringe (subsumed-edge), and composed that edge with one adjacent
   to the right (or left: direction) to form a new edge (new-edge).
   Now we have to reconstruct pointers so that the edge that
   had dominated the subsumed one dominates the new pair."
  (declare (special *current-da-rule*))
  
  ;; (push-debug `(,subsumed-edge ,new-edge ,dominating-edge ,direction))
  ;; (setq subsumed-edge (car *) new-edge (cadr *) dominating-edge (caddr *))
  ;; (break "tucking 1")

  ;; Cleanup the used-in of the subsumed-edge
  (cond
    ((null new-edge)
     (error "~&null new-edge when doing tuck-new-edge-under-already-knit")
     nil)
    (t
     (setf (edge-used-in subsumed-edge) new-edge)
     (when dominating-edge
       ;; otherewise this causes an error in wh-initial-five-edges
       ;;  for "What tissues is STAT3 expressed in?"
       (set-used-by new-edge dominating-edge)

       (cond
         ((eq (edge-right-daughter dominating-edge) :long-span)
          (when (not (member subsumed-edge (edge-constituents dominating-edge)))
            (error "~%in tuck-new-edge-under-already-knit:~
                  ~%edge-constituents in dominating edge ~s ~
                  ~%does not contain subsumed-edge ~s~%"
                   dominating-edge subsumed-edge))
          (setf (edge-constituents dominating-edge)
                (subst new-edge subsumed-edge (edge-constituents dominating-edge))))
       
         ((eq direction :right)
          (unless (eq (edge-right-daughter dominating-edge) subsumed-edge)
            (error  "~%in tuck-new-edge-under-already-knit for rule ~s:~
                    ~%edge-right-daughter in dominating edge ~s ~
                    ~%is not subsumed-edge ~s in sentence:~%~s~%"
                    *current-da-rule* dominating-edge subsumed-edge
                    (current-string)))
          (setf (edge-right-daughter dominating-edge) new-edge))
         ((eq direction :left)
          (unless (eq (edge-left-daughter dominating-edge) subsumed-edge)
            (error "~%in tuck-new-edge-under-already-knit:~
                  ~%edge-left-daughter in dominating edge ~s ~
                  ~%is not subsumed-edge ~s~%" dominating-edge subsumed-edge))
          (setf (edge-left-daughter dominating-edge) new-edge)))
     
       (let ((dominating-edge-ev
              (ecase direction
                (:right (edge-ends-at dominating-edge))
                (:left (edge-starts-at dominating-edge))))
             (new-edge-ev
              (ecase direction
                (:right (edge-ends-at new-edge))
                (:left (edge-starts-at new-edge)))))
         ;; (push-debug `(,dominating-edge-ev ,new-edge-ev))
         ;; (break "tucking 2")
         ;; (setq dominating-edge-ev (car *) new-ev (cadr *))

         ;; Remove the dominating edge from its ends/start-at vector
         (if (eq dominating-edge (highest-edge dominating-edge-ev))
             (then ;; easy case
               (pop-topmost-edge dominating-edge-ev)
               ;; insert the dominating edge just above the top edge
               ;; at the end location
               (tuck-in-just-above new-edge-ev new-edge dominating-edge direction))
             (else
               ;; Several edges are above the edge now just above the
               ;; subsumed-edge. They all have to be repositioned (in order)
               ;; at the end-position of the top-edge where sit above it
               (move-edges-above-to-new-pos 
                subsumed-edge
                (ecase direction
                  (:left (edge-starts-at subsumed-edge))
                  (:right (edge-ends-at subsumed-edge)))
                new-edge-ev
                direction)))
       
         (when *description-lattice*
           ;;(break "About to reinterpret ~a" dominating-edge)
           (reinterpret-dominating-edges dominating-edge)))
       dominating-edge))))

(defparameter *reinterpret-dominating-edges-warning* nil)

(defun reinterpret-dominating-edges (edge &optional *visited*)
  "If the description lattice is active, we call this at the
   end of tuck-new-edge-under-already-knit because the 
   rearrangement of the edges will have made the existing
   mentions inaccurate. Use referent-for-edge to rerun the
   rules that formed the edges. Recurse up the tree unless
   the rerun fails."
  (let ((parents (collect-edge-parents edge)))
    ;;(break "parents = ~a" parents)
    (flet ((reinterpret-edge (edge)
             ;;(format t "~&reinterpreting ~a~%" edge)
             (let ((new-ref (referent-for-edge edge))) ; wraps referent-from-rule
               ;;(break "new-ref = ~a" new-ref)
               (cond
                 ((null new-ref)
                  (when *reinterpret-dominating-edges-warning*
                    (warn "reinterpretation of edge ~s failed in reinterpret-~
                      dominating-edges by producing null interpretation~% in ~s~%"
                          edge (current-string))))
                 ((eq new-ref :abort-edge)
                  (when *reinterpret-dominating-edges-warning*
                    (warn "reinterpretation of edge ~s failed in reinterpret-~
                      dominating-edges by producing :abort-edge interpretation~% in ~s~%"
                          edge (current-string))))
                 (t
                  (set-edge-referent edge new-ref)
                  (if (edge-mention edge)
                    (when (typep (edge-mention edge) 'discourse-mention)
                      (setf (base-description (edge-mention edge)) new-ref))
                    (when *reinterpret-dominating-edges-warning*
                      (warn "null edge-mention on edge ~s in ~%~s"
                            edge (current-string))))))) ))
      (loop for parent in (cons edge parents)
         do (reinterpret-edge parent)))))

#| Original recursive loop
       (let ((parent (edge-used-in edge)))
         (cond
           ((edge-p parent)
            (when (member parent *visited*)
              ;; happens in <give example here>
              (error "circular-loop in reinterpret-dominating-edges"))
            (reinterpret-dominating-edges parent (cons parent *visited*)))
           
           ((null parent) ;; reached the topmost edge
            nil)
           
           ((consp parent)
            (error "multiple parent edges in reinterpret-dominating-edges for ~s,~%~s~%" edge parent))
           (t (lsp-break "what is going on with the used-in for ~s~%" edge)))) |#
        

(defun move-edges-above-to-new-pos (above-this-one
                                    old-edge-vector new-edge-vector
                                    direction)
  ;; (push-debug `(,above-this-one ,old-edge-vector ,new-edge-vector))
  (let* ((index (index-of-edge-in-vector above-this-one old-edge-vector)))
    ;;(break "index = ~a" index)
    (let ((edges-to-move (edges-higher-than old-edge-vector index)))
      (push-debug `(,edges-to-move))
      ;;(break "edges-to-move")
      (dolist (edge edges-to-move)
        (ecase direction
          (:left (setf (edge-starts-at edge) new-edge-vector))
          (:right (setf (edge-ends-at edge) new-edge-vector))))
      (loop for edge in edges-to-move
        do (knit-edge-into-position edge new-edge-vector)))))


(defun tuck-in-just-above (ev edge-below edge-above direction)
  "Assumes that the edge-below (top-edge) is already in the ev.
   We add the edge-above (dominating-edge) just above it
   in the vector and adjust things accordingly."
  ;; (push-debug `(,ev ,edge-below ,edge-above))
  ;; (setq ev (car *) edge-below (cadr *) edge-above (caddr *))
  (ecase direction
    (:left
     (let ((below-starts-at (edge-starts-at edge-below)))
       (setf (edge-starts-at edge-above) below-starts-at)
       (knit-edge-into-position edge-above below-starts-at)))
    (:right
     (let ((below-ends-at (edge-ends-at edge-below)))
       (setf (edge-ends-at edge-above) ev)
       (knit-edge-into-position edge-above below-ends-at)))))

(defun pop-topmost-edge (ev)
  "Remove the topmost edge from this vector and adjust
   the other fields to fit."
  (let* ((topmost (ev-top-node ev))
         (index (index-of-edge-in-vector topmost ev))
         (count (ev-number-of-edges ev))
         (array (ev-edge-vector ev)))
    (setf (aref array index) nil) ;; remove it
    (setf (ev-number-of-edges ev) (1- count)) ;; adjust count
    (let ((next-item-down (aref array (1- index))))
      (setf (ev-top-node ev) next-item-down))))


;;;--------
;;; respan
;;;--------

(defparameter *respan-internal* nil
  "When doing respan-to-edge on an 'internal' edge, this signals
   to not reset the mention")

(defun respan-top-edge (edge new-ref
                        &key start-pos end-pos category form
                          internal)
  "We have just modified the referent of 'edge' and have to
   create a new edge to carry the mention of this modified
   referent ('new-ref'). This edge is a topmost edge, so we are
   just adding a new edge without needing to adjust the threading
   of daughters as done by respan-edge-for-new-referent.
      This is similar to what make-predication-edge and its
   similar functions does except that this is a straight copy
   of the edge except for its referent"
  (when (edge-used-in edge)
    (unless internal
      (error "This is not a topmost edge ~a~
            ~%Use a different tuck function" edge)))

  (let ((start-ev (if start-pos
                    (pos-starts-here start-pos)
                    (edge-starts-at edge)))
        (end-ev (if end-pos
                  (pos-ends-here end-pos)
                  (edge-ends-at edge)))
        (cat-label (if category
                     category
                     (edge-category edge)))
        (form-label (if form
                      form
                      (edge-form edge)))
        (*respan-internal* internal))
    (declare (special  *respan-internal*))

    (make-completed-unary-edge
     start-ev ; starting-vector
     end-ev   ; ending-vector
     'respan-top-edge      ; rule
     edge                  ; daughter
     cat-label  ; category
     form-label ; form
     new-ref)))



(defun respan-edge-for-new-referent (edge new-ref)
  "We have just modified the referent of one of the edges 
   somewhere inside an already complete edge. This happens
   with comparative, and other cases where we learn something
   that changes an established referent. To keep the mention
   system happy, this new referent needs its own edge,
   directly over the edge with the original referent ('edge')
   and fitting in to the parent where it did, replacing it
   as its parent's left or right daughter as appropriate."
  (let* ((parent (edge-used-in edge))
         (side (when parent
                 (cond ((eq edge (edge-left-daughter parent)) :left)
                       ((eq edge (edge-right-daughter parent)) :right))))
         (starting-vector (edge-starts-at edge))
         (ending-vector (edge-ends-at edge))
         (new-edge (next-edge-from-resource)))  

    ;; set the easy stuff
    (setf (edge-rule new-edge) (rule-being-interpreted))
    (setf (edge-left-daughter new-edge) edge)
    (setf (edge-right-daughter new-edge)
          (if (edge-p (edge-right-daughter edge))
              (edge-right-daughter edge)
              :single-term)) ;; alternatives?

    (setf (edge-category new-edge) (edge-category edge))
    (setf (edge-form new-edge) (edge-form edge))
    (set-edge-referent new-edge new-ref)
    
    (set-used-by edge new-edge)
    
    (cond (parent
           (set-used-by new-edge parent)
           (ecase side
             (:left (setf (edge-left-daughter parent) new-edge))
             (:right (setf (edge-right-daughter parent) new-edge)))
           (insert-new-edge-between-daughter-and-parent
            edge new-edge parent starting-vector ending-vector side))
          (t (setf (edge-starts-at new-edge) starting-vector)
             (setf (edge-ends-at new-edge) ending-vector)
             (knit-edge-into-positions
              new-edge starting-vector ending-vector)
             ))
    (unless (edge-starts-at new-edge)
      (error "Insertion of new edge missed something.~
            ~%  edge being respanned: ~a~
            ~%  parent: ~a~
            ~%  side: ~a" edge parent side))

    ;; we should complete it (e.g. for its mention)
    ;; but it would make no sense to assess it
    (complete new-edge)
    new-edge))


(defun insert-new-edge-between-daughter-and-parent
    (edge ;; original - stays where it is on its vectors
     new-edge ;; gets added to those vectors just above it
     parent ;; gets moved up, as do any edges above it
     starting-vector ending-vector ;; edge vectors of original edge
     side)
  "Which ev are we working on. The new edge goes directly
   onto the original's start and end, but we have to 'elevate'
   the already existing edges on only one side."  
  ;; Very similar to what conjoin-and-rethread-edges does,
  ;; but want something working before I look for the
  ;; generalization. (ddm 2/10/17)
  (let* ((ev (ecase side
               (:left starting-vector)
               (:right ending-vector)))
         (edge-index (index-of-edge-in-vector edge ev))
         (edges-over-parent ;; list includes the parent
          (edges-on-ev-above parent ev))
         (count (ev-number-of-edges ev))) ;; total number
    (cond
      ((eq parent (ev-top-node ev))
       ;; remove it, add the new edge, put it back
       (remove-edge-from-chart parent)
       (knit-edge-into-positions
        new-edge starting-vector ending-vector)
       (knit-edge-into-positions
        parent starting-vector ending-vector))
      (edges-over-parent
       ;; Move all the edges above the parent
       ;; up by one. Put the new edge in the opened-up
       ;; slot of the array. Set the ev of the edge by hand
       ;; since we can't really use knit here without unwinding
       ;; every edge needlessly
       (transpose-edges-up-one ev edges-over-parent)
       (insert-edge-into-vector-at ev new-edge (1+ edge-index)))
      (t
       (push-debug `(,edge-index ,edges-over-parent ,count))
       (warn "Next case for inserting the new edge in ~%~s~%"
             (current-string))
       (break "in insert-new-edge-between-daughter-and-parent: Next case for inserting the new edge in ~%~s~%"
             (current-string))))
    (setf (edge-starts-at new-edge) starting-vector
          (edge-ends-at new-edge) ending-vector)))

