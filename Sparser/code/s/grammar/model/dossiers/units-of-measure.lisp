;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993 David D. McDonald  -- all rights reserved
;;; extensions opyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "units of measure"
;;;   module:  "model;dossiers:"
;;;  Version:  February 2010

;; initiated 9/18/93 v2.3. 2/17/10 Added a few more cases and started
;; using the synonyms form.

(in-package :sparser)

(define-individual 'unit-of-measure :name "ton")

;;--- distance

;; 10/24/93
(define-unit-of-measure "inch")

(define-named-individual-with-synonyms unit-of-measure
    ("mile"))

(define-named-individual-with-synonyms unit-of-measure
    ("kilometer" "km")
  :no-morph t)

(define-named-individual-with-synonyms unit-of-measure
    ("yard" "yd" "yds")
  :no-morph t)
  
(define-named-individual-with-synonyms unit-of-measure
    ("meter" "metre" "m")
  :no-morph t)


;;--- computing

;; 10/31/93
(define-unit-of-measure "bit")

(define-named-individual-with-synonyms unit-of-measure
    ("kilobyte" "kB")
  :no-morph t)

;; 12/11/93 (in simple version for mbyte
(define-named-individual-with-synonyms unit-of-measure
    ("megabyte" "mbyte" "MB" "mb")
  :no-morph t)

(define-named-individual-with-synonyms unit-of-measure
    ("gigabyte" "gbyte" "GB")
  :no-morph t)


