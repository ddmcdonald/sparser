;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1997,2012-2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "launch"
;;;   Module:  "init;versions:v4.0:config:"
;;;  version:  August 2013

;; 10/7/94 commented out the call to make objects permanent and move it to the
;; save images file. 10/12 turning off the break-outside-coverage flag
;; 12/12 gated a dm&p parameter.  1/30/95 gated a presentation parameter
;; 4/1 added *load-dossiers-into-image* gate.  8/9 added debugging flags
;; dispatch off of *known-machine*.  9/5 added check for delayed accessing
;; of corpus-data. 1/1/96 Bumped length of chart to avoid synch. glitch
;; in long-term-ification. 5/31 appear to have that glitch in hand so moved
;; the resource lengths back to normal values. 6/3 added check for whether
;; the grammar is loaded and the offer to do so and save a version with it
;; but not the dossiers.  6/5 reorganized the ordering of operations.  6/17
;; debugged some interactions with that.  6/27 adding further gates to the
;; loading of the corpus information. 6/28 added Load-workspaces. 8/16/97
;; Commented out the call to a switch setting (there isn't one now), and
;; gated the use of dossiers. 10/19 put back a hard-coded, non-gated setup
;; to use ddm/top-edges.. in Final-session-setup. Have to be more clever
;; about this soon. Also fixed namelist-to-namestring respelling glitch.
;; 8/7/07 small tweeks. 8/30 made load-workspaces O/S independent.
;; 4/7/09 fixed some fanout in files, neatened up, added a proper dispatch
;; to the switch settings.
;; 7/21/09 Flipped *display-word-stream* to nil. 8/31/09 Added *poirot-interface*
;; to the protocol switches options. 2/18/10 flipped *display-word-stream*
;; back again. We can locally override it for specific applications.
;; 6/17/11 changed top-edges-setting default to top-edges-setting/ddm because
;; it's missing some needed elements. 6/30/11 Commented out checkpoint-ops
;; case in switch-settings because in and 'everything' load (the default
;; now) that option symbol is bound to a grammar module. Need a different
;; scheme. 10/30/12 added *grok*, minor cleanup. 1/28/13 Wrapped an eval-when
;; around final forms to avoid running them when compiling. 8/19/13 Added
;; ".lisp" to the wildcard in load-workspaces to make it work in CCL. Also
;; blocked the workspaces when compiling since they can invoke grammar
;; resources that won't exist when just compiling files. 

(in-package :sparser)


;;;-------------------------------------------------------------------
;;; This is the standard set of launch-time configuration operations.
;;; Customize it as fits your needs.
;;;-------------------------------------------------------------------

(defun standard-configuration-operations ()

  ;;--- traces

  (setq *display-word-stream* t)  ;; or *standard-output* )

  (setq *display-salient-objects* nil)


  ;;--- sizing and initializing the resource data structures

  ;; The defaults for these (given here) are in config;load
  ;; These settings (if you change them) would be per-launch overrides.
  ;*maximum-number-of-edges-in-an-edge-vector*  10
  ;*word-lookup-buffer-length*                  100
  ;*number-of-cons-cells-in-initial-allocation* 500
  ;*number-of-cons-cells-per-increment*         100
  ;(resize-stack-of-pending-left-openers 20)

  ;(setq *number-of-positions-in-the-chart* 500)
  ;;  In case you change this during a sesstion, run this form:
  ;;      (progn (make-the-chart) t)

  ;(setq *length-of-edge-resource* 5000)
  ;;  (progn (make-the-edge-resource) t)

  )




;;;--------------------------
;;; finding the test corpora
;;;--------------------------

(defun check-for-delayed-connection-to-the-corpus ()

  (when (and (null *connect-to-the-corpus*)
             cl-user::location-of-text-corpora)

    ;; The connect flag would have been turned off because the image was
    ;; made on one machine for use on another and the corpus is located
    ;; is different places on the two machines.   We delay loading
    ;; the corpus information until we're launching the image
    ;; on the target machine and the files (we assume) do exist

    ;; All files participating in the 'corpus' facility are stored
    ;; in the directory indicated by the sparser logical "corpus;",
    ;; and we do a sanity check.
    (if (probe-file (concatenate 'string
                                 (namelist-to-namestring
                                  (expand-logical-pathname "corpus;"))
                                 ":"))

      ;; sanity check for the code itself
      (when (probe-file (concatenate 'string
                                     (namelist-to-namestring
                                      (expand-logical-pathname "corpus-data;"))
                                     "loader"))
        (lload "corpus-data;loader"))


      (format t "~%~%!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!~
                 ~% The flag *connect-to-the-corpus* it up~
                 ~% but the corpus directory isn't where it's~
                 ~% expected to be~
                 ~%~%"))))


;;////////////// n.b. requires reworking to be O/S independent !!
(defun load-workspaces ()
  (let ((namestring
         (if *sparser-is-an-application?*
             (concatenate 'string
                          cl-user::location-of-sparser-directory
                          (cond
                            (cl-user::*unix-file-system*
                             "Workspaces/")
                            (cl-user::*windows-file-system*
                             "Workspaces\\")
                            (t ;; apple
                             "Workspaces:")))

             (concatenate 'string
                          cl-user::location-of-sparser-directory
                          (cond
                            (cl-user::*unix-file-system*
                             "code/s/init/workspaces/")
                            (cl-user::*windows-file-system*
                             "code\\s\\init\\workspaces\\")
                            (t
                             "code:s:init:workspaces:"))))))
    (when (probe-file namestring)
      (let ((files (directory (concatenate 'string namestring "*.lisp"))))
        (mapcar
         #'(lambda (x)
             (unless (or (search ".svn" (format nil "~s" x))
                         (search ".DS_Store" (format nil "~s" x)))
               (load x)))
         files)))))




;;;---------------------
;;; final setup actions
;;;---------------------


(defun final-session-setup ()
  ;; Act on the settings makde in Sstandard-configuration-operations
  (setup-session-globals/parser)

  (when *load-the-grammar*
    (setup-session-globals/grammar))

  ;;;---------------------------
  ;;; set the protocol switches
  ;;;---------------------------
  (cond
    (*grok* (grok-setting))
    (*bbn*  (all-edges-setting))
    (*fire* (fire-setting))
    (*just-bracketing* (just-bracketing-setting))
;    (*checkpoint-ops* ;; oops -- points to a grammar module
;     (checkpoint-ops-setting))
    (t (top-edges-setting/ddm))))



;;;--------------------------------------------------------------
;;;---------- things start executing from here on down ----------
;;;--------------------------------------------------------------


;; N.b. by positioning the call here, we're sure that it will go
;; through. If we put it at the very end of the file after the
;; checks that might load the grammar and the dossiers, there's
;; the chance that an error in that code might bomb us out of the
;; remaining processing (this all runs within an Ignore-errors).
;; The standard configuration operations have been thoroughly
;; debugged and as delivered shouldn't result in errors.

(standard-configuration-operations)




;;;------------------------------------------
;;; loading the grammar if it wasn't already
;;;------------------------------------------

;; If the image didn't include the grammar then either this configuration
;; isn't intended to, or we've deliberately delayed loading the grammar
;; so that it can change between launches. The flag checked here is set
;; in the governing script (or defaulted in [everything]).

(unless *load-the-grammar*
  ;; If this is true, then the grammar will already have been loaded
  ;; when the image was created.

  (when *delayed-loading-of-the-grammar*

    ;; If we get here, we know that we're launched from an image (rather
    ;; than as the result of an internal development load that didn't
    ;; employ an image.

    (format t "~&~%---------------------~
               ~% loading the grammar~
               ~%---------------------~%")

    (setq *load-the-grammar* t)
    (load-the-grammar)

    ;; Now that we've got the grammar loaded, have a regular image
    ;; saved out, ignoring everything from here on down. The gate
    ;; is there for the situation when we're in the middle of a
    ;; development load and don't ever intend to save an image during
    ;; that session
    (if *do-not-create-an-image*
      (setq *delayed-loading-of-the-grammar* nil)
      (save-sparser-with-grammar))))





;;;-------------------------------------------------
;;; populating the domain model is it isn't already
;;;-------------------------------------------------

(when *load-the-grammar*
  ;; The dossiers don't make sense unless the (standard) grammar has
  ;; been loaded as indicated by this flag.

  (unless *load-dossiers-into-image*
    ;; They were already loaded on the 1st pass that build the engine

    (unless *delayed-loading-of-the-grammar*
      ;; We don't want them this time because we might want to create
      ;; an image from this grammar load, and if we included the
      ;; dossiers now, we wouldn't be able to choose to have different
      ;; values for them later.

      (when *include-model-facilities*
        ;; Otherwise they're irrelevant

        (format t "~&~%~%---------------------~
                   ~% loading the dossiers~
                   ~%----------------------~%")

        (lload "dossiers;loader")))))



;;;-----------------
;;; everything else
;;;-----------------

;;--- Corpus connection

(eval-when (:load-toplevel :execute)

  (when *load-the-grammar*
    ;; No point in doing these systematic analyses unless the grammar is loaded
    (check-for-delayed-connection-to-the-corpus))

  ;;--- Workspace files

  (unless *compile*
    (load-workspaces))

  ;;--- parameters

  (final-session-setup)

) ;; eval-when

