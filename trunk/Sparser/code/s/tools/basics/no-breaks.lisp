;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(sparser LISP) -*-
;;; copyright (c) 1990-1991,2011-2012 David D. McDonald -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:  "no breaks"
;;;    Module:   "tools:basics"
;;;   Version:   December 2012

;; Original version 2/1991 for CTI.
;; 7/22/09 brought package out of the dark ages. 10/8 Added on-error setup.
;; (2/8/11) Added more conditionalization so will load in Clozure as well as ACL.
;; (2/17/12) Marking special variables. 12/8 Copied the functions for -allegro 
;;  versions. 

(in-package :sparser)

;;;-----------------------------------
;;; globals for saving the old values
;;;-----------------------------------

(defconstant *original-fvalue-of-break*
  #+allegro (symbol-function 'lisp:break)
  #-allegro (symbol-function 'break))
             
(defconstant *original-fvalue-of-error*
  #+allegro (symbol-function 'lisp:error)
  #-allegro (symbol-function 'error))

(defconstant *original-fvalue-of-cerror*
  #+allegro (symbol-function 'lisp:cerror)
  #-allegro (symbol-function 'cerror))


;;;----------
;;; routines
;;;----------
#+allegro
(defun restore-original-break-error-&-cerror-definitions ()
  (excl:without-package-locks
    (setf (symbol-function 'lisp:break)
	  *original-fvalue-of-break*)
    (setf (symbol-function 'lisp:error)
	  *original-fvalue-of-error*)
    (setf (symbol-function 'lisp:cerror)
	  *original-fvalue-of-cerror*)))
#-allegro
(defun restore-original-break-error-&-cerror-definitions ()
  (setf (symbol-function 'break)
        *original-fvalue-of-break*)
  (setf (symbol-function 'error)
        *original-fvalue-of-error*)
  (setf (symbol-function ':cerror)
        *original-fvalue-of-cerror*))

#+allegro
(defun preempt-all-fns-that-stop-execution (symbol-for-new-function)
  (excl:without-package-locks 
    (preempt-break-function symbol-for-new-function)
    (preempt-error-function symbol-for-new-function)
    (preempt-cerror-function symbol-for-new-function)))
#-allegro
(defun preempt-all-fns-that-stop-execution (symbol-for-new-function)
  (preempt-break-function symbol-for-new-function)
  (preempt-error-function symbol-for-new-function)
  (preempt-cerror-function symbol-for-new-function))


(defun preempt-break-function (symbol-for-new-function)
  (setf (symbol-function #+allegro 'lisp:break  
                         #-allegro 'break)
        (symbol-function symbol-for-new-function)))

(defun preempt-error-function (symbol-for-new-function)
  (setf (symbol-function #+allegro 'lisp:error
                         #-allegro 'error)
        (symbol-function symbol-for-new-function)))

(defun preempt-cerror-function (symbol-for-new-function)
  (setf (symbol-function #+allegro 'lisp:cerror
                         #-allegro 'cerror)
        (symbol-function symbol-for-new-function)))


;;;-----------------
;;; setup machinery
;;;-----------------

;; Has to go somewhere later after this is defined. 
;; Or consider moving the file
;(define-per-run-init-form
;    '(initialize-on-error-action *what-to-do-on-errors*))

(defun initialize-on-error-action (keyword)
  (declare (special *what-to-do-on-errors*))
  (case keyword
    (:error
     (unless (eq *what-to-do-on-errors* :error)
       (restore-original-break-error-&-cerror-definitions)))
    (:punt
     (unless (eq *what-to-do-on-errors* :punt)
       (preempt-all-fns-that-stop-execution 'throw-abort-to-analysis-core)))
    (:skip-ahead
     (unless (eq *what-to-do-on-errors* :skip-ahead)
       (preempt-all-fns-that-stop-execution 'throw-skip-a-word-to-scan)))
    (otherwise
     (error "Unknow value for error action: ~a" keyword)))
  keyword)

(defun set-on-error-action (keyword)
  (declare (special *what-to-do-on-errors*))
  (ecase keyword
    ;; n.b. we're never trapping ecase or etypecase
    (or :error :punt :skip-ahead))
  (setq *what-to-do-on-errors* keyword))


;;;-----------------------
;;; replacement functions	
;;;-----------------------

(defun throw-abort-to-analysis-core (error-message &rest args)
  (format t "~&An error occurred:~%   ")
  (apply #'format t error-message args)
  (throw :analysis-core :abort))

(defun throw-skip-a-word-to-scan (error-message &rest args)
  (push-debug `(,error-message ,args))
  (restore-original-break-error-&-cerror-definitions)
  (braek ":stub"))


  





