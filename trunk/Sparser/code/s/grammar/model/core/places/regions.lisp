;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1995,2011-2014  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "regions"
;;;   Module:  "model;core:places:"
;;;  version:  0.1 January 2014

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

(in-package :sparser)

;;;-----------------------------------
;;; specific places that are regions
;;;    and nothing more specific
;;;-----------------------------------

;; Dossier of named regions is [regions]
;; Dossier of region types and edge types is [location kinds]

(define-category  region    
  ;; e.g. New England, real places. Should be relatively large, 
  ;; and not have a more specific characterization. 
  ;; The notion of a named-location is similar and some consolidation
  ;; is in order.
  :instantiates  location
  :specializes  location
  :binds ((name :primitive word) 
          (aliases  :primitive list)
          (type . region-type)
          (containing-region . location))
  :index (:permanent :key name)
  :realization (:proper-noun name)) ;; for the predefined ones

(defun define-region (name-string &key part-of aliases)
  (let ((r (define-named-individual-with-synonyms/expr
               'region
               (cons name-string aliases))))
    (when part-of
      (push-debug `(,r ,part-of))
      (cerror "just continue"
              "Deal with part-of in region definitions ~
               now? (\"~a\")" name-string))
 ; Note to self to make sure the ancillary bits to this
 ;       (setf (unit-plist obj)
 ;             `(:rules ,rules ,@(unit-plist obj)))
    r ))


(define-category typed-region  ;; "the Kurdish city of Sulaimaniya
  :specializes relation ;;/// probably more specific
  :rule-label region
  ;; This is a category that fits the way the information is conveyed.
  ;; We're really identifying something about the region itself,
  ;; but to get it we need to pull it from this relation.
  :binds ((type . region-type)
          (region . region))
  ;; This ETF has the transfer built into it, as give-kind-its-name,
  ;; which is awfully specialized. 
  :realization (:tree-family  kind-of-name ;; "strait of Hormous"
                :mapping ((np . region-type)
                          (complement . (name name-word)) ;; and what else?
                          (result-np . :self))))

(defun give-kind-its-name (region name) ;; left-referent and right-referent
  ;; The function called by kind-of-name ETF in of.lisp
  (push-debug `(,region ,name)) ;;(break "cit of x")
  (let ((region-name (convert-to-canonical-name-form name))
        new-region )
    (cond
     ((itypep region 'city)
      ;;//// "the Kurdish city" leads to an -instance- of the city
      ;;   category, not the category
      ;; These parse to region-types, but the independent definition
      ;; of the city category is the value that we get.
      ;;/// But the city category doesn't believe in names and
      ;; interpret-name-as-city is going to devolve it down to a word
      (let ((name-edge (right-edge-for-referent)))
        (convert-name-to-place-name name-edge) ;; changes label and referent
        (let ((place (edge-referent name-edge)))
          ;;/// see note next to named-location
          ;; ?? set the type? or just move to instantiating them
          (push-debug `(,place ,name-edge))
          ;;//// make a typed-region instance and have some rule that
          ;; copies over the information from the region to the place
          (setq new-region place))))

     ((category-p region)
      (push-debug `(,region ,name))
      (break "Another case of a category for the region: ~a" region))

     ((individual-p region)
      (unless (indiv-typep region category::location)
        ;; Need to be sure that the variables are there for binding
        (push-debug `(,region ,name))
        (break "the 'region' individual is not a location"))
      (push-debug `(,region-name)) (break "Does this path make sense?")
      ;; Is the region the right sort of thing to be it's type??
      ;; /// Loses the fact that the new-region is, e.g. a city
      ;; => instantiate the typed-region
      ;; /// look at convert-name-to-place-name for use here. 
      (setq new-region (define-or-find-individual category::region
                          :name region-name)))
     (t
      (push-debug `(,region ,name))
      (error "New situation in give-kind-its-name.~
            ~%  region = ~a~%  name = ~a" region name)))

    new-region))

;; What about subsequent runs of "city of S" after s has this rule?
;;  pattern becomes <region> of <region>, which is odd.
    

;;/// move to name words or wherever fits the eventual generalizaton
(defun remove-rules-from-word (word)
  (let* ((rs (word-rule-set word))
         (rules (rs-single-term-rewrites rs)))
    (unless rules (error "Presumption violated"))
    (loop for rule in rules do
      (delete/cfr rule))))





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
  (let* ((string-for-category #+mlisp string
                              #+(or :ccl :alisp)(string-upcase string))
         (symbol (intern string-for-category
                         (find-package :sparser)))
         (word (define-word string))
         (category (category-named symbol))
         (new? (null category)))
    (when new? ;; for re-evaluation of this file
      (let ((expr `(define-category ,symbol ;; e.g. 'city
                     :specializes region-type
                     :rule-label region-type
                     :instantiates :self
                     :bindings (name ,word)
                     :realization (:common-noun ,string))))
        (setq category (eval expr))))
    (let ((rule
           (if new?
             (caadr (memq :rules (cat-realization category)))
             (construct-cfr ;; consider def-cfr/expr
              (category-named 'region-type) ;; lhs
              (list word) ;; rhs
              (category-named 'common-noun) ;; form
              category ;; referent
              :define-cfr)))) ;; source -- see note-grammar-module
      (values category
              rule))))



(define-category located-in
  :instantiates self
  :specializes associated-with-country
  :binds ((country . country) ;;/// probably too narrow
          (region . location))) ;; maybe too narrow

(defmethod relationship-to-country ((c sh::country) (r sh::region-type))
  (declare (special *parent-edge-getting-reference*))
  (relation-to-country-region/location-core c r))

(defmethod relationship-to-country ((c sh::country) (r sh::location))
  (declare (special *parent-edge-getting-reference*))
  (relation-to-country-region/location-core c r))

(defun relation-to-country-region/location-core (c r)
  (let ((country (dereference-shadow-individual c))
        (location (dereference-shadow-individual r)))
    (revise-parent-edge :category category::region-type
                        :form category::np)          
    (define-or-find-individual category::located-in
        :country country :region location)
    location)) ;; return the referent of the right edge



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
                           (result-type . :self))))


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

