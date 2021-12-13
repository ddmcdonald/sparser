;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2020-2021 SIFT LLC. All Rights Reserved
;;;
;;;    File:   "groups"
;;;   Module:  "model;core:mid-level::"
;;;  version:  July 2021

;; Initiated 11/11/20 by lifting out of bio;taxonomy and other places

(in-package :sparser)

;; Collection (core/collections/object.lisp) provides variables
;; for items -- the list of the members of the collection,
;;     type -- a category saying what the members type is,
;; and number -- a lisp integer saying how many items there are.

(define-category group
  :specializes collection
  :binds ((group-members top)
          (label label)) ;; "group 2B CoVs"
  :realization (:noun "group"
                :of group-members))

(define-category set :specializes group :realization (:noun "set"))
(define-category family :specializes group :realization (:noun "family" :adj "familial"))
(define-category pool :specializes group :realization (:noun "pool"))
(define-category portion :specializes group :realization (:noun  "portion"))
(define-category superfamily :specializes group :realization (:noun "superfamily"))
(define-category cluster :specializes group :realization (:noun "cluster"))
(define-category combination :specializes group :realization (:noun "combination"))
(define-category share-part :specializes group :realization (:noun  "share"))
(define-category total :specializes group :realization (:noun  "total"))


;;--- daughters of variant-on

;; Related to set and group, but not quite the same
;;  these are properties of the specified prototype
;;
;;  These will create edges whose edge-category is the same as the
;;  itype-of the prototype because their rule-label ties them
;;  to the syntactic function create-prototype-of-np

(define-category category-of :specializes variant-on
  :mixins (takes-of-prototype)
  :rule-label takes-of-prototype
  :realization (:noun ("category" :plural "categories")))

(define-category nature :specializes variant-on
  :mixins (takes-of-prototype)
  :rule-label takes-of-prototype
  :realization (:noun "nature"))
  

(define-category type-cl-noun :specializes variant-on
  :mixins (takes-of-prototype)
  :rule-label takes-of-prototype
  :binds ((into top)
          (onto top)
          (on top))
  :realization (:noun  "type" :into INTO :onto ONTO :on ON))

(define-category strain :specializes variant-on
  :mixins (takes-of-prototype)
  :rule-label takes-of-prototype
  :realization (:noun "strain"))

(define-category kind :specializes variant-on
  :mixins (takes-of-prototype)
  :rule-label takes-of-prototype
  :realization (:noun "kind"))


(define-category version :specializes variant-on
  :mixins (takes-of-prototype)
  :rule-label takes-of-prototype
  :realization (:noun "version"))






;;--- daughters of part-of-a-whole


(define-category member
 :specializes part-of-a-whole
 :documentation "Being a member of some group (a political party, a club,
   an ethnic group isn't really what's intended by part-of-a-whole
   but I don't see anything better that we already have."   
 :restrict ((whole top)) ; was 'group'
 :realization (:noun "member"
               :of whole))

(define-category component
  :specializes part-of-a-whole
  :documentation "The relations this applies to allow the part
    to be subassemblies, subsets, the lid of a beer stien, etc."
  :realization
    (:noun "component"
     :of whole
     :in whole))

(define-category part :specializes component :realization (:noun "part"))
(define-category fraction-of :specializes component :realization (:noun "fraction")
  :documentation "This is 'fraction-of' to distinguish it from the number 'fraction'")
(define-category subset :specializes component :realization (:noun "subset"))



