;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1999,2011-2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:places:countries:"
;;;  version:  1.5 September 2013

;; 1.0 (10/12/92 v2.1) introducing new semantics
;; 1.1 (9/7/93 v2.3) adding a define routine and a realization
;;     (1/18/94) added autodef form.  4/11 added String/country
;;     (9/12) tweeked the autodef. (1/31/99) stashed the rules on the plist
;;     (8/6/07) Changed treatment of adjectives to accommodate Fire's dm&p.
;; 1.2 (7/21/11) Added ethnicities since they pattern essentially the same
;;      way. Removed the new-dm&p constraint, which was for making
;; 1.3 (3/4/13) Reworked define-country to not do anything fancy with
;;      the adjective form because places/countries/relation.lisp will
;;      handle that just from the adjective. Added brackets 3/6/13
;; 1.4 (6/14/13) reworked the def form a bit. 
;; 1.5 (9/25/13) Added city option to the countries def form. 

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

(defun define-country (name &key adjective aliases ;; Add 'language' for "Hebrew"
                            cities)
  (let ((country (define-or-find-individual 'country :name name))
        (category (category-named 'country))
        word  rules )
    ;; The name gets  ].proper-noun proper-noun.[  is that ok?
    (when (or adjective aliases)
      (flet ((adjective-rule (string)
               (setq word (resolve-string-to-word/make string))
               (assign-brackets-to-adjective word)
               (define-cfr category `(,word)
                :form category::adjective ;; or proper-adjective
                 ;; it's a question of picking up form rules
                :referent country))
             (alias-rule (string)
               (setq word (resolve-string-to-word/make string))
               (assign-brackets-as-a-common-noun word)
               (define-cfr category `(,word)
                 :form category::proper-noun
                 :referent country)))
        (when adjective
          (if (consp adjective)
            (loop for adj in adjective
              do (push (adjective-rule adj) rules))
            (push (adjective-rule adjective) rules)))
        (when aliases
          (if (consp aliases)
            (loop for alias in aliases
              do (push (alias-rule alias) rules))))))
    (push-onto-plist country rules :rules)
    (when cities
      (dolist (city-string cities)
        (let ((city (define-or-find-individual 'city :name city-string)))
          (bind-variable 'country country city))))
    (values country
            rules)))


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

