;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: auto-gen.lisp 105 2007-08-06 21:49:38Z dmcdonal $
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved

;; initiated 3/25/07

(in-package :ddm-util)


(defparameter *package-for-auto-gen-symbols* nil)

(defun set-auto-gen-symbol-package (pkg)
  (unless (or (typep pkg 'package)
	      (and (symbolp pkg)
		   (find-package pkg)))
    (break "There doesn't appear to be a package named ~a" pkg))
  (setq *package-for-auto-gen-symbols* pkg))



(defparameter *data-structure-for-auto-gen* :defstruct)


;;;=========== automatically generating structs ===========
#|

 (instantiate-type (lexicalized-phrase
		   (#:lp- )
		   ("#<lp ~a ~a ~a>"
		    (lp-name o)
		    (lp-expression o)
		    (indexed-object-index o)))
  (name)
  (phrase)
  (parameter-value-pairs)
  (open-parameters))

|#


(defmacro instantiate-type (name-etc &body property-info)
  `(instantiate-type/expr ',name-etc ',property-info))

(defun instantiate-type/expr (name-etc property-info)
  (let* ((name (intern (symbol-name (first name-etc))
		      *package-for-auto-gen-symbols*))

	 (struct-data (second name-etc))
	 (conc-symbol (first struct-data))
	 (super-class (or (second struct-data)
			  'indexed-object))

	 (print-data (third name-etc))
	 (print-string (first print-data))
	 (print-obj-var (second print-data))
	 (print-args (cddr print-data)))

    (case *data-structure-for-auto-gen* 
      (:defstruct
	(let* ((slot-names
		(mapcar #'(lambda (slot-exp)
			    (intern (symbol-name (car slot-exp))
				    *package-for-auto-gen-symbols*))
			property-info))
	       (print-lambda `(lambda (,print-obj-var
				       stream depth)
				(declare (ignore depth))
				(format stream ,print-string
					,@print-args)))
	       (form `(defstruct (,name
				  (:conc-name ,conc-symbol)
				  (:include ,super-class)
				  (:print-function
				   ,print-lambda))
			,@slot-names)))
	  (eval form))
	(let* ((table-string (string-append '#:*symbols-to- name "*"))
	       (table-symbol (intern table-string
				     *package-for-auto-gen-symbols*))
	       (table-def `(defparameter ,table-symbol (make-hash-table)))
	       (accessor-fn-name 
		(intern (string-append name '#:-named)
			*package-for-auto-gen-symbols*))
	       (access-fn `(defun ,accessor-fn-name (symbol)
			     (gethash symbol ,table-symbol)))
	       (registration-fn-name
		(intern (string-append '#:register- name)
			*package-for-auto-gen-symbols*))
	       (reg-fn `(defun ,registration-fn-name (symbol obj)
			  (setf (indexed-object-index obj) (index-object obj))
			  (setf (gethash symbol ,table-symbol) obj))))
	  (eval table-def)
	  (eval access-fn)
	  (eval reg-fn)))

      (otherwise 
       (break "Unknown auto-gen-data-structure: ~a"
	      *data-structure-for-auto-gen* )))))


;;--- exports from this file

(export '(set-auto-gen-symbol-package
	  *data-structure-for-auto-gen*
	  instantiate-type)
	(find-package :ddm-util))
