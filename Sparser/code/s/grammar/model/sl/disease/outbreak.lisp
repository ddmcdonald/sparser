;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013,2020 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "outbreak"
;;;    Module:   "sl;disease:"
;;;   version:   May 2020

;;category to represent outbreaks of diseases
;;e.g. "this is only the second outbreak of H5N1 in France"
;;split this category from spread, since the two are different semantically
;;outbreak generally follows the form of "outbreak (of pathogen)"
;;disease spreading events deviate from such a simple pattern
;;since they also include carriers/vectors, as well as targets (more verb like)
;;this category setup follows a pattern set for target in model;core:finance

(in-package :sparser)

(define-category disease-incidence
  :specializes state
  :mixins (has-uid)
  :instantiates nil
  :binds ((disease pathogen)
          (pathogen pathogen)
          (location geographical-region)
          (time))
  :documentation "Superclass for the various terms that name these
 roughly according to their size. Groups their normal possible variables")


(define-category distributed-disease-incidence
  :specializes disease-incidence
  :instantiates nil
  :documentation "The disease is present in a population
 of people (or birds, monkeys, etc.), whence 'distributed'.
 For a single person with the disease we would use a different category
 such as 'case'")


;;--- 'case'

(define-category cases-pathogen
  :specializes disease-incidence
  :instantiates self
  :realization ((:common-noun "case"))
  :documentation "A way to talk about individual incidents of a disease
 or infection by some pathogen, usually in the context of a larger outbreak")

#| 
5 bbc_Feb-3.txt: "possible human cases"
  "Iraq's first human case of the virus had occurred" ; vs. in birds

6 Newsfactor_Feb-16.txt:
 "cases of birds being found with the disease"
 "there have been no confirmed cases that H5N1 has mutated into
 a virus capable of being passed directly between humans"
 "results of samples test at a U.N. certified laboratory"

Saudia Arabia MERS article
 "the total number of cases worldwide to 136."
 "Most of the cases, which have resulted in 58 deaths, have been in Saudi Arabia."
 "The concentration of MERS cases in Saudi Arabia"
|#

#|
1 Aljazeera_Jan-18.txt: "the bird flu virus H5N1"


 "the potentially fatal MERS virus"

 "the uncle's samples came back positive from Cairo for avian influenza H5N1"
 "the sample from the uncle had tested positive for H5N1 when analyzed by
 the U.S. Navy medical research units
|#


  
;;--- 'outbreak'

(define-category outbreak-of-disease ;; the head word by itself
  :specializes distributed-disease-incidence
  :instantiates self
  :bindings (uid "D004196") ; MeSH 'Disease Outbreaks"
  :realization (:common-noun "outbreak")
  :documentation "MeSH: Sudden increase in the incidence of a disease.")

;;captures simple case of "outbreak of X"
(define-category outbreak-pathogen
  :specializes outbreak-of-disease
  :instantiates self
  :binds ((pathogen pathogen)
          (outbreak outbreak))
  :index (:key pathogen)
  :realization ((:tree-family simple-of-complement
                 :mapping ((np . outbreak)
                           (base-np . outbreak)
                           (complement . pathogen)
                           (result-type . :self)
                           (np-item . outbreak)
                           (of-item . pathogen)))))


;; this is only the second outbreak of H5N1 in France

;; outbreaks were reported last year in 13 European Union countries

;; after an outbreak of the lethal disease 
;;    in February 2006 in the eastern Ain region.

;; 5 bbc_Feb-3.txt "confirmed outbreaks of the disease in poultry"


;;--- 'epidemic'

(define-category epidemic
  :specializes distributed-disease-incidence
  :instantiates self
  :bindings (uid "D058872") ; MeSH Epidemics
  :realization (:common-noun "epidemic")
  :documentation "Sudden outbreaks of a disease in a country or region
 not previously recognized in that area, or a rapid increase in the
 number of new cases of a previous existing endemic disease. 
  Epidemics can also refer to outbreaks of disease in animal or plant populations.")


;;--- 'pandemic'

(define-category pandemic
  :specializes distributed-disease-incidence
  :instantiates self
  :bindings (uid "D058873") ; MeSH Pandemics
  :realization (:common-noun "pandemic")
  :documentation "Epidemics of infectious disease that have spread to many countries,
 often more than one continent, and usually affecting a large number of people.")

