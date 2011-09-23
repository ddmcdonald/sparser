;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1999,2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "object"
;;;   Module:  "model;core:places:countries:"
;;;  version:  1.2 July 2011

;; 1.0 (10/12/92 v2.1) introducing new semantics
;; 1.1 (9/7/93 v2.3) adding a define routine and a realization
;;     (1/18/94) added autodef form.  4/11 added String/country
;;     (9/12) tweeked the autodef. (1/31/99) stashed the rules on the plist
;;     (8/6/07) Changed treatment of adjectives to accommodate Fire's dm&p.
;; 1.2 (7/21/11) Added ethnicities since they pattern essentially the same
;;      way. Removed the new-dm&p constraint, which was for making

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  country
  :instantiates  self
  :specializes   location
  :binds ((name :primitive word)
          (adjective-form  :primitive word)
          (aliases  :primitive list))
  :index (:permanent :key name)
  :realization (:proper-noun name))


;;;----------
;;; def form
;;;----------

;; we only need this because we're using a different syntactic category
;; for the adjectival form than the noun, and because we're including
;; a provision for aliases

(defun define-country (name &key adjective aliases)
  (let ((country (category-named 'country))
        (obj (define-individual 'country
               :name name))
          word  rules )

    (when adjective
      (define-adjective-function/country adjective obj))

    (when aliases
      (dolist (string aliases)
        (setq word (resolve-string-to-word/make string))
        (push (define-cfr country `(,word)
                :form (if (polyword-p word)
                        category::n-bar
                        category::np-head)
                :referent obj)
              rules)))

    (let ((rules-cons (cadr (memq :rules (unit-plist obj)))))
      (dolist (r rules)
        (rplacd rules-cons (cons r (cdr rules-cons)))))

    obj ))


;;;----------------
;;; simple printer
;;;----------------

(defun string/country (c)
  (let ((name (value-of 'name c)))
    (word-string name)))



;;;-----------------
;;; auto definition
;;;-----------------

(define-autodef-data 'country
  :display-string "country"
  :form 'define-country
  :module *countries*
  :dossier "dossier;countries:"
  :description "A word or polyword that names a specific country"
  :examples "\"Japan\", \"U.S.A.\"" )

