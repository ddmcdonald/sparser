;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "cases"
;;;    Module:   "sl;disease:"
;;;   version:   December 2013

;;category to represent 'cases' - states where individuals are infected by some pathogen
;;often confused with MILITARY-FORCE, because sparser believes the plural of "cas" is "cases" (ironically this would be the 'correct' plural of it)

;;;------------
;;; the object
;;;------------

;;too simple and too similar to outbreak
;;will be changed

(define-category cases ;; the head word by itself
  :instantiates self
  :realization ((:common-noun "case")))

;;captures simple case of "cases of X"

(define-category cases-pathogen
  :specializes cases
  :instantiates self
  :binds ((pathogen pathogen)
          (cases cases))
  :index (:key pathogen)
  :realization ((:tree-family simple-of-complement
                 :mapping ((np . cases)
                           (base-np . cases)
                           (complement . pathogen)
                           (result-type . :self)
                           (np-item . cases)
                           (of-item . pathogen)))))

;;;-----------
;;; citations
;;;-----------

;; 5 bbc_Feb-3.txt

;; possible human cases

;; Iraq's first human case of the virus had occurred

;; 6 Newsfactor_Feb-16.txt

;; cases of birds being found with the disease

;; there have been no confirmed cases that h5n1 has mutated into
;; a virus capable of being passed directly between humans

;; results of samples test at a u.n. certified laboratory

;; the uncle's samples came back positive from cairo for avian influenza h5n1

;; the sample from the uncle had tested positive for h5n1
;; when analyzed by the u.s. navy medical research units

;; Saudia Arabia MERS article

;; the total number of cases worldwide to 136.

;; Most of the cases, which have resulted in 58 deaths, have been in Saudi Arabia.

;; The concentration of MERS cases in Saudi Arabia

;;;-----------
;;; cfrs
;;;-----------

;;cfr to absorb pathogen if before "cases"
;;e.g. "the concentration of MERS cases in Saudi Arabia"
;;doesn't work yet because cases itself doesn't have any variables to bind
#|(def-cfr cases (pathogen cases)
  :form common-noun
  :referent (:head right-edge
	     :bind (pathogen . left-edge)))|#
