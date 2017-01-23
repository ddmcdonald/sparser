;;;-*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "character-specialists"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  October 2015

;; Initiated 9/9/14 to hold specialists dispatched from the no-space
;; scan. Tweaking through 10/9/14. Removed slash routines 12/10/14 as
;; obsolete. Renewed tweaking/fanout through 5/17/15
;; 5/30/2015 short-term patch for problems with ; as in "...with β-, γ-, and α-catenins..."
;; 10/6/15 Commented out unfinished routine that isn't called. Moved out
;; more general element 11/19/15

(in-package :sparser)


(defun make-edge-into-adjective (edge)
  (declare (special category::adjective))
  (setf (edge-form edge) category::adjective)
  edge)


;;;-----------------------
;;; single 'scare' quotes
;;;-----------------------
 
(defun scare-quote-specialist (leading-quote-pos words pos-before next-position)
  "Called by ns-pattern-dispatch if the first term in the pattern is a 
   double quote. "
  ;; It's reasonably clear what to do with scare quotes. At a minimum we move
  ;; the boundaries of the edge over the word being quoted so it swallows the
  ;; single quote marks. Better than that would be recording the rhetorical
  ;; effect of do in this (which I don't know how to do). If the layout
  ;; is something different than that we just leave it for a debris collector
  ;;  (push-debug `(,leading-quote-pos ,words ,pos-before ,next-position))
  ;;  (setq leading-quote-pos (car *) words (cadr *) pos-before (caddr *) next-position (cadddr *))
  (when (and (eq leading-quote-pos pos-before)
             (eq (first words) (car (last words))))
    (tr :scare-quotes-creating-edge-around (second words))
    (let* ((word-edge (left-treetop-at/only-edges 
                       (chart-position-before next-position)))
           (edge (make-edge-over-long-span
                  pos-before
                  next-position
                  (edge-category word-edge)
                  :rule 'scare-quote-specialist
                  :form (edge-form word-edge)
                  :referent (edge-referent word-edge)
                  :words words)))
      (tr :made-edge edge)
      edge)))






