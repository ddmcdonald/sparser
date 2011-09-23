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


;;--- parameters

(defvar *demo-version* nil
  "Signals to the startup code of the saved application that it is
   not to load any files when it comes up.")

(defvar *development-version* t
  "Signals to the startup code of the saved application that it is
   to look for certain designated files to load when it comes up.")


(unless (boundp '*stem-of-version-name*)
  (defparameter *stem-of-version-name* "Sparser"))



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

  ;; Update the global that is used to check whether the logical pathnames
  ;; should be recomputed
  ;; when the image is launched
  (setq *load-time-location-of-sparser-directory*
        cl-user::location-of-sparser-directory)

  ;; Standard name/location for the image
  (save-image-of-Sparser))




;;----------- This executes right now as the file is loading -----------

(when (y-or-n-p "Save out an image")
  
  ;; all the rest of the code below this call within the calling
  ;; file -- init;everything -- will be ignored since the application
  ;; construction will drop the lisp the moment it's run, so we
  ;; have to load here anything else that's needed and won't be
  ;; run/loaded when the application starts up.

  (lload "version;salutation")

  ;; Set the flags that will be consulted in Run-at-launch
  (if *sparser-is-an-application?*
    (setq *demo-version* nil
          *development-version* t)

    (if (y-or-n-p "Development version? (not an application)")
      (setq *demo-version* nil
            *development-version* t)
      
      (setq *demo-version* t
            *development-version* nil)))

  ;; Nail down any individuals that are already included
  (when *load-the-grammar*
    (when *include-model-facilities*
      (load-delayed-dossiers) ;; assumes the parser is initialized !!
      (declare-all-existing-individuals-permanent)))


  (if *delayed-loading-of-the-grammar*
    (then
      (when *academic-grammar*
        ;; let the grammar be loaded as source
        (setq *insist-on-binaries* nil))

      (save-image-of-Sparser (concatenate 'string
                                          cl-user::location-of-sparser-directory
                                          *stem-of-version-name*
                                          " engine "
                                          (day-&-month-as-formatted-string))))
    (else
      (lload "config;launch")
      (save-image-of-Sparser))))
