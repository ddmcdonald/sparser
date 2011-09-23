;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "walk"
;;;   module:  "interface;workbench:"
;;;  Version:  0.5 June 1996

;; initiated 11/12/93 v2.3
;; 0.1 (1/3) adapting to workbench format. (1/16) integrating with edge table
;;      and adding the other button actions
;; 0.2 (2/22) adding (de-)activation of other buttons
;;      During Feb, & March, continually tweeking to get state transitions right
;; 0.3 (6/10) changed what is used when selecting character positions
;; 0.4 (7/22) refined choice in Next and Previous when tt is multiple-initial
;; 0.5 (6/18/96) put a check into Select-next-treetop to keep null TTs from being
;;      acted on.

(in-package :sparser)

(defvar *calling-edge-table* nil
  "a flag used to avoid recursive calls from the selection of an
   edge back to one of these walking routines.")


(defun select-next-treetop (next-button)
  (declare (ignore next-button))
  (unless *calling-edge-table*
    (let* ((the-very-start? nil)
           (start-pos
            (if *wb/position-where-last-treetop-ended*
              *wb/position-where-last-treetop-ended*
              (else
                (setq the-very-start? t)
                (position# 0))))
           (tt (ev-top-node (pos-starts-here start-pos)))
           (end-pos (when tt
                      (if (eq tt :multiple-initial-edges)
                        (chart-position-after start-pos)
                        (pos-edge-ends-at tt)))))

      (when (or (null tt)
                (eq tt :multiple-initial-edges))
        (if (null tt)
          (setq tt (pos-terminal start-pos))
          (setq tt (highest-preterminal-at start-pos)))
        (unless tt
          (if *break-on-unexpected-cases*
            (break "The routines for recovering when there's no normal ~
                    value for TT~%didn't work.~%")
            (else
              (ccl:dialog-item-disable *next-button*)
              (return-from Select-next-treetop))))
             
        (setq end-pos (chart-position-after start-pos)))


      (setq *wb/current-edge* tt
            *wb/position-where-last-treetop-ended* end-pos)
      (select-edge-in-text-view start-pos end-pos tt)

      (unless the-very-start?
        (ccl:dialog-item-enable *previous-button*))

      (possibly-dis/enable-walk-buttons
       start-pos end-pos tt))))



(defun select-previous-edge (previous-button)
  (unless *calling-edge-table*
    (when *wb/current-edge*
      (let* ((last-edge *wb/current-edge*)
             (end-pos (etypecase *wb/current-edge*
                        (edge (pos-edge-starts-at last-edge))
                        (word (chart-position-before
                               *wb/position-where-last-treetop-ended*))))
             (tt (ev-top-node (pos-ends-here end-pos)))
             (start-pos (if tt
                          (if (eq tt :multiple-initial-edges)
                            (chart-position-before end-pos)
                            (pos-edge-starts-at tt))
                          (chart-position-before end-pos))))
        (when (null tt)
          (when (= 0 (pos-token-index start-pos))
            ;; we're at the start of the chart
            (ccl:dialog-item-disable previous-button)
            (return-from Select-previous-edge))
          (setq tt (pos-terminal start-pos)))

        (when (eq tt :multiple-initial-edges)
          (setq tt (highest-preterminal-at start-pos)))

        (select-edge-in-text-view start-pos end-pos tt)
        (possibly-dis/enable-walk-buttons
         start-pos end-pos tt)
        (setq *wb/position-where-last-treetop-ended* end-pos
              *wb/current-edge* tt)))))



(defun select-first-edge-down (down-button)
  (declare (ignore down-button))
  (unless *calling-edge-table*
    (when *wb/current-edge*
      (unless (word-p *wb/current-edge*)
        (let* ((parent *wb/current-edge*)
               (start-pos (pos-edge-starts-at parent))
               end-pos
               (left-daughter (edge-left-daughter parent)))
          (unless left-daughter
            (setq left-daughter
                  (leftmost-edge-below parent)))
          (setq end-pos (etypecase left-daughter
                          (edge (pos-edge-ends-at left-daughter))
                          (word (chart-position-after start-pos))))

          (unless (find-item-in-edges-view left-daughter)
            ;; if this part of the chart hasn't been exposed in the
            ;; edges table then we have to do it here
            (expose-daughters/edges-table parent))

          (select-edge-in-text-view start-pos end-pos left-daughter)
          (possibly-dis/enable-walk-buttons
           start-pos end-pos left-daughter)
          (setq *wb/position-where-last-treetop-ended* end-pos
                *wb/current-edge* left-daughter))))))




(defun select-parent (up-button)
  (declare (ignore up-button))
  (unless *calling-edge-table*
    (when *wb/current-edge*
      (etypecase *wb/current-edge*
        (edge (select-parent/edge *wb/current-edge*))
        (cons (select-parent/word-form *wb/current-edge*))
        (word (select-parent/word))))))


(defun select-parent/word-form (word-form)
  (let* ((start-pos (first word-form))
         (end-pos (third word-form)))
    (select-parent/words/positions end-pos start-pos)))

(defun select-parent/word ()
  (let* ((end-pos *wb/position-where-last-treetop-ended*)
         (start-pos (chart-position-before end-pos)))
    (select-parent/words/positions end-pos start-pos)))

(defun select-parent/words/positions (end-pos start-pos)
  (let ((parent-at-start (ev-top-node (pos-starts-here start-pos)))
        (parent-at-end (ev-top-node (pos-ends-here end-pos)))
        parent  location )
    (cond ((and (null parent-at-start) (null parent-at-end))
           (break "Walk stub: case of no local parent"))
          ((null parent-at-start)
           (setq parent parent-at-end
                 location :end))
          ((null parent-at-end)
           (setq parent parent-at-start
                 location :start))
          (t (setq parent parent-at-start)))

    (when (eq parent :multiple-initial-edges)
      (setq parent (elt (ev-edge-vector
                         (ecase location
                           (:start (pos-starts-here start-pos))
                           (:end (pos-ends-here end-pos))))
                        0)))
    (let ((p-start (pos-edge-starts-at parent))
          (p-end (pos-edge-ends-at parent)))
      (select-edge-in-text-view p-start p-end parent)
      (setq *wb/position-where-last-treetop-ended* p-end
            *wb/current-edge* parent)
      (possibly-dis/enable-walk-buttons p-start p-end parent))))



(defun select-parent/edge (edge)
  (let ((parent (edge-used-in edge)))
    (if parent
      (then
        (select-edge-in-text-view (pos-edge-starts-at parent)
                                  (pos-edge-ends-at parent)
                                  parent)
        (setq *wb/position-where-last-treetop-ended*
              (pos-edge-ends-at parent))
        (setq *wb/current-edge* parent)
        (possibly-dis/enable-walk-buttons
         (pos-edge-starts-at parent)
         (pos-edge-ends-at parent)
         parent))
      (format t "~&Select-parent: current edge is a treetop~
                 ~%~A~%" edge))))

  


;;;-------------------------------------------
;;; controlling the state of the Walk buttons
;;;-------------------------------------------

(defun possibly-dis/enable-walk-buttons (start-pos end-pos tt)
  ;; we've just moved forward/back to the edge/word 'tt'. Does it have a
  ;; parent/daughter(s) such that the 'up'/'down' buttons should be
  ;; (de-)activated?
  (etypecase tt
    (word
     (ccl:dialog-item-disable *down-button*)
     (if (or (ev-top-node (pos-starts-here start-pos))
             (ev-top-node (pos-ends-here end-pos)))
       (ccl:dialog-item-enable *up-button*)
       (ccl:dialog-item-disable *up-button*)))
    (edge
     (if (edge-used-in tt)
       (ccl:dialog-item-enable *up-button*)
       (ccl:dialog-item-disable *up-button*))
     (if (edge-left-daughter tt)
       (ccl:dialog-item-enable *down-button*)
       (ccl:dialog-item-disable *down-button*)))
    (symbol
     ;; i.e. :multiple-initial-edges
     (possibly-dis/enable-walk-buttons
      start-pos end-pos (highest-preterminal-at start-pos))))

  (if (>= 2 (pos-token-index start-pos))
    (ccl:dialog-item-disable *previous-button*)
    (ccl:dialog-item-enable *previous-button*))
  (if (or (eq *end-of-source* (pos-terminal end-pos))
          (null (pos-terminal end-pos)))
    (ccl:dialog-item-disable *next-button*)
    (ccl:dialog-item-enable *next-button*)))




;;;------------------------------------------------
;;; coordinating with other parts of the workbench
;;;------------------------------------------------

(defun select-edge-in-text-view (start-pos end-pos e)
  (let ((start (car (pos-display-char-index start-pos)))
        (end (car (pos-display-char-index end-pos)))
        (line (cdr (pos-display-char-index start-pos))))

    (when (pos-preceding-whitespace end-pos)
      (let ((ws (pos-preceding-whitespace end-pos)))
        (setq end (- end (length (word-pname ws))))))

    (when (eq e :multiple-initial-edges)
      ;; since what we're doing is walking through the text view
      ;; selecting regions of characters corresponding to edges or
      ;; treetop words, there is no way that we can show -- in that
      ;; view with that gesture -- that we're sitting on alternative
      ;; analyses of the same text span.  So what we do is just
      ;; arbitrarily select one of the edges and don't worry about
      ;; not being able to indicate the presence of the others
      (setq e (highest-preterminal-at start-pos))
      (break "check e -- multiple-initial-edges case"))

    (unless (line-is-visible-in-text-view? line)
      (scroll-text-view-to-show-line line))

    (select-text-region start end e)

    (when *show-document-edges?*
      (let ((*calling-edge-table* t))
        ;; since select-edge.. will itself make a call back
        ;; to adjust the text view we set this flag to stop
        ;; the loop once it gets to the text-view routines
        (select-corresponding-item-in-edges-view e start-pos)))
     ;(break) 
     ))



(defun synchronize-walk-state-with-edges-view-selection (e/wf)
  ;; called from Select-text-for-edge in response to an edge having
  ;; be selected by hand via the edges-view. Now we have to make
  ;; it look as though we'd walked to that position.
  (let ( start-pos end-pos tt )
    (etypecase e/wf
      (edge
       (setq *wb/current-edge*
             (setq tt e/wf))
       (setq end-pos
             (setq *wb/position-where-last-treetop-ended*
                   (pos-edge-ends-at e/wf)))
       (setq start-pos (pos-edge-starts-at e/wf)))
      
      (cons ;; an encoding of a word: `(,start-pos ,word ,end-pos ,depth)
       (if (eq *elipsis-dots* (second e/wf))
         (then
           ;; stub point in case we want to do something different at
           ;; some point
           (setq *wb/current-edge* (second e/wf)
                 tt (second e/wf)
                 *wb/position-where-last-treetop-ended* (third e/wf)
                 end-pos (third e/wf)
                 start-pos (first e/wf))
           (possibly-dis/enable-walk-buttons start-pos end-pos tt))
         (else
           (setq *wb/current-edge* (second e/wf)
                 tt (second e/wf)
                 *wb/position-where-last-treetop-ended* (third e/wf)
                 end-pos (third e/wf)
                 start-pos (first e/wf))
           (possibly-dis/enable-walk-buttons start-pos end-pos tt)))))))



(defun select-character (n)
  ;; useful in debugging
  (ccl:set-selection-range *text-out* n (1+ n)))



;;;------------------------------------
;;; subroutines that ought to be moved
;;;------------------------------------

(defun leftmost-edge-below (e)
  (when (edge-p e)
    (let* ((ev (edge-starts-at e))
           (index (1- (find-edge-on-vector e ev))))
      (if (>= index 0)
        (elt (ev-edge-vector ev) index)
        (pos-terminal (pos-edge-starts-at e))))))

(defun find-edge-on-vector (edge ev)
  (let ((vector (ev-edge-vector ev))
        (max-count (ev-number-of-edges ev)))
    (dotimes (i max-count nil)
      (when (eq edge
                (elt vector i))
        (return-from Find-edge-on-vector i)))))

