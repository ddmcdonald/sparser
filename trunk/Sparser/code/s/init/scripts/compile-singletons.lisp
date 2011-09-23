;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: compile-singletons.lisp 207 2009-06-18 20:59:16Z cgreenba $
;;;
;;;      File:   "compile-singletons"
;;;    Module:   "init;scripts:"
;;;   version:   March 2007

;; Derived from compile-everthing on 3/20/07

(in-package :sparser)

;;;--------------------------------------------------
;;; compile individual files in the preloader, etc.
;;;--------------------------------------------------

(just-compile "init;everything")

(just-compile "init;Lisp:kind-of-lisp")
(just-compile "init;Lisp:grammar-module")
(just-compile "init;Lisp:ddef-logical")
(just-compile "init;Lisp:lload")

(just-compile "init;scripts:just-dm&p")
(when nil
  (just-compile "init;scripts:Academic version")
  (just-compile "init;scripts:Apple loader")
  (just-compile "init;scripts:BBN")
  (just-compile "init;scripts:compile everything")
  (just-compile "init;scripts:compile academic")
  (just-compile "init;scripts:copy everything")
  (just-compile "init;scripts:copy academic")
  (just-compile "init;scripts:just dm&p")
  (just-compile "init;scripts:no grammar")
  (just-compile "init;scripts:SUN")
  (just-compile "init;scripts:v2.3a")    ;; standard
  (just-compile "init;scripts:v2.3ag")   ;; "academic grammar"
  (just-compile "init;scripts:v2.3g")    ;; (public) "grammar"
)

(just-compile "version;loaders:grammar")
(just-compile "version;loaders:grammar modules")
(just-compile "version;loaders:lisp-switch-settings")
(just-compile "version;loaders:logicals")
(just-compile "version;loaders:master-loader")
(just-compile "version;loaders:model")
(unless *nothing-Mac-specific*
  (just-compile "version;loaders:save routine"))
(just-compile "version;loaders:stubs")

(just-compile "version;salutation")
(just-compile "version;updating")

(just-compile "config;explicitly-loaded-files")
(just-compile "config;image")
(just-compile "config;launch")
(just-compile "config;load")

(when nil
  (just-compile "grammar-configurations;academic grammar")
  (just-compile "grammar-configurations;AssetNet")
  (just-compile "grammar-configurations;bbn")
  (just-compile "grammar-configurations;Debris analysis")
  (just-compile "grammar-configurations;full grammar")
  (just-compile "grammar-configurations;minimal dm&p grammar")
  (just-compile "grammar-configurations;partial grammar")
  (just-compile "grammar-configurations;public grammar")
  (just-compile "grammar-configurations;SUN")
)

(unless *nothing-Mac-specific*
  (just-compile "images;do-the-save"))

(when nil
  ;;(just-compile "init;workspaces:Apple")  -- references Lingsoft pkg
  (just-compile "init;workspaces:Darwin")
  (just-compile "init;workspaces:dm&p")
  (just-compile "init;workspaces:generic")
  (just-compile "init;workspaces:Mari")
  (just-compile "init;workspaces:quarterly earnings")
  (just-compile "init;workspaces:Sandia")
  (just-compile "init;workspaces:SUN")
  (just-compile "init;workspaces:SUN1")
  (just-compile "init;workspaces:SUN2")
  (just-compile "init;workspaces:Switchboard")
  (just-compile "init;workspaces:text segments")
  (just-compile "init;workspaces:tipster")
  (just-compile "init;workspaces:Who's News")
  (just-compile "init;workspaces:workbench")


:finished-compilation

