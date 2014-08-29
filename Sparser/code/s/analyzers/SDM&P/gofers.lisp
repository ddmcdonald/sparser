;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013-2014 David D. McDonald all rights reserved
;;;
;;;      File: "gofers"
;;;    Module: "analyzers;SDM&P:
;;;   Version: August 2014

;; Broken out of scan1 2/28/13. 3/13/13 added word-to-left-of-head,
;; edge-to-left-of-head. Coping with polyword at end of segment 3/14.
;; Generalizing that notion 3/28/13. Fixed edge-over-segment-prefix
;; to notice multiple-edges case. 9/21/13 trivial doc, checks.
;; 8/28/14 Made head-word-of-segment correctly return the positions
;; as well as the word. 

(in-package :sparser)

;;;-------
;;; state
;;;-------

(defvar *segment-position-just-left-of-head* nil
  "Points to the chart-position-before the right-segment-boundary
   unless we've discovered there's not an edge spanning that, which
   in Grok mode implies that the segment ended in a polyword.")

(defun initialize-segment-state-variables ()
  (setq *segment-position-just-left-of-head*
        (or (position-before-segment-final-multi-word-edge)
            (chart-position-before *right-segment-boundary*))))


;;;------
;;; code
;;;------

;; See also the code in objects/chart/edge-vectors/object2

(defun no-edge-over-segment-head ()
  (not (edge-over-segment-head)))

(defun edge-over-segment ()
  (edge-between *left-segment-boundary* *right-segment-boundary*))


;;--- predicates

(defun position-before-segment-final-multi-word-edge ()
  ;; Normally a segment will end in a word and if the flag
  ;; *edge-for-unknown-words* is up that word will have an edge
  ;; over it. But it can also happen that the segment ends with
  ;; a polyword. We check for that, and return the position
  ;; where the polyword starts.  /// extend to edges?
  (let* ((ends-here (pos-ends-here *right-segment-boundary*))
         (e0 (aref (ev-edge-vector ends-here) 0)))
    (when e0 ;; a few known words don't have preterminals yet
      (let* ((e0-starts-at-vector (edge-starts-at e0))
             (pos-e0-starts-at (ev-position e0-starts-at-vector)))
        (unless (eq pos-e0-starts-at
                    (chart-position-before *right-segment-boundary*))
          pos-e0-starts-at)))))

(defun segment-ends-in-multi-word-edge? ()
  (not (eq *segment-position-just-left-of-head*
           (chart-position-before *right-segment-boundary*))))

(defun segment-ends-with-appostrope-s? ()
  (let* ((p (position-before-segment-final-multi-word-edge))
         (ev (when p (pos-starts-here p)))
         (edge (when ev (lowest-edge ev))))
    (when edge
      (eq (edge-category edge) category::apostrophe-s))))

(defun segment-spanned-by-multi-word-edge? ()
  (let ((start-pos (position-before-segment-final-multi-word-edge)))
    (when start-pos
      (eq start-pos *left-segment-boundary*))))




;;--- about the end of the segment

(defun edge-over-last-word-of-segment ()
  (if (segment-ends-with-appostrope-s?)
    ;; take the edge just to the left
    (top-edge-at/ending *segment-position-just-left-of-head*)
    (edge-between *segment-position-just-left-of-head*
                  *right-segment-boundary*)))

(defun edge-over-segment-head ()
  "The edge over just the word in head position (rightmost in
   the segment. Doesn't notice if there's a bigger edge that
   goes over it."
  (edge-between *segment-position-just-left-of-head*
                *right-segment-boundary*))

(defun head-word-of-segment ()
  (let ((word
         (if (segment-ends-in-multi-word-edge?)
           (let* ((ev (pos-starts-here *segment-position-just-left-of-head*))
                  (vector (ev-edge-vector ev))
                  (lowest-edge (aref vector 0))
                  (label (edge-category lowest-edge)))
             (cond
              ((segment-ends-with-appostrope-s?)
               (let ((p1 (pos-edge-starts-at lowest-edge)))
                 (word-before p1)))
              ((or (polyword-p label)
                   (word-p label))
               label)
              (t (when *debug-segment-handling*
                   (push-debug `(,label ,vector ,*segment-position-just-left-of-head*))
                   (error "Assumptions violated")))))
           (pos-terminal *segment-position-just-left-of-head*))))
    (values word
            *segment-position-just-left-of-head*
            *right-segment-boundary*)))

(defun edge-starts-at-left-boundary? (edge)
  (eq (pos-edge-starts-at edge)
      *left-segment-boundary*))
  




(defun word-to-left-of-head ()
  ;; caller has made sure the segment is long enough for this to make sense
  (let ((end-minus-2 (chart-position-before *segment-position-just-left-of-head*)))
    (pos-terminal end-minus-2)))

(defun edge-to-left-of-head ()
  (let* ((ends-here-vector (pos-ends-here *segment-position-just-left-of-head*))
         (top-node (ev-top-node ends-here-vector)))
    (when (eq top-node :multiple-initial-edges)
      ;; arbitrarily take the most recent edge
      (setq top-node (highest-edge ends-here-vector)))
    top-node))


(defun edge-just-to-left-of (edge)
  "Return the edge that is adjacent to the left of argument edge.
   Caller should check that it exists, e.g. note-in-segment-adgacences"
  (let* ((start-pos (pos-edge-starts-at edge))
         (top-node (top-edge-at/ending start-pos)))
    (when top-node
      (when (eql top-node :multiple-initial-edges)
        (setq top-node (highest-edge (pos-ends-here start-pos))))
      top-node)))

(defun word-just-to-the-left (edge)
  (let* ((p1 (pos-edge-starts-at edge))
         ;;//// ignoring the possibility that the edge spans
         ;; more than one word.
         (p0 (chart-position-before p1)))
    (pos-terminal p0)))



(defun treetops-in-current-segment ()
  ;; see code in forest/printers
  (treetops-in-segment *left-segment-boundary*
                       *right-segment-boundary*))

(defun print-treetop-labels-in-current-segment (&optional (stream *standard-output*))
  (print-treetop-labels-in-segment stream
                                   *left-segment-boundary*
                                   *right-segment-boundary*))



(defun edge-starts-at-segment-boundary (edge)
  (eq (pos-edge-starts-at edge)
      *left-segment-boundary*))


;;---- below here not vetted for segment ending in polyword

(defun edge-over-segment-suffix ()
  (let* ((right-ev (pos-ends-here *right-segment-boundary*))
         (top-node (ev-top-node right-ev)))
    (when (eq top-node :multiple-initial-edges)
      ;; arbitrarily take the most recent edge
      (setq top-node (highest-edge right-ev)))
    top-node))

(defun first-word-in-segment ()
  (values (pos-terminal *left-segment-boundary*)
          (segment-length)))

(defun edge-over-segment-prefix ()
  (let* ((left-pos-start (pos-starts-here *left-segment-boundary*))
         (top-node (ev-top-node left-pos-start)))
    (when (eq top-node :multiple-initial-edges)
      ;; arbitrarily take the most recent edge
      (setq top-node (highest-edge left-pos-start))
      top-node)))

(defun segment-minimal-prefix ()
  ;; The segment is covered by an edge or at least a large part
  ;; of its left end is.
  (let* ((ev (pos-starts-here *left-segment-boundary*))
         (array (ev-edge-vector ev)))
    ;; should check *edge-vector-type*
    (aref array 0)))

(defun where-prefix-edge-ends ()
  (let* ((left-pos-start (pos-starts-here *left-segment-boundary*))
         (top-edge (ev-top-node left-pos-start)))
    (if (eq top-edge :multiple-initial-edges)
      (let ((longest (longest-edge-starting-at *left-segment-boundary*)))
        (ev-position (edge-ends-at longest)))
      (ev-position (edge-ends-at top-edge)))))

(defun words-in-segment-after-prefix ()
  (let ((left-pos (where-prefix-edge-ends)))
    (words-between left-pos *right-segment-boundary*)))

(defun category-of-right-suffix ()
  (let ((suffix (edge-over-segment-suffix)))
    (unless suffix
      (break "category-of-right-suffix -- expected there to be a suffix edge"))
    (edge-category suffix)))

(defun referent-of-right-suffix ()
  (let ((suffix (edge-over-segment-suffix)))
    (unless suffix
      (break "referent-of-right-suffix -- expected there to be a suffix edge"))
    (edge-referent suffix)))


(defun segment-length ()
  (- (pos-token-index *right-segment-boundary*)
     (pos-token-index *left-segment-boundary*)))


(defun words-in-segment ()
  (words-between *left-segment-boundary* *right-segment-boundary*))

(defun format-words-in-segment (&optional (stream *standard-output*))
  (format stream "~&\"~{~a ~}\" " (mapcar #'word-pname (words-in-segment))))

(defun format-words-between (start-pos end-pos
                             &optional (stream *standard-output*))
  (let ((words (words-between start-pos end-pos)))
    (format stream "~&\"~{~a ~}\" " (mapcar #'word-pname words))))

