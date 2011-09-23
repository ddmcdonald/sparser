;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1995,2011  David D. McDonald  -- all rights reserved
;;; $Id:$
;;;
;;;      File:   "resolve"
;;;    Module:   "objects;chart:generics:"
;;;   Version:   1.5 August 2011

;; 1.1 (10/31 v2.0.1) Changed Resolve/make to do a Resolve first, and
;;     moved over the symbol resolutions
;; 1.2 (1/15/92 v2.2) moved the word resolving code to objects;words
;; 1.3 (2/20) Added "source" parameter for cataloging
;;     (7/19 v2.3) moved in resolve.../check
;; 1.4 (10/12) Added Resolve-form-label
;; 1.5 (8/31/11) Added a typecase over all the regular objects I could
;;      think of. This simplifies using def-cfr/expr from code when
;;      you already have the objects.

(in-package :sparser)

;;;---------------------------------------------------------------
;;; defining words/polywords/categories from anonymous data types
;;;---------------------------------------------------------------

;; This code takes non-specific arguments, examines them, and then
;; dispatches to the appropriate specific operation


(defun resolve/make (arg &key source)
  ;; The argument is the external form of some object in the analyzer's
  ;; grammar, i.e. a symbol or a string.  The corresponding internal
  ;; object can be determined from the arg's properties.  If the
  ;; object does already not exist, it is made.

  (unless source (setq source :define-category))

  (let ((already-existing-object (resolve arg)))
    (if already-existing-object
      already-existing-object
      (typecase arg
        (string
         (resolve-string-to-word/make arg))
        (symbol
         (let ((word-symbol (find-symbol (symbol-name arg)
                                         *word-package*)))
           (if word-symbol
             (then
               ;; check whether it's the kind of word one refers to by its
               ;; symbol, and so should be taken as the target of the
               ;; expression.  Otherwise assume it is intended to be a
               ;; category that happens to have the same print name as one
               ;; of the words
               ;;
               (let ((word (symbol-value word-symbol)))
                 (cond ((member :use-symbol-name-when-printing
                                (word-plist word))
                        (symbol-value word-symbol))
                       (t (def-category/expr arg :source source)))))
             (else
               (def-category/expr arg :source source)))))
        (otherwise
         (error "Expected the argument to resolve/make to be a symbol or a sting ~
                  but got a ~a: ~a" (type-of arg) arg))))))


;;;----------------------------
;;; generalized "find" routine
;;;----------------------------

(defun resolve (arg)
  "As with Resolve/make, the argument is the name of some object that
   could be in the analyzer's grammar, the type of object being determined
   from the argument's properties as a lisp object.  If the object exists
   it is returned, otherwise NIL is returned."
  (typecase arg
    (word arg)
    (polyword arg)
    (category arg)
    (string
     (resolve-string-to-word arg))
    (symbol
     (let ((word-symbol (find-symbol (symbol-name arg)
                                     *word-package*)))
       (if word-symbol
         (then
           (let ((word (symbol-value word-symbol)))
             (cond ((member :use-symbol-name-when-printing
                            (word-plist word))
                    (symbol-value word-symbol))
                   (t (resolve-symbol-to-category arg)))))
         (else
           (resolve-symbol-to-category arg)))))
    (otherwise
     (error "Expected the argument to resolve to be a symbol or a sting ~
              but got a ~a: ~a" (type-of arg) arg))))


;;;---------------------------------------
;;; resolutions over symbols (categories)
;;;---------------------------------------

(defun resolve-symbol-to-category (symbol)
  (let ((c-symbol (find-symbol (symbol-name symbol)
                               *category-package*)))
    (when (boundp c-symbol)
      (symbol-value c-symbol))))


(defun resolve-symbol-to-category/check (symbol)
  (let ((category (resolve-symbol-to-category symbol)))
    (unless category
      (error "The category named ~A is not yet defined." symbol))
    category))


(defun resolve-or-make/symbol-to-category (symbol &key source)
  (unless source (setq source :define-category))
  (let ((c-symbol (find-symbol (symbol-name symbol)
                               *category-package*)))
    (if (boundp c-symbol)
      (symbol-value c-symbol)
      (def-category/expr symbol :source source))))


;;;--------------------------------------
;;; special forms with type restrictions
;;;--------------------------------------

(defun resolve-form-label (symbol)
  (let ((category (resolve-symbol-to-category symbol)))
    (when category
      (when (member :form-category (unit-plist category))
        category ))))

