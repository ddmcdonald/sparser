;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "reclaim"
;;;   Module:  "analyzers;context:"
;;;  Version:  August 1994

;; initiated 8/28/94 v2.3

(in-package :sparser)


(defun cleanup-root-section-object ()
  ;; stub in case we want to do something more clever than standard
  ;; reclaimation, and in any event we have to clean out the daughters
  ;; of the root.
  (let* ((root *root-section-object*)
         (daughters-binding (binds root 'daughters)))
    (unless daughters-binding
      (break "There is no daughter binding on the root section object:~
              ~%    ~A" root)
      (return-from Cleanup-root-section-object))

    (let ((daughter-list (binding-value daughters-binding)))

      (setf (binding-value daughters-binding) nil)
      daughter-list)))

