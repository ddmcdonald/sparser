;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; $Id$
;;; Copyright (c) 2010-2011 David D. McDonald
;;;
;;;   File:   load-nlp-poirot
;;;  Module:  /nlp/
;;; Version:  December 2010

;; Intiated 10/26/10 to load shared utilities, Mumble, Sparser,
;; and some KB ripped out of the Poirot ontology
;; Edited 11/16/10, added asdf items to simplify installation &
;; loading process -- charlieg
;; 12/9/10 ddm: some reorg to get the Sparser package defined earlier

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
        #p"~/Sparser/util/"   ;; ddm-util
        #p"~/Sparser/lisp/sfl/" 
    	#p"~/Sparser/Mumble/derivation-trees/" ;; mumble after sparser
        ))

;; Test for Clozure & more accomodating asdf2
;(break "Got through 1st asdf region")

;;--- Directory structure

(defparameter *nlp-home*
  (make-pathname :directory (pathname-directory *load-truename*)))
;; (setq *nlp-home* "/Users/ddm/Sparser/")


;;--- Loading

;; Utilities used everywhere (though not integrated into Sparser yet 12/22/10)
(asdf:operate 'asdf:load-op :ddm-util)

;; Mumble
(load (concatenate 'string (namestring *nlp-home*) "Mumble/loader.lisp"))


;;--- Move above Mumble ??????  Can it just wait for 1st Sparser file ????
#+ignore
(unless (find-package :sparser)
  (make-package :sparser
                :use '(common-lisp
                       ddm-util
                       #+apple ccl
                       #+openmcl :ccl)))
  
;; Sparser 
(let* ((init-location "Sparser/code/s/init/")
       (sparser-load-script
        ;; extend, modify as appropriate
        (cond
          (nil "scripts/fire")
          (nil "scripts/checkpoint-ops")
          (t "everything") ;; i.e. no specializing script
          )))
  (load (concatenate 'string 
                     (namestring *nlp-home*)
                     init-location
                     sparser-load-script
                     ".lisp")))

;; Mumble derivation tree using Sparser types
(asdf:operate 'asdf:load-op :mumble-after-sparser)





