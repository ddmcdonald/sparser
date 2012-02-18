;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE -*-
;;; $Id: postprocess-objects.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86 objects;postprocess-objects

;;; Copyright (C) 1985, 1986, 1987, 1988, 1995  David D. McDonald
;;;   and the Mumble Development Group. 
;;; Copyright (c) 1995-2003 David D. McDonald,  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

;; Changelog
;;  6/6/95 ddm - added an optional part-of-speech argument to Word-for-string
;;  3/13/99 ddm - modified define-word to break out define-word/expr so it
;;   could be used in a constructed function with the pname defined by an
;;   expression.
;;  7/27/99 ddm -- added the function Wrap-in-a-default-single-choice and
;;   some subroutines to make single-choice objects on the fly when they
;;   are just sugar around phrases and not broadly applicable.
;;  5/12/03 ddm -- removed the string contraint from the pronoun-cases
;;   defstruct to allow them to be populated with fewer than the full set
;;   of cases under MCL version 5.0.

(in-package :mumble)

;############################################################
;   DEFINING MACROS AND POSTPROCESSING FUNCTIONS
;############################################################

;;; Parameters are used all over the place, but they are not defined anywhere;
;;; their definition is automatic anytime something has a formal parameter list,
;;; such as a realization class or attachment class.  Therefore, the following
;;; function is quite useful in postprocessing, since we just mapcar it across a
;;; list of symbols, and it makes parameter objects.

(defun postprocess-parameter (symbol)
  ;; The call to mumble-value here is not strictly necessary, but it prevents
  ;; Lisp from complaining that, for example, #<parameter AGENT> was defined
  ;; 118 times in the BOOTSTRAP file.  META-. isn't particularly meaningful
  ;; for parameters and that's all we're giving up.
  (or (mumble-value symbol 'parameter)
      (create-and-catalog symbol 'parameter 'name symbol)))


;; 3/13/99 - ddm
;; At this point I've started to need to funcall object definitions,
;; specifically words, which meant rewriting the basic macro to
;; shift it to the style in Sparser where the macro is immediately
;; rewritten as a function with identical args (and suitable for
;; funcall). Unfortunately this doesn't work well if there is an
;; &rest plist tail where the tags are symbols (rather than keywords),
;; hence this adjustment routine.
(defun quote-odd-elements (list)
  ;; i.e. changes (plural "mice") to ('plural "mice")
  (let ((odd? t)  revised-list )
    (dolist (element list)
      (if odd?
        (push `(quote ,element) revised-list)
        (push element revised-list))
      (setq odd? (not odd?)))          
    (nreverse revised-list)))



;#################################################################
;   Bundle-types
;#################################################################



(defmacro define-bundle-type   (name driver &rest plist)
  `(create-and-catalog
     ',name 'bundle-type
     'name  ',name
     'driver ',driver 
     'accessory-list ',(getf plist 'accessory-list)))

(define-postprocessing-function  bundle-type  (B)
  (set-accessory-list B (mapcar #'accessory-type-named (accessory-list B))))


;################################################################
;  Accessory-types
;################################################################

(defmacro define-accessory-type  (name possible-values)
  `(create-and-catalog
     ',name 'accessory-type
     'name ',name
     'possible-values ',possible-values))

(define-postprocessing-function accessory-type (A)
  (set-possible-values
    A
    (mapcar #'(lambda (acc)
		(if (symbolp acc)
		    (create-and-catalog
		      acc 'accessory-value
		      'name acc
		      'corresponding-type A)
		    acc))
	    (possible-values A))))

;;; This function doesn't belong here, but if anyone has
;;; a better idea, go for it.
(defun appropriate-value-for-accessory? (accessory accessory-value)
  (when (not (typep accessory 'accessory-type))
    (mbug "Appropriate-value-for-accessory? called using ~A instead ~
           of an accessory-type." accessory))
  (when (not (typep accessory-value 'accessory-value))
    (mbug "Appropriate-value-for-accessory? called using ~A instead ~
           of an accessory-value." accessory-value))
  (member accessory-value (possible-values accessory)))


;################################################################
;           tree-familyes -- basic definitions
;################################################################

(defmacro define-tree-family  (name parameters &body choices)
  `(create-and-catalog
     ',name 'tree-family
     'name  ',name
     'parameters  ',parameters
     'choices  ',choices))

(define-postprocessing-function   tree-family  (R)
  (set-parameters R (mapcar #'postprocess-parameter   (parameters R)))
  (set-choices    R (mapcar #'postprocess-tree-family-choice (choices R))))


(defmacro define-curried-tree-family 
          (name parameters name-of-reference-class bindings-alist)
  `(create-and-catalog ',name 'curried-tree-family
     'name ',name
     'parameters ',parameters
     'bindings ',bindings-alist
     'reference-tree-family ',name-of-reference-class))


(define-postprocessing-function  curried-tree-family (R)
  (let ((reference-class
	  (tree-family-named (reference-tree-family R))))
    (set-reference-tree-family R reference-class)
    (set-choices    R (choices reference-class))
    (set-parameters R (mapcar #'postprocess-parameter (parameters R)))
    (set-bindings   R (mapcar #'postprocess-binding (bindings R)))))

(defun postprocess-binding (binding)
  "Currently, tree-families can only be curried by fixing parameters to WORDS."
  (dbind (parameter value) binding
    (if (stringp value)
	(cons (postprocess-parameter parameter)
	      (word-for-string value))
	(mbug "Unexpected value for a binding: ~s to ~s" parameter value))))

;;this is used by the text planner to build curried
;; tree-families on the fly.  it doesn't try to see if it's
;; already been define or catalog it--need to rethink why.
;; mwm 12/88

(defun build-curried-tree-family (class parameters bindings)
  (let* ((name (intern (cadr (assoc 'verb bindings))))
	(new-class
	  (make-curried-tree-family
	    :name name
	    :parameters parameters 
	    :choices (choices class)
	    :bindings (mapcar #'postprocess-binding bindings)
	    :reference-tree-family class)))
    
    new-class  ))




;;; The syntax of a choice is
#||
    ((name . args)
     grammatical-characteristics
     argument-characteristics
     required-arguments)
||#

(defun lookup-choice-name (choice-name)
  "A CHOICE-NAME may be a WORD (denoted by a quoted string), a PHRASE, a TRACE,
a tree-family, or a PARAMETER."
  (flet ((possible-choice? (value)
	   (typep value '(or phrase ttrace tree-family parameter))))
    (if (stringp choice-name)
	(word-for-string choice-name)
	(let ((value   (get choice-name 'mumble-symbol)))
	  (cond ((null value)
		 (mbug "Choice-name corresponds to no valid Mumble objects:  ~s"
		       choice-name))
		((possible-choice? value)
		 value)
		((listp value)
		 (let ((possibles  (remove-if-not #'possible-choice? value)))
		   (if (null (cdr possibles))
		       (car possibles)
		       (mbug "Ambiguous choice ~s, with possible values ~s"
			     choice-name possibles))))
		(t
		 (mbug "Choice has illegal type:  ~s" choice-name value)))))))
 
(defun postp-actual-parameter (actual)
  "Of the possible choices, WORDs and PARAMETERs don't take arguments, so the 
`args' part of the syntax (see above) is null.  PHRASEs and TREE-FAMILIES
take actual arguments which can be: a parameter of the class that this is a 
choice of, a trace [denoted (thing :trace)], or a WORD [denoted as a string].
TRACEs are a list of a parameter of the realizaton-class and one of the
keywords :there-trace or :trace.  This function takes those notations and 
converts them into the correct Mumble objects."
  (typecase actual
    (string    (word-for-string actual))
    (cons
      (let ((allowable-types
	      '(:there-trace :ttrace :wh-acc-value)))
	(cond ((member (car actual) allowable-types)
	       actual)
	      ((member (cadr actual) allowable-types)
	       (cons (parameter-named (car actual)) (cdr actual)))
	      (t (mbug "Illegal actual parameter:  ~s" actual)))))
    (symbol    (parameter-named actual))
    (otherwise (mbug "Illegal actual parameter:  ~s" actual))))


(defun postprocess-tree-family-choice (C)
  (let ((name-and-args (car C))
	(gcs (cadr (member ':grammatical-characteristics C)))
	(acs (cadr (member ':argument-characteristics C)))
	(ra  (cadr (member ':required-accessories C))))
    (dbind (name &rest args) name-and-args
      (let ((real-choice    (lookup-choice-name name))
	    (real-args      (mapcar #'postp-actual-parameter args))
	    (real-gcs       (mapcar #'grammatical-characteristic-named gcs))
	    (real-acs       (postprocess-argument-characteristics acs))
	    (real-ra        (postprocess-required-accessories-field ra)))
	;; It doesn't make sense to catalog these things, because they don't 
	;; have a sensible `name,' the first argument to create-and-catalog.
	;; They're really a `call' (akin to a Lisp function call) to the actual
	;; choice, together with the actual arguments.  We borrow the `name'
	;; of the actual choice for lack of any better name.
	(make-tree-family-choice
	  :postprocessed?               t
	  :name                         (name real-choice)
 	  :argument-list                real-args
	  :choice                       real-choice
	  :grammatical-characteristics  real-gcs
	  :argument-characteristics     real-acs
	  :required-accessories		real-ra)))))

(defun postprocess-required-accessories-field  (list)
  "Syntax of the required accessories is a list of accessories (keywords)
each optionally followed by a value (symbol) which must be a parameter 
to the tree-familr."
  (flet ((possible-acc-val? (value)
	   (typep value '(or accessory-value parameter))))
    (mapcar
      #'(lambda (item)
	  (etypecase item
	    (keyword (accessory-type-named item))
	    (symbol
	      (let ((value (get item 'mumble-symbol)))
		(cond ((null value)
		       (mbug "acc-value corresponds to no valid Mumble objects:  ~s" value))
		      ((possible-acc-val? value)
		       value)
		      ((listp value)
		       (let ((possibles  (remove-if-not #'possible-acc-val? value)))
			 (if (null (cdr possibles))
			     (car possibles)
			     (mbug "Ambiguous choice ~s, with possible values ~s"
				   item possibles))))
		      (t
		       (mbug "Choice has illegal type:  ~s" item value))))  )))
      list)))


(defun postprocess-argument-characteristics (characteristics-list)
  "An argument-characteristic is a function-like object and some
parameters to run it on.  The parameters are some subset of the arguments to
the realization class.  The source syntax for a list of these is a flat 
alternating list:  (name1 arglist1 name2 arglist2 ...).  Postprocessing 
converts it to an association list of names and arglists, to make the code in
the virtual machine cleaner."
  (let (a-list)
    (do ((name     (car  characteristics-list) (car  rest))
	 (arg	   (cadr characteristics-list) (cadr rest))
	 (rest     (cddr characteristics-list) (cddr rest)))
	((null name)
	 a-list)
      (let ((characteristic (argument-characteristic-named name))
	    (parameter      (parameter-named arg)))
	(push (cons characteristic parameter) a-list)))))

;############################################################
;   SINGLE-CHOICES
;############################################################



(defmacro  define-single-choice  (name &rest plist)
  `(create-and-catalog
     ',name 'single-choice
     'name  ',name
     'choice ',(or (and (member :choice-is-argument plist)
			;; the keyword becomes the field's value
			:choice-is-argument)
		   (getf plist :phrase)
		   (mbug "no choice or suitable keyword specified"))
     'grammatical-characteristics ',(cadr (member
					     ':grammatical-characteristics
					     plist ))
     'argument-characteristics  ',(cadr (member
					  ':argument-charactersitics
					  plist ))
     'required-accessories  ',(cadr (member ':required-accessories plist))
     ))


(defparameter *phrases-to-single-choices* (make-hash-table :test #'eq))

;; This is an expeditious way to get from deliberately selected phrases
;; to things that can be kernels without having to predefine each one.
;; In particular we are dealing with objects rather than expressions
(defun Wrap-in-a-default-single-choice (phrase)
  (or (gethash phrase *phrases-to-single-choices*)
      (let* ((name (intern (string-append (symbol-name (name phrase))
                                          "-single-choice")
                           (find-package :mumble)))
             (sc (create-object (mtype 'single-choice) nil)))
        (set-name sc name)
        (set-choice sc phrase)
        (set-grammatical-characteristics 
         sc (list (corresponding-grammatical-characteristic
                   (head-node-of-phrase phrase))))
        (setf (postprocessed? sc) 'done-programmatically)
        
        (setf (gethash phrase *phrases-to-single-choices*) sc)
        sc )))

(defun Corresponding-grammatical-characteristic (node-label)
  (cond ((eq node-label (node-label-named 'number))
         (grammatical-characteristic-named 'np))
        (t 
         (break "Need entry for characteristic corresponding to ~a" node-label))))

;; move !!
(defvar *phrase* nil)
(defun Head-node-of-phrase (phrase)
  (setq *phrase* phrase)
  ;; A convenient abstraction in case the implementation should ever change
  (let ((label (caar (definition phrase))))
    (unless (node-label-p label)
      (error "Data structure confusion: Expected ~a ~
              ~%to be the root node of the phrase ~a" label phrase))
    label ))
                                         



(define-postprocessing-function single-choice   (C)
  ;;mm2/4/91 extended to let the choice be a function
  ;;this is to get flat phrases like conjuctions
  (let ((name-of-choice (choice C)))
    (set-choice C (if (eq name-of-choice :choice-is-argument)
		    :choice-is-argument
		    (or (mumble-value name-of-choice 'phrase)
			name-of-choice))))
  (set-grammatical-characteristics
    C (mapcar #'grammatical-characteristic-named (grammatical-characteristics C)))
  (set-argument-characteristics
    C (postprocess-argument-characteristics  (argument-characteristics C)))
  (set-required-accessories
    C (postprocess-required-accessories-field (required-accessories C)))
  )


;############################################################
;    CHARACTERISTICS
;############################################################

(defmacro  define-grammatical-characteristic  (name)
    `(create-and-catalog
       ',name 'grammatical-characteristic
       'name  ',name))



(defmacro  define-argument-characteristic  (name  parameter consistency-test)
  `(create-and-catalog
     ',name 'argument-characteristic
     'name  ',name
     'parameter  ',parameter
     'consistency-test   ',consistency-test))


;############################################################
;   LABELS
;############################################################


(defmacro  define-node-label  (name &rest plist)
  `(create-and-catalog
     ',name 'node-label
     'name  ',name
     'associated-attachment-points  ',(getf plist 'associated-attachment-points)
     'word-stream-actions           ',(getf plist 'word-stream-actions)))

(define-postprocessing-function  node-label  (L)
  (set-associated-attachment-points
    L (mapcar #'attachment-point-named (associated-attachment-points L)))
  (set-word-stream-actions
    L (mapcar #'postprocess-word-stream-action (word-stream-actions L))))

(defmacro  define-slot-label  (name &rest plist)
  `(create-and-catalog ',name 'slot-label
     'name  ',name
     'grammatical-constraints       ',(getf plist 'grammatical-constraints)
     'associated-attachment-points  ',(getf plist 'associated-attachment-points)
     'word-stream-actions           ',(getf plist 'word-stream-actions)))

(define-postprocessing-function  slot-label  (L)  
  (set-grammatical-constraints
    L (mapcar #'grammatical-characteristic-named (grammatical-constraints L)))
  (set-associated-attachment-points
    L (mapcar #'attachment-point-named (associated-attachment-points L)))
  (set-word-stream-actions
    L (mapcar #'postprocess-word-stream-action (word-stream-actions L))))

(defmacro  define-word-label  (name)
  `(create-and-catalog ',name 'word-label
     'name  ',name))

(define-postprocessing-function  word-label (name) 
  ;;no postprocessing needed
  (declare (ignore name)))

(defmacro  define-word-stream-action-type  (name &rest ws-action-body)
  `(create-and-catalog ',name 'word-stream-action-type
     'name  ',name
     'ws-action  ',ws-action-body))

(define-postprocessing-function  word-stream-action-type (WSAT)  
  ;;no postprocessing needed 
  (let* ((fn-name (intern (concatenate 'string (symbol-name (name WSAT))
					 "-ACTION")))
         (raw-fn `(defun ,fn-name (object)
		    ,@(ws-action WSAT))))
    (eval raw-fn)
    (set-ws-action WSAT fn-name)))


(define-postprocessing-function  word-stream-action (WSA)
  (dbind (type moment &optional obj cond) WSA
    ;; It doesn't make sense to catalog these things, because they don't
    ;; have a sensible `name,' the first argument to create-and-catalog
    (make-word-stream-action
      :postprocessed? t
      :name           type
      :action-type    (word-stream-action-type-named type)
      :moment         moment
      :wsa-condition      cond
      :object
      (case type
	(function-word (word-for-string obj))
	(punctuation   (punctuation-mark-named obj))))
    ))

;############################################################
;   words
;############################################################


(defmacro  define-word  ( pname word-labels &rest irregularities )
  `(define-word/expr ,pname ',word-labels ,@(quote-odd-elements irregularities)))

(defun define-word/expr ( pname word-labels &rest irregularities )
  (let* ((name (intern pname))  ;;(string-upcase pname)
         (object (create-and-catalog
                    name 'word
                    'name name
                    'pname pname
                    'word-labels word-labels
                    'irregularities  irregularities)))
       (associate-pname-with-word pname object)))

(defparameter *pnames-to-words* (make-hash-table :test 'equal))

(defun associate-pname-with-word (pname new-word)
  (setf (gethash pname *pnames-to-words*) new-word))

(defun word-for-string (string  &optional pos)
  (let ((word (gethash string *pnames-to-words*)))
    (or word 
	(make-a-new-word string pos))
    ))

(define-postprocessing-function word  (W)
  (set-word-labels W (mapcar #'word-label-named (word-labels W))))


(defun make-a-new-word (word &optional pos)
  ;;very limited version of the original pop-up menu version in Spokesman
  (let* ((name (if (stringp word) (intern word) word))
	 (pname (string word))
         (labels (or pos 'noun))
	 (new-word (create-and-catalog
		    name 'word
		    'name name
		    'pname pname
		    'word-labels (list labels)
		    'irregularities  nil)))
    (associate-pname-with-word pname new-word)
    new-word))


(defstruct (pronoun-cases (:conc-name ""))
  
  "Most languages inflect words based the properties `number,' `gender,' 
`person,' and `case.'  [We don't know what the correct umbrella term is for such
properties.]  The first two properties are based on the semantics of the 
referent object, and therefore are derived from the underlying model.  [Note, by
`gender' we mean that which distinguishes `he' from `she,' not `la table' from
`le chaise.'  English words do not have gender, so there is no provision in 
Mumble for storing or processing such information.]  The third property, 
`person,' is derived from the discourse context, and therefore is determined by
the planner.  Again, this is not Mumble's responsibility--Mumble will simply be
told what the person is.  Note that for first and second person and for third
person plural, the `gender' property is unimportant [at least in English], so 
in those cases gender will be `neuter.'
  The fourth property, `case,'is determined by syntactic position, so a 
first-person, singular masculine pronoun in the subject is `he,' while if it's in 
the object, it's `him.'  Since Mumble is best able to determine the syntactic 
environment of a pronoun, it is in charge of morphologically specializing the 
pronoun by case.  That's what these structures are for.  There is one of them 
for each pronoun, and they store the correct string for each possible case.  
These structures are stored in the CASE field of PRONOUN objects.
  The possible cases are:  nominative, objective, genitive, reflexive, and
possessive."
  
  (nominative    nil) ;; :type string)
  (objective     nil) ;; :type string)
  (genitive      nil) ;; :type string)
  (reflexive     nil) ;; :type string)
  (possessive-np nil) ;; :type string)
     ;; The string constraint was ignored in MCL version1 through 4. But MCL 5.0
     ;; won't accept a nil in any of the fields, so the who-whom pronoun definition
     ;; blows up since it only provides values for two of the five fields.
  )

(defmacro define-pronoun (name &body plist)
  `(create-and-catalog
     ',name   'pronoun
     'name    ',name
     'person  ',(the (and symbol (member first second third))
		    (getf plist 'person))
     'number  ',(the (and symbol (member singular plural))
		    (getf plist 'number))
     'gender  ',(the (and symbol (member masculine feminine neuter))
		    (getf plist 'gender))
     'cases    ,(getf plist 'cases)))

(defmacro  define-tense-marker  (name)
  `(create-and-catalog
     ',name 'tense-marker
     'name ',name))

(defmacro  define-trace  (name)
  `(create-and-catalog
     ',name 'ttrace ;; ACL won't let it override the CL function
     'name ',name))

(defmacro  define-punctuation-mark  (name pname)
  `(create-and-catalog
     ',name 'punctuation-mark
     'name ',name
     'pname ',pname))

(defmacro  define-blip  (name)
  `(create-and-catalog
     ',name 'blip
     'name ',name))



;#################################################################
;   ATTACHMENT POINTS
;#################################################################

(defmacro define-splicing-attachment-point  (name &rest plist)
  `(create-and-catalog
     ',name 'splicing-attachment-point
     'name  ',name
     'reference-labels ',(car (getf plist 'reference-labels))
     'link             ',(the (member next previous first last)
			      (car (getf plist 'link)))
     'new-slot         ',(car (getf plist 'new-slot))
     'actions          ',(car (getf plist 'actions))))

(define-postprocessing-function splicing-attachment-point (AP)
  (when (new-slot AP)
    (set-new-slot AP (slot-label-named (new-slot AP))))
  AP)


(defmacro define-lowering-attachment-point  (name &rest plist)
  `(create-and-catalog
     ',name 'lowering-attachment-point
     'name  ',name
     'new-phrase   ',(car (getf plist 'new-phrase))
     'key-position ',(car (getf plist 'key-position))
     'actions      ',(car (getf plist 'actions))))

(define-postprocessing-function lowering-attachment-point (AP)
  (when (new-phrase AP)
    (set-new-phrase AP (phrase-named (new-phrase AP))))
  (when (key-position AP)
    (set-key-position AP (label-named (key-position AP))))
  AP)


(defmacro define-attachment-class  (name parameters choices)
  `(create-and-catalog
     ',name 'attachment-class
     'name  ',name
     'parameters  ',parameters
     'choices  ',choices))

(define-postprocessing-function   attachment-class  (A)
  (set-parameters A (mapcar #'postprocess-parameter (parameters A)))
  (set-choices    A (mapcar #'postprocess-attachment-choice-sexp (choices A))))

(defun postprocess-attachment-choice-sexp (choice-sexp)
  (let* ((name  (car choice-sexp))
	(ra  (cadr (member ':required-accessories choice-sexp )))
	(real-ra (postprocess-required-accessories-field ra))
	(pra  (cadr (member ':parent-required-accessories choice-sexp )))
	(real-pra (postprocess-required-accessories-field pra)))
    (make-attachment-choice
      :name     name
      :choice   (attachment-point-named name)
      :ap-required-accessories real-ra
      :ap-parent-required-accessories real-pra)))

(defmacro  define-single-attachment-choice  (name &rest plist)
  `(create-and-catalog
     ',name 'single-attachment-choice
     'name  ',name
     'choice ',name
     'ap-required-accessories
       ',(cadr (member ':required-accessories plist ))
     'ap-parent-required-accessories
       ',(cadr (member ':parent-required-accessories plist ))
     ))

(define-postprocessing-function single-attachment-choice (SAC)
  (let ((name-of-choice (choice SAC)))
    (set-choice SAC (attachment-point-named name-of-choice))
    (set-ap-required-accessories
      SAC (postprocess-required-accessories-field
	    (ap-required-accessories SAC)))
    (set-ap-parent-required-accessories
      SAC (postprocess-required-accessories-field
	    (ap-parent-required-accessories SAC)))
    ))


;############################################################
;   PHRASES
;############################################################


(defmacro define-phrase  (name parameters &rest definition)
  `(create-and-catalog
     ',name 'phrase
     'name  ',name    
     'parameters-to-phrase ', parameters
     'definition ',definition))

(define-postprocessing-function phrase  (P)
  (set-parameters-to-phrase  P (mapcar #'postprocess-parameter
				       (parameters-to-phrase P)))
  (set-definition  P (top-level-parse-phrase (definition P))))



(defun top-level-parse-phrase  (definition)
  (let (processed-phrase
	(rest definition))
    (declare (special processed-phrase rest))
    
    ;;check for comp position
    (when (symbolp (car definition))
      (push (slot-label-named (pop rest)) processed-phrase)
      (push (parameter-named (pop rest)) processed-phrase)
      (postprocess-position-keywords 'slot-label))
    
    ;;check that definition is now a single list
    (when (not (= (length rest) 1))
      (mbug "error in phrase definition - ~" definition))

    (push (parse-phrase (car rest)) processed-phrase)
    (nreverse processed-phrase)
    ))


    
(defun parse-phrase (definition)
  (let (processed-phrase
	(rest definition))
    (declare (special processed-phrase rest))

  (let ((node (pop rest)))
    (push (node-label-named node) processed-phrase)
    (postprocess-position-keywords 'node-label)
    (do ((slot (pop rest) (pop rest)))
	((null rest))
      (push (slot-label-named slot) processed-phrase)
      (let* ((contents (pop rest))
	     (postprocessed-contents
	       (typecase contents
		 (string (word-for-string contents))
		 (symbol
		   (parameter-named contents))
		 (cons  (parse-phrase contents))
		 (otherwise
		   (mbug "unknown type of contents - ~a" contents)))))
	(push postprocessed-contents processed-phrase))
      (postprocess-position-keywords 'slot-label)))
  (nreverse processed-phrase)))


 
(defun postprocess-position-keywords  (label-type)
  (declare (special rest processed-phrase))
  (when (keywordp (car rest))
    (let ((keyword (pop rest)))
      (push keyword processed-phrase)
      (push (postprocess-keyword-value keyword (pop rest) label-type)
	    processed-phrase)
      (postprocess-position-keywords label-type))))

(defun postprocess-keyword-value (keyword value label-type)
  (case keyword
    (:additional-labels
      (flet ((return-label (v)
	       (return-object-of-type label-type v)))
	(typecase value
	  (cons   (mapcar #'return-label value))
	  (symbol (list (return-label value))))))
    (:set-state  value)
    (otherwise (mbug "postprocess-keyword-value unknown position keyword - ~a" 
		     keyword))))


;#########################################################################
;  regular interface
;#########################################################################

(defmacro define-specification-template  (name parameters &rest body)
  "All the postprocessing presently allowed for happens right here.
   Ultimately we'd want to sugar the body of the mapping a great deal,
   right now it's just straight calls to make-kernal-specification etc."
  `(create-and-catalog ',name 'specification-template
     'name                         ',name
     'parameter-list               ',parameters
     'function-from-objects-to-rspecs  ',body) )


(define-postprocessing-function  specification-template  (ss)
  (let* ((fn-name (intern (concatenate 'string
                                       (symbol-name (name ss))
                                       "-function")))
         (raw-fn `(defun ,fn-name ,(parameter-list ss)
                    ,@(function-from-objects-to-rspecs ss)) )
         (fn (eval raw-fn)))
    (set-function-from-objects-to-rspecs ss fn)))
