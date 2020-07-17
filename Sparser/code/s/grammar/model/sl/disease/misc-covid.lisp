;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2020 Smart Information Flow Technologies -- all rights reserved
;;;
;;;      File:   "misc-covid"
;;;    Module:   "sl;disease:"
;;;   version:   April 2020

;; initiated 3/30/20 as a place to define things associated with
;; the COVID-19 disease that aren't simply virus names

(in-package :sparser)

;;--- diseases

(noun "COVID-19" :super disease)
(def-synonym COVID-19 (:noun ("Corona Virus Disease 2019"
                              "covid19" "COVID19" "COVID-19" "covid-19"
                              "Corona Virus Disease 2019" "Coronavirus Disease-2019"
                              "COVID-9" "COVID" "COVD-19" "COVDI-19" "COVID-2" "COVID-2019"
                              "covid" "Cov-19" "CoV-19" "COV-2" "CoV-2")))
;;(def-synonym COVID-19 (:noun 


;;------------- these are mostly wrong, not thought out enough
;;              parking them here to make it easier to find any
;;              equivalents already in bio

(define-pathogen-type "flu")

(define-pathogen-type "bacteria")

;; (define-pathogen-type "disease") ;;not really a kind of pathogen

;;(define-pathogen-type "strain") ;;same as above
