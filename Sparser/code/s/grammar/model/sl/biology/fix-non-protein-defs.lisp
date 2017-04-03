;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "fix-non-protein-defs"
;;;  Module: "grammar/model/sl/biology/
;;; version: March 2017

(in-package :sparser)

(defun fix-cell-loc (input-file output)
  )

;; example item types:
(define-cellular-location "plasma membrane" "GO:0005886")
(def-synonym plasma-membrane (:noun "PM"))
(noun "plasma" :super cellular-location)
(define-category stress-granule :specializes cellular-location
  :realization
     (:noun "SG"))
(def-synonym stress-granule
  (:noun "stress granule"))
(def-ided-indiv cellular-location "Cross-Bridge" "GO:0097595" :name "ventral disc crossbridge") 
