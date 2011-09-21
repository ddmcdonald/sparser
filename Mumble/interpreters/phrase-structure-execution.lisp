;;; -*- Mode: Lisp;  Package: Mumble; Syntax: Common-lisp; Base: 10 -*-
;;; $Id: phrase-structure-execution.lisp 341 2009-12-29 17:09:23Z dmcdonal $


;;;  MUMBLE-86:  interpreters> phrase-structure-execution

;;; Copyright (C) 1985-2000,2010-2011  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved

;; ChangeLog:
;;  9/5/00 -- Promulgated the change in all-the-object-types where the 
;;   position type was renamed mposition to avoid a class with the position
;;   structure in Sparser. Affected the ecase in process-slot.
;;  3/26/07 Beginging to knit in unconventional objects. 
;;  3/17/11 Tweaking things a little

(in-package :mumble)

(defun phrase-structure-execution (initial-position)
  (setq *current-position* initial-position)
  (until (pse-finished? *current-position* initial-position)
      ()
    (etypecase *current-position*
      (node (if (and (eq (name *current-position*) 'discourse-unit)
                     *pending-rspecs*
                     (eq (visited-status *current-position*) 'entered))		
              (add-a-new-sentence *current-position*)
              (process-node *current-position*)))
      (slot (process-slot *current-position*)))))


(defun process-node (position)
  (ecase  (visited-status position)
    (new
     (landmark '(:before process-node) position)
     (when (phrasal-rootp position)
       (entering-new-context position))
     (do-all-word-stream-actions (labels position) 'new) 
     (set-visited-status position  'entered)
     (update-current-position (first-constituent  position )))
    
    (entered
     (landmark '(:after process-node) position)
     (when (phrasal-rootp position)
       (leaving-previous-context position))
     (do-all-word-stream-actions (labels position) 'entered)
     (set-visited-status position 'left)
     (update-current-position (next position)))))


(defun process-slot (position)
  (ecase  (visited-status position)
    (new
     (landmark '(:before process-slot) position nil (contents position))
     (let ((contents (realization-cycle (contents position) position))
           (labels   (labels position)))
       (do-all-word-stream-actions labels 'new)
       (etypecase contents
         (word-stream-item
          (morphologically-specialize-&-say-it contents labels))
         (mposition
          (update-current-position (contents position)))))
     (set-visited-status position 'entered))
    
    (entered
     (landmark '(:after process-slot) position)
     (do-all-word-stream-actions (labels position) 'entered)
     (update-current-position (next position))
     (set-visited-status position 'left))))


;################################################################
;                 PSE subroutines
;################################################################

(defun realization-cycle (contents position)
  (check-type position slot)
  (flet ((realize-and-knit (item)
	   (let ((new-contents (realize item)))
	     (if (nodep new-contents)
	       (knit-phrase-into-tree position new-contents)
	       (set-contents position new-contents))
	     (landmark 'replace-message-with-result contents position new-contents)
	     (realization-cycle new-contents position)
	     new-contents)))
    (typecase contents
      ((or bundle-specification kernel-specification)
       (realize-and-knit contents))
      ((or phrasal-root node word pronoun tense-marker)
       contents)
      (otherwise
       (if (has-realization? contents)
	     (realize-and-knit contents)
         (else 
           (push-debug `(,contents ,position))
           (break "No realization for ~a" contents)))))))

(defun do-all-word-stream-actions (labels visited-status)
  (dolist (label labels)
    (when (word-stream-actions label)
      (process-word-stream-actions
	(word-stream-actions label) visited-status))))

(defun pse-finished? (position initial-position)
  (and (eq position initial-position)
       (eq (visited-status initial-position) 'entered)))

(defun update-current-position (position)
  (setq *current-position* position))

(defun entering-new-context (position)
  (when *current-phrasal-root*
    ;;catches the first case where there is no dominating
    ;;phrasal root
    (push *current-phrasal-root* *context-stack*))
  (setq *current-phrasal-root* (context-object position)))

(defun leaving-previous-context (position)
  (set-context-object position *current-phrasal-root*)
  (setf *current-phrasal-root* (pop *context-stack*)))



(defun add-a-new-sentence (position)
  ;;*pending-rspecs* is a list of further specifications
  ;;and *current-position* is the phrasal root discourse-unit
  (let* ((spec (pop *pending-rspecs*))
	 (contents (specification spec))
	 (ap (attachment-function spec)))

    (attach-at-attachment-point ap contents position)
    (setq *current-position* (last-constituent *current-position*))
    ))


