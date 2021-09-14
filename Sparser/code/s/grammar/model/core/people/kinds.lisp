;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013,2019  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "kinds"
;;;    Module:   "model;core:people:"
;;;   version:   February 2021

;; initiated 12/27/07. Relabeled 'person' for parsing 3/6/13.
;; 3/25/13 converted it all to inherit from person-type.

(in-package :sparser)

(define-category  girl
  :instantiates person
  :specializes person-type
  :rule-label person
  :bindings (gender 'female)
  :realization (:common-noun "girl"))

(define-category  boy
  :instantiates person
  :specializes person-type
  :rule-label person
  :bindings (gender 'male)
  :realization (:common-noun "boy"))

(define-category  man
  :instantiates person
  :specializes person-type
  :rule-label person
  :bindings (uid "NCIT:C14366"
             gender 'male)
  :realization (:common-noun ("man" :plural "men")))

(define-category  woman
  :instantiates person
  :specializes person-type
  :rule-label person
  :bindings (uid "NCIT:C14284"
             gender 'female)
  :realization (:common-noun ("woman" :plural "women")))

(define-category  people ;; don't clash with the 'person' category
  :instantiates person
  :specializes person-type
  :rule-label person
  :realization ((:common-noun ("person" :plural "people"))))


(define-category  human
  :instantiates person
  :specializes person-type
  :rule-label person
  :realization (:common-noun "human"))


;;/// these should differentiated in some semantic fields

(define-category god
   :instantiates person
  :specializes person-type
  :rule-label person
  :bindings (gender 'male)
  :realization (:common-noun "god"))

(define-category goddess
   :instantiates person
  :specializes person-type
  :rule-label person
  :bindings (gender 'female)
  :realization (:common-noun "goddess"))


;;--- Relational terms

; father mother daughter son child aunt uncle niece nephew
;  These need ETF

; Added 05/27/14: 'child' 'father' 'mother' 'parent' 'son' 'daughter' 'sister' 'brother' 'sibling' 'aunt' 'uncle'

(define-category  child
  :instantiates person
  :specializes family-member
  :rule-label person
  :realization (:common-noun ("child" :plural "children")))

(define-category  father
  :instantiates person
  :specializes family-member
  :rule-label person
  :bindings (gender 'male)
  :realization (:common-noun "father"))

(define-category  mother
  :instantiates person
  :specializes family-member
  :rule-label person
  :bindings (gender 'female)
  :realization (:common-noun "mother"))


;; make 'father'/'mother' types of parents?
(define-category  parent
  :instantiates person
  :specializes family-member
  :rule-label person
  :realization (:common-noun "parent"))

;; make son/daughter a type of child?
(define-category  son
  :instantiates person
  :specializes family-member
  :rule-label person
  :bindings (gender 'male)
  :realization (:common-noun "son"))

(define-category  daughter
  :instantiates person
  :specializes family-member
  :rule-label person
  :bindings (gender 'female)
  :realization (:common-noun "daughter"))

(define-category  sister
  :instantiates person
  :specializes family-member
  :rule-label person
  :bindings (gender 'female)
  :realization (:common-noun "sister"))

(define-category  brother
  :instantiates person
  :specializes family-member
  :rule-label person
  :bindings (gender 'male)
  :realization (:common-noun "brother"))
;; want to count "brethren" as a plural?

;; make 'brother' and 'sister' a 'type' of sibling?
(define-category  sibling
  :instantiates person
  :specializes family-member
  :rule-label person
  :realization (:common-noun "sibling"))

(define-category  aunt
  :instantiates person
  :specializes family-member
  :rule-label person
  :bindings (gender 'female)
  :realization (:common-noun "aunt"))

(define-category  uncle
  :instantiates person
  :specializes family-member
  :rule-label person
  :bindings (gender 'male)
  :realization (:common-noun "uncle"))



