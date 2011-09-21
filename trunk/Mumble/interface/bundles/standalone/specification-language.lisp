;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id$

;;; MUMBLE-86: >interface>stand-alone> specification-language
;;;
;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)

;#################################################################
;        INTERFACE LANGUAGE
;#################################################################

#|
The following code defines the syntax of the standalone interface.  The 
standalone interface is how we test Mumble when we don't have an actual
planner feeding Mumble actual realization-specifications.  Consequently, we 
want a little help in consing up fake realization specifications.  What we 
have done is define a small notation using s-expressions, which will then be 
translated into the appropriate Mumble objects.  DEF-DEMO-RSPEC defines a 
function which is the demo and that function calls CREATE-MESSAGE on an 
s-expression (the body of the DEF-DEMO-RSPEC) as the first step in running 
a demo (which means we always get fresh rspecs even when a demo is run more
than once).  The translation is accomplished by the following code, and 
therefore it is this code which defines the syntax of the standalone interface.

1. Words are denoted by strings:  "Soleil"

2. Pronouns are denoted by symbols:  first-person-singular

3. Kernel Specifications are denoted by lists:  (name &rest args)
NAME is the name of the realization function to use, and args can be any 
specification, including words, pronouns, kernels and bundles.

4. Bundle Specifications are also denoted by lists:  
(bundle-type &key head-specification accessories further-specifications)
They can be distinguished from Kernels because the car must be the name
of a bundle-type, such as discourse-unit or general-np.
Depending on the bundle-type, these keyword arguments may be semantically 
optional.  They are all optional as far as the syntax of the standalone 
interface cares.

Because of the flat plist style of these, the accessories and the 
further specifications must be encloses in parentheses.  For example:

(general-np :head-specification <spec>
	    :accessories (:number singular :gender male ...)
	    :further-specifications (fspec1 fspec2 ...))

5. Further Specifications are sublists of the further-specifications list of
a bundle.  Their syntax is pure plist:  
(&key specification attachment-function related-to)
The specification is required; the other two are optional.

In addition, the standalone interface provides two specially interpreted symbols:
*self* and *head*.  While translating the further specifications of a bundle, 
these symbols are bound to the bundle itself and to the head of the bundle,
respectively.  This is done because s-expressions are trees, and therefore you
cannot have sublists refer to the list itself or parts of the list.

Along this line, the standalone interface also guarantees that s-expressions
which are EQUAL will result in specifications which are EQ.  Without this 
feature, there would be no way to have an rspec appear more than once in a
demo message, which is clearly something we need to be able to do.  For instance,
the :wh accessory needs to refer to some specification in the head of the bundle.
|#

(defvar *rspec-alist* nil
  "This is how we guarantee that EQUAL sexps will be EQ specifications.  We
associate sexps with specifications and check this association list before
creating a new specification.")

(defun create-message  (list-of-rspec-sexps)
  (declare (special *rspec-alist*))
  "the main function to translate a demo sexp into a real message."
  (setq *rspec-alist* nil)
  (mapcar #'translate-specification list-of-rspec-sexps))

(defun translate-specification (spec)
  (declare (special current-bundle))
  (flet ((list-of-specs? (s)
            (and (listp s) (listp (car s))))
	 (bundle? (s)
	    (and (consp s)
		 (symbolp (car s))
		 (mumble-value (car s) 'bundle-type))))

    (cond ((list-of-specs? spec)
	   (mapcar  #'translate-specification spec))
	  ((eq spec '*head*)
	   (head current-bundle))
	  ((eq spec '*self*)
	   current-bundle)
	  ((stringp spec)
	   (word-for-string spec))
	  ((symbolp spec)
           (pronoun-named spec))
	  ((earlier-mention spec))
	  ((bundle? spec)
	   (translate-bundle-specification spec))
	  ((consp spec)
	   (translate-kernel-specification spec))
	  (t
	   (mbug "~s cannot be translated into a specification." spec)))))


(defun translate-kernel-specification (kernel-sexp)
  (dbind (rfun-name &rest args) kernel-sexp
    (let ((rspec  (make-kernel-specification
		    :realization-function
		       (translate-realization-function rfun-name)
		    :arguments            
                       (mapcar #'translate-specification args))))
      (add-mention kernel-sexp rspec)
      rspec)))

(defun translate-bundle-specification (bundle-sexp)
  (dbind 
    (name &key head accessories further-specifications) 
    bundle-sexp
    (let* ((btype (bundle-type-named name))
           (head-spec (translate-specification head))
           (current-bundle (make-bundle-specification
                            :bundle-type       btype
                            :head              head-spec
                            :underlying-object (gentemp "S") )))
      (declare (special current-bundle))
      (add-mention bundle-sexp current-bundle)
      (when accessories
        (setf (accessories current-bundle) (translate-accessories accessories btype)))
      (when further-specifications
        (setf (further-specifications current-bundle) 
              (mapcar #'translate-further-specification further-specifications)))
      current-bundle)))

(defun translate-further-specification (fspec-sexp)
  ;; further-specifications appear as just a simple plist, with two keys:  
  ;; :specification, and :attachment-function.  The latter can be optional 
  ;; (depending on the bundle-type and the attachment function).
  (dbind (&key specification attachment-function) fspec-sexp
    (make-further-specification
      :specification       (translate-specification specification)
      :attachment-function (translate-attachment-function attachment-function))
    ))

(defun translate-realization-function (sexp)
  "Checking for overloading doesn't work in this function because of inheritance
in the type system.  For instance, 
    (mumble-value 'chase 'curried-tree-family) => #<CURRIED-tree-family CHASE> 
AND (mumble-value 'chase 'tree-family)         => #<CURRIED-tree-family CHASE> 
So, the resulting list, mvalues, will be 2 elements long, and both elements are
identical.  Have to think about the right way to remedy this. ///"
  (if (symbolp sexp)
      (let ((mvalues  (mumble-values sexp '(curried-tree-family
					     tree-family
					     single-choice))))
	(case (length mvalues)
	  (0  (error "~s is not the name of a known realization function." sexp))
	  (1  (car mvalues))
	  (t  (comment
		(error "The realization function named ~s, could be any of ~s"
		       sexp mvalues))
	      (car mvalues))))
      (error "~s should be a symbol, the name of a Mumble realization function."
	     sexp)))

(defun translate-attachment-function (sexp) 
  (cond ((null sexp)
	 ;; can be NIL in the case of a next sentence
	 nil)
	((symbolp sexp)
	 (let ((mvalues
		 (mumble-values sexp '(single-attachment-choice
					attachment-class
					attachment-point))))
	   (case (length mvalues)
	     (0  (error "~s is not the name of a known attachment function."
			sexp))
	     (1  (car mvalues))
	     ;;no checking for overloading here (mm 10/23/88)
	     ;;i don't really see the need for it. ordering of
	     ;;list above is am implicit preference
	     (T (car mvalues) ))))
	(T 
	 (error "~s should be a symbol, naming a Mumble attachment function."
		sexp))))

(defun translate-accessories (raw-accessory-list the-bundle-type)
  (check-type the-bundle-type bundle-type)
  (let ((raw          raw-accessory-list)
	(assoc-list   nil))
    (do ()
	((null raw))
      (let* ((ac-type    (accessory-type-named (pop raw)))
	     (ac-value   (and (possible-values ac-type)
			      (translate-accessory-value (pop raw) ac-type))))
	(apush ac-type ac-value assoc-list)))
    assoc-list))



(defun translate-accessory-value (value-sexp ac-type)
  (check-type ac-type accessory-type)
  (case (name ac-type)
	(:tense-modal
	 (if (stringp value-sexp)
	     (word-for-string value-sexp)
	     (accessory-value-for-type value-sexp ac-type)))
	(:conjunction
	 ;; value is the name of a label.  Mapped when realizing the bundle.
	 value-sexp)
	((:wh :wh-adj :given :purpose-clause-object)
	 (translate-specification value-sexp))
	(otherwise
	 (accessory-value-for-type value-sexp ac-type))))


(defun accessory-value-for-type (value-sexp ac-type)
  (let ((av  (accessory-value-named value-sexp)))
    (if (member av (possible-values ac-type))
	av
	(mbug "~s not allowed as the value of ~s" av ac-type))))

;;; ============================================================================


(defun earlier-mention (sexp)
  "The function which checks for earlier mentions of specification"
  (cdr (assoc sexp *rspec-alist* :test #'equal)))

(defun add-mention (sexp value)
  (setf *rspec-alist* 
        (add-association sexp value *rspec-alist*)))

