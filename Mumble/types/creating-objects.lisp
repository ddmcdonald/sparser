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

(defun create-object (type tags-and-values)
  "Uses the constructor-function for the type to create a new (empty)
object of the designated type, then fills the object's fields according
to the tags-and-values."
  (let ((new-object (funcall (minimal-construction-function type))))
    (set-fields new-object type tags-and-values)
    new-object))

(defun create-and-catalog (name type-name &rest tags-and-values &aux
                           (tags-and-values `(name ,name ,@tags-and-values)))
  "If the name is already associated with an object of the designated type,
that object is reused; otherwise a new object is brought into existence by
create-object."
  (let ((object (mumble-value name type-name))
	(object-type (mtype type-name)))
    (if object
      (then ;; redefinition of existing object
        (set-fields object object-type tags-and-values))
      (else ;; never saw it before
        (setq object (create-object object-type tags-and-values))
        (link-name-to-object name object object-type)))
    (unless *loading-whole-system*
      (postprocess object))
    object))

(defun set-fields (object object-type tags-and-values)
  (loop initially (setf (postprocessed? object) nil)
        for (field-name field-value) on tags-and-values by #'cddr
        do (funcall (or (cdr (assoc field-name (setters object-type)))
                        (mbug "No field ~s is defined for type ~s."
                              field-name object-type)
                        (constantly nil))
                    object field-value)))


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
; types. This is done by making the value of the Mumble-symbol property a LIST
; of objects.

(defun mumble-value (symbol type-name &optional (complain-about-overloading? t))
  "Like symbol-value, except that we overload the value of symbols with objects 
of different types, so the second argument is the type, such as 'slot-label or
'label.  It can even be a type which denotes multible mumble types, such as
'(or tree-family phrase).  The type hierarchy is dealt with by using TYPEP.
If no value of a compatible type is found, this function returns nil."
  (let ((values (remove-if-not #'(lambda (value) (typep value type-name))
                               (get symbol 'mumble-symbol))))
    (when (and (cdr values) complain-about-overloading?)
      (mbug "Symbol ~s is overloaded: values ~s are all of type ~s."
            symbol values type-name))
    (car values)))

(defun mumble-values (name type-names)
  "Returns a list of mumble-values, one for each type that has a value under 
that name.  For instance, (mumble-values 'sue '(word tree-family phrase))
might return (#<WORD SUE> #<tree-family SUE>).  Note that the result is only
two elements long because there is no phrase named 'sue."
  (mapcan #'(lambda (type-name)
	      (let ((v (mumble-value name type-name)))
		(if v (list v) nil)))
	  type-names))



;################################################################
;   Adding objects to the system or redefining existing ones
;                    setting the links
;################################################################

(defparameter *mumble-symbols* nil
  "Names of all the objects created.")

(defparameter *bad-names* nil
  "Inappropriate names for Mumble objects.")

(defun link-name-to-object (name object object-type)
  "Links set:
1. value(name(object)) is set to the object
2. the mumble-symbol property of the name includes this object
3. the object is included in the list of members of the type
4. the object is in the global list *mumble-symbols*"
  (unless (or (constantp name)
              (and (eq (symbol-package name) (find-package :common-lisp))
                   (push name *bad-names*)))
    (set name object))
  (setf (name object) name)
  (pushnew object (get name 'mumble-symbol))
  (pushnew object (members (mcatalog object-type)))
  (pushnew name *mumble-symbols*)
  object)
