;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2010-2012 David D. McDonald
;;;
;;;   File:   load-nlp
;;; Version:  December 2012

;; This file will load the language understanding system Sparser, 
;; the language generator Mumble, and a shared set of utilities.

;; Part of the system is loaded using ASDF, most is loaded by
;; explicit load files. The common reference point is the location
;; of this file. This file is the only one with explicit pathnames
;; that you need to customize to where you have installed the
;; system. The values here assume you checked it out to the
;; directory "sparser" in your home directory (~/sparser).

;; What this file does:
;; 1. Load ASDF
;; 2. Records the location of this file as *nlp-home*
;; 3. Load the utilities using asdf 
;; 4. Create the sparser package
;; 5. Load Mumble
;; 6. Choose a specializing script and load Sparser
;; 7. Load the files in Mumble that depend on Sparser.

(in-package :cl-user)

;;--- ASDF setup

(require :asdf)
(unless (find-package :asdf)
  (error "Require did not find an ASDF module~
        ~%You need to install one. See http://common-lisp.net/project/asdf/"))

;; This assumes you have no other files on your registry already,
;; Adjust it if you do. 
(setf asdf:*central-registry*
      '(*default-pathname-defaults*
        #p"~/sparser/util/"   ;; ddm-util
    	#p"~/sparser/Mumble/derivation-trees/" ;; mumble after sparser
        ))


;;--- Directory structure

(defparameter *nlp-home*
  (make-pathname :directory (pathname-directory *load-truename*)))
;; For by hand for debugging. Change to fit where you put Sparser
;; (setq *nlp-home* "/Users/ddm/sparser/")

;;--- Loading

;; Utilities used everywhere 
(asdf:operate 'asdf:load-op :ddm-util)


(unless (find-package :sparser)
  ;; Referenced in Mumble code so has to be available early
  (make-package :sparser
                :use '(common-lisp
                       ddm-util
                       #+apple ccl
                       #+openmcl :ccl)))

;; 10/10/12 CCL 1.8.1 -- for reasons I fail to fathom, this invocatation of
;; make-package does not include ddm-util in the result. Works just fine
;; in ACL and before installing Lion (for what that's worth).  -- ddm
#+openmcl (use-package (find-package :ddm-util) (find-package :sparser))

;; Mumble
(load (concatenate 'string (namestring *nlp-home*) "Mumble/loader.lisp"))
  
;; Sparser 
(let* ((init-location "Sparser/code/s/init/")
       (sparser-load-script
        ;; extend, modify as appropriate
        (cond
          (nil "scripts/fire")
          (t "scripts/grok")
          (nil "everything") ;; i.e. no specializing script
          )))
  (load (concatenate 'string 
                     (namestring *nlp-home*)
                     init-location
                     sparser-load-script
                     ".lisp")))

;; Mumble derivation tree using Sparser types
(asdf:operate 'asdf:load-op :mumble-after-sparser)
(load (concatenate 'string *mumble-location* "interface/tsro/gofers.lisp"))
(load (concatenate 'string *mumble-location* "grammar/numbers.lisp"))
