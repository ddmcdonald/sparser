;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1997  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "save routine"
;;;   Module:  "init;loaders;"
;;;  Version:  0.1 September 1997

;; initiated 7/92.  9/27/93 revised to handle MCL 2.0.  Promulgated
;; change to "cl-user::*current-version*" 4/24.  10/7 reordered the operation
;; so that the saluation would come last.  4/3/95 ordered application check
;; before demo-version check.  4/5 put in check to reconstruct the root of
;; the logical directories. 4/24 broke out
;; 0.1 (4/24/95) reworked the lookup of the Sparser directory to be sensitive
;;      to whether the image was saved as an 'application'
;;      (8/17) tweeked a message.   (6/3/96) added a case for where the Sparser
;;      directory could be. (6/4) tweeked messages, comments, fixed string-compare
;;      bug. 
;;     (9/10/97) put calls to position explicitly in cl package
;;      to avoid conflict with the defstruct when running in Franz.


(in-package :sparser)

(defun run-at-launch ()
  "Called as the first (and only) thing done when Sparser is launched."
  (lload "config;launch")
  (lload "init;salutation")

  (unless *nothing-Mac-specific*
    ;; Doing this has to wait on the config and updating files since they
    ;; can change or add logicals to items like Corpus.
    (format t "~&~%Constructing the menus~%")
    (launch-sparser-menus))

  ;; debugging flags (demo vs. development machines)
  (when *load-the-grammar*
    (setq *break-on-pattern-outside-coverage?* nil))

  :ready)

#+ccl
(defun catch-everything-and-run-launch-time-fn ()
  "CCL launch-time wrapper."
  (ignore-errors (catch-cancel (run-at-launch))))

(defun save-image-of-Sparser (&optional
                              (image-location
                               (make-pathname
                                :name (format nil "sparser-~a" (dtg-dir))
                                :type "image"
                                :defaults *sparser-directory*)))
  #+ccl
  (progn
   (setq ccl:*lisp-startup-functions* '(catch-everything-and-run-launch-time-fn))
   (save-application image-location)))
