;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "lisp-switch-settings"
;;;    Module:   "init:versions:v3.1:loaders:"
;;;   version:   February 2007

;; broken out from init;Lisp:kind-of-lisp 4/19/94. Moved it into the
;; cl-user package 5/12. 1/25/07 Added case for ACL. 2/1 Submitted
;; to ACL stupidities about compilation. 

(in-package :cl-user)


;;;-------------------------------------
;;; expression to use to compile a file
;;;-------------------------------------

#+:apple
(defun routine-to-compile-file (source-namestring fasl-namestring)
  (compile-file
   source-namestring
   :output-file fasl-namestring
   :verbose t
   :save-local-symbols t
   :load nil ;; loading is done explicitly in the caller since
             ;; this option isn't available in some other lisps
   ))

#+:lucid
(defun routine-to-compile-file (source-namestring fasl-namestring)
  (compile-file
   source-namestring
   :output-file fasl-namestring
   :tail-merge t))

#+:allegro
(defun routine-to-compile-file (source-namestring fasl-namestring)
  (declare (ignore fasl-namestring))
  (compile-file
   source-namestring
   :output-file fasl-namestring)
  )

#+:allegro (proclaim '(optimize 
		       (safety 1)
		       (space 1)
		       (speed 2)    ;; for tail-call-non-self-merge-switch
		       (debug 1)))  ;; and tail-call-self-merge-switch
		       


;;;------------------------------------------
;;; standard runtime/debug/... flag settings
;;;------------------------------------------

;;  N.b. The version to use when #+:unix is true has yet to be supplied.

#+:apple
(setq *record-source-file*   t   
      *warn-if-redefine*     nil
      *load-verbose*         t
      *backtrace-on-break*   t
      *compile-definitions*  t
      *save-definitions*     t
      *save-local-symbols*   t
      *fasl-save-local-symbols* t
      )

