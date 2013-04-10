;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1995,2011-2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "other"
;;;   Module:  "model;core:places:"
;;;  version:  March 2013

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
;;  inheritance structure in here. 

(in-package :sparser)

;;;-----------------------------------
;;; specific places that are regions
;;;    and nothing more specific
;;;-----------------------------------

(define-category  region    
  ;; e.g. New England, real places
  :instantiates  location
  :specializes  location
  :binds ((name :primitive word) ;;(:or name :primitive word))
          (aliases  :primitive list)
          (type . region-type)
          (containing-region . location))
  :index (:permanent :key name)
  :realization ((:proper-noun name) ;; for the predefined ones
                (:tree-family  np-common-noun/defnp
                 :mapping ((np . :self)
                           (np-head . region-type)))
                (:tree-family  kind-of-name ;; "strait of Hormous"
                 :mapping ((np . region)
                           (complement . (name name-word)) ;; and what else?
                           (result-np . :self)))))

;; Dossier of named regions is [regions]
;; Dossier of region types and edge types is [location kinds]

(defun give-kind-its-name (region name) ;; left-referent and right-referent
  ;; function called by kind-of-name ETF
  ;; Definitely has more generality, but makes sense right here and
  ;; 'kind' isn't as articulated as this
  ;; Since what we get here are the referents, which I've renamed to
  ;; reflect what they provide, we might well get more generality
  ;; by making the ETF use a method rather than a function
  ;; N.b. this returns the referent of the edge, which will be
  ;; a region based on this name
  
  (declare (ignore name)) region)
#|  Turning this off until the two types of values in the name field
    is made possible (one of them being a primitive), and until the
    Chomsky-adjunction conundrum in the rule construction is done and
    we get dependable rules
  (push-debug `(:kind-name ,region ,name))
  (let ((region-name (convert-to-canonical-name-form name)))
    (unless (indiv-typep region category::location)
      ;; Need to be sure that the variables are there for binding
      (break "the 'region' individual is not a location"))
 
    (let ((new-region (define-or-find-individual category::region
                        :name region-name)))
      ;; Is the region the right sort of thing to be it's type??
      ;; /// Loses the fact that the new-region is, e.g. a city
      ;;  <what's the instruction for creating a binding ??>
      ;; Now we make the word refer to this region
      (if nil
        (then ;; Yesterday the input was a word. Today it's a name
         (remove-rules-from-word word)
         (let ((rule (define-cfr category::region `(,word)
                       :form category::proper-name
                       ;; /// what's the schema ???
                       :referent new-region)))))
        new-region))))
|#
;; What about subsequent runs of "city of S" after s has this rule?
;;  pattern becomes <region> of <region>, which is odd.
    

;;/// move to name words or wherever fits the eventual generalizaton
(defun remove-rules-from-word (word)
  (let* ((rs (word-rule-set word))
         (rules (rs-single-term-rewrites rs)))
    (unless rules (error "Presumption violated"))
    (loop for rule in rules do
      (delete/cfr rule))))


(defun define-region (name-string &key part-of aliases)
  (declare (ignore part-of))
  (let ((name
         (etypecase name-string
           (string (resolve-string-to-word/make name-string))
           (word name-string)))
        obj )

    (if (setq obj (find-individual 'region :name name))
      obj
      (let ( rule  rules )
        (setq obj (define-individual 'region :name name ))

        (when aliases
          (let ( word )
            (dolist (alias-string aliases)
              (setq word (resolve-string-to-word/make alias-string))
              (push (define-cfr category::region `( ,word )
                      :form category::proper-noun
                      :referent obj)
                    rules))
            (when rules
              (setq rule (cons rule (nreverse rules))))))

        (when part-of
          (cerror "just continue"
                  "Deal with part-of in region definitions ~
                   now? (\"~a\")" name-string))

        (setf (unit-plist obj)
              `(:rules ,rules ,@(unit-plist obj)))

        obj ))))



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
    (setf (edge-category *parent-edge-getting-reference*)
          category::region-type)
    (setf (edge-form *parent-edge-getting-reference*)
          category::np)
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

