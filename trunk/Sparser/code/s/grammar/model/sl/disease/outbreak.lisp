;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "outbreak"
;;;    Module:   "sl;disease:"
;;;   version:   August 2013

;;category to represent outbreaks of diseases
;;e.g. "this is only the second outbreak of H5N1 in France"
;;split this category from spread, since the two are different semantically
;;outbreak generally follows the form of "outbreak (of pathogen)"
;;disease spreading events deviate from such a simple pattern
;;since they also include carriers/vectors, as well as targets (more verb like)
;;this category setup follows a pattern set for target in model;core:finance

(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category outbreak ;; the head word by itself
  :specializes event
  :instantiates self
  :realization ((:common-noun "outbreak")))

;;captures simple case of "outbreak of X"
(define-category outbreak-pathogen
  :specializes outbreak
  :instantiates self
  :binds ((pathogen pathogen)
          (outbreak outbreak))
          ;;(location location) perhaps should include where the outbreak is
  :index (:key pathogen)
  :realization ((:tree-family simple-of-complement
                 :mapping ((np . outbreak)
                           (base-np . outbreak)
                           (complement . pathogen)
                           (result-type . :self)
                           (np-item . outbreak)
                           (of-item . pathogen)))))

;;;-----------
;;; citations
;;;-----------

;; this is only the second outbreak of H5N1 in France

;; outbreaks were reported last year in 13 European Union countries

;; after an outbreak of the lethal disease 
;;    in February 2006 in the eastern Ain region.

;; 5 bbc_Feb-3.txt

;; confirmed outbreaks of the disease in poultry