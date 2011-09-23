;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "trigger"
;;;    Module:   "drivers;chart:psp:"
;;;   Version:   4.3 October 1994

;; 4.1 (5/6/94) added network-flow traces
;; 4.2 (8/7) passing through a position arg to the action routines
;; 4.3 (10/26) coordinated with debris-analysis pass and updated spellings

(in-package :sparser)

;;;----------------------------------------
;;; doing actions associated with treetops
;;;----------------------------------------

(defun do-treetop-triggers ()
  ;; Called when all the parsing or other analysis that could be
  ;; done on the treetop region as been completed.  Walks rightwards
  ;; through the pending treetops applying Do-treetop to each one.
  ;;    Walk is done by calling itself recursively while updating
  ;; the global that says where to start the walk. This way of fashioning
  ;; the loop lets other processes slip in and cause it to restart
  ;; at points that it already did once.
  (tr :do-treetop-triggers)
  (let (;(*forest-level/parsing* nil)
        )
    
    ;; get the treetop to the right of where we left off
    (multiple-value-bind (tt next-position multiple-edge?)
                         (next-treetop/rightward *left-boundary/treetop-actions*)
      (tr :tt/checking tt)
      
      ;; update the pointer for the next pass through this loop
      (setq *left-boundary/treetop-actions* next-position)
      
      (when *actions-on-treetops*
        (if multiple-edge?
          (let ((edges (filter-vector-for-valid-edges tt)))
            (if (cdr edges)
              (do-treetop (preferred-treetop edges) next-position)
              (do-treetop (car edges) next-position)))
          (do-treetop tt next-position))
        
        (when *position-pointer-changed*
          ;; The action on the last treetop may have introduced a new
          ;; edge(s) and we should update the globals accordingly.
          ;; This can change what would otherwise happen in the
          ;; dispatch just below
          (setq next-position *left-boundary/treetop-actions*
                *position-pointer-changed* nil)))
      
      ;; Are we done?
      (if (eq next-position *rightmost-quiescent-position*)
        (then
          (tr :tt/caught-up)
          (scan-next-segment *where-the-last-segment-ended*))
        (else
          ;; did a new treetop that hasn't been seen by the forest parse
          ;; sprout up behind us ? (i.e. as a result of this treetop action)
          (let ((quiescence-index
                 (pos-token-index *rightmost-quiescent-position*))
                (next-pos-index (pos-token-index next-position)))
            (cond
             ((< quiescence-index next-pos-index)  ;; yes
              (tr :tt/resume-forest-parse
                  *left-boundary/treetop-actions* *forest-right-boundary*)
              (PPTT
               ;; this may be starting further to the right than needsbe
               (find-rightmost-edge *left-boundary/treetop-actions*
                                    *forest-right-boundary*)))
             
             ;; There are more treetops to check
             ((> quiescence-index next-pos-index)
              (tr :tt/continuing)
              (do-treetop-triggers))
             
             (t (break/debug
                 "Bad index comparison - check threading")))))))))



;;;-----------------------------------------------
;;; moving the left-boundary of the forest parser
;;; when later processes set down edges behind it
;;;-----------------------------------------------

(defun check-impact-on-quiescence-pointer (edge)
  ;; Called from Complete-edge/hugin when any edge is completed.
  ;; Indended effect is to communicate to the treetop-action process
  ;; that an edge that one of its actions introduced is leftwards of
  ;; the point where the forest parse stopped and consequently the
  ;; forest parse should be resumed

  (when *forest-level*
    (unless *forest-level/parsing*
      (tr :impact/checking-edge edge)
      ;; if we're in the middle of Debris analysis or Do-treetops
      ;; then we want to determine whether the edge that has just
      ;; completed is to the left of where the forest-level stopped.

      (let* ((start-pos (pos-edge-starts-at edge))
             (start-index (pos-token-index start-pos))
             (quiescence-index (pos-token-index
                                *rightmost-quiescent-position*))
             (tt-index (pos-token-index
                        *left-boundary/treetop-actions*)))

        (when (< start-index quiescence-index)
          (tr :impact/moving-quiescence start-pos)
          (setq *rightmost-quiescent-position*
                start-pos))
        
        (when (< start-index tt-index)
          (tr :impact/moving-tt-boundary start-pos)
          (setq *left-boundary/treetop-actions*
                start-pos))
        
        (setq *position-pointer-changed* edge)))))



;;;---------------------------------------------
;;; handling multiple interpretations of a word
;;;---------------------------------------------

(defun preferred-treetop (list-of-edges)
  ;; stub
  (first list-of-edges))

;; This is an exhaustive explicitly ordered list
;;  (sort-out-which-category-of-treetop-edge-to-prefer list-of-edges)


(defun filter-vector-for-valid-edges (ev)
  ;; Weeds out the cases that are obviously not true ambiguities
  (let ((array (ev-edge-vector ev))
        edges edge )
    (dotimes (i (ev-number-of-edges ev))
      (setq edge (aref array i))
      (unless (eq (edge-form edge) :literal-in-a-rule)
        ;;/// need something easy to get dotted categories with
        (push edge edges)))
    edges ))

