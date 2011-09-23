;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP)
;;; copyright (c) 1991-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "copy-everything"
;;;   module:  "init;versions:<version>:scripts:"
;;;  version:  June 1996

;;; This file will copy all the files referenced in a designated load to a new
;;; 'target' location. It is intended to be launched from toplevel, and to be
;;; modified ad-hoc whenever a different script (load-definer) and target is
;;; needed. Note all the hard pathnames

;; initiated 12/91. Updated and made more modular w.r.t. rest of system 8/24/93,
;; finishing that 9/28.  Revised slightly to use a different script 6/19/96.
;; 6/25 added some bindings so that it will override anything in its load
;; script that would stop a copy prematurely.

(in-package :cl-user)

;;;--------------------
;;; define the package
;;;--------------------

(or (find-package :sparser)
    (make-package :sparser
                  :use #+:apple '(ccl common-lisp)
                       #+:unix  '(common-lisp)
                       ))

(in-package :sparser)

;;;----------------------
;;; setup the parameters
;;;----------------------


;;--- parameters that make LLoad copy rather than load

(defparameter *copy-file*  t
  "flag read by lload to shunt it to the right routines")

(defparameter *copy-to-unix-format?* nil
  "Does what it says -- adjusts the filenames that are made by LLoad.")


;;--- parameters to override any switch settings in the load script that
;;    would stop the process prematurely.

(defparameter *sparser-is-an-application?* nil)
(defparameter *load-the-grammar* t)
(defparameter *delayed-loading-of-the-grammar* nil)
(defparameter *load-dossiers-into-image* t)



;;;-------------
;;; do the copy
;;;-------------

;;--- parameters to determine where we're copying to and what load script
;;    we're using to determine what files we copy.


;;------------ Specialize this one ------------
(defparameter *target-root-for-copy* '("Moby" "zz - archive"
                                       "JDP 6/19/96" 
                                       "code" "s" ))

;;------------ and this one ------------
(load  #+:apple "Sparser:code:s:init:scripts:Academic version")




;; Do these by hand, since they are loaded with "load" rather than "lload"
;; and won't have been seen.


(copy-source-to-new-root "init;everything")

(copy-source-to-new-root "init;Lisp:kind-of-lisp")
(copy-source-to-new-root "init;Lisp:grammar-module")
(copy-source-to-new-root "init;Lisp:ddef-logical")
(copy-source-to-new-root "init;Lisp:lload")

(copy-source-to-new-root "init;scripts:Academic version")
(copy-source-to-new-root "init;scripts:Apple loader")
(copy-source-to-new-root "init;scripts:BBN")
(copy-source-to-new-root "init;scripts:compile-everything")
(copy-source-to-new-root "init;scripts:copy-everything")
(copy-source-to-new-root "init;scripts:just dm&p")
(copy-source-to-new-root "init;scripts:no grammar")
(copy-source-to-new-root "init;scripts:SUN")
(copy-source-to-new-root "init;scripts:v2.3a")    ;; standard
(copy-source-to-new-root "init;scripts:v2.3ag")   ;; "academic grammar"
(copy-source-to-new-root "init;scripts:v2.3g")    ;; (public) "grammar"

(copy-source-to-new-root "version;loaders:grammar")
(copy-source-to-new-root "version;loaders:grammar modules")
(copy-source-to-new-root "version;loaders:lisp-switch-settings")
(copy-source-to-new-root "version;loaders:logicals")
(copy-source-to-new-root "version;loaders:master-loader" :do-not-copy-contents t)
(copy-source-to-new-root "version;loaders:model" :do-not-copy-contents t)
(copy-source-to-new-root "version;loaders:save routine")
(copy-source-to-new-root "version;loaders:stubs")

(copy-source-to-new-root "version;salutation")
(copy-source-to-new-root "version;updating")

(copy-source-to-new-root "config;explicitly-loaded-files")
(copy-source-to-new-root "config;image")
(copy-source-to-new-root "config;launch")
(copy-source-to-new-root "config;load")

(copy-source-to-new-root "grammar-configurations;academic grammar")
(copy-source-to-new-root "grammar-configurations;AssetNet")
(copy-source-to-new-root "grammar-configurations;bbn")
(copy-source-to-new-root "grammar-configurations;Debris analysis")
(copy-source-to-new-root "grammar-configurations;full grammar")
(copy-source-to-new-root "grammar-configurations;minimal dm&p grammar")
(copy-source-to-new-root "grammar-configurations;partial grammar")
(copy-source-to-new-root "grammar-configurations;public grammar")
(copy-source-to-new-root "grammar-configurations;SUN")

(copy-source-to-new-root "images;do-the-save")

;;(copy-source-to-new-root "init;workspaces:Apple")  -- references Lingsoft pkg
(copy-source-to-new-root "init;workspaces:Darwin")
(copy-source-to-new-root "init;workspaces:dm&p")
(copy-source-to-new-root "init;workspaces:generic")
(copy-source-to-new-root "init;workspaces:Mari")
(copy-source-to-new-root "init;workspaces:quarterly earnings")
(copy-source-to-new-root "init;workspaces:Sandia")
(copy-source-to-new-root "init;workspaces:SUN")
(copy-source-to-new-root "init;workspaces:SUN1")
(copy-source-to-new-root "init;workspaces:SUN2")
(copy-source-to-new-root "init;workspaces:Switchboard")
(copy-source-to-new-root "init;workspaces:text segments")
(copy-source-to-new-root "init;workspaces:tipster")
(copy-source-to-new-root "init;workspaces:Who's News")
(copy-source-to-new-root "init;workspaces:workbench")

