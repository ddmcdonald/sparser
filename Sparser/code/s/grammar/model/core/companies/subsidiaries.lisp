;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "subsidiaries"
;;;   Module:  "model;core:companies:"
;;;  version:  0.2 September 1995

;; initiated 1/20/94 v2.3. Reordered 5/3
;; 0.1 (7/22) call to setup the compound 'instantiates' field was wrong
;;      Also added examples to autodef
;; 0.2 (10/17) tweeked the design to have subsidiary-type
;;     (9/12/95) tweeked the autodef

(in-package :sparser)

#| Words like "unit" or "division" name kinds of subsidiaries.
   By being identified as such, a company is put into a relation
   with some parent, this relation (from the other direction) is
   that of being a subsidiary.  |#

;;;-----------------------------------------
;;; head words naming kinds of subsidiaries
;;;-----------------------------------------

;; e.g  "unit" or "division"

(define-category  kind-of-subsidiary
  :instantiates self
  :specializes company
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))


(define-autodef-data 'kind-of-subsidiary
  :module *subsidiaries*
  :display-string "kind of subsidiary"
  :form 'define-kind-of-subsidiary
  :description "a general or specific type of company subsidiary"
  :examples "\"division\" \"unit\""
  :dossier "dossiers;kinds of subsidiaries" )


(defun define-kind-of-subsidiary (string)
  (let ((word (define-word/expr string))
        (symbol (intern string *category-package*))
        cat  rules )

    (unless (setq cat (category-named symbol))

      (setq cat (define-category/expr symbol
                  `(:specializes ,category::kind-of-subsidiary
                    :instantiates ,`(company ,symbol)
                    ;; // copy the name binding ??
                    )))

      (setq rules
            (list (define-cfr category::kind-of-subsidiary
                              `( ,word )
                    :form category::np-head
                    :referent cat )

                  (define-cfr category::kind-of-subsidiary
                              `( ,(plural-version word) )
                    :form category::np-head
                    :referent `(:head ,cat
                                :subtype ,category::collection))))
      (setf (unit-plist cat)
            `(:rules ,rules ,@(unit-plist cat))))

    cat ))


;;;-------------------------------
;;; a description of a subsidiary
;;;-------------------------------
;; n.b. this has to be ordered after kind-of-subsidiary becaues
;; it refers to it in its mapping, and if ordered before the
;; defaults will define that to be an ordinary category instead
;; of a referential-category.

(link-dossier-to-module *subsidiaries*
                        "dossiers;rules for subsidaries")


(define-category  subsidiary-type
  ;; This labels consisitutents like "the Southwest Bank unit"
  ;; The actual semantic relation (below) is more general.
  :instantiates self
  :specializes kind-of-company )


(define-category  subsidiary/parent
  :specializes nil
  :instantiates self
  :binds ((parent . company)
          (subsidiary . company)
          (type . kind-of-subsidiary))
  :index (:temporary :sequential-keys parent subsidiary)
  :realization (:tree-family def+proper+np-head
                :mapping ((np . subsidiary)
                          (n-bar . subsidiary)
                          (proper-modifier . company)
                          (np-head . kind-of-subsidiary)
                          (result-type . :self)
                          (individual . subsidiary)
                          (base . type)))

      ;; /// need 'multiple-realization' to do variations like
      ;; "co's subsidiary name", etc.
      )

