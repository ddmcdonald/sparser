;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2022-2023 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "airplanes"
;;;   Module:  "model/sl/military
;;;  version:  June 2023

;; initiated 7/10/22 for NGA prototyping

(in-package :sparser)

;; Specific aircraft designators, kinds, and attributes are in
;; grammar/model/dossiers/military-aircraft.lisp

;;--- component types

(define-category kind-of-aircraft
  :specializes named-type
  :documentation "Its function, part of the full name ('fighter'
 'passenger' 'transport'). Modeled on 'core/companies/kind-of-company "
  :realization (:noun name))

(defun define-kind-of-aircraft (string)
  (define-function-term string 'noun
    :super-category 'kind-of-aircraft
    :rule-label 'kind-of-aircraft))


(define-category aircraft-designator
  :specializes name
  :documentation "This is for the short name of an aircraft type:
 'SR-71', 'Boeing 737', 'F-16'. There is a lot of information packed
 into these names as well as nicknames etc. buta polyword will suffice")

(defun define-aircraft-designator (string)
  (define-function-term string 'noun
    :super-category 'aircraft-designator
    :rule-label 'aircraft-designator))


(define-category aircraft-property
  :specializes attribute
  :documentation "This is for modifiers like 'light' or 'medium',
 which presumably have technical interpretations for aircraft but
 this is enough to make the semantic grammar work")

(define-category aircraft-property-value
  :specializes attribute-value
  :binds ((attribute))
  :documentation "Formal category to make attribution happy by
 representing particular aircraft properties")

(defun define-aircraft-property (string)
  (define-adjective string
    :super-category 'aircraft-property-value
    :bindings '(attribute 'aircraft-property)
    :rule-label 'aircraft-property))


;;--- base kinds

(define-category aircraft
  :specializes generalized-transport
  :binds ((type . kind-of-aircraft) ; 'fighter'
          (designator . aircraft-designator) ; 'MiG-17'
          (property . aircraft-property)) ; 'light'
  :realization (:noun ("aircraft" "airplane" "plane")))

(define-category helicopter
  :specializes aircraft
  :rule-label aircraft
  :realization (:noun "helicopter"))


;;--- semantic grammar

(def-cfr aircraft (kind-of-aircraft aircraft)
  :form n-bar
  :referent (:head right-edge
             :bind (type . left-edge)))

(def-cfr aircraft (aircraft-designator aircraft)
  :form n-bar
  :referent (:head right-edge
             :bind (designator . left-edge)))
