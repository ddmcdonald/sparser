;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2016-2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "attributes"
;;;  Module: "grammar/model/sl/biology/
;;; version: December 2020

;; Moving all attributes defined in biology to this file

;; non-scalar attributes
(noun "behavior" :super attribute)

(noun "content" :super attribute)

(define-category time-course :specializes attribute
  :realization 
  (:noun "time course"))

;; "role" is unusual in that it is an attribute of a PAIR of items
(noun "role" :super attribute
      :binds ((process bio-process))
      :realization
      (:in process))

;; "threshold" should also be an attribute of a PAIR of items
(define-category threshold :specializes scalar-attribute
  :realization (:noun "threshold"))

;;; The scalar-attributes

(define-category bio-concentration :specializes scalar-attribute
  :realization
  (:noun "concentration"))

(define-category frequency :specializes scalar-attribute
  :realization
  (:noun "frequency"))

(define-category peak :specializes scalar-attribute
  :restrict ((owner (:or biological scalar-attribute amount)))
  :realization (:noun "peak"
                :in owner ;;measured-item
                      ) ;; "a peak in the measured amount ..."
  :documentation "The preposition 'in' does the same work as 'of'
    in other kinds of amounts / quantities of stuff. In biology
    it seems most appropriate when we are describing locations
    in graphs, e.g. 'dip' ")

;;--- bio-scalar -- now scalar-attribute
;; (p/s "Decrease the binding rate of NRAS and BRAF.")
;;(delete-noun-cfr (resolve "rate")) ;;/// override it



(define-category process-rate :specializes scalar-attribute
 :binds ((components biological)
         (process bio-process))
 :realization 
    (:noun "rate"
     :for components
     :m process))
(def-synonym process-rate (:noun "kinetics"))

#| The parser will do "binding rate" compositionally, and will put
the 'binding' in the process slot of the process-rate object.
Unfortunately, generating from that requires coercing 'binding' 
into a particple in order to provide an adjective realization,
which if further than is worth going just now. (Same issue as we
have with phosphorylated as a preposed modifier.) |#
(define-category binding-rate
  :specializes process-rate
  :realization (:noun "binding rate"))

(define-category dissociation-rate
  :specializes process-rate
  :realization (:noun "dissociation rate"))

(define-category catalysis-rate
  :specializes process-rate
  :realization (:noun "catalysis rate"))

(noun "insensitivity" :super scalar-attribute ;; HUH?
      :binds ((cause biological))
      :realization
      (:noun "insensitivity"
       :to cause))

(noun "sensitivity"  :super scalar-attribute
      :binds ((cause biological))
      :realization
      (:noun "sensitivity"
       :to cause))

(define-category bio-strength :specializes scalar-attribute
  :realization
  (:noun "strength"))



(define-category duration :specializes scalar-attribute
  :binds ((theme (:or process bio-method bio-mechanism)))
  :realization
  (:noun "duration"))


;;(delete-noun-cfr (resolve "number"))
;;(delete-noun-cfr (resolve "numbers"))

(define-category count-of :specializes scalar-attribute 
  :realization
    (:noun "number"))



(noun "extent" :super scalar-attribute) 
(noun "mass" :super scalar-attribute)
(noun "scale" :super scalar-attribute
              :binds ((source top)) ;; "the scale from xxx test"
      :realization (:from source))

(noun "dynamics" :super scalar-attribute) ;;possibly just attribute
(noun "proportion" :super scalar-attribute) ;;possibly just attribute
