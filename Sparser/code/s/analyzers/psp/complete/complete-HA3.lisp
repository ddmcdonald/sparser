;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1997,2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "complete HA"
;;;    Module:   "analyzers;psp:complete:"
;;;   Version:   3.5 February 2013

;; 3.1 (5/3/93) added status setting to word completion routine
;; 3.2 (6/11) passed positions through to next stage
;; 3.3 (12/6) flushed the polyword case since it's subsumed by edges
;; 3.4 (6/6/94) added a optional subsumption test on edges
;; 3.5 (7/12) redefined the subsumption test as an alist to handle arbitrary depth
;;     (7/22) put a patch in it to get around a separate bug
;;     (10/13/97) put a model gate in Complete-edge/hugin.
;;     (2/5/07) converted e{type}case to use otherwise & break
;;     (7/14/08) Made "hugin" lowercase in anticipation of lower-casing
;;      all functions.
;;     (2/8/13) Fixed incorrect status setter

(in-package :sparser)

;;;-----------
;;; the hook
;;;-----------

(defun complete/hugin (obj
                       &optional position next-position)

  (when *do-completion-actions*
    (tr :completing obj position)
    (typecase obj
      (edge     (complete-edge/hugin     obj))
      (word     (complete-word/hugin obj position next-position))
      (otherwise
       (break "Something other than an edge or a word passed in: ~a" obj)))))


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
    (set-status :word-completed position-before))
  :complete )


;;;--------
;;; edges
;;;--------

(defun complete-edge/hugin (edge)
  (unless (subsumption-check/complete edge)
    (check-for-completion-actions/category (edge-category edge)
                                           edge))
  (when *include-model-facilities*
    (when *pronouns*
      (add-subsuming-object-to-discourse-history edge)))
  (check-impact-on-quiescence-pointer edge)
  :complete )



;;;-------------------
;;; subsumption check
;;;-------------------

(defvar *instances-of-subsumption-relevant-edges* nil)

(define-per-run-init-form
  '(setq *instances-of-subsumption-relevant-edges* nil))


(defun subsumption-check/complete (edge)
  (let ((plist (plist-for (edge-category edge))))
    ;; 7/22 patches around deep bug such that something is treating
    ;; (some? all?) polywords like they were words and put ':mixed-case'
    ;; in the plist field of "New York"
    (when (consp plist)
      (when (member :inhibit-completion-actions-of-subsumer
                    plist :test #'eq)
    (let ((entry
           (assoc (edge-category edge)
                  *instances-of-subsumption-relevant-edges*)))
      (if entry
        (let ((old-start (first (cdr entry)))
              (old-end   (second (cdr entry)))
              (new-start (pos-token-index (pos-edge-starts-at edge)))
              (new-end (pos-token-index (pos-edge-ends-at edge))))
          (let ((subsumes?
                 (unless (>= new-start old-end)
                   (and (<= new-start old-start)
                        (>= new-end old-end)))))
            (if subsumes?
              (then
                (rplacd entry `(,new-start ,new-end))
                t )
              (else
                (rplacd entry `(,new-start ,new-end))
                nil ))))
        (else
          (push `(,(edge-category edge)
                  . (,(pos-token-index (pos-edge-starts-at edge))
                     ,(pos-token-index (pos-edge-ends-at edge))))
                *instances-of-subsumption-relevant-edges*)
          nil )))))))



(defun inhibit-completion-when-subsumes (label)
  ;; called from the grammar to setup the subsumption check
  ;; and inhibition on a specific label
  (push-onto-plist label
                   t :inhibit-completion-actions-of-subsumer))

