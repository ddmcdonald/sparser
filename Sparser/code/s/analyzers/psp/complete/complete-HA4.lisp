;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "complete HA"
;;;    Module:   "analyzers;psp:complete:"
;;;   Version:   4.0 November 1993

;; 1.1  (5/2 v1.8.4)  Modified Complete-edge to check the quiescent
;;      position of the forest-level parser
;; 1.2  (10/21 v2.0) Overhauled it to streamline/make-consistent the
;;      calling patterns & hooks.
;;      (11/1) put in *do-completion-actions* in place of *..action..*
;; 1.3 (7/14/92 v2.3) bumped version to 3 to go with changing the call
;;       for anaphor recording of edges.
;; 3.1 (5/3/93) added status setting to word completion routine
;; 3.2 (6/11) passed positions through to next stage
;; 4.0 (11/12) flushed the separate case for polywords since there's
;;      no way a polyword can be passed to complete except as the label
;;      on an edge.

(in-package :sparser)

;;;-----------
;;; the hook
;;;-----------

(defun complete/hugin (obj
                       &optional position next-position)

  (when *do-completion-actions*
    (etypecase obj
      (edge (complete-edge/hugin obj))
      (word (complete-word/hugin obj position next-position)))))


;;;-------
;;; words
;;;-------

(defun complete-word/hugin (word
                            &optional position-before
                                      position-after)

  (check-for-completion-actions/word word
                                     position-before
                                     position-after)
  (when position-before
    (setf (pos-assessed? position-before) :word-completed))
  :complete )


;;;--------
;;; edges
;;;--------

(defun complete-edge/hugin (edge)
  
  (check-for-completion-actions/category (edge-category edge)
                                         edge)

  (when *pronouns*
    (add-subsuming-object-to-discourse-history edge))
  
  (check-impact-on-quiescence-pointer edge)

  :complete )

