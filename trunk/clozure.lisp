;;; -*- Mode:LISP; Package:CL-USER -*-
;;; copyright (c) 2011 David D. McDonald  -- all rights reserved

(in-package :cl-user)

;; Modify hard pathnames as needed
;;    (load "/Users/ddm/Sparser/clozure.lisp")

;; 7/3/11 Note that Mumble has not yet been brought up under Clozure
;; (issues with case and its function-creating macros) and that
;; Clozure is not sensitive to case.

(require :asdf)

(asdf:operate 'asdf:load-op :ddm-util)

(load "/Users/ddm/Sparser/Sparser/code/s/init/everything.lisp")