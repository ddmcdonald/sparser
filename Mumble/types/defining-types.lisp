;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE -*-
;;; $Id: defining-types.lisp 233 2009-07-09 15:20:50Z dmcdonal $

;;;  MUMBLE-86:  types; defining-types

;;; Copyright (C) 1989-1999, 2010 David D McDonald
;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC.

(in-package :mumble)

; [2011/12/14:ddm] Fixing up capitalization issues so this can run in,
; e.g. Clozure as well as ACL's mlisp.

; ddm 8/13/99 Put a special case into Def-type to avoid a clash with a defstruct
;  off a symbol with the same pname. See note there.

; ddm 10/20/88   Added an "include" field to deftypes -- as an obligatory second 
; argument just after the "storage-type" and before the list of field names.   
; This just entailed modifying the definition of Def-type

; drf 11/21   fixed the problem with ``missing'' defstructs (for :include stuff)
; and added a routine to check whether functions are being redefined in an
; objectionable way -- still needs thorough testing, though!

; drf 11/24   first run of tests for routine to check redefinitions -- new property
; defined -- MUMBLE-TYPE-OBJECT-FOR-FIELD (new, so that it doesn't conflict with
; MUMBLE-TYPE-OBJECT) -- needs further testing, but should work

; drf 11/25   checked DEF-TYPE code, complete with a small short-circuit for the
; def-type of the CATALOG, called DEF-TYPE-NO-CONFLICTS (documented below).

; drf 87/Mar/14 - Common LISP compatibility
; 1. added (:CONC-NAME NIL) to DEFSTRUCTs -- is Zeta-LISP default,
;    but Common LISP defaults to  (:CONC-NAME <struct-name>-)
; 2. TYPEP usage tightened up (use 2 args for predicate, use TYPE-OF for
;    type of object
; 3. DEFCONST -> DEFCONSTANT
; 4. in MAKE-<struct>: symbols denoting fields changed to keywords
;    (DEFSTRUCT imported from CL package on Symbolics)
; 5. PUTPROP changed to SETF + GET (GET imported from CL package on Symbolics)

; drf 87/Apr/01 - Common LISP compatibility
; deleted (:type :named-array) from the generated defstruct in DEF-TYPE, since that
; prevents TYPEP and TYPE-OF from working properly (in Common-LISP, typep will not
; recognize the defstruct as constituting the declaration of a new type)

;################################################################
;		       object types
;################################################################
#|

  A type involves the following things:

   0. a construction function with name "make-<type-name>"
      that takes its arguments in keyword format using the field names
      of the type --  N.b. Defstruct uses macros. ///and so does
      def-type at the moment.

   0.a.  a minimal construction function with the name
      "make-an-empty-<type-name>", takes no arguments and just builds the
      shell of the object, expecting later operations to fill it in.

   1. a type-testing predicate with the name "<type-name>p"

   2. printing functions for:
        a. "MP"  a nice English-like name, e.g. "clause"
        b. Princ    -    #<label clause>
            This will be a format string + args (i.e. expressions over
            field names) that gets used by the ///// facility when
            we're implementing objects as structures.
        c. Pretty-printing -- ///possibly subdividing into one for
            mouse-based display windows and one for glass-tty's.
        d. Off-line file storage in an human-readable format.

   3. for each of the fields in objects of this type:

	a. an access FUNCTION with the same name as the property
           n.b. Defstruct supplies only macros.

        b. a set function with the name "clobber-<property>" as an
           alternative to the Setf construct.

   4. a "catalog" in which to store objects of this type and various
      usefull cross-indexing relations about them.

   5. a function for postprocessing any object of this type.

   5. An object of type "type", in which to attach all this information.


Syntax:

 (DEF-TYPE  <type-name>     { PERMANENT | TEMPORARY | SYSTEM-OVERHEAD }
       <field-descriptor> *
       )

 <field-descriptor> :==   ( <symbol to use as the field name>
                            <documentation string in Format style> )

n.b.  The storage-type indicators ("permanent", "temporary",...) are wishfull
thinking about the future when some kind of "semantic paging" is available.
|#

;################################################################
;  The function DEF-TYPE makes reference to two types itself:
;                  MTYPE and MCATALOG
;  therefore some boot-strapping is in order -- otherwise you
;  get bit by Russell's paradox if you try to use the function Def-type
;  to create the type for type.
;################################################################



(unless (boundp '*upcase*)
  (defparameter *upcase* (not (eq '|aBc| 'aBc))
    ;; I've seen an :mlisp feature, but it doesn't appear to be consistent.
    "The code in Mumble-86 is written in strictly lowercase. But depending 
     on whether or not  one is running a Lisp that is case sensitive this
     has an impact on the function names that def-type creates. When this
     flag is true, they are created as all uppercase."))



(eval-when (compile load eval)
(defstruct  (mcatalog :named (:conc-name nil))
  (postprocessed? t)
  name
  the-type			;a type
  members		;a list of objects of that type
  )
)



(eval-when (compile load eval)

(defstruct  (mtype ;;:named #+lispm (:callable-accessors t) ; needed???
             (:conc-name nil)
             (:print-function
              (lambda (struct stream level)
                (declare (ignore level))
                (format stream "#<TYPE ~A>" (name struct)))))
  (postprocessed? t)          ; boolean:  whether the object needs postprocessing
  name			;the symbol whose value is the type object
  storage-type 		;either "temporary", "permanent",
					;   or "system-overhead"
  minimal-construction-function ;not relevant here so left nil
  construction-macro		;the symbol whose fvalue is that macro
					;///printing-function		
  type-predicate		;the symbol whose fvalue is that function
  setters                       ;an alist of the field-names and the setting functions
  mcatalog			;a catalog
  properties			;a alist of the symbols that name the
				;   fields of the type with the text strings
                                ;   that document them.
  postprocessing-fn             ;a function of one argument -- an object of
                                ;  this type -- that postprocesses the raw
                                ;  definition.
  re-definition-fn		;a function. args = <object> <tags-&-values>
    				;  need not be defined.
  )
)


(defun define-catalog  (name type)
  (let ((the-catalog (make-mcatalog :postprocessed? t
                                   :name	name
                                   :the-type	type			  
                                   :members nil)))
    (set name the-catalog)
    the-catalog))

;revised version with provision for defining types on top of other types


(defmacro def-type  (type-name storage-type included-type
		     &body properties-&-documentation)
  "This version uses Defstruct -- should work in any Common Lisp."

  (when (eq type-name 'mumble::position)
    ;; This defstruct appears to overwrites the one in Sparser, package differences
    ;; not withstanding. Leastways if the Sparser position is not evaluated again
    ;; after the mumble one, attempts to print them in a backtrace blow out the stack.
    ;; This gross hack may get around the problem
    (setq type-name 'mumble::mposition))
  (when (eq included-type 'position)
    (setq included-type 'mposition))

  (let* ((type-check-name (intern (string-append type-name (if *upcase* "P" "p"))))
         (minimal-construction-fn-name
          (intern (string-append (if *upcase* "MAKE-AN-EMPTY-" "make-an-empty-")
                                 (symbol-name type-name))))
         (constructor-macro-name
          (intern (string-append (if *upcase* "MAKE-" "make-")
                                 (symbol-name type-name))))
         (catalog-name (intern (string-append (if *upcase* "THE-" "the-") 
                                              type-name (if *upcase* "S" "s"))))
         (the-catalog (define-catalog catalog-name type-name))
         (property-names (mapcar #'car properties-&-documentation))
         (setter-names  (mapcar #'(lambda (field-name)
                                    (intern (string-append
                                             (if *upcase* "SET-" "set-")
                                             (symbol-name field-name))))
                                property-names))
         ;; was PAIRLIS, but that is not required to use the original order:
         (properties-&-setters (mapcar #'cons property-names setter-names))
         (included-setters  (if included-type (setters (mtype included-type))))
         (included-properties  (if included-type (properties (mtype included-type)))))
    `(progn
       ;; Create the type and set up all references to it.
       (let ((the-type (make-mtype
			  :postprocessed? t
			  :name          ',type-name
			  :storage-type  ',storage-type
			  :minimal-construction-function ',minimal-construction-fn-name
			  :construction-macro ',constructor-macro-name
			  ;; :printing-function  nil
			  :type-predicate  ',type-check-name
			  :setters ',(append included-setters properties-&-setters) 
			  :mcatalog  ',the-catalog
			  :properties ',(append included-properties 
                                    properties-&-documentation)
			  :postprocessing-fn  nil)))

	  (do* ((rest ',properties-&-setters (cdr rest))
            (ps     (car rest) (car rest))
            (prop   (car ps) (car ps))
            (setter (cdr ps) (cdr ps))
            (index  ,(length included-setters) (1+ index)))
	       ((null rest))
	    (check-for-real-conflicts prop ',type-name index)
	    (check-for-real-conflicts setter ',type-name index)
	    (setf (get prop 'mumble-type-object-for-field) the-type)
	    (setf (get setter 'mumble-type-object-for-field) the-type))

      ;;should these be replaced with the standard mechanism, i.e. Create-and-catalog ??
      (set ',type-name the-type)
	  (setf (get ',type-name 'mumble-type-object) the-type)
	  ;; (link-name-to-object ',type-name the-type type)
	  (let ((old-value (get ',type-name 'mumble-symbol)) ;; <=== 12/10/03 patch
            new-value ) 
        (if (consp old-value)
          (setq new-value (cons the-type old-value))
          (setq new-value (list the-type old-value)))
        (setf (get ',type-name 'mumble-symbol) new-value)))

       (defun ,minimal-construction-fn-name ,(if (member 'name property-names)
                                               '(&optional (name 'anonymous))
                                               '())
         (let-with-dynamic-extent
             ((minimal-definition t))
           (,constructor-macro-name ,@(if (member 'name property-names)
                                       '(:name name)
                                       nil))))
       (temporarily-inhibit-fdefine-warnings
        (defstruct (,type-name
                     (:conc-name nil)
                     (:print-function (lambda (struct stream level)
                                        (declare (ignore level))
                                        (let ((name-symbol (name struct)))
                                          (if (symbolp name-symbol)
                                            (format stream "#<~A ~A>"
                                                    ',type-name name-symbol)
                                            (format stream "#<~a ???>"
                                                    ',type-name)))))
                     ,@(if included-type
                        `((:include ,included-type))
                        nil))
          ;; This is where the `POSTPROCESSED?' field comes in.  If we have an
          ;; included type, it will be inherited, not defined locally.
          ,@(if included-type nil '((postprocessed? nil)))
          ,@property-names))
       ;;this defstruct defines the construction function, a "type" symbol to check 
       ;;against with TYPEP, and access MACROS.

       ;;idiosyncratically named Replace fns.
       ,@(mapcar #'(lambda (property-name set-name)
                     `(temporarily-inhibit-fdefine-warnings
                       (defsubst ,set-name (structure new-value)
                         (setf (,property-name structure) new-value))))
                 property-names
                 setter-names)

       ;; idiosyncratic <type>p predicate
       (defun ,type-check-name (structure)   
         (typep structure ',type-name))

       ;; fn. from a symbol (name) to an object of this type
       (defun ,(intern (string-append (symbol-name type-name)
                                      (if *upcase* "-NAMED" "-named")))
           (symbol)
         (let ((obj (mumble-value symbol ',type-name)))
           ;;(or obj (mbug "Could not find value for symbol ~s of type ~s"
           ;;		  symbol ',type-name))
           obj))
 
       ;; add the type to the catalog of types
       (when (not (member ',type-name (members (mcatalog mtype))))
         (setf (members (mcatalog mtype)) 
               (cons ',type-name (members (mcatalog mtype)))))
       ;; "setf" rather than "set-members" because of the bootstrapping
       ',type-name)
    ))


(defparameter *check-for-type-conflicts* t
   "flag which tells us to apply the conflict-checking machinery")

;; mods: define MUMBLE-TYPE-OBJECT-FOR-FIELD property for each field
(defun 	check-for-real-conflicts (name new-struct new-offset)
  "Checks for unexpected redefinition of accessors or setters of field NAME"
  (declare (special *check-for-type-conflicts*))
  ;; redefinition is a problem when an object is already defined and
  ;; DEF-TYPE didn't do it, or when DEF-TYPE did, but the offset is wrong
  (when (and *check-for-type-conflicts*
             (fboundp name))   ;; is there a previous definition of any sort?
    (let ((old-type (get name 'mumble-type-object-for-field)))
      (if (null old-type)
	    (mbug "DEF-TYPE is redefining ~a (as a field of ~a) ~
             ~%but it is already globally defined"
              name new-struct)
        (let ((offset (mumble-type-offset name old-type)))
          (when (and offset
                     (not (eql offset new-offset))
                     (not (eq (name old-type) new-struct)))
            (mbug "DEF-TYPE is redefining ~a with a new offset, as a field of ~a.~
                 ~%It was already a field of ~a"
                  name new-struct (name old-type))))))))


(defun mumble-type-offset (name type-object)
  (do* ((rest (setters type-object) (cdr rest))
        (ps   (car rest) (car rest))
        (accessor-field-name (car ps) (car ps))
        (setter-field-name (cdr ps) (cdr ps))
        (index 0  (1+ index)))
       ((or (null rest)
            (eq accessor-field-name name)
            (eq setter-field-name name))
        (if rest
          index
          nil))))



;################ do it

(defvar mtype nil "this is it -- the object with the type TYPE")
(defvar the-types nil "bootstrapped minimal 'catalog'")

(defun do-the-type-of-type-by-hand ()
   "otherwise the set-of-all-sets paradox bites you"
   (declare (special type))
   (let* ((the-vector
           (make-mtype :postprocessed? t
                       :name  'Mtype
                       :storage-type  'system-overhead
                       :minimal-construction-function  nil
                       :construction-macro 'make-Mtype
                       ;; :printing-function  nil
                       :type-predicate  'type-p
                       :mcatalog  nil           ;fill in below
                       :properties
                         '((name "the symbol whose value is the type object")
                           (storage-type "see file")
                           (minimal-construction-function "see file")
                           (construction-macro "see file")
                           ;; (printing-function "see file")
                           (type-predicate "see file")
                           (mcatalog "see file")
                           (properties "see file")
                           (postprocessing-fn "see file")
                           (re-definition-fn "see file"))
                       :postprocessing-fn  nil   ;//// ??really??
                       :re-definition-fn  nil
                       ))
          (types-catalog (define-catalog 'the-types the-vector)))
     (setf (mcatalog the-vector) types-catalog)

     ;; now the alternate syntax for "setf"
     (let ((ps (mapcar 
                #'(lambda (field)
                    (let* ((property-name (car field))
                           (set-name
                            (intern (string-append 
                                     (if *upcase* "SET-" "set-")
                                     property-name)))
                           (defun-exp
                            `(temporarily-inhibit-fdefine-warnings
                              (defun ,set-name (structure new-value)
                                (setf (,property-name structure) new-value)))))
                      (eval defun-exp)
                      (setf (get property-name 'mumble-type-object-for-field) the-vector)
                      (setf (get set-name 'mumble-type-object-for-field) the-vector)
                      (cons property-name set-name)))
                (properties the-vector))))
       (setf (setters the-vector) ps))

     ;; now the redundant attachment
     ;; ///should be same stuff as Create-and-Catalog
     (setq mtype the-vector)
     (setf (get 'mtype 'mumble-type-object) the-vector)

     the-vector))



(do-the-type-of-type-by-hand)


;################################################################
;        Catalog definition
;################################################################

#|  There is a problem (like the TYPE-OF-TYPE problem) with catalogs and
checking for fields with conflicts.  Because CATALOG is defined via 
Defstruct, accessor functions are already defined for the fields.  This
messes up our home-grown type checker, so the following kludge is built
in: we short-circuit the type-checker code with the global variable
*check-for-type-conflicts* -- checks are made only if it is non-NIL -- and
wrap code around the def-type call which sets the variable temporarily
to NIL.

;;july 1992 not sure what's going on, but I can't see this is used
;;and I having some odd compiling problems

(eval-when (compile load eval)
(defmacro def-type-no-conflicts (&rest args)
   (let ((*check-for-type-conflicts* nil)
	 (def-type-call (cons 'def-type args)))
     (declare (special *check-for-type-conflicts*))
     (eval def-type-call)))
)

(def-type-no-conflicts mcatalog    permanent nil
  (name		"a symbol")
  (the-type		"the type of objects in this catalog")
  (members	"a list of objects"))
|#


;################################################################
;        Supplementary functions for Object types
;################################################################

#|  Looking on the code as a text, it will not always be appropriate to
include all the information about the type right at the point where the
call to Def-type is made.  Some information, such as (at the moment) the
postprocessing-fn for it, will look better elsewhere.  To facilitate this
"distributed defintion", we need to supply some nicely-sugared functions
that will pull the whole thing together regardless of the point in the
system loading where the parts of the definition get made.

///for the moment, we assume that all the Def-type expressions are
gathered into one file, and that file has been loaded before any of the
other files concerned with object definitions is.  That way we don't
have to keep around temporary repositories for all this stuff.
|#

(defmacro define-postprocessing-function  (type-name
                                           parameter-list
                                           &rest body)
  (let ((fn-name (intern (string-append (if *upcase* "POSTPROCESS-" "postprocess-")
                                        type-name))))
    (if (= (length parameter-list) 1)
      `(progn (defun ,fn-name ,parameter-list ,@body)
              (set-postprocessing-fn (type-named ',type-name)
                                     (symbol-function ',fn-name))
              ',fn-name)
      (error "Strange postprocessing parameter-list:  ~s.  ~
              It should be one symbol long."
             parameter-list))))
 


;################################################################
;        symbol denoting a type -> the type-object denoted
;################################################################
; ////can be made into a macro (leaving just the type-object) in those cases
; where the argument is quoted.

(defun mtype (symbol)
  (if (not (symbolp symbol))
    (mbug "not called with a symbol - ~A" symbol)
    (let ((type-object (get symbol 'mumble-type-object)))
      (when (not (typep type-object 'mtype))
        (format nil "~A does not denote a type" symbol))
      type-object)))

;;; Flag the fact that the type system is loaded.

(defconstant *type-system-loaded* t)   ;; in mumble package

(defconstant cl-user::*type-system-loaded* t)
