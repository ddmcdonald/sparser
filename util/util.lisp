;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; Copyright (c) 2006 BBNT Solutions LLC.
;;; Copyright (c) 2010-2013 David D. McDonald

;; 11/2010 Folding in forgotten functions from original set, i.e. Lisp Machine days
;; 3/8/11 Moved out exports. 6/10/13 Tweaked tail-cons.
;; 3/21/2015 -- SBCL updates -- don't let let-with-dynamic-extent declare variables
;;  from :CL and :CL-USER (locked packages) special, e.g. don't let it declare *package*
;;  special

(in-package :ddm-util)

;;;-----------------------------------------------------------
;;;   syntactic sugar (functions that ought to be in CL)
;;;-----------------------------------------------------------

(defun d (object)
  "Alias for describe. Returns the object."
  (describe object)
  object)

(defmacro then (&body forms)
  "Helps make `if' forms self-documenting when they get complex."
  `(progn ,@forms))

(defmacro else (&body forms)
  "Helps make `if' forms self-documenting when they get complex."
  `(progn ,@forms))

(defun reintern-symbols (sexp &optional (package *package*))
  (typecase sexp
    (symbol
     (if (constantp sexp) sexp (intern (symbol-name sexp) package)))
    (cons
     (cons (reintern-symbols (car sexp) package)
           (reintern-symbols (cdr sexp) package)))
    (otherwise ;; numbers, structs, class instances, ...
     sexp)))

;;;----------
;;; from SFL
;;;----------

(defmacro defobject (name supers slots &rest options)
  "Like DEFCLASS but automatically defines initarg and accessor for each slot.
Slots specifications have the form (name value . options)."
  `(defclass ,name ,supers
     ,(loop for (name value . slot-options) in slots
            collect `(,name :initform ,value
                            :initarg ,(intern (string name) :keyword)
                            :accessor ,name
                            ,@slot-options))
     ,@options))

;;;------------------
;;; Old LispM macros
;;;------------------

(defmacro until (test retval &body body)
  `(do ()
       (,test ,retval)
     ,@body))

(defmacro dbind (lambda-list argument &body body)
  `(apply #'(lambda ,lambda-list . ,body)
	  ,argument))

(defmacro defsubst (subst-name lambda-list &body body)
  "Define an inline function."
  `(progn
     (declaim (inline ,subst-name))
     (defun ,subst-name ,lambda-list ,@body)))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun collect-special-bindings (bindings)
    "Subroutine used by the LET(*)-WITH-DYNAMIC-EXTENT macros."
    (loop for binding in bindings
          as var = (etypecase binding
                     (list (car binding))
                     (symbol binding))
          unless (string-equal (package-name (symbol-package var))
                               "COMMON-LISP") ;; ANSI CL §11.1.2.1.2
          collect var)))

(defmacro let-with-dynamic-extent (bindings &body body)
  `(let ,bindings
     (declare (special ,@(collect-special-bindings bindings)))
     ,@body))

(defmacro let*-with-dynamic-extent (bindings &body body)
  `(let* ,bindings
     (declare (special ,@(collect-special-bindings bindings)))
     ,@body))

(defmacro temporarily-inhibit-fdefine-warnings (&rest forms)
  "Temporarily inhibits fdefine warnings--just the right thing when
you're defining a function that you KNOW will be overriding some earlier
function, and you don't want the loader or evaluator to complain (the
compiler never will).

The obvious implementation
  (defmacro temporarily-inhibit-fdefine-warnings (form)
    `(let ((ccl:*warn-if-redefine* t))
       (declare (special ccl:*warn-if-redefine*))
       ,form))
doesn't work because the form is not seen to be top-level by the compiler,
which means that if it's a function definition, it won't get compiled."
  (let ((save-variable (gensym)))
    (declare (ignorable save-variable))
    `(progn
       #+ccl(setq ,save-variable ccl:*warn-if-redefine*
		   ccl:*warn-if-redefine* nil)
       #+allegro(setq ,save-variable excl:*redefinition-warnings*
		      excl:*redefinition-warnings* nil)
       ,@forms
        #+ccl(setq ccl:*warn-if-redefine* ,save-variable)
	#+allegro(setq excl:*redefinition-warnings* ,save-variable))))

;; from Zeta-Lisp:
(defmacro cond-every (&body body)
   "Executes all the clauses of a pseudo-COND that have successful tests.  
    Emulates the COND-EVERY macro of Zeta LISP"
   `(let ((cond-every%already-fired nil)
	  (cond-every%result nil))
      (ignore cond-every%already-fired cond-every%result)
      ,@(mapcar #'(lambda (clause)
		   (let ((test (car clause))
			 (body (cdr clause)))
		     `(when ,(if (eq test :always)
				 't
				 (if (eq test :otherwise)
				     '(not cond-every%already-fired)
				     test))
			(setq cond-every%already-fired t)
			(setq cond-every%result (progn . ,body))
			)))
	       body)
      cond-every%result))

;;;-----------------------------------------------------------------------------
;;; ADD1 and SUB1 -- I think these are sometimes easier to read than 1+ and 1-,
;;; especially the latter.
;;;-----------------------------------------------------------------------------

(defsubst add1 (number) "Synonym for 1+" (1+ number))
(defsubst sub1 (number) "Synonym for 1-" (1- number))

;;;--------------------------------
;;; MBUG -- trivial error handling
;;;--------------------------------

(defsubst mbug (format-string &rest arguments)
  (apply #'cerror "Continue anyway." format-string arguments))
