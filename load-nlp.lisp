;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2010-2013 David D. McDonald
;;;
;;;   File:   load-nlp
;;; Version:  May 2013

;; This file will load the language understanding system Sparser, 
;; the language generator Mumble, and a shared set of utilities.

;; Part of the system is loaded using ASDF, most is loaded by
;; explicit load files. The common reference point is the location
;; of this file. 
;;   We collect the location of this file using *load-truename*
;; in step 2. There are other files however that must be given
;; explicit pathnames. The values here assume you checked out 
;; the system to the directory "sparser" in your home directory
;; (i.e. ~/sparser). If you put it somewhere else then you will
;; need to changed those paths

;; What this file does:
;; 1. Records the location of this file as *nlp-home*
;; 2. Loads ASDF and pushes two file locations onto its registry
;; 3. Load the utilities using asdf 
;; 4. Create the sparser package
;; 5. Load Mumble
;; 6. Choose a specializing script and load Sparser
;; 7. Load the files in Mumble that depend on Sparser.

(in-package :cl-user)

;; #1 --- set the base directory

(defparameter *nlp-home*
  (make-pathname :directory (pathname-directory *load-truename*)
                 :device (pathname-device *load-truename*))) ;; attempt to make Windows work
;; This is for by-hand for debugging. Change to fit where you put Sparser
;; (setq *nlp-home* "/Users/ddm/sparser/")


;; #2 --- ASDF setup

(require :asdf)
(unless (find-package :asdf)
  (error "Require did not find an ASDF module~
        ~%You need to install one. See http://common-lisp.net/project/asdf/"))

(let ((*default-pathname-defaults* cl-user::*nlp-home*))
  (pushnew (merge-pathnames (make-pathname :directory '(:relative "util")))
           asdf:*central-registry*)
  (pushnew (merge-pathnames (make-pathname :directory '(:relative "Mumble" "derivation-trees")))
           asdf:*central-registry*))



;; #3 --- Load the utilities. Note that their exported symbols
;;  are in the package :ddm-util, which is also the name of its asd file

;; Utilities used everywhere 
#+openmcl(asdf:operate 'asdf:load-op :ddm-util)
#+franz-inc (let ((*default-pathname-defaults* cl-user::*nlp-home*))
              (load (merge-pathnames 
                     (make-pathname :directory '(:relative "util") 
                                    :name "loader.lisp"))))


;; #4 --- Create the sparser package
;;   We do this here so that the package is available for reference
;;   in Mumble's code.

(unless (find-package :sparser)
  (make-package :sparser
                :use '(common-lisp
                       ddm-util
                       #+apple ccl
                       #+openmcl :ccl)))

;; 10/10/12 CCL 1.8.1 -- for reasons I fail to fathom, this invocatation of
;; make-package does not include ddm-util in the result. Works just fine
;; in ACL and before installing Lion (for what that's worth).  -- ddm
#+openmcl (use-package (find-package :ddm-util) (find-package :sparser))


;; #5 Load Mumble
(load (concatenate 'string (namestring *nlp-home*) "Mumble/loader.lisp"))


;; #6  Use the selected script to pick the desired version of Sparser
;;  and load it.

;; The easiest way to use something other than the default is to set this
;; variable before you load this file. Note that right now we are in the
;; symbol package :cl-user, which is also the usual default package when a lisp
;; is loaded.

(unless (boundp 'script) (defvar script :default))
  
;; Sparser 
(let* ((init-location "Sparser/code/s/init/")
       (sparser-load-script
        ;; extend, modify as appropriate when you have a new load script
        (case script
          (:fire "scripts/fire")
          (:grok "scripts/grok")
          (:c3 "scripts/no-grammar")
          (:no-grammar "scripts/no-grammar")
          (:just-dm&p "scripts/just-dm&p")
          (:default "everything") ;; i.e. no specializing script
          (otherwise
           (error "The value provided for cl-user::script was ~a~
                 ~%which is not one of the anticipated values:~
                 ~%  :fire, :grok, :no-grammar, :just-dm&pm or :default"
                  script)))))

  (load (concatenate 'string 
                     (namestring *nlp-home*)
                     init-location
                     sparser-load-script
                     ".lisp")))

;; #7 load the files from Mumble that depend on Sparser

(asdf:operate 'asdf:load-op :mumble-after-sparser)
(load (concatenate 'string *mumble-location* "interface/tsro/gofers.lisp"))
(load (concatenate 'string *mumble-location* "grammar/numbers.lisp"))
