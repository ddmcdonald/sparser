;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; $Id$
;;; Copyright (c) 2010-2012 David D. McDonald
;;;
;;;   File:   load-nlp-poirot
;;;  Module:  /nlp/
;;; Version:  October 2012

;; Intiated 10/26/10 to load shared utilities, Mumble, Sparser.
;; Edited 11/16/10, added asdf items to simplify installation &
;; loading process -- charlieg
;; 12/9/10 ddm: some reorg to get the Sparser package defined earlier
;; 10/30/12 ddm: further cleanup. Added grok option

;;--- Load asdf
;;--- NOTE: you should modify the paths in this section to match
;;--- the location where you installed Sparser

(in-package :cl-user)

;;--- ASDF setup

(require :asdf)
(unless (find-package :asdf)
  (load "~/Sparser/util/asdf.lisp")) ;; N.b. this one's pretty old

;; This assumes you have no other files on your registry already,
;; e.g. from an init file. Adjust it if you do. 
(setf asdf:*central-registry*
      '(*default-pathname-defaults*
        #p"~/sparser/util/"   ;; ddm-util
    	#p"~/sparser/Mumble/derivation-trees/" ;; mumble after sparser
        ))


;;--- Directory structure

(defparameter *nlp-home*
  (make-pathname :directory (pathname-directory *load-truename*)))
;; By hand for debugging (change to fit where you put Sparser
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
;;   Could this be controlled from the command-line?
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

