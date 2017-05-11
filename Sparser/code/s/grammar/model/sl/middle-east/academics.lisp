;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013,2016 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "academics"
;;;    Module:   "sl;middle-east"
;;;   version:   April 2016

;; initiated 9/3/13 because they were being taken to be people with very
;; odd results. Only discovered by decoding a possessive

(in-package :sparser)

;;--- Types of degrees

(define-category academic-degree
  :instantiates self
  :specializes title
  :realization (:common-noun name))

(defun make-academic-degree (string)
  (define-or-find-individual category::academic-degree
     :name string))

(make-academic-degree "B.Sc.") ;; only one in javan-online

#|
only the students and professors who
was a graduate of Sharif University 
his research for his B.Sc. course
his B.Sc. Degree  <==== Capitalized Degree seen as name
in the field of chemical engineering
one of the students of
|#