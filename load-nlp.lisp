;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2010-2015 David D. McDonald
;;;
;;;   File:   load-nlp
;;; Version:  November 2015

#|
 This file loads the language understanding system Sparser, the
 language generator Mumble, and a shared set of utilities.
 It does -not- compile the code. That step is unnecessary in
 Clozure Common Lisp (CCL) or other lisps that compile functions
 as they read them. It is required for lisps like Franz's Allegro
 which do not. 

|#
;; Part of the system is loaded using ASDF, most is loaded by explicit 
;; load files. The common reference point is the location of this file. 
;; We collect the location of this file using *load-truename* in step 1.

;; There are other files however that must be loaded via hard pathnames.
;; The values here now assume that you checked out the system to the
;; directory "sparser" in your home directory (i.e. ~/sparser). If you put
;; it somewhere else then you will need to change those paths

;; What this file does:
;; 1. Records the location of this file as *nlp-home*
;; 2. Loads ASDF and pushes two file locations onto the asdf registry
;; 3. Loads the utilities using asdf 
;; 4. Creates the sparser package
;; 5. Loads Mumble
;; 6. Chooses a specializing script and loads Sparser


(in-package :cl-user)



;; #1 --- set the base directory

(defparameter *nlp-home*
  (make-pathname :directory (pathname-directory *load-truename*)
                 :device (pathname-device *load-truename*)))
;; This is only for by-hand debugging if something goes wrong.
;; Change this to fit where you put Sparser
;; (setq *nlp-home* "/Users/ddm/sparser/")


;; #2 --- ASDF setup

(require :asdf)
(unless (find-package :asdf)
  (error "Require did not find an ASDF module.~
        ~%You need to install one. See http://common-lisp.net/project/asdf/"))

(let ((*default-pathname-defaults* cl-user::*nlp-home*))
  (pushnew (merge-pathnames (make-pathname :directory 
                                           '(:relative "util")))
           asdf:*central-registry*)
  (pushnew (merge-pathnames (make-pathname :directory 
                                           '(:relative "Mumble" 
                                                       "derivation-trees")))
             asdf:*central-registry*))

;; #3 --- Load the utilities. Note that their exported symbols
;; are in the package :ddm-util, which is also the name of its asdf file

(asdf:operate 'asdf:load-op :ddm-util)


;; #4 --- Create the sparser package
;;  We do this here so that the package is available for reference
;;  in Mumble's code. When Sparser/Mumble are part of another 
;;  system its package may have already have been defined, but
;;  it can be redefined or elaborated here without a problem.

(defpackage :sparser
  (:use :common-lisp :ddm-util #+ccl :ccl)
  (:nicknames :sp)
  (:shadow :break :position))

(defmacro sparser::position (&rest args)
  `(common-lisp:position ,@args))

;; #5 Load Mumble

#| The problem that was keeping Mumble for compiling in SBCL
is probably fixed at this point (11/15/15) but keeping the
flag until that's confirmed. |#

#-sbcl(load (concatenate 'string (namestring *nlp-home*) "Mumble/loader.lisp"))



;; #6  Use the selected script to pick the desired version of Sparser
;;  and load it.
;;   The easiest way to use something other than the default is to set this
;; variable before you load this file. Note that right now we are in the
;; symbol package :cl-user, which is the customary default package when 
;; a Lisp is loaded.

(unless (boundp 'script) (defvar script :default))
  
;; Sparser 
(let* ((init-location "Sparser/code/s/init/")
       (sparser-load-script
        ;; extend, modify as appropriate when you have a new load script
        (case script
          (:fire "scripts/fire")
          (:biology "scripts/bio-script")
          (:blocks-world "scripts/blocks-world")
          (:grok "scripts/grok")
          (:c3 "scripts/C3-script")
          (:no-grammar "scripts/no-grammar")
          (:just-dm&p "scripts/just-dm&p")
          (:default "everything") ;; i.e. no specializing script
          (otherwise
           (error "The value provided for cl-user::script was ~a~
                 ~%which is not one of the anticipated values:~
                 ~%  :fire, :biology, :grok, :c3, :no-grammar, ~
                 :just-dm&pm, :blocks-world, or :default"
                  script)))))
  (format t "~&Using the ~a loading script~%" sparser-load-script)

  (load (concatenate 'string 
                     (namestring *nlp-home*)
                     init-location
                     sparser-load-script
                     ".lisp")  :verbose t))
