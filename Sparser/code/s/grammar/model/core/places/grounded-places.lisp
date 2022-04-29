;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2022 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "grounded-places"
;;;   Module:  "model;core:places:"
;;;  version:  April 2022

;; Initiated 4/20/22 to facilitates getting a clean treatments of
;; individuals that instantiate region-types.

(in-package :sparser)

;;;----------------------------
;;; categories and constructor
;;;----------------------------
;;--- region-type and grounded-place replace named-region-type
;; Dossier is [location-kinds]

(define-category  region-type
  :documentation "E.g. 'city', 'village', 'lake'. These are the
 kinds/types. They can be used to refer to generic concepts 
 ('a lake is usually larger than a 'pond'), and they are often part
 of the name particular region ('Joe's Pond') and can be used anaphorically
 to refer to the individual ('how big is the pond?'). 
   To make the mechanics of composition easier, every region type
 is paired with the category that provides the type of particulars.
 By convention, the category names of region types are singular ('lake')
 and the names of the corresponding categories of grounded places are
 plural ('lakes')"
  :instantiates self
  :specializes named-type ; in core/kinds/upper-model
  :binds ((name :primitive word)
          (place-category :primitive category))
  :index (:permanent :key name)
  :realization (:common-noun name))

(define-category grounded-place
  :documentation "This is the super category for all the kinds of particular
 regions (i.e. individuals) that are created dynamically from composition
 with a region-type word (e.g. 'Joe's Pond', 'the Lee exit'). 
   This category is written as though these were individuated by just
 their name. This is a gross simplication since the same name ('Boston')
 will frequently refer to several different particular places. If we add
 the place's location (variable: containing-region) that should usually
 be enough for what we'll encounter."
  :instantiates self
  :specializes geographical-region
  :restrict ((containing-region geographical-region)) 
  :binds ((name name-of-location)
          (type-category :primitive category)
          ;;(has-location geographical-region) redundant?
          )
  :index (:permanent :key name))


(defun define-region-type (type-string place-string
                           &key super geo?)
  "Creates two categories and cross-indexes them. The category name for
 the region-type should be singlar and the category name (grounded) place
 should plural ('lake', 'lakes'), but I'm not checking."
  (let ((type-name (name-to-use-for-category type-string))
        (place-name (name-to-use-for-category place-string))
        (type-word (resolve type-string))
        (place-word (resolve place-string))
        (superc (or super ; for the grounded place
                    (if geo?
                      'geographical-region
                      'geo-political-region))))

    (let* ((type-expr
            `(define-category ,type-name
                 :specializes region-type
                 :rule-label region-type
                 :instantiates :self
                 :bindings (name ,type-word)
                 :binds ((place-category :primitive category))
                 :realization (:common-noun ,type-string)))
           (place-expr
            `(define-category ,place-name
                 :specializes grounded-place
                 :mixins (,superc)
                 :binds ((type-category :primitive category))
                 :instantiates :self
                 :index (:permanent :key name))))
      
      (let ((type-category (eval type-expr))
            (place-category (eval place-expr)))
        ;; cross index them.
        (setf (get-tag :place-category type-category) place-category)
        (setf (get-tag :type-category place-category) type-category)
        (values type-category place-category)))))



;;;-------
;;; rules
;;;-------

;; "strait of Hormous"
;; "the Kurdish city of Sulaimaniya"
;;
(def-cfr named-region-type (region-type of-name)
  :form np
  :referent (:function convert-to-instance left-edge right-edge))

#| /// Need to somehow record whether the names here are based on
 a modifier-head ("Lee exit") versus an 'of' construction ("Isthmus of Pannama")
 without it recorded somewhere, prefereably in the category of the name,
 we can't accurately generate (reverse) these.  |#

;; "Lee exit"
;;
(def-cfr named-region-type (name-word region-type)
  :form n-bar  
  :referent (:function convert-to-instance right-edge left-edge))

(def-cfr named-region-type (name region-type)
  :form n-bar
  :referent (:function convert-to-instance right-edge left-edge))

(def-cfr named-region-type (uncategorized-name region-type)
  :form n-bar
  :referent (:function convert-to-instance right-edge left-edge))


;;;-----------------------------------------------------------
;;; converting expressions with types to instances of classes
;;;-----------------------------------------------------------

(defun convert-to-instance (region name)
  "Takes phrases like 'the village of Dolwyddelan' or 'strait of Hormous',
   which are the composition of a region type and a name and converts them
   to instances of those types by looking up the category associated with
   the type, e.g. 'exit' -> 'exists'"
  (declare (special *subcat-test*))
  (if *subcat-test*
    (itypep region 'region-type)

    (let* ((region-name (convert-to-canonical-name-form name))
           (sequence (extract-name-sequence-from-name region-name))
           (region-type (itype-of region)))
      (let ((loc-name (make-location-name sequence region-type))
            (type-category (get-tag :place-category region-type)))
        ;;(push-debug `(,type-category ,region-type))  (break "look")
        (let ((place
               (define-or-find-individual type-category
                   :name loc-name)))
          place)))))
