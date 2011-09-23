;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "single-new"
;;;    Module:   "analyzers;psp:edges"
;;;   Version:   2.0 August 1995

;; 1.0 (9/7/92 v2.3) flushed out of date field references
;;     (11/3) fixed typo
;; 1.1 (5/22/93) converted Install-single-term-edges/initial-terminal
;;      to install-preterminal-edge to accomodate more complex routine
;;      in Preterminals/word
;;     (5/24/94) added trace
;; 2.0 (8/30/95) moved the used-in after complete

(in-package :sparser)

;;;---------
;;; drivers
;;;---------

(defun install-preterminal-edge (cfr word
                                 position next-position)

  ;; called from Preterminals/word
  (let ((edge
         (make-completed-unary-edge (pos-starts-here position)
                                    (pos-ends-here next-position)
                                    cfr
                                    word )))
    (tr :making-single-term-edge edge)
    edge ))





(defun complete-any-single-term-edges  (rule-set
                                        starting-vector
                                        ending-vector
                                        daughter)

  ;; called from assess-edge-label/top

  (dolist (rule (rs-single-term-rewrites rule-set))
    (make-completed-unary-edge
     starting-vector ending-vector rule daughter)))


;;;-----------
;;; workhorse
;;;-----------

(defun make-completed-unary-edge (starting-vector
                                  ending-vector
                                  rule
                                  daughter

                                  ;; These are used when the call is directly from
                                  ;; code and the 'rule' isn't a cfr so we have to
                                  ;; explicitly provide the information that would
                                  ;; have come from it
                                  &optional  category
                                             form
                                             referent )
  (let ((edge
         (next-edge-from-resource)))

    (knit-edge-into-positions edge
                              starting-vector
                              ending-vector)
    (setf (edge-starts-at edge) starting-vector)
    (setf (edge-ends-at edge)   ending-vector)

    (setf (edge-rule edge) rule)
    (setf (edge-left-daughter edge)  daughter)
    (setf (edge-right-daughter edge) :single-term)

    (setf (edge-category edge)  (or category
                                    (cfr-category rule)))
    (setf (edge-form edge)      (or form
                                    (cfr-form rule)))
    (setf (edge-referent edge)  (or referent
                                    (referent-from-unary-rule
                                     edge rule daughter)))
    (complete edge)
    
    (when *trace-edge-creation*
      (format t "~&~%creating ~A from ~A~
                   ~%    rule: ~A" edge
              (etypecase daughter
                (word daughter)
                (polyword daughter)
                (edge (edge-position-in-resource-array daughter)))
              rule))

    (etypecase daughter
      (word )
      (polyword )
      (edge (set-used-by daughter edge)))
    
    (assess-edge-label (cfr-category rule) edge)

    edge ))

