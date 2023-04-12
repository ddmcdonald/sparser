;;; -*- Mode: Lisp;  Package: Mumble; Syntax: Common-lisp; base: 10 -*-

;;; MUMBLE-05 interpreters> top-level

;;; Copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (C) 2005, 2010, 2016-2017 David D. McDonald
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

(defvar *current-position* nil
  "Keeps a pointer to the current position of the phrase structure execution process.
 Provides a ready hook to our current location in the phrase structure tree. Its
 value will be a slot or a node depending on just where we are.")

(defvar *current-phrasal-root* nil
  "Points to the phrasal-context object of the syntactic maximal projection 
 that we are currently inside. Created in calls to build-rooted-phrase.
 Managed by subroutines of phrase-structure-execution.")

(defvar *context-stack* nil
  "A push/pop stack of phrasal-context objects managed that coordinates
 what context is in force as we enter/leave phrasal-root nodes in the
 syntactic structure.")

(defvar *pending-discourse-units* nil)

(defun initialize-mumble-state ()
  ;; *current-position* is initialized in phrase-structure-execution,
  ;; where it's set to the initial position that's passed to it.
  (declare (special *current-focus* ;; in interpreters/discourse-reference.lisp
                    *mentions*))
  (setq *context-stack* nil)
  (setq *current-phrasal-root* nil)
  (setq *current-focus* nil)
  (setq *mentions* nil)
  (when (boundp '*the-derivation-tree*) ;; backwards compatibility
    (clear-derivation-tree-data)))

(defvar *defaults-to-sentence* nil
  "A flag that means that every utterance is an orthographic sentence.
It controls a check that will wrap a discourse-unit around any rspec
that doesn't already have one.")


;#################################################################
;                     a generic toplevel
;#################################################################

(defgeneric say (object)
  (:documentation "Parameterized entry point for one call to mumble.
Specific variations on this method can include whatever preprocessing
is appropriate to that object class.")
  ;; n.b. there are versions of 'say' in sparser/../interface/mumble/interface.lisp
  (:method :before (object)
    (initialize-output-stream)
    (initialize-mumble-state))
  (:method (object)
    (declare (special *defaults-to-sentence*))
    (mumble (if *defaults-to-sentence*
              (ensure-is-a-sentence object)
              object))))

;#################################################################
;                     the call to Mumble
;#################################################################

(defvar *mumbling?* nil
  "True when we're Mumbling, so as to prevent recursive calls.")

(defun mumble  (content)
  (declare (special *mumbling?* *surface-structure-display-window*))
  (if *mumbling?*
    (error "Can't run Mumble recursively.")
    (let-with-dynamic-extent ((*mumbling?*  t))
      (let ((new-slot-for-this-turn (slot-for-a-turn content)))
	(begin-tracker-run)
	(phrase-structure-execution new-slot-for-this-turn)
	(end-tracker-run)	  
        ;; return value so we might be able to do something with it
	new-slot-for-this-turn))))


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
;;    standard output.

(defun initialize-mumble ()
  (initialize-output-stream))
