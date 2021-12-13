;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "cells"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Broken out from terms 5/8/17
;; contains: cell lines, cell lines with IDs, cell types, and cell types with IDs

(in-package :sparser)

;;;------------
;;; cell lines
;;;------------
; were expressed in HEK293T cells
; BRAF mutant thyroid cell lines
; HER2-amplified breast cancer cell lines
; breast carcinoma cell lines
; all six BRAF-mutant thyroid cancer cell lines
; increased basal HER3 in 8505C cells
; confirmed in a second cell line
; our panel of cancer cell lines (Figure 6A).
; the HCC827 NSCLC cell line


(def-synonym cell-line (:noun "line"))
;;(def-synonym cell-line (:noun "cell line"))
;;(def-synonym cell-line (:noun "cell"))
;;(def-synonym cell-line (:noun "cultured cell"))
;;(def-synonym cell-line (:noun "cultured cell line"))

(defun def-cell-line (line)
  (def-bio/expr line 'cell-line :takes-plurals nil))


#+ignore
(def-bio/expr "cancer cell" 'cell-line :takes-plurals t
              :synonyms '("cancer cell lines"))


(def-cell-line "A375")
(def-cell-line "A431D")
(def-cell-line "A431")
(def-cell-line "C140")
(def-cell-line "D04")
(def-cell-line "D25")
(def-cell-line "DU-145")
(def-cell-line "MM415")
(def-cell-line "MM485")
(def-cell-line "OUMS-23")
(def-cell-line "PC12") ;; want to get effect of  :synonyms ("PC 12") as well
(def-cell-line "RPMI-7951")
(def-cell-line "SkMel24")
(def-cell-line "SkMel28")
(def-cell-line "WM266.4")
(def-cell-line "WM852")
;(def-cell-line "HeLa")
(def-cell-line "hBRIE")
(def-cell-line "HEK293")
(def-cell-line "HEK293T")
(def-cell-line "HKe3 ER:HRASV12")
(def-cell-line "HKe3 ER:HRAS12")
(def-cell-line "HKe3")
(def-cell-line "KNRK")
(def-cell-line "LAT-3YF")
(def-cell-line "LAT3YF")
(def-cell-line "MDCK")
(def-cell-line "MDA-MB-468")
(def-cell-line "NIH-3T3")
(def-cell-line "Saos2")
(def-cell-line "VMM12")
(def-cell-line "VMM18")
(def-cell-line "VMM39")
(def-cell-line "VMM5A")

;;;------------
;;; cell types
;;;------------

;;(def-cell-type "mouse embryo fibroblast") ;; CORRECTED -- was not sure this is right -- it is a type of cell, but...
;;A fibroblast is a type of cell that synthesizes the extracellular matrix and collagen,[1] 
;; the structural framework (stroma) for animal tissues, and plays a critical role in wound healing. 
;; Fibroblasts are the most common cells of connective tissue in animals.
;(noun "fibroblast" :super cell-type)

;(noun "keratin" :super cell-type) ;; NOT SURE THIS IS HOW IT IS BEING USED -- it's a protein family

(noun "MenSC" :super cell-type) ;; TRIPS wanted to define this as a protein domain stemming from MANSC -> MENSC, but that's clearly not right in context -- it's really "Menstrual Stem Cell" but, unfortunately for some reason that isn't in either cellosaurus or cell ontology, so I can't give it an ID
(def-synonym MenSC (:noun "menstrual stem cell"))

(noun "induced pluripotent stem cell" :super cell-type)
(def-synonym induced-pluripotent-stem-cell (:noun "iPSC"))
(def-synonym induced-pluripotent-stem-cell (:noun "iPS cell"))

;; added "iPSC" as "induced pluripotent stem cell" and "iPS cell" for synonym -- unfortunately there's no induced version in cell ontology CL_0002248 is pluripotent, while cellosaurus has many specific cell lines but no aggregate term
