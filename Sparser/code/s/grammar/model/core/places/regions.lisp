;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1995,2011-2022  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "regions"
;;;   Module:  "model;core:places:"
;;;  version:  April 2022

;; initiated 4/4/94 v2.3.  Added string/region 10/5.  Added missing typecase
;; to String-for 6/22.  (9/12) tweeked the autodef
;; (7/18/11) Starting makeover/rationalization from lots of ex.
;; (2/4/12) Changed tree family on region to defnp from definite because
;;  that better fits what's in the data: "the country" blew up with
;;  np-common-noun/definite because that makes a new individual and regions
;;  are hashed on their names -- with the gensym'd individual didn't have.
;; (2/28/13) Putting in the ETF and function to supply a region's name
;;  when we get it in an 'of' construction. 3/8/13 Why does a region-type
;;  like 'city' inherit from 'location'? Copied the relationship-to-country
;;  method to pick that up. ///Need to review the category choices and
;;  inheritance structure in here. 5/24/13 Removed the np-common-noun/defnp
;;  case from region because it was creating a form rule that was too specific.
;; (7/30/13) Rewrote relationship-to-country to use revise-parent-edge
;; (8/28/13) Provided draft content to give-kind-its-name.
;; 0.1 (1/30/14) Determined that defining a region the established way
;;   is the source of the duplicated rules in the load, so refactored it
;;   into a named regions and a relation to its type. 
;;   (4/14/14) Fixed instantiation issue in border.
;; (10/7/15) Conditioned references to countries. (3/10/16) renamed to
;; free-up 'region' for a more abstract category.

(in-package :sparser)


(eval-when (:compile-toplevel :load-toplevel :execute)
  (when *countries*

    (define-category located-in
      :instantiates self
      :specializes associated-with-country
      :binds ((country . country) ;;/// probably too narrow
              (region . location))) ;; maybe too narrow

    (def-k-method relationship-to-country ((c category::country)
                                           (r category::region-type))
      (revise-parent-edge :category category::region-type
                          :form category::np)
      (define-or-find-individual category::located-in
          :country c :region r)
      r) ;; return the referent of the right edge

    )) ;; close eval-when
#|
(base) ddm@MacBook-Pro-2 s % grep -r relationship-to-country **/*.lisp
grammar/model/core/people/names-to-people.lisp:(def-k-method relationship-to-country ((c category::country) (p category::person))
grammar/model/core/places/countries/relation.lisp:(def-k-function relationship-to-country (country object)
grammar/model/core/places/countries/relation.lisp:                          (combo-method . relationship-to-country))))
grammar/model/core/places/regions.lisp:;;  like 'city' inherit from 'location'? Copied the relationship-to-country
grammar/model/core/places/regions.lisp:;; (7/30/13) Rewrote relationship-to-country to use revise-parent-edge
grammar/model/core/places/regions.lisp:    (def-k-method relationship-to-country ((c category::country)
init/workspaces/reference-points.lisp:relationship-to-country 
init/workspaces/strider.lisp:   relationship-to-country  nationality
init/workspaces/strider.lisp:  relationship-to-country  |#

;;;--------------------------
;;; kinds of edges / borders
;;;--------------------------

;; "the forest border", "the border of the forest", "the border with Iran"

(define-category border-type
  :instantiates :self
  :specializes location
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))

(define-type-category-constructor border-type)
;; N.b. this creates define-border-type

;; dossier in [location-kinds]

(dont-check-rule-form-for-etf-named 'classifier-head/of/prep)

(define-category border
   :specializes location
   :instantiates :self
   :lemma (:common-noun "border")
   :rule-label location
   :binds ((type . border-type)
           (region . location)) ;; be more specific in v/r ?
   ;; What do we do for an index?
   :realization (:tree-family classifier-head/of/prep
                 :mapping ((classifier . region)
                           (base . type)
                           (np . location)
                           (modifier . region-type) ;; and what else?
                           (np-head . border-type)
                           (preposition . "of")
                           (pp . of-region)
                           (result-type . border))))
;; N.b. the result-type can't be self because that mapping translates
;; to the rule-label override, and we're very much instantiating a
;; border here, not a location. Location is just the label for 
;; purposes of phrase composition. 



;;;-----------------------------------
;;; specific places that are regions
;;; and not anything more specific
;;;-----------------------------------

;; Dossier of named regions is [regions]

(defun define-geographical-area (name-string #|&key part-of aliases|#)
  (let ((r (define-named-individual-with-synonyms/expr
               'geographical-region (list name-string))))
    #|(when part-of
      (push-debug `(,r ,part-of))
      (cerror "just continue"
              "Deal with part-of in region definitions ~
               now? (\"~a\")" name-string))
    ; Note to self to make sure the ancillary bits to this ...
    ;(setf (get-rules obj) rules) |#
    r))


;;--- continents

(define-category continent ;; "Asia"
  :specializes geographical-region
  :rule-label location
  :lemma (:common-noun "continent")
  :realization (:proper-noun name))

(define-type-instance-constructor continent)


;;--- oceans

(define-category body-of-water
  :specializes geographical-region
  :documentation "Typing category to make the distinction
 from the other kinds of name geographical regions")


(define-category ocean ;; "Pacific Ocean"
  :specializes body-of-water
  :rule-label location
  :lemma (:common-noun "ocean")
  :realization (:proper-noun name))

(define-type-instance-constructor ocean)


;;--- seas

(define-category sea ;; "Black Sea"
  :specializes body-of-water
  :rule-label location
  :lemma (:common-noun "sea")
  :realization (:proper-noun name))

(define-type-instance-constructor sea)


;;--- provinces (as in Canada or China)

(define-category province ;; "Hunan province"
  :specializes geo-political-region
  :rule-label province
  ;; :lemma (:common-noun "province") <-- will region-type suffice?
  :realization (:proper-noun name))

(define-type-instance-constructor province)


;;;---------
;;; autodef 
;;;---------

(define-autodef-data 'region
  :display-string "region"
  :form 'define-region
  :module *other-locations*
  :dossier "dossier;regions"
  :description "A word or polyword that names a particular geographical entity that we don't have a more specific category for (e.g. it's not a city or country)"
  :examples "\"New England\"" )

(defun string/region (r)
  (let ((name (value-of 'name r)))
    (etypecase name
      (word (word-pname name))
      (polyword (pw-pname name)))))


(define-autodef-data 'region-type
  :form 'define-region-type
  :dossier "dossiers;location kinds"
  :display-string "kinds of locations"
  :module *location*
  :description "A word that names a kind of place"
  :examples "\"city\", \"lake\"" )

