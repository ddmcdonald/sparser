;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "entities"
;;;   Module:  "grammar/sl/ISR/
;;;  version:  December 2013

;; Broken out of container-and-suv 11/11/13. 12/3/13 made the
;; words lowercase to side-step more code.

(in-package :sparser)


;; (create-ford-motor-company)
(defun create-ford-motor-company ()
  ;; just sugar to avoid having to evaluate this right here
  ;; before we've got everything set up in other files
  ;;/// N.b. lower case so don't have to muck with the checks
  ;; in preterminals-for-known for variants.
  (find-or-make-individual 'car-manufacturer
     :name "ford" ;; piggy back of company facilties?
;     :product 
     ))


(defun create-wakil ()
  (define-individual 'village
     :name "wakil"))