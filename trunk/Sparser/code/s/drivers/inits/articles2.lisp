;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1996  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id: articles2.lisp 249 2009-07-23 17:03:45Z dmcdonal $
;;; 
;;;     File:  "articles"
;;;   Module:  "drivers;inits:"
;;;  Version:  2.15 July 2009

;; 1.1  (3/28/91 v1.8.1)  Added Clear-individuals, and improved the
;;      conditionalization according to the load-time switches
;; 1.2  (7/11 v1.8.5)  Added Clear-traversal-state and merged the two
;;      when's on *model* into one if.
;; 1.3  (10/8 v2.0)  Removed the possibility that *model* could be Nil
;; 1.4  (11/12 v2.0.1)  Put back in the equivalent -- a check that the
;;      grammar has been loaded ///needs some flags as well.
;; 1.5  (5/9/92 v2.2) Added clearing the stack of pending left openers
;; 1.6  (6/19) Added initializing the context variables
;; 1.7  (7/14 v2.3) Switched fromm anaphor table to Discourse-history
;; 1.8  (9/2) commented out the salient-objects, since that code isn't
;;        being loaded at this point with the new category stuff
;; 2.9  (12/28) pulled a reference to the old indexing scheme for names
;; 2.10 (11/12/93) added clearing the display window
;; 2.11 (12/8) switched to a generic routine for initializing sections.
;; 2.12 (12/15) introduced a mechanism for open-ended initializations
;; 2.13 (5/2/94) tweeked routine so that those initializations would be
;;       seen even if the grammar flag was down (e.g. for bbn)
;; 2.14 (8/8) reordered Reap-individuals and Initialize-discourse-history
;;      (5/13/95) promulgated a fn renaming.
;;      (1/9/96) added check for an interrupted embedded scan.
;; 2.15 (7/23/09) Added clear-debug.

(in-package :sparser)


;;;-------------
;;; accumulator
;;;-------------

(defparameter *per-article-initializations* nil
  "Accumulates forms to be passed to eval during
   Per-article-initializations")


;;;--------
;;; driver
;;;--------

(defun per-article-initializations ()
  (when *saved-toplevel-parsing-protocol*
    ;; we could have error'd out before this was reset
    (resume-old-parsing-protocol))

  (clear-debug) ;; zero's the stack

  (when *load-the-grammar*
    (when *context-variables*
      (initialize-context-variables))
    (clear-traversal-state)
    (clear-stack-of-pending-left-openers)

    ;; This is an ad-hoc system setup for wsj job-events
    ;; it has to be redone -- code loads w/ Who's News
    ;(when *track-salient-objects*
    ; (initialize-salient-object-record))

    (reclaim-temporary-individuals)
    ;; the reap is ordered before the initialization
    ;; because it uses the discourse history to tell it
    ;; what to reap
    (initialize-discourse-history)

    (when *paragraph-detection*
      (initialize-paragraph-state))
    (when *recognize-sections-within-articles*
      (initialize-section-state))

    (when *display-text-to-special-window*
      (clear-special-text-display-window)))

  (when *per-article-initializations*
    (dolist (form *per-article-initializations*)
      (eval form))))


;;;----------------------------------------
;;; managing *per-article-initializations*
;;;----------------------------------------

(defun define-per-run-init-form (s-exp)
  (unless (listp s-exp)
    (error "A per-run-init-form must be a list.~
            ~%  Your argument: ~A~
            ~%  is a ~A" s-exp (type-of s-exp)))

  (push s-exp *per-article-initializations*)
  (length *per-article-initializations*))


(defun remove-per-run-init-form (s-exp)
  (unless (listp s-exp)
    (error "A per-run-init-form must be a list.~
            ~%  Your argument: ~A~
            ~%  is a ~A" s-exp (type-of s-exp)))
  (let ((initialization-forms *per-article-initializations*))
    (if (member s-exp initialization-forms :test #'equal)
      (then
        (setq *per-article-initializations*
              (delete s-exp initialization-forms
                      :test #'equal))
        (1- (length initialization-forms)))
      (else
        (format  t  "The form ~A~
                     ~%  is not presently included in the ~
                     initialization forms" s-exp)
        nil ))))

(defun list-per-run-init-forms ()
  (pl *per-article-initializations* t))

