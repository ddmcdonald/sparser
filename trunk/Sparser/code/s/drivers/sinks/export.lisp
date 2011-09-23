;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER) -*-
;;; Copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$

;;;     File:  "export"
;;;   Module:  drivers;sinks:
;;;  version:  June 2009

;; Initiated 2/26/07
;; 3/2 Added switch to make it accumulate and wait until called for.
;; 4/27/09 Moved in to main distribution. Extended for Checkpoint Ops.
;;   Making small extensions for the richer set of objects through 6/8/09.
;; 7/1/09 Cleaned-up export in preparation for speech act-based
;;   output formatting.
;; 7/6/09 Fixed nagging error with dotted pairs in output.
;; 7/16/09 Fixed export-as-value-name-for so that category names are not
;;   exported inside quotes.
;; 8/13/09 Moving towards all output in key-value pair format, in progress,
;;   lots to clean up... elaborated through 9/4/09

(in-package :sparser)

;;;---------
;;; globals
;;;---------

(unless (boundp '*batch-salient-object-export*)
  (defparameter *batch-salient-object-export* t
    "If true, export is delayed until a call is made to 
    'export-all-salient-objects'. Otherwise the exports
    are done incrementally at the time that the treetop
    that has the salient object as its referent is handled."))

(unless (boundp '*export-in-demo-mode*)
  (defparameter *export-in-demo-mode* nil
    "When this is off, we just export the string that carries
     the pseudo-tuple information. When it's on, we're showing
     it to people who want to see more. Read in export-object."))

(unless (boundp '*export-as-return-value*)
  (defparameter *export-as-return-value* t
    "Read in export-tuple, -psi, and -individual and controls whether
     we form an sexp to be returned or print to the export-stream."))


(defvar *export-stream* *standard-output*)


(defvar *pending-salient-objects* nil
  "Holds the batch of objects. Initialized at the start
   of a run.")

(define-per-run-init-form 
    '(setq *pending-salient-objects* nil))


;;;--------------
;;; batch driver
;;;--------------

(defun export-salient-objects ()
;(format t "export-salient-objects~%")
  (if *pending-salient-objects*
    (with-output-to-string (s)
      (let ((*export-stream* s))
	(declare (special *export-stream*))
	(dolist (item *pending-salient-objects*)
	  (let ((obj (first item))
		(string (second item)))
	    (export-object-toplevel obj string)
	    (terpri s)))) ;; blank line
      s)))


;;;------------------------------
;;; incremental driver and cases
;;;------------------------------

;; This is called as a 'generic-treetop-action'
;; see Do-generic-actions-off-treetop

(defun export-bindings/recursively (edge)
;(format t "export-bindings/recursively edge: ~A~%" edge)
  (tr :exporting-referent edge)
  (let ((referent (edge-referent edge))
	(wording (string-of-words-between
		  (pos-edge-starts-at edge)
		  (pos-edge-ends-at edge))))
    (if (null referent)
      (tr :no-referent-to-export)
      (if *batch-salient-object-export*
	(push `(,referent ,wording)
	      *pending-salient-objects*)
	(export-object-toplevel referent wording)))))


;;;----------------------------------
;;; the code that does the exporting
;;;----------------------------------

(defun export-object-toplevel (obj wording-string)
;(format t "export-object-toplevel obj: ~A wording-string: ~A~%" obj wording-string)
  (tr :exporting obj)
  (when *export-in-demo-mode*
    (format *export-stream* 
	    "~&~%Recovered these tuples from this text passage:~
               ~%            \"~a\"~%" 
	    wording-string))
  (export-object obj))

#|
(defun export-object (obj)
  (cond
    ((word-p obj)
     (word-symbol obj))
    ((polyword-p obj)
     (pw-pname obj))
    ((export-function (category-of obj))
     (use-export-specialist obj))
    ((and *export-as-return-value*
	  (primitive-for-export obj))
     obj)
    (t
     (typecase obj
       (psi
	(export-psi obj))
       (individual
	(export-individual obj))
       (referential-category
	(export-referential-category obj))
       (mixin-category
	(export-mixin-category obj))
       (otherwise
	(break "Export -- unexpected type of object: ~a~%~a"
	       (type-of obj) obj))))))
|#

(defun export-object (obj)
;(format t "export-object obj: ~A~%" obj)
  (cond
    ((word-p obj)
     (string/object-as-list obj))
    ((polyword-p obj)
     (pw-pname obj))
    ((export-function (category-of obj))
     (use-export-specialist obj))
    ((and *export-as-return-value*
	  (primitive-for-export obj))
     obj)
    (t
     (typecase obj
       (psi
	(let ((top-cat
	       (lp-super-category 
		(if cl-user::*psi-2009*
		  (lp-top-lp (psi-lp obj))
		  (climb-lattice-to-top (psi-lattice-point obj))))))
	  ;(format t "super-cat: ~A~%" top-cat)
	  ;(format t "climb: ~A~%" (climb-lattice-to-top (psi-lattice-point obj)))
	  ;(format t "psi-lp: ~A~%" (psi-lattice-point obj))
	  ;(format t "climb2: ~A~%" (climb-lattice-to-top top-cat))
	  (cond
	    ((eq top-cat (category-named 'event))
	     (cons 'event (export-psi obj)))
	    ((eq top-cat (category-named 'individual))
	     (list (cons 'entity (export-psi obj))))
	    (t (export-psi obj)))
))
;	(export-psi obj))
       (individual
	(export-individual obj))
       (referential-category
	(export-referential-category obj))
       (mixin-category
	(export-mixin-category obj))
       (otherwise
	(break "Export -- unexpected type of object: ~a~%~a"
	       (type-of obj) obj))))))

(defun export-psi (psi)
;(format t "export-psi psi: ~A~%" psi)
  (let ((v+v (filter-out-cv (psi-v+v psi))))
    (if *export-as-return-value*
      (export-psi-as-return-value psi v+v)
      (let ((object-name (export-name-for psi)))
	(dolist (vv v+v)
	  (export-v+v object-name vv))))))

(defun export-v+v (name v+v)
;(format t "export-v+v name: ~A v+v: ~A~%" name v+v)
  (let ((variable (vv-variable v+v))
	(value (vv-value v+v)))
    (let ((var-name (var-name variable))
	  (name-for-value (if (null value) ;; 3/9 guts of embedded markup
			    "null"
			    (export-name-for value))))
      (export-tuple name
		    var-name 
		    name-for-value)
      (when (and value
		 (not (primitive-for-export value)))
	(export-object value)))))


(defun export-individual (i)
;(format t "export-individual i: ~A~%" i)
  (let ((bindings (indiv-binds i)))
    (if *export-as-return-value*
      (export-individual-as-return-value i bindings)
      (dolist (b bindings)
	(export-binding b)))))

(defun export-binding (b)
;(format t "export-binding b: ~A~%" b)
  (let* ((variable (binding-variable b))
	 (value (binding-value b))
	 (i (binding-body b)))
    (let ((name-for-individual (export-name-for i))
	  (var-name (var-name variable))
	  (value-name (or (primitive-for-export value)
			  (export-name-for value))))
      (export-tuple name-for-individual
		    var-name
		    value-name)
      (when (not (primitive-for-export value))
	(export-object value)))))

(defun export-referential-category (c)
;(format t "export-referential-category c: ~A~%" c)
  (export-as-value-name-for c))

(defun export-mixin-category (c)
;(format t "export-mixin-category c: ~A~%" c)
  (export-as-value-name-for c))

;;--- return-value versions

(defun export-psi-as-return-value (psi v+v)
;(format t "export-psi-as-return-value psi: ~A v+v: ~A~%" psi v+v)
  `(,(export-as-value-name-for psi)
     ,@(mapcar #'export-v+v-as-return-value v+v)))

#|
(defun export-v+v-as-return-value (v+v)
  (let ((variable (vv-variable v+v))
	(value (vv-value v+v)))
    (if (primitive-for-export value)
     `(,(export-as-value-name-for variable) 
        ,@(export-object value))
     `(,(export-as-value-name-for variable) 
	(,@(export-object value))) )))
|#

#|
(speech-act (type request)
	    (content (event (type get)
			    (location (type relative-location)
				      (place (object (type car)))
				      (functor (type spatial-orientation)
					       (realization in))))))
|#

(defun export-v+v-as-return-value (v+v)
  ;;(format t "export-v+v-as-return-value v+v: ~A~%" v+v)
  (unless (typep v+v 'category+value)
  (let ((variable (vv-variable v+v))
	(value (vv-value v+v)))
;(if (eq 'psi (type-of value)) (format t "~A~%" (lp-super-category (climb-lattice-to-top (psi-lattice-point value)))))
#|
    (if (primitive-for-export value)
	(cons (export-as-value-name-for variable) (export-object value))
	(cons (export-as-value-name-for variable) (list (export-object value))))))
|#
    ;(format t "export-v+v-as-return-value v+v: ~A var: ~A val: ~A~%" v+v variable value)
    ;(format t "var: ~A var type: ~A~%" variable (type-of variable))
    ;(format t "val type: ~A val type: ~A~%~%" value (type-of value))
    ;(format t "### var details: ~A~%" (d variable))
    ;(format t "### val: ~A type: ~A d: ~A~%" value (type-of value) (d value))
    (cond
      ;((eq 'content (var-name variable)) (list (export-as-value-name-for variable) (export-object value)))
      ((eq 'psi (type-of value)) 
       (if (and (eq 'content (var-name variable))
		(eq (category-named 'event)
		    (if cl-user::*psi-2009*
		      (lp-super-category (lp-top-lp (psi-lp value)))
		      (lp-super-category (climb-lattice-to-top (psi-lattice-point value))))))
	   (list (export-as-value-name-for variable) (export-object value)) 
	   (cons (export-as-value-name-for variable) (export-object value))))
      ((eq 'word (type-of value)) 
       (list (export-as-value-name-for variable)
	     (car (export-object value))))
      ((and (eq 'individual (type-of value)) 
	    (eq nil (var-value-restriction variable))
	    (not (eq 'location (var-name variable))))  ;; kludge to avoid inappropriate "entity" -- needs more work
       (list (export-as-value-name-for variable) (cons 'entity (export-object value))))
      ((and (eq nil (var-value-restriction variable))
	    (not (eq 'location (var-name variable))))  ;; kludge to avoid inappropriate "entity" -- needs more work
       (list (export-as-value-name-for variable) (export-object value)))
      ((eq (category-named 'individual) 
	   (var-value-restriction variable)) 
       (list (export-as-value-name-for variable) (export-object value)))
      (t 
(cons (export-as-value-name-for variable)
	       (export-object value)))))))
#|
    (if (primitive-for-export value)
     `(,(export-as-value-name-for variable) 
        ,@(export-object value))
     `(,(export-as-value-name-for variable) 
	(,@(export-object value))) )))
|#

#|
(speech-act (type request)
	    (content ((type get)
		      (location (type relative-location)
				(place (type car))
				(functor (type spatial-orientation)
					 (realization in))))))
|#  
  
(defun export-individual-as-return-value (i bindings)
;(format t "export-individual-as-return-value i: ~A bindings: ~A~%" i bindings)
;(cons 'entity
  `(,(list 'type (export-as-value-name-for i))
     ,@(mapcar #'export-binding-as-return-value bindings)))
;)

#|
(defun export-binding-as-return-value (b)
;(format t "export-binding-as-return-value calling export-object~%")
  (let ((variable (binding-variable b))
	(value (binding-value b)))
    (if (primitive-for-export value)
	(export-object value)
	(export-object value)) ))
|#

(defun export-binding-as-return-value (b)
;(format t "export-binding-as-return-value b: ~A~%" b)
(list 'realization
  (let ((variable (binding-variable b))
	(value (binding-value b)))
    (if (word-p value)
	(car (export-object value))
	(export-object value)) ))
)

;;--- common final path for bindings and V+V

(defun export-tuple (name-for-individual
		     name-for-variable
		     name-for-value)
;(format t "export-tuple individual: ~A variable: ~A value: ~A~%" name-for-individual name-for-variable name-for-value)
  (if *export-as-return-value*
    `(,name-for-variable ,name-for-value)
    (format *export-stream* "~&     [~a, ~a, ~a]~%"
	    name-for-individual
	    name-for-variable
	    name-for-value)))


;;;---------
;;; go-fers
;;;---------

#|
(defun export-as-value-name-for (obj)
  (typecase obj
    (psi
     (let ((category (category-lattice-node-belongs-to 
		      (psi-lattice-point obj))))
       (export-name-as-category category)))
    (individual
     (let ((category (car (indiv-type obj))))
       (export-name-as-category category)))
    (lambda-variable
     (var-name obj))
    (referential-category
     (cat-symbol obj))
    (mixin-category
     (cat-symbol obj))
    (otherwise
     (break "Unexpected type: ~a~%~a"
	    (type-of obj) obj))))
|#

(defun export-as-value-name-for (obj)
;(format t "export-as-value-name-for obj: ~A type: ~A~%" obj (type-of obj))
  (typecase obj
    (psi
     (let ((category (category-lattice-node-belongs-to 
		      (psi-lp obj))))
       (if (or (eq category (category-named 'question)) (eq category (category-named 'inversion)) (eq category (category-named 'acknowledgement)) (eq category (category-named 'greeting))) ;; these are speech-act types which we don't want to confuse with types at the same output level
	   (list 'form (export-name-as-category category))
	   (list 'type (export-name-as-category category)))))
    (individual
     (let ((category (car (indiv-type obj))))
       (export-name-as-category category)))
    (lambda-variable
     ;(format t "##### ~A ~A ~A~%" obj (var-binding-sites obj) (var-name obj))
     ;(format t "LW: ~A~%" (var-value-restriction obj))
     (var-name obj))
    (referential-category
     ;(format t "##### ~A~%" (d obj))
     (export-name-as-category obj))
    (mixin-category
     (export-name-as-category obj))
    (otherwise
     (break "Unexpected type: ~a~%~a"
	    (type-of obj) obj))))

(defun export-name-for (obj)
;(format t "export-name-for obj: ~A~%" obj)
  (typecase obj
    (psi
     (let ((category (category-lattice-node-belongs-to 
		      (psi-lattice-point obj)))
	   (id (psi-id obj)))
       (name-as-category-and-id category id)))
    (individual
     (let ((category (car (indiv-type obj)))
	   (id (indiv-id obj)))
       (name-as-category-and-id category id)))
    (symbol obj)
    (otherwise
     (break "Unexpected type: ~a~%~a"
	    (type-of obj) obj))))

;; this is the wrong level to do it at
;; need to wrap at higher level
(defun export-name-as-category (category)
;(format t "export-name-as-category category: ~A~%" category)
;(list 'type
  (intern (symbol-name (cat-symbol category))
	  (find-package :sparser))
;)
)
#|
(speech-act (type request)
	    (content ((type get)
		      (location ((type relative-location) 
				 (place ((type car)))
				 (functor ((type spatial-orientation) 
					   in)))))))
|#

(defun name-as-category-and-id (category id)
;(format t "name-as-category-and-id category: ~A id: ~A~%" category id)
  (intern (string-append (symbol-name (cat-symbol category))
			 "-" (format nil "~a" id))
	  (find-package :sparser)))


(defun primitive-for-export (obj)
;(format t "primitive-for-export obj: ~A~%" obj)
  (typecase obj
    (number obj)
    (symbol obj)
    (string obj)
    (polyword obj)
    (word (word-pname obj))
    ((or psi
	 individual
	 referential-category
	 mixin-category)
     nil)
    (otherwise
     (break "Is this a primitive when exporting? ~a~%~a"
	    (type-of obj) obj))))


;;;----------------------------------------
;;; an escape to allow type-specific cases
;;;----------------------------------------

(defparameter *categories-to-export-functions* (make-hash-table))

(defun define-export-routine (category name-of-function)
  (setf (gethash category *categories-to-export-functions*)
	name-of-function))

(defun export-function (category)
  (gethash category *categories-to-export-functions*))
  
(defun use-export-specialist (obj)
  (let ((fn (export-function (category-of obj))))
    (unless fn
      (break "Expected ~a to have an export specialist" obj))
    (funcall fn obj)))


;;;--------
;;; traces
;;;--------

(defparameter *trace-bindings-export* nil)

(defun trace-export ()
  (setq *trace-bindings-export* t))

(defun untrace-export ()
  (setq *trace-bindings-export* nil))

(deftrace :exporting-referent (edge)
  (when *trace-bindings-export*
    (trace-msg "Exporting the referent of ~a" edge)))

(deftrace :exporting (obj)
  (when *trace-bindings-export*
    (trace-msg "Exporting the referent of ~a" obj)))

(deftrace :no-referent-to-export ()
  (when *trace-bindings-export*
    (trace-msg "  But the edge has no referent!")))


