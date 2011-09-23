;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "updating"
;;;   Module:  "init;versions:v2.3:"
;;;  version:   2.3 August 1994
;;; 
;;;  This is essentially a "patch" file.  It directly LLoad's files
;;;  that have been edited since the last time an image was created.
;;;  It is loaded as part of every launch of a 'development' image.

(in-package :sparser)


;; The existence of this fn in announced at launch time via *salutation-string2*
;; whenever *there-are-changed-files* is up.  The user then gets to run it
;; by hand.  So if there are files that -must- be loaded, they should be
;; done by hand here outside the Update fn, since those are going to be optional.
 

(setq *there-are-changed-files* nil)  ;; set this whenever you have given
                                      ;; Update something to do
(defun update ()
  (format t "~&Updating files:")
  ;;--- Calls to load new files or files changed after
  ;;    the current image was made go here.

 
  )
