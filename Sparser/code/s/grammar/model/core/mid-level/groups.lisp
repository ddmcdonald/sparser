;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2020 SIFT LLC. All Rights Reserved
;;;
;;;    File:   "groups"
;;;   Module:  "model;core:mid-level::"
;;;  version:  November 2020

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
(define-category family :specializes group :realization (:noun "family"))
(define-category pool :specializes group :realization (:noun "pool"))
(define-category portion :specializes group
     :realization (:noun  "portion"))
(define-category superfamily :specializes group :realization (:noun "superfamily"))
(define-category cluster :specializes group :realization (:noun "cluster"))
(define-category combination :specializes group :realization (:noun "combination"))
(define-category share-part :specializes group :realization (:noun  "share"))

(define-category total :specializes group
     :realization (:noun  "total"))

;; Related to set and group, but not quite the same
;;  these are properties of the specified prototype
(define-category category-of :specializes takes-of-prototype-description
  :realization (:noun ("category" :plural "categories")))

(define-category nature :specializes takes-of-prototype-description
  :realization
    (:noun "nature")
  )

;;  these will create edges whose edge-category is the same as the itype-of the prototype

(define-category type-cl-noun :specializes takes-of-prototype-description
  :rule-label takes-of-prototype-description
  :binds
  ((INTO top)
   (ONTO top)
   (ON top))
  :realization (:noun  "type" :into INTO :onto ONTO :on ON))

(define-category strain :specializes takes-of-prototype-description
  :rule-label takes-of-prototype-description
  :realization
  (:noun "strain")
  )

(define-category kind :specializes takes-of-prototype-description
  :rule-label takes-of-prototype-description
  :realization
  (:noun "kind")
  )

(define-category version :specializes takes-of-prototype-description
  :rule-label takes-of-prototype-description
  :realization
  (:noun "version")
  )





;;;;;;;;


(define-category member
 :specializes part-of-a-whole
 :restrict ((whole group))
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

(define-category  part :specializes component :realization (:noun "part"))
(define-category fraction-of :specializes component :realization (:noun "fraction")
  :documentation "This is 'faction-of' to distinguish it from the number 'fraction'")
(define-category subset :specializes component :realization (:noun "subset"))



