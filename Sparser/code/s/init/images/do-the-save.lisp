;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "do the save"
;;;    Module:   "init;images:"
;;;   Version:   February 2005

;; completely new version 9/27/93 v2.3
;; 10/7 included making the individuals permanent.  4/3/95 commented out
;; the call to load [config;launch] when Sparser is an application since
;; that wants to happen at launch time. 6/3/96 clarified the query.  6/5
;; added Save-sparser-with-grammar. 6/26 added an item to that. 
;; 10/19/97 added a load config;launch to this in the non-delayed thread.
;; 2/17/05 Added call to load-delayed-dossiers wtin the 'on the way out'
;; code just before objects are made permanent -- I can't reconstruct the
;; whole save/delay/academic/demo scheme and timing, so I'm not positive
;; we've in fact initialized the parsing facilities at this point. If not,
;; then this call will blow up close to the start of the parsing facilites.

(in-package :sparser)

#| This orchestrates the process, though most all of the work has
   been farmed out to other files.  |#

;;--- embedded load

(lload "loaders;save routine")
 ;; This is version-specific so that it can vary freely.
 ;; It will do all the real work.

;;--- subroutine that might be called from the launch config file

(defun save-sparser-with-grammar ()
  ;; This is what the user is admonished to use if we've loading the initial
  ;; image without any grammar -- it does another save, with a different
  ;; name than the original (see just below), now with the image containing
  ;; the newly loaded grammar but with its flags set so that it will load
  ;; the dossiers on launch and use sourses for all subsequent calls to lload.

  ;; Let the dossiers be loaded as source
  (setq *insist-on-binaries* nil)

  ;; Turn off this flag so that the dossiers will load when this image
  ;; is launched.
  (setq *delayed-loading-of-the-grammar* nil)

  ;; Standard name/location for the image
  (save-image-of-Sparser))


;;----------- This executes right now as the file is loading -----------

(when (y-or-n-p "Save out an image")
  (defparameter *time-of-image* (get-universal-time))

  ;; Nail down any individuals that are already included
  (when *load-the-grammar*
    (when *include-model-facilities*
      (load-delayed-dossiers) ;; assumes the parser is initialized !!
      (declare-all-existing-individuals-permanent)))

  (lload "config;launch")
  (save-image-of-Sparser))
