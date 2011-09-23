;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "decode"
;;;   Module:  "objects;model:individuals:"
;;;  version:  0.3 July 1994

;; pulled from [find] 5/25/93 v2.3
;; 0.1 (9/18) added referential-categories to the options for decoding
;; 0.2 (10/22) tweeked cases to allow strings interpreted as names
;; 0.3 (12/29) added null check against value-exps in decoding
;;     (5/24) added 'position' as a type of primitive
;;     (7/28) added 'fixnum' and 'cons'

(in-package :sparser)


;;;-------------------------------------------------------------
;;; translating expressions to objects for Binding Instructions
;;;-------------------------------------------------------------

(defun decode-category-specific-binding-instr-exps (category
                                                    binding-plist)
  (let ( instructions variable value )

    (do ((var-name  (car binding-plist) (car rest))
         (value-exp (cadr binding-plist) (cadr rest))
         (rest      (cddr binding-plist) (cddr rest)))
        ((null var-name))

      (unless (symbolp var-name)
        (error "Variables in a call to Find-individual should be ~
                given as symbols.~%  ~A isn't one" var-name))

      (setq variable (find-variable-in-category/named var-name
                                                      category))
      ;; ought to be a check on the type of the value-exp too,
      ;; today just assuming it's already evaluated and is correct

      (setq value (decode-value-for-variable value-exp variable))

      (push `(,variable ,value) instructions))

    (nreverse instructions)))



;;;----------------------
;;; values for variables
;;;----------------------

(defun decode-value-for-variable (value-exp variable)
  (let ((v/r (var-value-restriction variable)))

    (if (or (null v/r)
            (null value-exp))
      ;; There's no restriction, so we have no basis to decode
      ;; and just pass back what they sent in.  Ditto if the
      ;; exp is nil, which can occur in some standard code that
      ;; sets up a maximal set of bindings even when some won't
      ;; have values. 
      value-exp
      (etypecase v/r
        (list (decode-value-for-var/list
               value-exp variable v/r))

        (referential-category
         (decode-exp-as-ref-category value-exp v/r))))))

(defun decode-exp-as-ref-category (exp category)
  (etypecase exp
    (individual
     (if (eq (first (indiv-type exp))
             category)
       exp
       (break "The type of the individual given as the value,~
               ~%   ~A~%does not match the value restriction ~A"
              exp category)))
    (string
     ;; the definition has presumably come from a file rather
     ;; than code. The only sense we can make of a string is
     ;; as the name of something of the indicated category,
     ;; so we interpret it as a word acting as a name and do 
     ;; a find on it.
     (let ((word (resolve-string-to-word exp)))
       (unless word
         (break "The string ~A~%has no corresponding word and ~
                 so cannot be taken as the~%name of some ~
                 individual of type ~A"
                exp category))
       (let ((individual
              (find-individual category :name word)))
         (unless individual
           (break "There is no ~A named ~A" category word))
         individual )))))



(defun decode-value-for-var/list (value-exp variable v/r)
  ;; the value restriction is a list
  (cond
   ((eq (car v/r) :primitive)
    (case (cadr v/r)
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
             (t
              (break "Non-string, ~A, passed as value~
                      ~%for the variable ~A,~
                      ~%which is restricted to taking words."
                     value-exp variable)
              :foo )))

      (cons
       (unless (consp value-exp)
         (break "The value ~A was passed in to be bound to the ~
                 variable~%   ~A~%which is restricted to be a ~
                 cons~%but it is a ~A" value-exp variable
                (type-of value-exp)))
       value-exp)

      (list
       (unless (listp value-exp)
         (break "The value ~A was passed in to be bound to the ~
                 variable~%   ~A~%which is restricted to be a ~
                 list~%but it is a ~A" value-exp variable
                (type-of value-exp)))
       ;; without more restictive information, we just have
       ;; to take it as ok by itself without looking at any
       ;; of the items in the list
       value-exp)

      (integer
       (unless (integerp value-exp)
         (break "The value ~A was passed in to be bound to the ~
                 variable~%   ~A~%which is restricted to be an ~
                 integer~%but it is a ~A" value-exp variable
                (type-of value-exp)))
       value-exp )

      (fixnum
       (unless (fixnump value-exp)
         (break "The value ~A was passed in to be bound to the ~
                 variable~%   ~A~%which is restricted to be a ~
                 fixnum~%but it is a ~A" value-exp variable
                (type-of value-exp)))
       value-exp )

      (number
       (unless (numberp value-exp)
         (break "The value ~A was passed in to be bound to the ~
                 variable~%   ~A~%which is restricted to be a ~
                 number~%but it is a ~A" value-exp variable
                (type-of value-exp)))
       value-exp )
      (position
       (unless (position-p value-exp)
         (break "The value ~A was passed in to be bound to the ~
                 variable~%   ~A~%which is restricted to be a ~
                 position~%but it is a ~A" value-exp variable
                (type-of value-exp)))
       value-exp )

      (otherwise
       (break "New kind of primitive value restriction: ~A"
              (cadr v/r)))))
   (t
    (break "The value restriction -- ~A~
            ~%is a list but it isn't based on the keyword :primitive"
           v/r))))


