;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1995,2011-2020  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "regions"
;;;   Module:  "model;core:places:"
;;;  version:  April 2020

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

;;;-----------------------------------
;;; specific places that are regions
;;; and not anything more specific
;;;-----------------------------------

;; Dossier of named regions is [regions]
;; Dossier of region types and edge types is [location kinds]

(define-category  geographical-area
  :documentation "E.g. New England, real places. Should be relatively large 
   and not have a more specific characterization."
  ;;/// The notion of a named-location is similar and some consolidation
  ;; is in order.
  :instantiates  location
  :specializes location
  :rule-label location
  :binds ((name :primitive word) 
          (aliases  :primitive list)
          (type . region-type)
          (containing-region . location))
  :index (:permanent :key name)
  :realization (:proper-noun name)) ;; for the predefined ones

(defun define-geographical-area (name-string &key part-of aliases)
  (let ((r (define-named-individual-with-synonyms/expr
               'geographical-area
               (cons name-string aliases))))
    (when part-of
      (push-debug `(,r ,part-of))
      (cerror "just continue"
              "Deal with part-of in region definitions ~
               now? (\"~a\")" name-string))
    ; Note to self to make sure the ancillary bits to this ...
    ;(setf (get-rules obj) rules)
    r))


(define-category typed-region  ;; "the Kurdish city of Sulaimaniya"
  :specializes location
  :rule-label region
  ;; This is a category that fits the way the information is packaged.
  ;; We're really identifying something about the region itself,
  ;; but to get it we need to pull it from this relation.
  :binds ((type . region-type)
          (region . region))
  ;; This ETF has the transfer built into it, as give-kind-its-name,
  ;; which is awfully specialized. 
  :realization (:tree-family  kind-of-name ;; "strait of Hormous"
                :mapping ((np . region-type)
                          (complement . name-word)
                          (result-np . :self))))
;; Something trick in setup-rdata creates duplicate rules if we include 'name'
;; in the labels of the complement in the mapping

(def-cfr typed-region (region-type of-name)
  :form np
  :referent (:function give-kind-its-name left-edge right-edge))


(defun give-kind-its-name (region name)
  "Takes phrases like 'the village of Dolwyddelan' or 'strait of Hormous'
   and creates instances of named-location from them, recording both the
   name and the type of region."
  (declare (special *subcat-test*))
  (if *subcat-test*
    (itypep region 'region-type)

    (let* ((region-name (convert-to-canonical-name-form name))
           #+ignore(name-edge (right-edge-for-referent))
           (sequence (extract-name-sequence-from-name region-name))
           (region-type (itype-of region)))

      (push-debug `(,region ,sequence))

      (let ((loc-name (define-or-find-individual 'name-of-location
                          :sequence sequence
                          :type region-type)))
        (push-debug `(,loc-name))
        (let ((place
               (define-or-find-individual 'named-location
                   :type region-type
                   :name loc-name)))

          place)))))



;;;----------------------------
;;; kinds of regions/locations
;;;----------------------------

;; They will be the heads of specific region names, 
;; or of NPs describing them,

(define-category  region-type    ;; e.g. "city", "village", kinds of places
  :instantiates self
  :specializes location
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))

;; Dossier is [location-kinds]

(defun define-region-type (string)
  ;; Adapted from find-or-define-kind, where the analog of the
  ;; kind category is region-type
  ;; /// replace with define-type-category-constructor ?
  (let* ((symbol (name-to-use-for-category string))
         (word (resolve string))
         (category (category-named symbol)))
      (let ((expr `(define-category ,symbol ;; e.g. 'city
                     :specializes geographical-region
                     :rule-label region-type
                     :instantiates :self
                     :bindings (name ,word)
                     :realization (:common-noun ,string))))
        (setq category (eval expr)))))



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

(define-category border
   :specializes location
   :instantiates :self
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

