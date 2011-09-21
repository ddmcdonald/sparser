;;; -*- Package: MUMBLE;  Mode: LISP; Base: 10; Syntax: Common-lisp -*-
;;; $Id: mcl-output-window.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86  interpreters; text-output

;;; Copyright (C) 1990, 1991, 1995  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

;; ChangeLog
;;  6/7/95 added Backspace-over

(in-package :mumble)


(defparameter *clear-for-each-mumble-call?* nil)

(defparameter *line-length* 70) ;;this is dependent on the font
                                ;;is there any way to derive it?
  
(defclass mumble-output-window (ccl::fred-window)
  ()
  (:default-initargs 
    :window-type :document-with-zoom
    :window-title "Mumble Text Output"
   ;;:view-position #@(10 40)
    :view-size #@(550 200)
    :view-font '("geneva" 12 :srcor :bold)
    
    ))

(defparameter *mumble-text-output* (make-instance 'mumble-output-window))


(defun reset-output-window  (window)
  (if (ccl::wptr *mumble-text-output*) 
    ;;window is still open, bring it to the front
    (ccl::set-window-layer window 0) 
    ;;window was closed, make a new one
    (setq *mumble-text-output* (make-instance 'mumble-output-window)))
  (when *clear-for-each-mumble-call?*
    (ccl::select-all window)
    (ccl::clear window)))


(defun refresh-output-window (window)
  (ccl::set-window-layer window 0)
  (ccl::select-all window)
  (ccl::clear window))


(defun mumble-output-window ()
  (typep *mumble-text-output* 'mumble-output-window))


(defun send-text-output-stream-item-to-a-fancy-browser  (item)
  (declare (special *mumble-text-output*))
  ;;this is where to put any specific browser output code
  (let* ((current-column (ccl::buffer-column 
                          (ccl::fred-buffer *mumble-text-output*))))
    (when (insert-newline? item current-column)
      (fresh-line *mumble-text-output*)   
      (update-the-stream-vector :fresh-line nil))
    (typecase item
      (string (format *mumble-text-output* item))
      (keyword (case item
                 (:fresh-line (format *mumble-text-output* "~%"))
                 (t (format *mumble-text-output* "~a" item))))
      ;;at least we can see when there's a problem, yet not have to go
      ;;into the debugger
      (otherwise (format *mumble-text-output* "~a" item)))
    (force-output *mumble-text-output*)))


(defun insert-newline? (item current-column)
  (let ((item-len (if (stringp item)(length item) 1)))
;;(break "~a" item)
    (and (> (+ current-column item-len) *line-length*)
         ;;don't insert a new line before a new line
         (not (eq item :fresh-line))
         ;;don't insert a new line before a space
         (not (equal item " "))
         ;;don't start a line with a punctuation mark
         (not (member item '("." "," ":" ";" "?" "!" "(" ")") :test #'equal)))))


(defun backspace-over (punctuation-mark)
  (declare (ignore punctuation-mark))
  (let* ((buffer-mark (ccl:fred-buffer *mumble-text-output*))
         (offset (ccl:buffer-position buffer-mark)))
    (ccl:buffer-delete buffer-mark (1- offset))
    (ccl::force-output *mumble-text-output*)))
