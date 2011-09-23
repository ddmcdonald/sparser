;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2001,2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "decode exp"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   1.10 August 2011

;; initiated 12/91
;; 1.1 (7/17/92 v2.3) Revising details to fit new representation scheme
;; 1.2 (9/3) Changed the :bind to a :with in :instantiate-individual
;; 1.3 (10/24) flushed the out-of-date referent actions and added some
;;      cases in the new semantics.
;; 1.4 (12/30) Reworking things a bit to get a single, consistent set of
;;      operations for simple (non-Krisp) cases.
;; 1.5 (2/26/93) fixed some misspellings.
;;     (5/15) ditto
;;     (6/1) had left out the case of a symbol by itself being interpreted
;;      as a category in in Def-cfr expressions -- fixed Resolve-referent-
;;      expression.
;; 1.6 (6/3) revised Decode-head to allow a symbol denoting a category
;;      as a possible argument.
;; 1.7 (6/10) revised Decode-head yet again to allow individuals
;; 1.8 (9/19) added "x-edge" cases to the numbered edge names.
;; 1.9 (2/20/01) Modified Resolve-referent-expression to permit categories directly
;;      as well as expressions denoting expressions -- needed for simple treatment
;;      of plurals.
;; 1.10 (6/11/08) Added individuals. Only seems obvious - motivated by quantifiers
;;      (8/31/11) added :method to *toplevel-referent-actions*

(in-package :sparser)


;;;--------
;;; driver
;;;--------

(defun resolve-referent-expression (exp)
  ;; called from Def-cfr/expr to examine the expression as given in
  ;; the file format of rule.  Returns the expression/object to be
  ;; used at runtime.
  
  (if (null exp)
    nil
    (typecase exp
      (list (decode-list-referent-expressions exp))
      (symbol
       (let ((category (category-named exp)))
         (unless category
           (error "The referent expression ~A, being a symbol, should ~
                   name a category~%but no category with that name ~
                   has been defined yet." exp))
         category ))
      (referential-category
       exp)
      (individual
       exp)

      (otherwise
       (error "Unexpected TYPE of referent expression:~
               ~%   ~a~
               ~%   of type ~a~
               ~%Check the syntax. Only lists denoting referent expressions ~
               or symbols ~%denoting categories, categories themselves, ~
               or individuals are legal."
              exp (type-of exp))))))


;;;--------
;;; parser
;;;--------

(defparameter *toplevel-referent-actions*
              '(:head
                :instantiate-individual
                :with
                :bind
                :subtype

                :daughter
                :function :method
                :eval
                )
  "A list of all the legal keywords.")



(defun decode-list-referent-expressions (list)
  ;; the input is given in property list format, it gets passed back
  ;; as lists of lists, one for each referent action.  If there is
  ;; only one action, then a single level of list is returned.
  ;; This is why there are two subroutines below, Pull-out-{first/next}
  ;; -sublist, that are practically identical.

  (or (member (first list) *toplevel-referent-actions* :test #'eq)
      (error "The first keyword, ~A, in the referent expression~
              ~%   ~A~
              ~%isn't one of the legal cases. Check the spelling"
             (first list) list))

  (pull-out-first-sublist list))


(defun pull-out-first-sublist (list)
  (multiple-value-bind (sublist remainder-of-list)
                       (pull-out-sub-referent-expression list)
    (let ((referent-action
           (decode-list-referent-expression sublist)))

      (if remainder-of-list
        (append (list referent-action)
                (pull-out-next-sublist remainder-of-list))
        referent-action))))


(defun pull-out-next-sublist (list)
  (multiple-value-bind (sublist remainder-of-list)
                       (pull-out-sub-referent-expression list)
    (let ((referent-action
           (decode-list-referent-expression sublist)))

      (if remainder-of-list
        (append (list referent-action)
                (pull-out-next-sublist remainder-of-list))
        (list referent-action)))))



(defun pull-out-sub-referent-expression (list)

  ;; The most common case is the list being just a single referent action
  ;; consisting of one of the designated keywords followed by some number
  ;; of arguments.  So we just accumulate arguments/terms until we hit
  ;; another toplevel keyword, whereup we normally just terminate the
  ;; scan and return the remainder and wait for another call.
  ;;
  ;; The exception is the case where the keyword is :instantiate-individual.
  ;; This case wants to incorporate any following ":with" expression
  ;; rather than leave it as a separate action.

  (let ( action accumulating-terms remainder-of-list )
    (setq action (first list))

    (do* ((remainder (rest list)     (cdr remainder))
          (term      (car remainder) (car remainder)))
         ((or (null term)
              (member term *toplevel-referent-actions*))
          (if (and (eq action :instantiate-individual)
                   (eq term :with)
                   )
            (then
              (setq action :instantiate-individual-with-binding)
              (setq accumulating-terms
                    (append accumulating-terms
                            (list (pop remainder)
                                  (pop remainder)))))
            (else
              (setq accumulating-terms
                    (nreverse accumulating-terms))
              (setq remainder-of-list remainder))))

      (when (keywordp term)
        (error "A referent expression includes the keyword ~A~
                ~%which is not one of the defined actions.~
                ~%Check the spelling.~%Keywords cannot be used as ~
                arguments to user referent functions." term))
      (push term accumulating-terms))

    (values (cons action accumulating-terms)
            remainder-of-list)))


;;;---------------------
;;; the actual decoding
;;;---------------------

(defun decode-list-referent-expression (list)
  (let ((key (first list))
        (args (rest list)))
    (case key
      (:head (decode-head args))
      (:instantiate-individual (decode-instantiate-individual args))
      (:instantiate-individual-with-binding
          (decode-instantiate-individual-with-binding args))

      (:bind  (decode-binds args))
      (:subtype (decode-subtype args))

      (:daughter (decode-daughter args))
      (:function (decode-function args))
      (:method (decode-method args))
      (:eval (decode-eval args))
      (:copy-pointer (decode-copy args))

      (otherwise
       (error "The referent action key ~A is not defined" key)))))


;;;-----------------
;;; non-Krisp cases
;;;-----------------

(defun decode-daughter (args)
  (unless (= 1 (length args))
    (break "Expected only one argument to the :daughter keyword,~
            ~%but got:  ~A" args))
  (let ((laundered-args
         (replace-with-canonical-ref-vars args)))
    `(:daughter ,@laundered-args)  ))



(defun check-and-setup-functional (args)
  ;; shared subroutine
  (let ((function-name (first args))
        (arguments (rest args)))
    ;; because the function can take any number of arguments in any of
    ;; several naming conventions, we let the number pass through and
    ;; just check that the names used make sense.
    (unless (symbolp function-name)
      (error "The first argument to the :function referent expression ~
              must be a symbol.~%    ~A is not." function-name))
    (unless (fboundp function-name)
      (format t "~%~%Warning: the function ~A~%is mentioned in a ~
                 referent expression~%but does not yet have a ~
                 definition" function-name))
    (replace-with-canonical-ref-vars arguments)))
      

(defun decode-function (args)
  (let ((function-name (first args))
        (canonical-arguments (check-and-setup-functional args)))
    `(:funcall ,function-name ,@canonical-arguments)))

(defun decode-method (args)
  (let ((function-name (first args))
        (canonical-arguments (check-and-setup-functional args)))
    `(:method ,function-name ,@canonical-arguments)))



(defun decode-eval (args)
  (unless (= 1 (length args))
    (break "Expected only one argument to the :eval keyword,~
            ~%but got:  ~A" args))
  (let ((value
         (eval (first args))))
    ;; the gratuitous variable lets us have something on the stack if
    ;; an error occurs.
    value ))


(defun decode-copy (args)
  (unless (= 1 (length args))
    (break "Expected only one argument to the :copy-pointer keyword,~
            ~%but got:  ~A" args))
  `(:copy ,@args))



;;;--------------------
;;; shared subroutines
;;;--------------------

(defun replace-with-canonical-ref-vars (list-of-args)
  (let ( laundered-args )
    (dolist (term list-of-args)
      (push (canonical-ref-var term)
            laundered-args))
    (nreverse laundered-args)))


(defun canonical-ref-var (term)
  (cond ((eq term 'left-edge)  'left-referent)
        ((eq term 'right-edge) 'right-referent)

        ((eq term 'first)  'first-daughter)
        ((eq term 'second) 'second-daughter)
        ((eq term 'third)  'third-daughter)
        ((eq term 'fourth) 'fourth-daughter)
        ((eq term 'fifth)  'fifth-daughter)
        ((eq term 'sixth)  'sixth-daughter)
        ((eq term 'seventh) 'seventh-daughter)
        ((eq term 'eighth)  'eighth-daughter)
        ((eq term 'ninth)   'ninth-daughter)
        ((eq term 'tenth)   'tenth-daughter)

        ((eq term 'first-edge)  'first-daughter)
        ((eq term 'second-edge) 'second-daughter)
        ((eq term 'third-edge)  'third-daughter)
        ((eq term 'fourth-edge) 'fourth-daughter)
        ((eq term 'fifth-edge)  'fifth-daughter)
        ((eq term 'sixth-edge)  'sixth-daughter)
        ((eq term 'seventh-edge) 'seventh-daughter)
        ((eq term 'eighth-edge)  'eighth-daughter)
        ((eq term 'ninth-edge)   'ninth-daughter)
        ((eq term 'tenth-edge)   'tenth-daughter)

        ((eq term 'left-referent)  'left-referent)
        ((eq term 'right-referent) 'right-referent)

        ((eq term 'left-daughter)  'left-referent)
        ((eq term 'right-daughter) 'right-referent)

        ((eq term 'left)  'left-referent)
        ((eq term 'right) 'right-referent)
        ((eq term :left)  'left-referent)
        ((eq term :right) 'right-referent)

        ((eq term 'first-daughter)  'first-daughter)
        ((eq term 'second-daughter) 'second-daughter)
        ((eq term 'third-daughter)  'third-daughter)
        ((eq term 'fourth-daughter) 'fourth-daughter)
        ((eq term 'fifth-daughter)  'fifth-daughter)
        ((eq term 'sixth-daughter)  'sixth-daughter)
        ((eq term 'seventh-daughter) 'seventh-daughter)
        ((eq term 'eighth-daughter)  'eighth-daughter)
        ((eq term 'ninth-daughter)   'ninth-daughter)
        ((eq term 'tenth-daughter)   'tenth-daughter)

        ((eq term 'daughter)  'daughter)

        (t nil  ;; this fn. is often used as a predicate
           )))


