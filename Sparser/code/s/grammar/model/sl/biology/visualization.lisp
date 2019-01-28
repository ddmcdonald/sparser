;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "visualization"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2015


;; Initialized 27 Jan 2019 for vocabulary and concepts relative to (SBGN?) visulaization of protein interactions


;; path is not a functional term in biology, but is is meaningful in a graph display
(define-category path :specializes bio-mechanism ;; probably not right, buit not sure what else to use
  :binds ((endpoints bio-chemical-entity)
          (start bio-chemical-entity)
          (end bio-chemical-entity))
   :realization (:noun "path"
                       :between endpoints
                       :from start
                       :to end))


