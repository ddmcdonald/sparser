;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; $Id$
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2009 David D. McDonald All Rights Reserved

;; /Mumble/derivation-trees/loader.lisp

;; Initated 9/16/09. Cleaned up & pulled in converstion 12/9/10
;; 12/23/10 N.b. not used any longer -- files incorporated into master
;; flat load file.

(in-package :cl-user)

(defvar *location-of-derivation-tree-code*
  (cond
    ((member :allegro *features*)
     (namestring
      (make-pathname :directory (pathname-directory *load-truename*))))
    ((boundp *mumble-location*)
     (string-append *mumble-location* "derivation-trees/"))
    (t
     (break "Not running under Allegro Common Lisp.~
           ~%Can't construct relative pathname to location of Mumble derivation tree code"))))

;; types file is in the main mumble loader

(load (string-append *location-of-derivation-tree-code* ".lisp"))
(load (string-append *location-of-derivation-tree-code* ".lisp"))



