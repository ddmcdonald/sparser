;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "profiling"
;;;   Module:  "drivers;timing:"
;;;  Version:   August 2017

;; initiated 8/2/17

(in-package :sparser)

;; Lifted from Rusty's workspace
(defun all-package-fns (packname)
  (let* ((pack (find-package packname))
         (fns nil))
    (do-symbols (s pack) (when (fboundp s) (push s fns)))
    fns))

(defvar *functions-to-profile* nil
  "List of functions compiled from Mumble and Sparser packages
   as target for profiler.")

(defvar *cl-functions* nil)
(defvar *cl-user-functions* nil)

(defun populate-functions-for-profiling ()
  "Reasonable to do this after the core is loaded
   and before loading the grammar, though that's
   insufficient for testing the parser given the functions
   salted through the grammar files."
  (setq *cl-functions* (all-package-fns :cl)) ;; 752
  (setq *cl-user-functions* (all-package-fns :cl-user)) ;; 990
  (let* ((sparser-fns (all-package-fns :sparser))
         (mumble-fns (all-package-fns :mumble))
         (util-fns (all-package-fns :ddm-util))
         (net-base-fns (loop for fn in *cl-functions*
                          unless (memq fn *cl-user-functions*)
                         collect fn))
         (aggregate util-fns))
    
    (loop for function-list in (list mumble-fns sparser-fns)
       do (setq aggregate
                (loop for fn in function-list
                   unless (or (memq fn net-base-fns)
                              (memq fn *cl-user-functions*)
                              (memq fn aggregate))
                   collect fn)))
    (length (setq *functions-to-profile* aggregate))))
    


(defun prime-sparser-profiler () 
  ;;(eval `(sb-profile::profile ,@*profns*))
  (eval `(sb-profile::profile ,@*functions-to-profile*)))

;; Read with
;;  (sb-profile:report))

