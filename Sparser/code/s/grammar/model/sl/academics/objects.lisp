;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "objects"
;;;    Module:   "sl/academics"
;;;   version:   December 2021

;; initiated 12/27/21 to organize degrees and such evacuated from
;; Middle-east files

(in-package :sparser)

;; First developed in 2013 as part of Strider.
;; Resumed in 2021 as part of Acumen because the previously
;; unknown period-abbreviated terms were making things
;; unnecessarily complicated -- "M.B.A." pushed me over the edge
;; with when the chunker did it as [M.B].[A. ]
#|
only the students and professors who
was a graduate of Sharif University 
his research for his B.Sc. course
his B.Sc. Degree  <==== Capitalized Degree seen as name
in the field of chemical engineering
one of the students of
|#

;;--- Types of degrees

(define-category academic-degree ; dossiers/academic-degrees
  :instantiates self
  :specializes part-of-a-person-name ;;title?
  :binds ((name :primitive word))
  :realization (:common-noun name)
  :documentation "These are like titles, and they are also like
    person-versions that follow a person's name. But of course
    they are also a semantic field as themselves, with majors
    and minors, courses of study, years as person is pursuing
    the degree, where, under whom, etc.")

(defun make-academic-degree (string)
  "Convert to categories with designated individuals
   when we add any amount of knowledge to these"
  (define-or-find-individual category::academic-degree
     :name string))
