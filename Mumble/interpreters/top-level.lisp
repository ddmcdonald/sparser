;;; -*- Mode: Lisp;  Package: Mumble; Syntax: Common-lisp; base: 10 -*-
;;; $Id: top-level.lisp 328 2009-11-13 16:38:55Z dmcdonal $

;;; MUMBLE-05 interpreters> top-level

;;; Copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (C) 2005, 2010 David D. McDonald
;;; Copyright (C) 1985-1988 David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.

;; 9/18/09 Tweaked case of 'say' fn.
;; 12/9/10 Added derivation tree to initializations

(in-package :mumble)

(export '(initialize-mumble mumble) (find-package :mumble))


;#################################################################
;   GLOBAL VARIABLES
;#################################################################

;; *current-position* keeps a pointer to the current position of the phrase
;; structure execution process it is mainly used for debugging.  It's also used
;; by the new browser, to disambiguate multiple occurrences of objects

(defvar *current-position* nil)

(defvar *current-phrasal-root* nil)

(defvar *context-stack* nil)

(defun initialize-mumble-state ()
  ;; *current-position is initialized in phrase-structure-execution,
  ;;   where it's set to the initial position that's passed to it.
  (setq *context-stack* nil)
  (setq *current-phrasal-root* nil)
  (clrhash *objects-to-references*)
  (when (boundp '*the-derivation-tree*) ;; backwards compatibility
    (clear-derivation-tree-data)))
	  

(defvar *pending-discourse-units* nil)
;; Unvarnished hack from ancient days. See planning code in 
;; YS for a better scheme that doesn't have too much overhead
;; even for simplest cases. *pending-rspecs* is read in
;; phrase-structure-execution and adds another sentence.
(defvar *pending-rspecs* nil)


;#################################################################
;                     a generic toplevel
;#################################################################

(defgeneric say (object)
  (:documentation "Parameterized entry point to one call to mumble.
 Specific variations on this method can include whatever preprocessing
 is appropriate to that object class. Ultimately there must be a call
 to (initialize-mumble-state) and then to (mumble obj)."))

(defmethod say ((obj t))
  (initialize-mumble-state)
  (mumble obj))




;#################################################################
;                     the call to Mumble
;#################################################################

(defvar *mumbling?* nil
  "True when we're Mumbling, so as to prevent recursive calls.")

(defun mumble  (content)
  (declare (special *mumbling?*))
  (if *mumbling?*
    (sorry "Already Mumbling; can't run Mumble recursively")
    (let-with-dynamic-extent ((*mumbling?*  t))
      (when (consp content)
	(setq *pending-rspecs* (cdr content)
	      content (car content)))

      (let ((new-slot-for-this-turn (slot-for-a-turn content)))

	(when *window-code?*
	  (paint-ss-into-new-line-buffers new-slot-for-this-turn))
	  
	(begin-tracker-run)
	(phrase-structure-execution new-slot-for-this-turn)
	(end-tracker-run)

	(when *window-code?*
	  (let* ((ssd  *surface-structure-display-window*)
		 (yah  (send ssd :you-are-here-blinker)))
	    (send yah :set-visibility nil))
	  (paint-ss-into-new-line-buffers new-slot-for-this-turn))
	  
	(name new-slot-for-this-turn)))))


(defun slot-for-a-turn (contents)
  (make-slot :name 	     'turn
             :next    	      nil
             :previous        nil
             :labels  	      (list (slot-label-named 'turn))
             :visited-status  'new
             :contents        contents))




;;;################################################################
;;;               Initializations to Mumble 
;;;     (when starting from scratch as in demonstration runs)
;;;################################################################

;;  When *mumble-text-output* is a window, the variable
;;   *clear-for-each-mumble-call?* gates whether the window is 
;;    cleared before each call to mumble.
;;  Otherwise (when no window is defined) the output just goes to
;;    the lisp listener.  In that case, reset-display just puts 
;;    two blank lines before sending text to the stream.  (may not
;;    be necessary)

(defun initialize-mumble ()
  (reset-display)
  (initialize-output-stream))

