;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2013-2021 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "model;core:numbers:"
;;;  Version:  July 2021

;; 2.0  (7/16/92 v2.3) bumped [percentages] to 1 to install new regime
;;      7/19 bumped nearly everything else to make it over to new categories
;; 2.1 (10/5) bumped the digits fsa to change the scan details.
;; 2.2 (9/17/93) bumped it again (to 6) to preserve old counting alg.
;;     (9/18) uncommented [ordinals] and bumped it to 1
;; 2.3 (1/7/94) began breaking out the cases into dossiers.
;; 2.4 (10/13/97) broke out the digits fsa as its own module.
;; 2.5 (7/11/00) bumped ordinals to 2 to rename the base category.
;; 2.6 (2/3/05) bumped ordinals to 3 to sort it out as a coherent individual
;;     (3/29/06) Appeared to have left out the digits fsa in the 2.6 mod.
;;     (8/16/07) added [relation].
;; 2.7 (5/9/13) Moved the two dossier filees in to load here so we can use
;;      them right away. Bumbed form to 3 on 6/28/15 to have a clean
;;      copy while reorganizing the creation of number individuals
;;      and their rules. 

(in-package :sparser)

;; fractions is in loader-2

(gload "numbers;object") 
(gload "numbers;categories")
(gload "numbers;form")
(gload "numbers;fsa-aux")
(gload "numbers;fsa digits")
(gload "numbers;fsa words")
(gload "numbers;ordinals")
(gload "numbers;percentages")
(gload "number;phone-numbers")
(gload "numbers;rules")
(gload "numbers;relation")

;; and in dossiers:
(gload "dossiers;numbers")
(gload "dossiers;ordinals")

(gload "numbers;citations")
