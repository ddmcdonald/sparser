;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993-1997 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "core"
;;;   module:  "drivers;sinks:"
;;;  Version:  0.3 August 1997

;; redesigned from scratch 12/28/93 v2.3. Added fixed set of final
;; actions 1/16/94.
;; 0.1 (2/23) put in a better call for updating the workbench
;; 0.2 (4/24) gated the operations on sections against the module being active
;; 0.3 (1/9/96) added a check for paragraph actions when there's no para.
;;     (8/17/97) sharpened that for when the delivery license doesn't even
;;      include that global. 

(in-package :sparser)

;;;-------------------------------
;;; standard set of final actions
;;;-------------------------------

(defun do-the-last-things-in-an-analysis (last-position)
  ;; called from check-for-segment-start just before the call to
  ;; terminate the analysis.  This is where standard final actions
  ;; go, especially if they are to be carried out in a specific
  ;; order.
  (when *recognize-sections-within-articles*
    (when *current-section-type*
      (terminate-ongoing-section last-position)))

  (when *paragraph-detection*
    (if *current-paragraph*
      (finish-ongoing-paragraph last-position)
      (else
        (if-there-never-were-any-sections-do-after-para-actions)
        (when *workshop-window*
          ;; this step is also part of finishing a paragraph,
          ;; hence this alternative site for the call when we're
          ;; analyzing something without paragraphs.
          (update-workbench))))))





;;;------------------------------------------------------
;;; hook for arbitrary actions once analysis is complete
;;;------------------------------------------------------

(defparameter *after-analysis-actions* nil
  "Accumulates forms to be passed to eval by the function After-
   analysis-actions.")


(defun after-analysis-actions ()
  ;; called by Analysis-core
  (when *after-analysis-actions*
    (dolist (form *after-analysis-actions*)
      (eval form))))


;;;-----------------------------
;;; managing the set of actions
;;;-----------------------------

(defun define-after-analysis-action (s-exp)
  (unless (listp s-exp)
    (error "An after-analysis action must be a list.~
            ~%  Your argument: ~A~
            ~%  is a ~A" s-exp (type-of s-exp)))
  (push s-exp *after-analysis-actions*)
  (length *after-analysis-actions*))


(defun remove-after-analysis-action (s-exp)
  (unless (listp s-exp)
    (error "A after-analysis action must be a list.~
            ~%  Your argument: ~A~
            ~%  is a ~A" s-exp (type-of s-exp)))
  (let ((after-analysis-actions *after-analysis-actions*))
    (if (member s-exp after-analysis-actions :test #'equal)
      (then
        (setq *after-analysis-actions*
              (delete s-exp after-analysis-actions
                      :test #'equal))
        (1- (length after-analysis-actions)))
      (else
        (format  t  "The form ~A~
                     ~%  is not presently included in the ~
                     after-analysis actions" s-exp)
        nil ))))

(defun list-per-after-analysis-actions ()
  (pl *after-analysis-actions* t))

