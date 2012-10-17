;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 1991-1996,2010-2012  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;      File:   "compile-everything"
;;;    Module:   "init;scripts:"
;;;   version:   0.4 October 2012

;; This file sets up the parameter settings to drive the loading
;; of the system in it's "copy all the files to a new directory" mode.
;; It is intended to be launched from toplevel.
;; Note the hard pathnames at the end

;; 0.1 (4/6) added probef's to simplify use on multiple systems
;;     (5/11) added one for 900.  (11/28/95) brought it all up to date
;; 0.2 (6/19/96) removed vestige of query for whether to do the single files and
;;      made it automatic. Removed explicit versioning in favor of the logical.
;;     (1/24/07) Incorporated current pathnames. (6/25) conditionalized the
;;      compiler directory.
;; 0.3 (11/10/10) Cleaned up dead wood, updated one'ies
;; 0.4 (8/27/11) Reworked to only be used after Sparser has been loaded.
;;     (10/10/12) v3.1 => v4.0



(eval-when (:load-toplevel :execute)
  (unless (find-package :sparser)
    (error "The :sparser package must exist when this file loads.")))

(in-package :sparser)

;;;----------------------
;;; setup the parameters
;;;----------------------

(defparameter sparser::*compile*  t)

(defparameter sparser::*binaries-directory-name* "s")



;;;--------------------------------------------------
;;; do the compilation (and load the compiled files)
;;;--------------------------------------------------

(in-package :sparser)

(unless (boundp 'location-of-sparser-directory)
  (defparameter cl-user::location-of-sparser-directory
    (cond
      ((probe-file "~/ws/nlp/Sparser") ;; ddm's Intel Mac
       "~/ws/nlp/Sparser/")

      #+allegro ;; what other lisps can do this?
      ((member :allegro *features*)
       (namestring
	(merge-pathnames
	 (make-pathname :directory 
			;; Assumes we're loading this file directly
			'(:relative :
			  :up ;; scripts
			  :up ;; init
			  :up ;; s
			  :up ;; code
			  ))
	 (make-pathname :directory (pathname-directory *load-truename*)))))
   
      (t (break "None of the anticipated values for~%    ~
                cl-user::location-of-sparser-directory~
                match the layout on ~A.~
                ~%Set the symbol to the appropriate value ~
                and continue." (user-homedir-pathname))))))
         

(setq *load-verbose* t)

(load #+:apple (concatenate 'string cl-user::location-of-sparser-directory
                   "code:s:init:versions:"
                   "v4.0:"
                   "loaders:lisp-switch-settings")
      #+:unix (concatenate 'string cl-user::location-of-sparser-directory
			   "code/s/init/versions/"
			   "v4.0/"
			   "loaders/lisp-switch-settings.lisp"))


(load #+:apple (concatenate 'string
                   cl-user::location-of-sparser-directory
                   "code:s:init:"
                   "everything" )
      #+:unix (concatenate 'string
                   cl-user::location-of-sparser-directory
                   "code/s/init/"
                   "everything.lisp" ))

;; #+:unix "/usr/users/guest/sparser/s/init/everything"
 

(just-compile "init;everything")

(just-compile "init;Lisp:kind-of-lisp")
(just-compile "init;Lisp:grammar-module")
(just-compile "init;Lisp:ddef-logical")
(just-compile "init;Lisp:lload")

(just-compile "init;scripts:Academic-loader")
(just-compile "init;scripts:Apple-loader")
(just-compile "init;scripts:BBN-loader")
(just-compile "init;scripts:BBN")
(just-compile "init;scripts:checkpoint-ops")
(just-compile "init;scripts:compile-academic")
(just-compile "init;scripts:compile-BBN")
(just-compile "init;scripts:compile-everything")
(just-compile "init;scripts:copy-everything")
(just-compile "init;scripts:copy-academic")
(just-compile "init;scripts:copy-BBN")
(just-compile "init;scripts:copy-everything")
(just-compile "init;scripts:fire")
(just-compile "init;scripts:just-dm&p")
(just-compile "init;scripts:no-grammar")
(just-compile "init;scripts:SUN")
(just-compile "init;scripts:v2.3a")    ;; standard
(just-compile "init;scripts:v2.3ag")   ;; "academic grammar"
(just-compile "init;scripts:v2.3g")    ;; (public) "grammar"

(just-compile "version;loaders:grammar-modules")
(just-compile "version;loaders:grammar")
(just-compile "version;loaders:lisp-switch-settings")
(just-compile "version;loaders:logicals")
(just-compile "version;loaders:master-loader")
(just-compile "version;loaders:model")
(just-compile "version;loaders:save-routine")
(just-compile "version;loaders:stubs")

(just-compile "version;salutation")
(just-compile "version;updating")

(just-compile "config;explicitly-loaded-files")
(just-compile "config;image")
(just-compile "config;launch")
(just-compile "config;load")

(just-compile "grammar-configurations;academic-grammar")
(just-compile "grammar-configurations;AssetNet")
(just-compile "grammar-configurations;bbn")
(just-compile "grammar-configurations;checkpoint-ops")
(just-compile "grammar-configurations;Debris-analysis")
(just-compile "grammar-configurations;fire")
(just-compile "grammar-configurations;full-grammar")
(just-compile "grammar-configurations;just-braccketing")
(just-compile "grammar-configurations;minimal-dm&p-grammar")
(just-compile "grammar-configurations;partial-grammar")
(just-compile "grammar-configurations;public-grammar")
(just-compile "grammar-configurations;SUN")

(just-compile "images;do-the-save")

;(just-compile "init;workspaces:checkpoint") -- reference only
(just-compile "init;workspaces:Darwin")
(just-compile "init;workspaces:dm&p")
(just-compile "init;workspaces:ERN")
;(just-compile "init;workspaces:fire") -- reference only
(just-compile "init;workspaces:fpm")
(just-compile "init;workspaces:generic")
(just-compile "init;workspaces:Mari")
;(just-compile "init;workspaces:poirot") -- reference only
(just-compile "init;workspaces:med")
(just-compile "init;workspaces:quarterly-earnings")
(just-compile "init;workspaces:Switchboard")
(just-compile "init;workspaces:text-segments")
(just-compile "init;workspaces:tipster")
(just-compile "init;workspaces:Who's-News")
(just-compile "init;workspaces:workbench")


:finished-compilation

