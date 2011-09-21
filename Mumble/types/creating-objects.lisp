;;; -*- Mode: LISP; Package: MUMBLE; Syntax: Common-lisp; Base: 10-*-
;;; $Id: creating-objects.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;;  MUMBLE-86:  types; creating-objects

;;; Copyright (C) 1985, 1986, 1987, 1988, 1989  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)



;################################################################
;     The routine that creates an object of a given type
;################################################################
#|
   Every object in Mumble (with the exception of some bootstrapping to
get the type facility going) is brought into existance via some special
form: "Define-<type>".   These macros all make use of a common routine
for actually creating the objects, Create-and-catalog.

...The goal of this scheme is to miniminze the implementation-specific
parts as much as possible: the fact that objects are implemented as
structures or vectors or atoms&plists should for the most part be invisible.

In keeping with this, we evaluate the expressions that determine the value
a field gets //above// the call to Create-and-catalog -- it should be
dealing exclusively with values and never have to call Eval itself.  The
general form for a call is:

    (create-and-catalog  <symbol that names the object to be created>
                         <symbol that names the type the object is to be>

       { <symbol naming a field in such a type>
         <expression --evaluated at the time of the call-- whose value
          is to be the value of the field>
         } *
       )

  e.g.  (create-and-catalog  name 'tree-family
	  'name  name
	  'all-choice-characteristics  ()
	  'composite-roles_to_choices_mapping  ()
	  'rc-parameters  ,parameters
	  'rc-choices  choices)
|#


(defun create-and-catalog  (symbol type-name &rest tags-and-values)
  "A subroutine of all the object-defining routines. If the symbol already is
   associated with an object of the designated type, that object is reused;
   otherwise a new object is brought into existence by Create-object."

  (let ((obj-type (mtype type-name))
	(object   (mumble-value symbol type-name)))
    (when (null obj-type)
      (mbug "No definition available for the type ~a" type-name))
    (if (assoc 'name (setters obj-type))
      (then
        (push symbol tags-and-values)
        (push 'name tags-and-values))
      (break "This type does not include a type field: ~a" type-name))
    (if (null object)
      ;; never saw it before
      (then (setq object (create-object obj-type tags-and-values))
            (link-name-to-object symbol object obj-type))
      ;; redefinition of existing object
      (else 
        (set-fields object tags-and-values)))
    
    ;; Used to only do this when we'd never seen it before, but we want to
    ;; record each definition if it's defined more than once, especially 
    ;; since the last definition wins, while it used to be that the first
    ;; call to link-for-meta-point won.  
    (link-for-meta-point symbol type-name)

    ;;check whether to postprocess now or to wait until everything's loaded
    (unless *loading-whole-system*
      (postprocess object))
    object))


(defun create-object (type tags-and-values)
  "Uses the constructor-function for the type to create a new (empty) object
   of the designated type, then fills the object's fields according to the
   tags-and-values."
  (let ((new-object (funcall (minimal-construction-function type))))
    (set-fields new-object tags-and-values)
    new-object))

(defun set-fields (object tags-and-values)
  (setf (postprocessed? object) nil)
  (let* ((object-type   (type-of object))
	 (setter-alist  (setters (type-named object-type))))
    (do ((field-name        (car  tags-and-values)  (car  tags-and-values))
	 (field-value       (cadr tags-and-values)  (cadr tags-and-values))
	 (tags-and-values   (cddr tags-and-values)  (cddr tags-and-values)))
	((null field-name))
      (let ((field-setter  (cdr (assoc field-name setter-alist))))
	(if field-setter
	    (funcall field-setter object field-value)
	    (mbug "no field ~s is defined for type ~s." field-name object-type))))))


(defun quote-plist-values (plist)
  (let ( new-list )
    (do* ((tag (first plist) (first rest))
          (value (second plist) (second rest))
          (rest (cddr plist) (cddr rest)))       
         ((null tag))
      (push tag new-list)
      (push `',value new-list))
    (nreverse new-list)))

(defun quote-everything (list)
  (let ( new-list )
    (dolist (item list)
      (push `',item new-list))
    (nreverse new-list)))


(defun link-for-meta-point (name type)  
;;mm 11/91  what's this doing now--anything??
  (declare (ignore name type))
  #+ignore
  (let ((defsym   (mumble-composite-symbol "define-" type)))
    (record-source-file-name name defsym t)
    ))



;################################################################
;                         "mumble-value"
;################################################################
;
; Using the value-cell as the link between a symbol and the object it
; denotes is too fragile since it may be easily clobbered by name-clash
; with some variable.  So, we "harden" the link by including a property,
; MUMBLE-SYMBOL,
; with the symbol and an alist of symbols to objs and visa versa with each type.
; We keep the value-cell link as well though for its convenience in debugging.
;
; Symbols are allowed to denote several objects as long as they are of different
; types.  The is done by permitting the value of the Mumble-symbol property to
; be a LIST of objects.
;

(defun type-named (symbol)
  (or (mumble-value symbol 'mtype)
      (mbug "Request for a non-existent type - ~A" symbol)))

(defparameter *worry-about-overloaded-symbols?* t
  "If this constant it true, then we scan the whole set of possible values for
a symbol and check each to see if the type is compatible with the one sought.
If there is more than one compatible value, we signal an error.  If this 
constant is false, we just take the first compatible value, which probably means 
the one that was loaded last.")

(defun mumble-value (symbol type-name &optional (complain-about-overloading? t))
  "Like symbol-value, except that we overload the value of symbols with objects 
of different types, so the second argument is the type, such as 'slot-label or
'label.  It can even be a type which denotes multible mumble types, such as
'(or tree-family phrase).  The type hierarchy is dealt with by using TYPEP.
If no value of a compatible type is found, this function returns nil."
  (check-type symbol    symbol)
  (let ((objects (get symbol 'mumble-symbol)))
    (cond ((listp objects)
	   (if *worry-about-overloaded-symbols?*
	       (flet ((compatible? (possible-value)
				   (typep possible-value type-name)))
		 (let ((compatible-values  (remove-if-not #'compatible? objects)))
		   (case (length compatible-values)
			 (0  nil)
			 (1  (car compatible-values))
			 (t  (if complain-about-overloading?
				 (mbug "Symbol ~s is overloaded; ~
                                    Values ~s are all of type ~s"
				       symbol compatible-values type-name))
			     (car compatible-values)))))
	       (car (member type-name objects
			    :test #'(lambda (type obj) (typep obj type))))))
	  ((typep objects type-name)
	   objects)
	  (t nil))))

(defun mumble-values (name type-names)
  "Returns a list of mumble-values, one for each type that has a value under 
that name.  For instance, (mumble-values 'sue '(word tree-family phrase)),
might return (#<WORD SUE> #<tree-family SUE>).  Note that the result is only two 
elements long because there is no phrase named 'sue."
  (mapcan #'(lambda (type-name)
	      (let ((v  (mumble-value name type-name)))
		(if v (list v) nil)))
	  type-names))



;################################################################
;   Adding objects to the system or redefining existing ones
;                    setting the links
;################################################################
;Links set:
;   1. value(name(object))  is set to the object
;   2. "mumble-symbol" property of the name includes this object
;   3. it's included in the list of MEMBERS of the type
;   4. obj is in the global list "*mumble-symbols*"

(defparameter *mumble-symbols* nil)

(defun link-name-to-object  (name     ;symbol
			     object   ;the structure that the definition created
			     obj-type ;the type of that structure
			     )
  (when (and (symbolp name)
	     (not (keywordp name))
	     (or (not (boundp name))
		 (mumblep (symbol-value name))))
    (set name object))

#|(let* ((storage-type-symbol (storage-type obj-type))
         (defining-package (progn (unless (symbolp storage-type-symbol)
                                    (break "storage-type-symbol is not a symbol"))
                                  (symbol-package storage-type-symbol)))
         (neutral-name (intern (package-name defining-package) (find-package :keyword)))
         (inherited-packages
          (cdr (member neutral-name
                       cl-user::*inheritance-line-of-user-packages-by-name*
                       :test #'eq))))

    (when inherited-packages
      (let ( inherited-package  symbol )
        (dolist (package-name inherited-packages)
          (setq inherited-package (find-package package-name))
          (setq symbol (find-symbol (symbol-name name) inherited-package))
          (when symbol
            (unexport symbol inherited-package)))))

    (if (eq defining-package (symbol-package name))
      (export name defining-package)
      (format t "~&~%---- not exporting ~a which is in ~a" 
              name (symbol-package name)))) |#

  (let* ((catalog (mcatalog obj-type))
	 (members (members catalog)))
    (if (not (get name 'mumble-symbol))  ;it's a new object
      (then
        (setf (get name 'mumble-symbol) object)
        (setf (members catalog) (cons object members))
        (setf (name object) name))
      (else 
        ;Edit its "mumble-symbol" property
        (let ((old-value (get name 'mumble-symbol))
              (old-obj))
          (if (not (listp old-value))
            (then
              ;this symbol is associated with only one type
              (cond ((typep old-value (type-of object))
                     ;simple redefinition case
                     (setq old-obj (get name 'mumble-symbol))
                     (setf (get name 'mumble-symbol) object))
                    (t    ;case of a newly ambiguous symbol
                     (setf (get name 'mumble-symbol) (list object old-value))
                     (setf (members catalog) (cons object members))
                     )))
            (else ;check whether it's an association with a new type
              ;versus an updating of one of its known types.
              (let ((new-type (type-of object)))
                (mapcar #'(lambda (obj)
                            (cond ((typep obj new-type)
                                   (setq old-obj obj))))
                        old-value)
                (cond ((null old-obj)
                       (setf (get name
                                  'mumble-symbol)
                             (cons object old-value))
                       (setf (members catalog) (cons object members)))
                      (t (setf (get name
                                    'mumble-symbol)
                               (subst object old-obj old-value)))))))))))

  (unless (member name *mumble-symbols*)
    ;; add it to the list of all symbols ever defined as objects
    (push name *mumble-symbols*))

  object)




;################################################################
;                        mumble-object
;################################################################
;
; This is a "safe" definition -- not necessarily an efficient one
;

(defun mumblep  (object)
  (member (type-of object)
	(members (mcatalog (mtype 'mtype)))))
	;////include check against lists of owned symbols


;;; this stuff was moved from ddm's >np-bundles>return-or-create-object-of-type
;;; 21-Apr  PS

(defun find-or-create (object-name type-name)
  (or (mumble-value object-name type-name)
      (create-and-catalog object-name type-name
	    'name object-name)))

