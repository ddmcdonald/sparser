;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "load-ac-files"
;;;  Module: "grammar/model/sl/motifs/
;;; version: November 2021

;; Started 11/2/21 to support auto-loading the last few
;; steps of getting our acumen setup working


#| What I've been doing by hand
(load "/Users/ddm/ws/Acumen/acumen/trunk/code/sparser-driver.lisp")
(compute-all-acumen-namestrings) 
(compute-motific-file-names)

But we also have
  (setq *acumen-base* "/Users/ddm/ws/Acumen/acumen/trunk/")
and the homedir conditionalization in sparser-driver.

-----------

Laurel contributed a pattern in her init file that does
the first step of loading sparser-driver, ddm added the
last step of initializing the file names.

(defmacro acumen-test ()
  (defparameter cl-user::*use-all-proteins* t)
  (handler-bind
      ((warning #'muffle-warning))
    (asdf:load-system :sparser/acumen))
  (defvar *acumen-base* "/Users/ddm/ws/Acumen/acumen/trunk/")
  (load (concatenate 'string *acumen-base* "code/sparser-driver.lisp"))
  (in-package :sparser)
  (initialize-acumen-file-names) ;; -- read in to common-lisp-user
  :loaded-acumen-configuration)

|#

(in-package :common-lisp-user)

(defun initialize-acumen-file-names ()
  ;; note that in the init file we're in common-lisp-user,
  ;; not sparser.
  (sparser::compute-all-acumen-namestrings)
  (sparser::compute-motific-file-names))
