;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1996,2014-2020 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "treetops"
;;;    Module:   "analyzers;forest:"
;;;   Version:   May 2020

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
;;      (10/7/14) reorderd and notice redundancies to flush at some point
;;      (1/2/2015) key component of whack-a-rule control structure -- find
;;        all applicable rules across adjacent treetops called repeatedly,
;;        getting different rules each time as the tretops change by
;;        application of rules
;; 1/4/2015 add flag and bind the special *left-edge-into-reference* in
;;  ossible-treetop-=rules so that ref/function can work as a predicate
;; 1/6/2015 new mechanism in whack-a-rule to prioritize PP creation and
;;  attachemnt above subject+verb binding
;; 1/8/2015 refactor possible-treetop-rules to make it easier to trace and understand
;; 1/8/2015 rename to best-treetop-rule and make it return one rule only
;; 1/14/2015 revise losing-competition? to account for more general form of
;;  subject rule, looking at cfr-rule-forms
;; 1/18/2015 fix typo in test-subcat-rule
;; 2/10/15 cleaned up / reformatted a bit so I could figure out what's
;;  going on in the code that supports whack-a-rule
;; 3/4/2015 correct spelling of *use-broader-set-of-tts*, and replace
;;  "wack" with "whack" cache rules discovered for pairs of edges so that we
;;  do not keep calling multiply-edges unnecessarily
;; 5/1/2015 minor tweak on losing-competition?  to do better on leftwards
;;  extension of NPs which may be SUBJECTs
;; 5/12/2015 fixes to losing-competition? to better handle leftwards
;; extension of NP subjects before they are used as subjects
;; 5/15/15 Moved out literal-edge? to the edge object code.
;; 5/25/2015 add on check on competition for pp-wh-pronoun as part of pp-relative-clause
;; 5/30/2015 handle new cases of vp_passive in rule competition
;; 6/2/2015 major cleanup in losing-competition?, which led to the
;;  discoverhy of some omitted cases in the final check this allowed it to
;;  work in the case of the Chen/Sorger sentences...
;; 6/5/2015 fix all-tts to take into account the sentence being processed
;;  by whack-a-rule, and to get the start and end positions from there
;;  previously this looked across the whole chart, and that caused errors
;;  and apparently damaged some core structures, leading to future errors
;;  had to adjust adjacent-tts to take into account that all edges returned
;;  by (all-tts) are valid (as against having a bogus first edge)
;; 6/9/15) Modified all-tts to be able to take its sentence from context
;;  rather than presume that *whack-a-rule-sentence* is bound. Needed to
;;  run sem-test.


(in-package :sparser)

;;;--------------------------------
;;; basic navigation over treetops
;;;--------------------------------

(defun right-treetop-at (position)
  "From this position, look rightwards. If there are edges
   return the topmost one, other return the word just to
   the left of this position."
  (let ((vector (pos-starts-here position)))
    (or (ev-top-node vector)
        (pos-terminal position))))

(defun left-treetop-at (position)
  "From this position, look leftwards. If there are edges
   return the topmost one, other return the word just to
   the left of this position."
  (let ((vector (pos-ends-here position)))
    (or (ev-top-node vector)
        (pos-terminal (chart-position-before position)))))



;;;-------- still another variant that takes the highest edge when there
;;;         are multiples and returns the terminal if there are no edges

(defgeneric right-treetop-at/edge (position)
  (:documentation "Look rightward from this position. If the position
   is the start of multiple-initial-edges return the last of those edges.
   Otherwise return the top edges is there is one, othewise return the
   terminal on this position")
  (:method ((e edge))
    (right-treetop-at/edge (pos-edge-ends-at e)))
  (:method ((position position))
    (let* ((ev (pos-starts-here position))
           (top-node (ev-top-node ev)))
      (cond ((eq top-node :multiple-initial-edges)
             (highest-edge ev))
            (top-node top-node)
            (t (pos-terminal position))))))

(defun right-treetop-edge-at (position)
  "Identical to right-treetop-at/edge" ;; replace with /edge version !!
  (let* ((vector (pos-starts-here position))
         (top-node (ev-top-node vector)))
    (cond
     (top-node
      (if (eq top-node :multiple-initial-edges)
       (highest-edge vector)
       top-node))
     (t
      (pos-terminal position)))))
#|
analyzers/forest/treetops.lisp:(defun right-treetop-edge-at (position)
drivers/forest/edge-search.lisp:  (let* ((tt (right-treetop-edge-at starting-position))
init/workspaces/rusty-workspace.lisp:    right-treetop-at/only-edges right-treetop-edge-at
drivers/chart/psp/multi-scan.lisp:     (setq left-edge (right-treetop-edge-at start))
drivers/chart/psp/multi-scan.lisp:     (setq right-edge (when (edge-p left-edge) (right-treetop-edge-at mid-pos)))
|#


;;//// these two are redundant 
(defmethod left-treetop-at/edge ((e edge))
  (left-treetop-at/edge (pos-edge-starts-at e)))

(defmethod left-treetop-at/edge ((position position))
  (let* ((ev (pos-ends-here position))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           (highest-edge ev))
          (top-node top-node)
          (t (pos-terminal (chart-position-before position))))))



;;;--- variants that return nil instead of the terminal

(defgeneric right-treetop-at/only-edges (position)
  (:documentation "Look rightward for a treetop starting at this
   position. If there are multiple edges return the highest one
   return nil if there is no edge.")
  (:method ((e edge))
    (right-treetop-at/only-edges (pos-edge-ends-at e)))
  (:method ((p position))
    (let* ((ev (pos-starts-here p))
           (top-node (ev-top-node ev)))
      (cond ((eq top-node :multiple-initial-edges)
             (highest-edge ev))
            (top-node top-node)
            (t nil)))))

(defgeneric left-treetop-at/only-edges (position)
  (:method ((e edge))
    (left-treetop-at/only-edges (pos-edge-starts-at e)))
  (:method ((p position))
    (let* ((ev (pos-ends-here p))
           (top-node (ev-top-node ev)))
      (cond ((eq top-node :multiple-initial-edges)
             (elt (ev-edge-vector ev)
                  (1- (ev-number-of-edges ev))))
            (top-node top-node)
            (t nil)))))



;;;--- variants on those with different return values


(defgeneric next-treetop/rightward (position)
  (:documentation
   "Used by Do-treetop-triggers to scan successive treetops.
   Returns as many as three values: 
   (1) the treetop that startsat the position (either an edge or a word)
     or the starts-here edge-vector if there are mulitiple interpretations.
   (2) the position just after that, and
   (3) a boolean to indicate whether the treetop being returned
    is a edge-vector for a word with multiple interpretations.")
  (:method ((p position))
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
  (:method ((e edge))
    (next-treetop/rightward (pos-edge-ends-at e))))


(defgeneric next-treetop/leftward (position)
  ;; analogous routine for a leftward walk
  (:method ((p position))
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
  (:method ((e edge))
    (next-treetop/leftward (pos-edge-starts-at e))))


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

(defun treetop-does-not-end-the-chart (tt)
  (let* ((ends-at (ev-position (edge-ends-at tt)))
         (terminal (pos-terminal ends-at)))
    (not (eq terminal word::end-of-source))))

(defun final-tt/category (list-of-tts category)
  ;; checks wheter the last edge in the list has the indicated category
  (eq (edge-category (car (last list-of-tts)))
      category))


;;;------------
;;; collectors
;;;------------

(defun treetop-between (start end)
  "Returns a single edge if there is one that covers the span"
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
        ;; could define a variant of next-treetop/rightward
        ;; but so far this is a one-off.
        (when (and (not (position-precedes next-pos end))
                   (not (eq next-pos end)))
          (return))        
        (when (edge-vector-p tt)
          (setq tt (elt (ev-edge-vector tt)
                        (1- (ev-number-of-edges tt)))))
        (push tt tts))
      (nreverse tts))))

(defun positions-and-treetops-between (start end)
  (unless (eq start end)
    (let ((this-pos start) next-pos tt pos-list )
      (loop
            until (eq next-pos end)
            do
              (multiple-value-setq (tt next-pos)
                (next-treetop/rightward this-pos))
              (when (or (not (position-p next-pos))
                        (position-precedes end next-pos))
                (return))
              (when (edge-vector-p tt)
                (setq tt (elt (ev-edge-vector tt)
                              (1- (ev-number-of-edges tt)))))
              (push (list this-pos tt) pos-list)
              (setq this-pos next-pos))
      (nreverse pos-list))))
    
