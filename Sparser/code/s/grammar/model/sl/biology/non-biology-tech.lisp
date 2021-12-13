;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "non-biology-tech"
;;;  Module: "grammar/model/sl/biology/
;;; version: October 2021

;; Broken out from terms bio-methods
;; software/platforms that are not bio-specific

(in-package :sparser)

;; software
(noun "EndNote" :super bio-method)
(noun "ImagePro" :super bio-method)
;; stats software
(noun "CurveExpert" :super bio-method) 
;; graphing software
(noun "SigmaPlot" :super bio-method) 

(noun "ArcMap" :super bio-method) ;; geospatial processing


;; platform
(noun "GitHub" :super bio-method) 
(noun "WeChat" :super bio-method) 
(noun "WhatsApp" :super bio-method) 
(noun "edX" :super bio-method) 

;; database - could go in evidence-sources but currently that's all bio
(noun "ImageNet" :super database) 

(noun "ScienceDirect" :super database) ;; not quite right

(noun "WorldClim" :super database) ;; set of global climate layers (gridded climate data) at 1km^2

(noun "WorldPop" :super database) 
;; WorldPop provides high resolution, open and contemporary data on human population distributions,
