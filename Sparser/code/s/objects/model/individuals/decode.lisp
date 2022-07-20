;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2010-2021 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "decode"
;;;   Module:  "objects;model:individuals:"
;;;  version:  March 2021

#| These are the functions that interpret binding expressions. 
 They check whether the value to be bound meets the value restrictions
 on the variable. |#

;; pulled from [find] 5/25/93 v2.3
;; 0.1 (9/18) added referential-categories to the options for decoding
;; 0.2 (10/22) tweeked cases to allow strings interpreted as names
;; 0.3 (12/29) added null check against value-exps in decoding
;;     (5/24) added 'position' as a type of primitive
;;     (7/28) added 'fixnum' and 'cons'
;; 0.4 (8/5) incorporated 'or' into the value decoding v/r check
;;     (8/17) incorporated 'or' into primitives
;;     (8/23) put a null-check in for the variable when decoding binding instructions
;;     (12/19) added case of symbol
;;     (12/26/95) added case of polyword
;;     (1/24/99) added referential-category to etypecase of Decode-exp-as-ref-category
;;      to handle ordinals as values. 
;; 0.5 (7/4) hacked Decode-category-specific-binding-instr-exps to notice
;;      the case of the binding instructions already being interpreted.
;;      (a messy job that could be redone: see numbers;form2)
;;     (2/7/05) Added a variant entry point that arranges to have the result formatted
;;      as a plist rather than an alist. (3/16) Added psi case to Decode-exp-as-ref-category
;;     (3/31) Hacked Decode-value-for-var/list to accept word specifications
;;      that include special-case morphology.
;;     (1/9/07) Tweaked Decode-value-for-primitive-v/r since Allegro doesn't support fixnump
;;     (6/19/09) Fan-out from lexical treatment of variables.
;;     (12/6/10) Turned break in decode/check-value into sort of a cerror
;;     (5/26/13) Added superc check for psi case in decode-exp-as-ref-category
;;     (6/14/13) break => error since the treebank test tends to fail in
;;      this code and the error handler lets us keep going.
;;     (1/22/14) category added as a primitive type.
;; 0.6 (2/3/13) Reworked treatment of an :or over both categories and
;;      a primitive v/r in decode-value-for-var/list
;; 0.7 (3/9/15) Allowed mixins the same status are referential categories in
;;      decode/check-value. (6/9/15) Better error message on violated restriction
;;     (8/22/15) Removed check on PSI.

(in-package :sparser)


;;;-------------------------------------------------------------
;;; Translating expressions to objects for Binding Instructions
;;;-------------------------------------------------------------

(defun decode-category-specific-binding-instr-exps/plist (category
                                                          binding-plist)
  (decode-category-specific-binding-instr-exps category binding-plist t))

;; 2/7/05 The individual side of the fence seems to prefer working with
;; an alist, while the psi side prefers plists. A extensive maintainence pass,
;; were one ever warrented, would be needed to sort it out.

(defun decode-category-specific-binding-instr-exps (category
                                                    binding-plist
                                                    &optional plist?)
  "Walk through the pairs of binding instructions. Look up the variable
   and use it to determine how to interpret the variable's value.
   Decode-value-for-variable does the heaving lifting. Here we're just
   concerned with identifying the value and some syntax checking.
   This function is called by all of the routines that build individual,
   such as define-individual, where it checks all of the restrictions on
   the variables being bound and determines whether they are satisfied."
  (let ( instructions variable value )

    (do ((var-name  (car binding-plist) (car rest))
         (value-exp (cadr binding-plist) (cadr rest))
         (rest      (cddr binding-plist) (cddr rest)))
        ((null var-name))

      (if (and (consp var-name)
               (lambda-variable-p (car var-name)))
        (then
          ;; already converted. This can happen with computed uses of
          ;; define-individual
          (setq variable (first var-name)
                    value (second var-name)))
        (else
          (when value-exp
            (unless (symbolp var-name)
              (error "Variables in a call to find-individual should be ~
                    given as symbols.~%  ~A isn't one" var-name))

            (when (eq (symbol-package var-name) (find-package :keyword))
              (setq var-name (intern (symbol-name var-name) (find-package :sparser))))

            (setq variable (find-variable-for-category var-name category))
            ;; ought to be a check on the type of the value-exp too,
            ;; today just assuming it's already evaluated and is correct

            (unless variable
              ;; We're calling this decoder because we're defining an individual.
              ;; The arguments to these individuals are rarely wrong (e.g. that
              ;; they presume there is a 'name' variable somewhere up the superc
              ;; chain. If they fail it can be because the cache is out of date.
              (cache-variable-lookup)
              (setq variable (find-variable-for-category var-name category)))

            (unless variable
              (push-debug `(,var-name ,category))
              (error "Can't locate a variable named \"~A\" ~
                    for the category ~A~%in the sentence ~s"
                     var-name category (current-string)))

            (setq value (decode-value-for-variable value-exp variable)))))

      (when value-exp
        (if plist? ;; were the bindings supplied as a plist
          (then
            (push variable instructions)
            (push value instructions))
          (push `(,variable ,value) instructions))))
    
    (nreverse instructions)))



;;;-----------------------
;;; v/r decoding dispatch
;;;-----------------------

(defun decode-value-for-variable (value-exp variable)
  "Checks for the possibility that there is no value restriction
   on the variable or the value is nil and passes the other cases
   on to the check. If there is no restriction we have no basis
   to decode the expression and just pass back what  sent in."
  (let ((v/r (var-value-restriction variable)))
    (if (or (null v/r)
            (null value-exp))
      value-exp
      (decode/check-value value-exp v/r variable))))

(defun decode/check-value (value-exp v/r variable)
  "Dispatch on the type of the value expression and capture the
   result. The result can actually be signalling an problem that
   the decode step found, in which case we call error on the string
   that was passed back with the :violation flag."
  (let ((result
         (typecase v/r
           (list (decode-value-for-var/list
                  value-exp variable v/r))
           ((or referential-category mixin-category)
            (decode-exp-as-ref-category value-exp v/r))
	   (otherwise
	    (error "New type of v/r: ~a~%~a"
		   (type-of v/r) v/r)))))
    (when (consp result)
      (when (eq (car result) :violation)
        (let ((sentence-string (current-string)))
          (if sentence-string
            (error "~a~%in ~s" (cdr result) sentence-string)
            (error "~a" (cdr result))))))
    result ))


;;;-------
;;; cases
;;;-------

(defun v/r-violation (string &rest args)
  (let ((string (apply #'format nil string args)))
    `(:violation ,string)))


(defun decode-exp-as-ref-category (exp category)
  ;; changed to use itypep, which is more general than what was here
  (etypecase exp
    (word
     (v/r-violation "The type of the individual given as the value,~
                         ~%   ~A~%does not match the value restriction ~A"
                    exp category))
    
    (individual
     (cond ((itypep exp category)
            exp)
           ((and (itypep exp 'year)
                 (eq (cat-name category) 'number))
            (setq exp
                  (find-or-make-number (value-of 'value exp))))
           (t
            (v/r-violation "The type of the individual given as the value,~
                         ~%   ~A~%does not match the value restriction ~A"
                           exp category))))
    
    ((or referential-category ;; e.g. 1st
         mixin-category)
     (if (itypep exp category) ;; (category-inherits-type? exp category)
         exp
         (v/r-violation "The type of the category given as the value,~
                         ~%   ~A~%does not match the value restriction ~A"
                        exp category)))

    (symbol
     ;; Makes sense if it's the name of a category
     (let ((c (category-named exp :error)))
       (if (itypep c category)
         c
         (v/r-violation "The type of the category given as the value,~
                         ~%   ~A~%does not match the value restriction ~A"
                        exp category))))

    (string
     ;; the definition has presumably come from a file rather
     ;; than code. The only sense we can make of a string is
     ;; as the name of something of the indicated category,
     ;; so we interpret it as a word acting as a name and do 
     ;; a find on it.
     (let ((word (resolve-string-to-word exp)))
       (unless word
         (v/r-violation 
          "The string ~A~%has no corresponding word and ~
           so cannot be taken as the~%name of some ~
           individual of type ~A"
          exp category))
       (let ((individual
              (find-individual category :name word)))
         (unless individual
           (v/r-violation "There is no ~A named ~A" category word))
         individual )))))



(defun decode-value-for-var/list (value-exp variable v/r)
  ;; the value restriction is a list
  (cond
   ((eq (car v/r) :or)
    (let ((cases (cdr v/r))
          result  succeeded? )
      (do* ((restriction (car cases) (car rest))
            (rest (cdr cases) (cdr rest)))
           ((null restriction))
        ;; if the v/r is satisfied, then all but one of its
        ;; cases is going to fail, passing back a 'violation'
        ;; list
        (when (eq restriction :primitive)
          (setq result
                (decode-value-for-primitive-v/r
                 ;; resolve-variable-restriction set this up, so should
                 ;; something come out wrong, look there
                 value-exp (car rest) variable))
          ;; This is the last form. If we don't get out of this
          ;; loop we'll try to check against the primitive's symbol
          (return))

        (setq result  ;; this code is the heart of Decode/check-value
              (typecase restriction
                (list (decode-value-for-var/list
                       value-exp variable restriction))
                (referential-category
                 (decode-exp-as-ref-category value-exp restriction))
                (otherwise
                 (push-debug `(,restriction ,value-exp ,variable ,v/r))
                 (error "Unexpected type when decoding value of a ~
                           variable: ~a" restriction))))

        (unless (and (consp result)
                     (eq (car result) :violation))
          (setq succeeded? result)))

      ;; after the loop
      (unless succeeded?
        (error "None of the alternatives in the value restrictions ~
                on~%  ~A~%~a~%were satisfied by ~a"
               variable v/r value-exp))
      succeeded? ))

   ((eq (car v/r) :primitive)
    (decode-value-for-primitive-v/r value-exp (cadr v/r) variable))

   (t
    (error "The value restriction -- ~A~
            ~%is a list but it isn't based on the keywords ~
            :primitive or :or"
           v/r))))



(defun decode-value-for-primitive-v/r (value-exp v/r variable)
  (if (consp v/r)
    (then
      (unless (eq (first v/r) :or)
        (error "The ':primitive' value restriction is a list ~
                ~%but its first item is not the keyword ':or'~
                ~%  variable: ~A~
                ~%  v/r: ~A" variable v/r))
      (let ( result  succeeded )
        (dolist (restriction (cdr v/r))
          (setq result
                (decode-value-for-primitive-v/r
                 value-exp restriction variable))
          (unless (and (consp result)
                       (eq (car result) :violation))
            (setq succeeded result)))
        (unless succeeded
          (error "None of the alternatives in the value restrictions ~
                on~%  ~A~%were satisfied~%  ~A~%~%"
               value-exp v/r))
        succeeded ))

    (case v/r
      (word
       (cond ((word-p value-exp)
              ;; maybe the callers should be consistent in how far
              ;; along they are in their evaluations, then again
              ;; maybe it should be ok to pass a value to a find or
              ;; a make function rather than a value expression
              value-exp)
             ((stringp value-exp)
              (resolve-string-to-word/make value-exp))
             ((polyword-p value-exp)
              value-exp)
             ((consp value-exp)
              (if (typep (car value-exp) 'head-keyword)
                ;; only pass on the morphology spec.
                (let* ((pname (second value-exp))
                       (word (resolve-string-to-word/make pname))
                       (special-cases (cddr value-exp)))
                  (cons word special-cases))
                (v/r-violation "A cons, ~a, that isn't word morphology ~
                                passed as value~
                              ~%for the variable ~A,~
                              ~%which is restricted to taking words."
                               value-exp variable)))
             (t
              (v/r-violation "Non-string, ~A, passed as value~
                              ~%for the variable ~A,~
                              ~%which is restricted to taking words."
                             value-exp variable))))

      (polyword
       (if (polyword-p value-exp)
         value-exp
         (v/r-violation "Non-string, ~A, passed as value~
                         ~%for the variable ~A,~
                         ~%which is restricted to taking polywords."
                        value-exp variable)))
      
      (cons
       (unless (consp value-exp)
         (v/r-violation "The value ~A was passed in to be bound to the ~
                         variable~%   ~A~%which is restricted to be a ~
                         cons~%but it is a ~A" value-exp variable
                        (type-of value-exp)))
       value-exp)
      
      (list
       (unless (listp value-exp)
         (v/r-violation "The value ~A was passed in to be bound to the ~
                         variable~%   ~A~%which is restricted to be a ~
                         list~%but it is a ~A" value-exp variable
                        (type-of value-exp)))
       ;; without more restictive information, we just have
       ;; to take it as ok by itself without looking at any
       ;; of the items in the list
       value-exp)
      
      (integer
       (unless (integerp value-exp)
         (v/r-violation "The value ~A was passed in to be bound to the ~
                         variable~%   ~A~%which is restricted to be an ~
                         integer~%but it is a ~A" value-exp variable
                        (type-of value-exp)))
       value-exp )
      
      (fixnum
       (unless (typep value-exp 'fixnum)
         (v/r-violation "The value ~A was passed in to be bound to the ~
                         variable~%   ~A~%which is restricted to be a ~
                         fixnum~%but it is a ~A" value-exp variable
                        (type-of value-exp)))
       value-exp )
      
      (number
       (unless (numberp value-exp)
         (v/r-violation "The value ~A was passed in to be bound to the ~
                         variable~%   ~A~%which is restricted to be a ~
                         number~%but it is a ~A" value-exp variable
                        (type-of value-exp)))
       value-exp )
      
      (position
       (unless (position-p value-exp)
         (v/r-violation "The value ~A was passed in to be bound to the ~
                         variable~%   ~A~%which is restricted to be a ~
                         position~%but it is a ~A" value-exp variable
                        (type-of value-exp)))
       value-exp )

      (pathname
       (unless (pathnamep value-exp)
         (v/r-violation "The value ~A was passed in to be bound to the ~
                         variable~%   ~A~%which is restricted to be a ~
                         pathname~%but it is a ~A" value-exp variable
                        (type-of value-exp)))
       value-exp )

      (symbol
       (unless (symbolp value-exp)
         (v/r-violation "The value ~A was passed in to be bound to the ~
                         variable~%   ~A~%which is restricted to be a ~
                         symbol~%but it is a ~A" value-exp variable
                        (type-of value-exp)))
       value-exp )

      (string
       (unless (stringp value-exp)
         (v/r-violation "The value ~S was passed in to be bound to the ~
                         variable~%   ~A~%which is restricted to be a ~
                         string~%but it is a ~A" value-exp variable
                         (type-of value-exp)))
       value-exp)
      
      (category
       (unless (symbolp value-exp)
         (v/r-violation "Expected to get a symbol that names a category ~
                         to bind to the variable ~a~%but got a ~a"
                        variable (type-of value-exp)))
       (category-named value-exp :break-if-no-category))

      (lambda-variable
       (unless (lambda-variable-p value-exp)
         (v/r-violation "The value ~A was passed in to be bound to the ~
                         variable~%   ~A~%which is restricted to be a ~
                         lambda variable~%but it is a ~A" value-exp variable
                         (type-of value-exp)))
       value-exp )
      
      (otherwise
       (error "New kind of primitive value restriction: ~A"
              v/r)))))
