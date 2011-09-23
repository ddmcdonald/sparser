;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1999  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "object"
;;;   Module:  "objects;chart:edges:"
;;;  Version:  3.5 April 2006

;; 3.0 (9/3/92 v2.3) flushed the fields used by earlier psp algorithms
;; 3.1 (5/14/93) Allowed Set-used-by to make a list to help redundancy checking
;;      in the all-edges protocol
;; 3.2 (6/15) added predicate Edges-all-chain, find/edge-with-category
;;     (12/28) added 1st-preterminal-at. (12/31) added Top-edge-starting-at
;;     (3/13/94) added Set-used-by/anonymous-daughters
;;     (3/23) added Edge-spanning  (3/30) added All-preterminals-at
;;     (4/5) added Words-between.  (5/24) added Preterminal-edge-at?
;;     (6/9) added Edge-spans-region  (7/11) added Edge-between  
;;     (7/13) added One-word-long?  (7/27) added case in Edge-between
;; 3.3 (1/3/95) changed the semantics of Top-edge-starting-at to access the vector
;;      in the case of ambiguous single-term-edges rather than just be sugar for 
;;      the field in the edge-vector
;;     (8/30) added literal-edge? and dotted-edge?, added hook to suppress
;;      selected daughters from the discourse history
;;     (11/9) added Top-edge-used-in. (1/16/96) added Edge-subsumes-edge?
;; 3.4 (6/8/99) modified Set-used-by/anonymous-daughters to return the edges
;;      it sees as its value (but not the nodes or multiple-initial-edges,
;;      which may or may not end up being a problem).
;; 3.5 (3/31/06) added constituents field. 4/6 added spanned-words.
;;     (2/22/07) added edge-length.

(in-package :sparser)

;;;-------------
;;; the object
;;;-------------

(defstruct (edge
            (:print-function print-edge-structure))

  category
  form
  referent

  starts-at  ;; edge vector
  ends-at    ;; edge vector

  rule
  left-daughter
  right-daughter

  used-in

  position-in-resource-array

  constituents ;; list of more than one edge for S2

  spanned-words

  )



;;;-----------------------------------
;;; predicates for unusual edge-types
;;;-----------------------------------

(defun literal-edge? (e)
  ;; just having a word as its label isn't enough since
  ;; they can come from abbreviations as well.
  (eq :literal-in-a-rule (edge-right-daughter e)))

;; forgotten variant defined for use in PNF
(defun edge-for-literal? (e)
  (eq :literal-in-a-rule (edge-right-daughter e)))


(defun dotted-edge? (e)
  (when (cfr-p (edge-rule e))
    (dotted-rule (edge-rule e))))




;;;----------------------
;;; special Set routines
;;;----------------------

(defun set-used-by (daughter edge)
  (let ((field (edge-used-in daughter)))
    (if field
      (etypecase field
        (cons
         (setf (edge-used-in daughter)
               (cons edge field)))
        (edge
         (setf (edge-used-in daughter)
               (list edge field))))
      (setf (edge-used-in daughter) edge))

    (maybe-suppress-daughters-dh-entry daughter edge)))


(defun top-edge-used-in (daughter-edge)
  ;; useful decoder of the field when you don't care about all the
  ;; edges but just the most recent one, e.g. in Do-treetop-triggers
  (let ((field (edge-used-in daughter-edge)))
    (when field
      (etypecase field
        (edge field)
        (cons (first field))))))


(defun set-used-by/anonymous-daughters (starting-position
                                        final-position
                                        parent-edge)
  ;; Called from Make-edge/all-keys when the left and right
  ;; daughters are not given explicitly. We go through the
  ;; treetops between the starting and ending positions and
  ;; mark them as used-by the parent edge.
  (let ((ending-position starting-position)
        (index-of-final-position (pos-token-index final-position))
        (first-tt? t)
        e/w  edges )
    (loop
      (setq e/w (right-treetop-at ending-position))
      (etypecase e/w
        (edge (set-used-by e/w parent-edge)
              (setq ending-position (pos-edge-ends-at e/w))
              (push e/w edges))
        (word (setq ending-position
                    (chart-position-after ending-position)))
        (symbol
         (if (eq e/w :multiple-initial-edges)
           (then
             (dolist (e (all-preterminals-at ending-position))
               (set-used-by e parent-edge))
             (setq ending-position
                   (chart-position-after ending-position)))
           (break "Bad data structure: unknown symbol returned ~
                   as treetop:~%~A" e/w))))
      (when first-tt?
        (unless (edge-left-daughter parent-edge)
          (setf (edge-left-daughter parent-edge) e/w))
        (setq first-tt? nil))


      (when (eq ending-position final-position)
        (return))
      (when (> (pos-token-index ending-position)
               index-of-final-position)
        (break "treetop loop has gone past its final position")))

    edges ))




;;;-------------------
;;; Access functions
;;;-------------------

(defun edge# (index)
  (aref *all-edges* index))


(defun edges-between (p1 p2)
  (let ((ev1 (pos-starts-here p1))
        (ev2 (pos-ends-here p2))                  
        edge edges )

    (when (ev-top-node ev1)
      (dotimes (i (ev-number-of-edges ev1))
        (setq edge (elt (ev-edge-vector ev1) i))
        (when (eq (edge-ends-at edge)
                  ev2)
          (push edge edges))))

    edges ))


(defun edge-between (p1 p2)
  ;; returns just one edge, the topmost edge spanning the two
  ;; positions.  If there is no such edge it returns nil.
  (let* ((ev1 (pos-starts-here p1))
         (ev2 (pos-ends-here p2))
         (topmost-at-p1 (ev-top-node ev1)))
    (when topmost-at-p1
      (when (eq topmost-at-p1 :multiple-initial-edges)
        (setq topmost-at-p1 (elt (ev-edge-vector ev1)
                                 (1- (ev-number-of-edges ev1)))))
      (when (eq (edge-ends-at topmost-at-p1)
                ev2)
        topmost-at-p1))))



(defun preterminal-edge-at? (pos-before)
  ;; just a predicate. If there is any edge of any kind
  ;; over the word after this position, return non-nil
  (ev-top-node (pos-starts-here pos-before)))


(defun 1st-preterminal-at (p)
  ;; return the 1st edge to have spanned the word at position 'p'.
  ;; If there were multiple edges over that word we ignore that.
  (let ((ev (pos-starts-here p)))
    (ecase *edge-vector-type*
      (:kcons-list
       (break "write the code for the kcons variation"))
      (:vector
       (aref (ev-edge-vector ev) 0)))))


(defun highest-preterminal-at (p)
  ;; finds the one at the largest index in the vector
  (let* ((ev (pos-starts-here p))
         (next-position (chart-position-after p))
         (max (ev-number-of-edges ev))
         (vector (ev-edge-vector ev)))
    (ecase *edge-vector-type*
      (:kcons-list
       (break "write the code for the kcons variation"))
      (:vector
       (when max
         (do* ((i (decf max) (decf max))
               (edge (aref vector i) (aref vector i)))
              ((< i 0)
               (break "Bad assumption about data structure:~
                       ~%There is no preterminal edge at p~A"
                      (pos-token-index p)))
           (when (eq (pos-edge-ends-at edge) next-position)
             (return edge))))))))


(defun all-preterminals-at (p)
  ;; collect up a list of every single-term edge starting at p
  (let* ((ev (pos-starts-here p))
         (next-position (chart-position-after p))
         (max (ev-number-of-edges ev))
         (vector (ev-edge-vector ev))
         edge  edges )
    (dotimes (i max)
      (setq edge (aref vector i))
      (if (eq (pos-edge-ends-at edge) next-position)
        (push edge edges)
        (return)))
    (nreverse edges)))



(defun find/edge-with-category (edge-vector category)
  (ecase *edge-vector-type*
    (:kcons-list
     (break "write the code for the kcons variation"))
    (:vector
     (let ((vector (ev-edge-vector edge-vector))
           edge )
       (dotimes (i (ev-number-of-edges edge-vector))
         (setq edge (aref vector i))
         (when (eq (edge-category edge)
                   category)
           (return-from find/edge-with-category edge)))
       nil ))))


;;;------------------------------------
;;; Position-relative access functions
;;;------------------------------------

(defun edge-starting-position (position)
  (ev-position (edge-starts-at position)))


(defun edges/starting-at (position)
  (pos-starts-here position))

(defun edges/ending-at (position)
  (pos-ends-here position))

(defun top-edge-starting-at (position)
  ;; until 1/3/95 this was just sugar for the field value. Now
  ;; it's literally the topmost edge, ignoring the possibility of
  ;; the caller wanting to worry about lexical ambiguities.
  (let ((ev (pos-starts-here position)))
    (if (edge-p (ev-top-node ev))
      (ev-top-node ev)
      (elt (ev-edge-vector ev)
           (1- (ev-number-of-edges ev))))))


(defun edge-spanning (start-pos end-pos)
  ;; only makes sense in top-nodes-only alg., which is done
  ;; with edge vectors, so won't bother with a kcons version
  ;; (i.e. in that alg. there can only ever be one edge beginning
  ;; and ending at those positions)
  ;;    We'll just walk down the start vector till we hit and
  ;; edge that ends at the end-pos.  Walking down both at once
  ;; might be marginally faster if it's deeply embedded, but
  ;; the control structure isn't worth writing.
  (let* ((ev (pos-starts-here start-pos))
         (count (ev-number-of-edges ev))
         (array (ev-edge-vector ev))
         edge )
    (dotimes (i count nil)
      (setq edge (aref array i))
      (when (eq (pos-edge-ends-at edge) end-pos)
        (return edge)))))


(defun edge-scopes-word (edge pos-before)
  ;; An instance of a word being defined by the position before
  ;; it, this checks whether the edge covers the word
  (let ((start (pos-token-index (pos-edge-starts-at edge)))
        (end (pos-token-index (pos-edge-ends-at edge)))
        (p (pos-token-index pos-before)))
    (and (<= start p)
         (< p end))))




(defun show/edges/ending-at (position)
  (let* ((ev (edges/ending-at position))
         (count (ev-number-of-edges ev))
         (array (ev-edge-vector ev)))
    (dotimes (i count ev)
      (format t "~&~A~%" (aref array i)))))

(defun show/edges/starting-at (position)
  (let* ((ev (edges/starting-at position))
         (count (ev-number-of-edges ev))
         (array (ev-edge-vector ev)))
    (dotimes (i count ev)
      (format t "~&~A~%" (aref array i)))))


(defun starting-edge (position number)
  (let ((ev (edges/starting-at
             (chart-position position))))
    (unless ev
      (error "No edges starting at position ~A" position))
    (let ((array (ev-edge-vector ev))
          (max   (ev-number-of-edges ev)))
      (unless (<= number max)
        (error "There is no ~Ath edge starting at position ~A"
               number position))
      (aref array number))))


;;;------------
;;; predicates
;;;------------

(defun one-word-long? (edge)
  ;; this method is fast, but it's dependent on the encoding convention
  (or (eq (edge-right-daughter edge) :literal-in-a-rule)

      ;; this is the obvious method
      (= 1 (number-of-terminals-between (pos-edge-starts-at edge)
                                        (pos-edge-ends-at edge)))))



(defun includes-edge-with-label (label list-of-edges)
  ;; analog of the Member function
  (dolist (edge list-of-edges nil)
    (when (eq label
              (etypecase edge
                (edge (edge-category edge))
                (word edge)))
      (return-from includes-edge-with-label edge))))


(defun edges-all-chain (position start/end)
  ;; are all the edges that start (or end) at the position
  ;; contributing to a single tree?
  (let* ((ev (ecase start/end
               (:start (pos-starts-here position))
               (:end (pos-ends-here position))))
         (vector (ev-edge-vector ev))
         (count (ev-number-of-edges ev))
         lower-edge  edge )

    (if (<= count 1)
      t
      (ecase *edge-vector-type*
        (:kcons-list
         (break "write code for kcons-list case"))
        (:vector
         (setq lower-edge (aref vector 0))
         (dotimes (i (1- count))
           (setq edge (aref vector (1+ i)))
           (when (not (eq (edge-used-in lower-edge)
                          edge))
             (return-from edges-all-chain nil))
           (setq lower-edge edge))
         t )))))



(defun edge-spans-region (e start-pos end-pos)
  (and (edge-p e)
       (eq start-pos (pos-edge-starts-at e))
       (eq end-pos (pos-edge-ends-at e))))




;;;------------------------------
;;; position-relative predicates
;;;------------------------------

(defun edge-precedes (left-edge right-edge)
  ;; does the "left-edge" end earlier (or the same as) the "right"
  ;; edge starts?
  (let ((left-end (pos-edge-ends-at left-edge))
        (right-start (pos-edge-starts-at right-edge)))
    (cond ((eq left-end right-start)
           t)
          ((position-precedes left-end right-start)
           t)
          (t nil))))



(defun edge-subsumes-edge? (higher-edge lower-edge)
  ;; Checks whether the putative higher edge completely covers
  ;; the lower edge.
  (when (<= (pos-token-index (pos-edge-starts-at higher-edge))
            (pos-token-index (pos-edge-starts-at lower-edge)))
    (when (>= (pos-token-index (pos-edge-ends-at higher-edge))
              (pos-token-index (pos-edge-ends-at lower-edge)))
      t )))


(defun edge-length (edge)
  (let* ((ev-start (edge-starts-at edge))
	 (ev-end (edge-ends-at edge))
	 (pos-start (ev-position ev-start))
	 (pos-end (ev-position ev-end)))
    (- (pos-token-index pos-end) 
       (pos-token-index pos-start))))
