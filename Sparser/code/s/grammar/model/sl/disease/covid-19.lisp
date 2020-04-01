;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2020 Smart Information Flow Technologies -- all rights reserved
;;;
;;;      File:   "covid-19"
;;;    Module:   "sl;disease:"
;;;   version:   March 2020

;; initiated 3/25/20

(in-package :sparser)

(noun "virus" :super pathogen-type)

(noun "coronavirus" :super virus)

;; genus Betacoronabirus

;;/// inhibit plurals -- add-rules-cond-plural  :no-plural
(noun "SARS" :super coronavirus)
(def-synonym SARS (:noun "Severve Acute Respiratory Syndrome"))
(def-synonym SARS (:noun "SARS-CoV"))

(noun "MERS" :super coronavirus)
(def-synonym MERS (:noun "Middle East Respiratory Syndrome"))
(def-synonym MERS (:noun "MERS-CoV"))

(noun "SARS-CoV-2" :super coronavirus)
(def-synonym SARS-CoV-2 (:noun "SAR-CoV-2"))

