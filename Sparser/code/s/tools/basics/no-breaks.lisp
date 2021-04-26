;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(sparser LISP) -*-
;;; copyright (c) 1990-1991,2011-2016 David D. McDonald -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:  "no breaks"
;;;    Module:   "tools:basics"
;;;   Version:   June 2016

;; Original version 2/1991 for CTI.
;; 7/22/09 brought package out of the dark ages. 10/8/09 Added on-error setup.
;; (2/8/11) Added more conditionalization so will load in Clozure as well as ACL.
;; (2/17/12) Marking special variables. 12/8 Copied the functions for -allegro 
;;  versions. 
;; (5/1/15) Trying it out. 5/15/15 Shadow and convert to call to error works.
;;  CCL won't let you redefine break (why did MCL permit it?), so the better
;;  treatment is to get our own symbol for break and define it as a call to error
;;  that we can trap with an error handler.
;; (6/19/15) Documented the motivation.

(in-package :sparser)

#| There are handlers for calls to error and related conditions
that catch the condition and let us continue, for instance
error-trapped-scan-and-core used in document parsing. 
   But break is different and will always invoke the error-handling
machinery. Unless we take steps, it will always blow through any error
handler. That what this code is all about. We make our own version of
'break' by shadowing the definition we get fom the Lisp and use a
function we define here in the :sparser package. 
   There are functions here to swtich back and forth between definitions
or simply use a break function with a different name. N.b. the only real
practical difference between a call to break and one to error is that
you can continue from a break (c.f. cerror). 
|#
;;;------------------------------
;;; take over the break function
;;;------------------------------

(defvar *break-policy* :error
  "Provides an easily viewed 'status' for whether we are
 treating break as an error (:error), of as a conventional
 break that can be continued (:break).")

#| N.b. When we load Sparser we're using this error version of break. |#
(defun break (&optional (format-string "Break.") &rest args)
  (apply #'error format-string args))

(defun revert-to-regular-break ()
  "Change the definition of sparser::break to the regular one
   taken from the Lisp."
  (setq *break-policy* :break)
  (defun sparser::break (&optional (format-string "Break.") &rest args)
    (apply #'cl:break format-string args)))

(defun revert-to-error-break ()
  "Switch back to treating break as an error call."
  (setq *break-policy* :error)
  (defun sparser::break (&optional (format-string "Break.") &rest args)
    (apply #'cerror "Continue." format-string args)))

(defun lsp-break (&optional (format-string "Break.") &rest args)
  "Alternative with a different name that will always break."
  (apply #'cl:break format-string args))

;;;-----------------------------------
;;; globals for saving the old values
;;;-----------------------------------

(defvar *original-fvalue-of-break*
  #+allegro (symbol-function 'lisp:break)
  #-allegro (symbol-function 'break))
             
(defvar *original-fvalue-of-error*
  #+allegro (symbol-function 'lisp:error)
  #-allegro (symbol-function 'error))

(defvar *original-fvalue-of-cerror*
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
#-(or allegro ccl)
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
#-(or allegro ccl)
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
  (break ":stub"))


  





