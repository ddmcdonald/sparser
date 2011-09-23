;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "def form"
;;;   Module:  "objects;words:"
;;;  Version:  0.1 March 2005

;; broken out on its own 1/92
;; (5/24/93 v2.3) added a data-check
;; 0.1 (3/31/05) Added optional to define-word/expr to override the
;;   check that avoids duplicates. Required when nominalized form of
;;   a verb had the same pname as another of its forms.
;; 0.2 (1/23/07) Added *force-case-shift* and the routine to do it.

(in-package :sparser)


(defun define-word/expr (string &optional override-duplicate-check?)
  (unless (stringp string)
    (error "The argument to Define-word has to be a string~
            ~%~A is a ~A" string (type-of string)))

  (when *force-case-shift*
    (setq string (force-case-of-word-string string)))

  (populate-word-lookup-buffer/string string)
  (let ((symbol (lookup/make-word-symbol))
        new? )

    (let ((word (if (and (boundp symbol)
                         (not override-duplicate-check?))
                  (symbol-value symbol)
                  (else
                    (setq new? t)
                    (make-word
                     :symbol symbol
                     :pname  string )))))

      (when new?
        (catalog/word word symbol))
      (calculate-properties-of-words-pname/in-buffer word)
      (when new?
        (do-word-canonical-form string word))

      word )))



;;;-------------------------------------------------
;;; Overriding the case of a word when it's defined
;;;-------------------------------------------------

(unless (boundp '*force-case-shift*)
  (defparameter *force-case-shift* nil
    "Possible values are :lowercase and :uppercase. If one of these
     is set then any word that is being defined as a mixed case string
     or a string in a different case than what is specified will be
     have its case changed."))

(defun force-case-of-word-string (string)
  (if *force-case-shift*
    (case *force-case-shift*
      (:lowercase
       (string-downcase string))
      (:uppercase
       string)
      (otherwise
       (break "Illegal value for *force-case-shift*: ~a"
	      *force-case-shift*)))
    string))