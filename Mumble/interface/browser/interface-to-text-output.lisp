;;; -*- Mode: Lisp;  Package: Mumble; Syntax: Common-lisp; Base: 10 -*-
;;; $Id: interface-to-text-output.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86:  browser; interface-to-text-output

;;; Copyright (C) 1985, 1986, 1987, 1988, 1989  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)

(defparameter *mumble-text-output* *standard-output*
  "Bound to the stream to which the words of the output text are to be
   send.  On a lispmachine it is a window of type 'text-output-window.")


(defun class-of-text-output-stream-supported ()
  "interim version to facilitate testing."

  (cond ((mumble-output-window);;this is where you put the check for a particular window
         ;;type, ect.
	 'fancy-browser)
	(t
	 'glass-tty)))


(defun reset-display ()
  (case  (class-of-text-output-stream-supported)
    (fancy-browser (reset-output-window *mumble-text-output*))
    (glass-tty   (format *mumble-text-output* "~2%"))))


; Fancy-browser supported everything that we had done or imagine
; that we might do on lispmachines.
	    
;  It would feel somewhat cleaner here to support a feature list of some
;   sort so that the individual capabilities could be broken out as distinct
;   options.  But the Case statement used to test this variable doesn't
;   have anything like the Memq capability that it'd need to support such
;   a list.  Maybe there's an alternative dispatching test that would be
;   reasonably fast? -this is going to be a pretty common operation afterall.


(defun send-item-to-physical-word-stream (item)
  (unless (null item)
          ;;sometimes the Adjust routine will set the item to nil. This
          ;;is a way to implement the fact that it has no print name

    (case  (class-of-text-output-stream-supported)
      (fancy-browser (send-text-output-stream-item-to-a-fancy-browser  item))
      (glass-tty     (send-text-output-stream-item-to-a-glass-teletype item))
      (otherwise
        (mbug "Send-item-to-physical-word-stream"
	       "Unexpected class of text output stream - ~a"
	       (class-of-text-output-stream-supported))))))


; This is separate from Send-item-to-physical-word-stream so that we can use
; a different criterion for judging how to break to new lines if we want to.

(defun pass-a-space-to-the-text-output-stream  ()
  (case  (class-of-text-output-stream-supported)
    (fancy-browser (send-text-output-stream-item-to-a-fancy-browser  " "))
    (glass-tty     (send-text-output-stream-item-to-a-glass-teletype " "))
    (otherwise
       (mbug "Send-item-to-physical-word-stream"
	      "Unexpected class of text output stream - ~a"
	      (class-of-text-output-stream-supported)))))


(defun send-text-output-stream-item-to-a-glass-teletype (item)
  (typecase item
    (string (format *mumble-text-output* item))
    (keyword (case item
               (:fresh-line (format *mumble-text-output* "~%"))
               (t (format *mumble-text-output* "~a" item))))
    ;;at least we can see when there's a problem, yet not have to go
    ;;into the debugger
    (otherwise (format *mumble-text-output* "~a" item))))

#+ignore ;;mm 12/91--from send-text-output-stream-item-to-a-glass-teletype
(when (not (stringp item))
     (mbug "send-text-output-stream-item-to-a-glass-teletype"
	   "Only strings can be passed to glass-tty text output streams~%~
           But a ~a was send instead: ~a"
	   (type-of item) item))


;;#################################################################
;;THESE FUNCTIONS WILL BE REDEFINED FOR OUTPUT WINDOWS

(defun mumble-output-window ()
  nil)

(defun reset-output-window (window)
  (declare (ignore window))
  (format t "Warning: No output window supported."))

(defun send-text-output-stream-item-to-a-fancy-browser  (item)
  ;;this is where to put any specific browser output code
  (declare (ignore item))
  (format t "Warning: No fancy browser supported."))

