;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "subsidiary"
;;;   Module:  "model;core:companies:"
;;;  version:  1.1 September 1995

;; initiated 1/20/94 v2.3. Reordered 5/3
;; 0.1 (7/22) call to setup the compound 'instantiates' field was wrong
;;      Also added examples to autodef
;; 0.2 (10/17) tweeked the design to have subsidiary-type
;;     (4/13/95) added statement allowing kos in names
;; 1.0 (5/17) revised the parent/subsid case to use the label subsidiary-type
;; 1.1 (8/9) revised it again for another set of labels and now it's good
;;      for BONE.
;;     (9/12) added module to autodef data

(in-package :sparser)

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

(occurs-in-names 'kind-of-subsidiary 'company)


(define-autodef-data 'kind-of-subsidiary
  :display-string "kind of subsidiary"
  :form 'define-kind-of-subsidiary
  :description "a general or specific type of company subsidiary"
  :examples "\"division\" \"unit\""
  :module *subsidiaries*
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





;; n.b. these have to be ordered after kind-of-subsidiary becaues
;; it refers to it in its mapping, and if ordered before the
;; defaults will define that to be an ordinary category instead
;; of a referential-category.

;;;-------------------------------
;;; a description of a subsidiary
;;;-------------------------------

#|  "a subsidiary", "a California division", "a unit of Dupont"

    The definite variants on this would call for dereferencing,
     and prefereably by a general routine, so just using the
     indefinite variant on the determiners for now and letting
     the definites stay unparsed or happen via form rules.
 |#


(define-category subsidiary-type
  :instantiates self
  :specializes company
  :binds ((type . kind-of-subsidiary)
          (parent-company . company)
          (location))
  :index (:list)
     ;; This really calls for indexing by subtype, but since that
     ;; isn't implemented, this will do if we aren't using the
     ;; information yet anyway
  :realization (:tree-family np-common-noun/indefinite
                :mapping ((np . :self)
                          (n-bar . kind-of-subsidiary)
                          (np-head . kind-of-subsidiary)
                          (kind . type))))



;;;-------------------------------------------------------
;;; a specific subsidiary identified specifically as such
;;;-------------------------------------------------------

(define-category  subsidiary-company
  ;; This labels consisitutents like "the Southwest Bank unit"
  :instantiates self
  :specializes company
  :binds ((type . kind-of-subsidiary)
          (company . company))
  :index (:sequential-keys type company)
  :realization (:tree-family def+proper+np-head
                :mapping ((np . :self)
                          (n-bar . :self)
                          (proper-modifier . company)
                          (np-head . kind-of-subsidiary)
                          (result-type . :self)
                          (individual . company)
                          (base . type))))





;;;------------------------------------------
;;; phrases relating parents to subsidiaries
;;;------------------------------------------

(define-category  subsidiary/parent
  :specializes nil
  :instantiates self
  :binds ((parent . company)
          (subsidiary . company))
  :index (:temporary :sequential-keys parent subsidiary)
  :realization (:tree-family  of/genitive
                :mapping ((larger . parent)
                          (smaller . subsidiary)
                          (result-type . subsidiary/parent)
                          (np . company)
                          (base-np . subsidiary-company)
                          (possessive . company)
                          (complement . company))))

