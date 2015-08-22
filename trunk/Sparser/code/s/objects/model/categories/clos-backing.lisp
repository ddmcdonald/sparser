;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2010-2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "clos-backing"
;;;   Module:  "objects;model:categories:"
;;;  version:  August 2014

;; initated 11/9/10. Modified the storage scheme 11/11. Tweaking cases
;; through 12/6. 6/16/11 fixed case of clash with existing classes.
;; 9/1/11 Tried a scheme for making instances of each class at the moment
;;  the class is defined but it triggered a MOP issue on the first instance
;;  of a subclass. 9/3 simplified the names by using a different package
;;  and flushed the check to see if the class already exists, which made
;;  the MOP problem go away. 1/4/13 Added get-shadow.
;; 7/21/13 Moved in the macro that hides the shift-in-representation
;;  messiness and its ancilary parts so facility can be taken as a whole.
;; 11/13/13 Added treatment of lamba variables and doc.
;; 4/16/14 Added treatment of mixins. They're folded into the set of
;;  slots and the superc's.
;; 5/29/14 Found bug in k-method call macro, folded in integers,
;;  auto-generating the call-xx methods along with the k-methods.
;; 3/10/2015 for clarity, rename copy-individual to maybe-copy-individual
;; 6/8/2015 temporary fix  -- DON'T KNOW WHY sclass IS NIL in some cases 
;;  in the new articles.  8/22/15 Pulle psi from a typecase

(in-package :sparser)

;;;---------------------------------
;;; stashing the classes on a table
;;;---------------------------------

#| Every category is "backed" by a conventional CLOS class.
These "shadow" classes -- sclass's -- are the basis of driving
type-specific methods off them since without a class of type,
e.g. #<standard-class shadow::waypoint>, all we could dispatch
off of would be #<ref-category WAYPOINT> and that type is identical
for every category.
|#

(defvar *categories-to-classes* (make-hash-table))

(defmethod get-sclass ((c category))
  (gethash c *categories-to-classes*))

(defmethod get-sclass ((s symbol))
  (let ((c (category-named s)))
    (unless c (error "No category named ~a" s))
    (get-sclass c)))


(defun store-class-for-category (c class)
  (setf (gethash c *categories-to-classes*) class))

(defvar *classes-defined* nil)


;;;-------------
;;; entry point
;;;-------------

(defun setup-backing-clos-class (c mixins source)
  ;; Called from the bottom of decode-category-parameter-list when
  ;; we have created everything we can about the category. Also called
  ;; from find-or-make-category-object for other cases, notably
  ;; form categories like 'modal'.
  ;(push-debug `(,c))
  (case source
    (:minimal)
    (:define-category)
    ((or :referential :form :derived)
     (make-backing-clos-class c mixins))
    (otherwise
     (push-debug `(,c ,mixins ,source))
     (break "New backing-CLOS class source: ~a~%~a" source c))))

(defun make-backing-clos-class (c mixins)
  (when mixins
    (unless (every #'category-p mixins)
      (if (every #'symbolp mixins)
        (setq mixins
              (loop for m in mixins collect
                (category-named m :break-if-missing)))
        (else (push-debug `(,c ,mixins))
              (error "Unexpected type for mixins")))))
  (let* ((class-name (backing-class-name-for-cateory c))
         (supercat
          (when (cat-lattice-position c)
            (lp-super-category (cat-lattice-position c))))
         (superc-name
          (when supercat (backing-superclass-for-category supercat)))
         (variables (cat-slots c))
         ;;//////// Should the value-restrictions on slots be
         ;;  shadow categories or regular ones ?
         (mixin-class-names
          (when mixins (loop for m in mixins
                         collect (backing-class-name-for-cateory m))))
         (mixin-variables
          (when mixins (loop for m in mixins
                         append (cat-slots m))))
         (slot-expressions
          (when (or variables mixin-variables)
            (backing-class-slots-for-category
             (append variables mixin-variables)))))
    ;(when mixins
    ;  (break "Look at locals"))
    (setq class-name (check-for-circularities class-name superc-name))
    (let ((superc-list
           (cond
            ((and superc-name mixin-class-names)
             (cons superc-name mixin-class-names))
            (superc-name
             `(,superc-name))
            (mixin-class-names
             mixin-class-names)
            (t nil))))
      ;(when mixins
      ;  (break "superc-list: ~a" superc-list))
      (let ((form
             `(defclass ,class-name ,superc-list
                ,slot-expressions)))
        ;(when mixins (push-debug `(,form)) (break "check form"))
        (let ((class (eval form)))
          (store-class-for-category c class)
          (push c *classes-defined*)
          (make-and-store-nominal-instance c)
          c)))))



(defun backing-class-name-for-cateory (c)
  ;; N.b. we do not check for the class already existing.
  ;; 1. It doesn't. 2. If you do, and seeing as how we haven't
  ;; defined it yet, the MOP in its wisdom will create
  ;; a forward-reference-class for it rather than a standard-
  ;; class.
  (let* ((c-name (cat-symbol c)) ;; in the category package
         (c-pname (symbol-name c-name))
         (class-name (intern c-pname *shadow-package*)))
    class-name))

(defun check-for-circularities (class-name superc-name)
  "Because our categories correspond to ordinary words, we can get
   a clash where the category we want to create, based on a word, will
   have the same name."
  ;; strictly speaking should look up the lattice for a match
  ;; at any point (and argument should be the supercategory rather
  ;; than its name), but this catches the presenting case with "kind"
  (if superc-name
    (if (eq superc-name class-name)
      (intern (string-append '#:category- (symbol-name class-name))
              *shadow-package*)
      class-name)
    class-name))

(defun backing-superclass-for-category (superc)
  (let* ((superc-name (backing-class-name-for-cateory superc))
         (super-class (get-sclass superc)))
    (unless super-class
      ;; alternatively, stub something for it?
      (error "The CLOS class for ~a doesn't exist yet." superc-name))
    superc-name))

(defun backing-class-slots-for-category (variables)
  (let ( forms )
    (dolist (v variables)
      (let* ((slot-name (intern (symbol-name (var-name v))
                                (find-package :sparser)))
             (v/r (var-value-restriction v))
             (type-constraint
              (when v/r (backing-type-for-variable-restriction v/r))))
        (push (if v/r
               `(,slot-name :type ,type-constraint)
               `(,slot-name))
              forms)))
    (nreverse forms)))

(defun backing-type-for-variable-restriction (v/r)
  (typecase v/r
    (cons
     (case (car v/r)
       (:primitive
        (typecase (second v/r)
          (symbol
           (case (second v/r)
             (word 'word)
             (list 'list)
             (integer 'integer)
             (fixnum 'fixnum)
             (number 'number)
             (pathname 'pathname)
             (cons 'cons)
             (polyword 'polyword)
             (cfr 'cfr)
             (category 'category)
             (segment 'segment)
             (symbol 'symbol)
             (otherwise (push-debug `(,v/r))
                        (break "Another v/r primitive symbol: ~a" (second v/r)))))
          (cons
           (let ((tag (car (second v/r)))
                 (values (cdr (second v/r))))
             (unless (symbolp tag)
               (push-debug `(,v/r)) (error "V/R shouldn't go this deep"))
             (case tag
               (:or
                (let ((r (mapcar #'backing-type-for-variable-restriction values)))
                  `(:or ,@r)))
               (otherwise
                (push-debug `(,v/r))
                (break "New key in deep cons-based value restriction:~%  ~a" v/r)))))
          (otherwise
           (push-debug `(,v/r))
           (break "New type of cons-based value restriction:~%  ~a" v/r))))
       (:or
        (let ((r (mapcar #'backing-type-for-variable-restriction (cdr v/r))))
          `(:or ,@r)))
       (otherwise
        (push-debug `(,v/r))
        (break "New form for cons-based value restriction:~%  ~a" v/r))))
    ((or referential-category
         mixin-category)
     (backing-class-name-for-cateory v/r))
    (symbol
     v/r)
    (otherwise
     (push-debug `(,v/r))
     (break "New type for v/r: ~a~%  ~a" (type-of v/r) v/r))))



;;;-------------------------------------
;;; Pulling the same trick on variables
;;;-------------------------------------

(defclass c3-lambda-variable ()
  ((variable :type lambda-variable :initarg :var :accessor c3-variable)
   (name :type symbol :initarg :name :accessor c3-var-name))
  (:documentation "Super class for all the lambda variable
     constructed classes / shadow instances.
     Will work best under a C3 regime where there's only
     one instance of a variable with a given name.
     Could be expanded for more uses in C3."))

(defun create-backing-for-lambda-variable (v)
  "Creates the class and stores the nominal instance of it
   on the variable object in the shadow slot."
  (let* ((class-name (intern (string-append '#:c3-var-
                                            (var-name v))
                             *shadow-package*))
         (form `(defclass ,class-name (c3-lambda-variable)
                  () )  )
         (var-class (eval form)))
    (let ((shadow-instance (make-instance class-name
                             :name class-name :var v)))
      (setf (var-shadow v) shadow-instance)
      (values shadow-instance var-class))))

(defmethod print-object ((v c3-lambda-variable) stream)
  (print-unreadable-object (v stream)
    (format stream "c3-lambda-variable ~a" (var-name (c3-variable v)))))



;;;-------------------------------------------------------------
;;; Dealing with individuals and the instances that shadow them
;;;-------------------------------------------------------------

(defun create-shadow (individual)
  ;; Called from define-function-term and similar routines in modals
  ;; and adverbs when we know the word (word's shallow referent) is
  ;; going to be involved in k-method calls.
  (let* ((type (indiv-type individual))
         (category (etypecase type
                     (cons (car type))
                     (referential-category type)))
         (sclass (get-sclass category))
         ;; THIS IS A TEMPORARY FIX -- DON'T KNOW WHY sclass IS NIL in some cases in the new articles
         (shadow (when sclass (make-instance sclass)))) ;; need a backpointer?
    (setf (indiv-shadow individual) shadow)
    shadow))

(defmethod find-or-make-shadow ((i individual))
  (or (get-shadow i :no-break)
      (create-shadow i)))


(defgeneric get-shadow (obj &optional no-break)
  (:documentation "Return the CLOS instances that we apply
 in methods."))

(defmethod get-shadow ((i individual) &optional no-break)
  (let ((s (indiv-shadow i)))
    (unless s
      (unless no-break
        (push-debug `(,i))
        (error "No shadow associated with ~a" i)))
    s))

(defmethod get-shadow ((c category) &optional no-break)
  (let ((s (get-nominal-instance c)))
    (unless s
      (unless no-break
        (push-debug `(,c))
        (error "No shadow associated with ~a" c)))
    s))

(defmethod get-shadow ((obj t) &optional no-break)
  (push-debug `(,obj))
  (unless no-break
    (error "There are no shadows associated with object of ~
            type ~a~%  ~a" (type-of obj) obj)))


;;;-------------------------------
;;; changing an individual's type
;;;-------------------------------

(defgeneric change-itype (individual new-category)
  (:documentation "This is a placeholder for a more interesting operation
     that really would change the CLOS type of an established instance.
     Here we just change properties of this individual:
       (a) we add the new category to the front of the type list
       (b) we switch to the shadow of the new category.
     Returns the individual."))

(defmethod change-itype ((i individual) (new-category category))
  (let ((established-type (indiv-type i)))
    (setf (indiv-type i) (cons new-category established-type))
    (let* ((sclass (get-sclass new-category))
           (new-shadow (make-instance sclass)))
      (setf (indiv-shadow i) new-shadow)
      i)))

(defun specialize-itype (individual sub-category)
  (let ((i (change-itype individual sub-category)))
    (setf (indiv-type i) (list sub-category))
    i))

(defgeneric clone-individual-changing-type (individual new-category)
  (:documentation
   "Just like change-itype except that we do the change to
    a new individual. It's the caller's responsibility to index
    or otherwise keep trace of the new individual"))

(defmethod clone-individual-changing-type ((i individual)
                                           (new-category category))
  (let ((established-type (indiv-type i))
        (new (make-unindexed-individual new-category))) ;; includes shadow
    (when (cdr established-type) ;; carry over any mix-ins
      (setf (indiv-type i) (cons new-category (cdr established-type))))
    ;; The 'binds' bindings are probably intrinsic to the nature of
    ;; the object we're starting from and wouldn't make sense on
    ;; the new object since the whole point was to change the type.
    ;; But the 'bound-in' are relationships from other objects to
    ;; the one we're cloning, so they will (ought to) continue to be
    ;; relevant.  ///first case doesn't fall out that neatly, which
    ;; suggests a knowledge-based, case by case cloning.
    (push-debug `(,i ,new ,new-category)) ;(break "write binding cloner")
    new))


;;**************** So that David can test this new functionality ***********
;; copy-individual is called from many methods in syntax-functions, to avoid smashing the bindings of basic vocabulary like Ras
;;  which is defined to create an individual

(defparameter *dont-copy-individuals* nil)

(defun maybe-copy-individual (i) ;; &optional subs)
  (declare (special i))
  (if
   (or
    *dont-copy-individuals*
    (not (individual-p i)))
   ;; don't copy things other than individuals
   i
   (let* ((established-type (indiv-type i))
          (new (make-unindexed-individual (car established-type)))) ;; includes shadow
     (declare (special established-type new))
     (when (cdr established-type) ;; carry over any mix-ins
       (setf (indiv-type  new) established-type))
     (loop for binding in (indiv-binds i)
       do
       (bind-variable/expr (binding-variable binding) ;; should be obsolete with DLI
                           (binding-value binding)
                           new))
     ;; The 'binds' bindings are probably intrinsic to the nature of
     ;; the object we're starting from and wouldn't make sense on
     ;; the new object since the whole point was to change the type.
     ;; But the 'bound-in' are relationships from other objects to
     ;; the one we're cloning, so they will (ought to) continue to be
     ;; relevant.  ///first case doesn't fall out that neatly, which
     ;; suggests a knowledge-based, case by case cloning.
     new)))

;;;---------------------------
;;; Vacuous concept instances
;;;---------------------------

; Method calls are against instances, not categories.
; Every backing class (sclass) has token instance made for
; it that we trot out for purposes of doing the method call.

(defvar *category-classes-to-nominal-instance* (make-hash-table))

(defmethod get-nominal-instance ((c category))
  (get-nominal-instance (get-sclass c)))

(defmethod get-nominal-instance ((cl standard-class))
  (gethash cl *category-classes-to-nominal-instance*))

(defmethod make-and-store-nominal-instance ((c category))
  (let ((cl (get-sclass c)))
    (make-and-store-nominal-instance cl)))

(defmethod make-and-store-nominal-instance ((cl standard-class))
  (let ((i (make-instance cl)))
    (setf (gethash cl *category-classes-to-nominal-instance*) i)))



;;;------------------------------------------------------
;;; macro to sugar shifting representations in defmethod
;;;------------------------------------------------------

(defparameter *print-generated-k-method-forms* nil
  "Turn in on when you suspect the generated code is wrong.")

(defmacro def-k-method (name args &body body)
  `(def-k-method/expr ',name ',args ',body))

(defun def-k-method/expr (name args body)
  ;;(push-debug `(,name ,args ,body))
  (vet-k-method-argument-form args)
  (multiple-value-bind (parameters type-restrictions)
                       (establish-k-method-restrictions args)
    (let* ((dummy-parameters
            (loop with i = 0
              collect (intern (string-append '#:d- (incf i))
                              (find-package :sparser))
              until (= i (length parameters))))
           (method-args
            (loop for r in type-restrictions
              as d in dummy-parameters
              collect `(,d ,r)))
           (let-bindings
            (construct-let-bindings
             dummy-parameters parameters type-restrictions)))

      (let* ((caller-name (intern (string-append '#:call- name)
                                   (find-package :sparser)))
             (caller-form
              `(defun ,caller-name ,parameters
                 (setup-args-and-call-k-method ,@parameters
                   (funcall #',name left-shadow right-shadow))) ))
        (when *print-generated-k-method-forms*
          (pprint caller-form))
        (eval caller-form))

      (let ((form
             `(defmethod ,name ,method-args
                (let ,let-bindings
                  ,@body)) ))
        (when *print-generated-k-method-forms*
          (pprint form))
        (eval form)))))


(defun construct-let-bindings (dummy-parameters parameters type-restrictions)
  (loop
    for d in dummy-parameters
    as p in parameters
    as r in type-restrictions
    unless (eq r t)
    collect `(,p (dereference-shadow-individual ,d))
    else
    collect `(,p ,d)))

(defun vet-k-method-argument-form (args)
  (loop for arg in args
    unless (consp arg) do (error "k-argument ~a is not a list" arg))
  (loop for arg in args
    unless (= 2 (length arg))
    do (error "k-argument ~a is not a pair" arg))
  (loop for arg in args
    as class = (cadr arg)
    when (consp class)
    unless (eq (car (cadr arg)) 'variable)
    do (error "unknown compound k-argument flag")))

(defun establish-k-method-restrictions (args)
  "Returns the shadow classes, lisp type, or variable class specified
   for each argument."
  (let ( parameters type-symbols )
    (dolist (arg args)
      (let ((parameter (car arg))
            (type-specifier (cadr arg)))
        (push parameter parameters)
        (cond
         ((eq type-specifier t) (push t type-symbols))
         ((and (consp type-specifier)
               (eq (car type-specifier) 'variable))
          (let* ((var-name (cadr type-specifier))
                 (lambda-variable
                  (variable-defined-on-one-category var-name)))
            (unless (lambda-variable-p lambda-variable)
              (push-debug `(,var-name ,type-specifier))
              (error "Variable lookup failed. Returned ~a"
                     lambda-variable))
            (let ((shadow (var-shadow lambda-variable)))
              (unless shadow
                (create-backing-for-lambda-variable lambda-variable))
              (push (find-class (c3-var-name (var-shadow lambda-variable)))
                    type-symbols))))
         ((symbolp type-specifier)
          (if (lisp-type? type-specifier)
            (push type-specifier type-symbols)
            (let ((category (category-named type-specifier :break)))
              (push (get-sclass category)
                    type-symbols))))
         (t
          (push-debug `(,type-specifier ,arg))
          (error "Can't make sense of k-restriction ~a"
                 type-specifier)))))
    (values (nreverse parameters)
            (nreverse type-symbols))))

(defun lisp-type? (symbol)
  ;; Not every k-method is over Krisp domain types.
  ;; There ought to be a native call for this, but an enumeration
  ;; will suffice.
  (memq symbol '(integer list)))


;;;-------------------------------------------------------
;;; wrapper to setup environment for calling def-k-method
;;;-------------------------------------------------------

;; Used in ref/method and call-redistribute-if-appropriate

(defmacro setup-args-and-call-k-method (left-referent right-referent
                                        &body body)
  `(flet ((dispatch-type-of (o)
           (typecase o
             (individual (i-type-of o))
             (category o)
             (integer o)
             (word o)
             (otherwise
              (push-debug `(,o))
              (error "Unexpected type of object passed to k-method setup: ~
                      ~a~%   ~a" (type-of o) o)))))
     (push-debug `(,left-referent ,right-referent))
     ;;(format t "~&left=~a right=~a~%" left-referent right-referent)
     (let* ((left-type (dispatch-type-of ,left-referent))
            (right-type (dispatch-type-of ,right-referent))
            (left-shadow (get-nominal-instance (get-sclass left-type)))
            (right-shadow (get-nominal-instance (get-sclass right-type)))
            (*shadows-to-individuals*
             (list (cons left-shadow ,left-referent)
                   (cons right-shadow ,right-referent))))
       (declare (special *shadows-to-individuals*))
       ;; (push-debug `(,left-shadow ,right-shadow))
       ,@body)))


;;--- getting back the individuals from the shadows invoke methods

(defvar *shadows-to-individuals* nil
  "Set with each call to the setup wrapper.
   Alist from the nominal category instance use to invoke
   the method and the referent (usually an individual)
   that is the 'real' referent.")

(defun dereference-shadow-individual (shadow)
  (declare (special *shadows-to-individuals*))
  (let ((value (cdr (assoc shadow *shadows-to-individuals*))))
    (unless value
      (push-debug `(,shadow ,*shadows-to-individuals*))
      (error "No Krisp value found for nominal instance ~a"
             shadow))
    value))

#| Example generated k-method
(defmethod nth-item ((d-1 integer) (d-2 #<standard-class shadow::sequence>))
  (let ((n (dereference-shadow-individual d-1))
        (seq (dereference-shadow-individual d-2)))
    (let ((items (value-of 'items seq)))
      (nth-item n items)))) |#

(defmethod get-sclass ((n number))
  n)
(defmethod get-nominal-instance ((n number))
  n)

(defmethod get-sclass ((w word))
  t)
(defmethod get-nominal-instance ((w t))
  w)

(defmethod is-a-lisp-type ((n number)) t)








