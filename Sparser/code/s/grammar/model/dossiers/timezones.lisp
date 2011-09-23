;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "timezones"
;;;   Module:  "model;dossiers:"
;;;  version:  August 2008
;;;   author:  Charlie Greenbacker

;; initiated 8/26/08

(in-package :sparser)

;;;-----------------------
;;; regional time zone abbreviations
;;;-----------------------

(def-timezone "UTC")
(def-timezone "GMT")

(def-timezone "HAST")
(def-timezone "HST")
(def-timezone "HT")

(def-timezone "AKT")
(def-timezone "AKST")
(def-timezone "AKDT")

(def-timezone "PT")
(def-timezone "PST")
(def-timezone "PDT")

(def-timezone "MT")
(def-timezone "MST")
;;(def-timezone "MDT") ;; conflicts with Medtronic stock symbol

(def-timezone "CT")  ;; may need context-sensitive rule to disambiguate Connecticut
(def-timezone "CST")
(def-timezone "CDT")

(def-timezone "ET")
(def-timezone "EST")
(def-timezone "EDT")

(def-timezone "AT")
(def-timezone "AST")
(def-timezone "ADT")

(def-timezone "NT")
(def-timezone "NST")
(def-timezone "NDT")

(def-timezone "WET")
(def-timezone "WEST")
(def-timezone "CET")
(def-timezone "CEST")
(def-timezone "EET")
(def-timezone "EEST")
(def-timezone "MSK")
(def-timezone "MCT")
(def-timezone "MSD")

(def-timezone "CVT")
(def-timezone "WAT")
(def-timezone "CAT")
(def-timezone "WAST")
(def-timezone "SAST")
(def-timezone "EAT")
(def-timezone "MUT")
(def-timezone "SCT")

(def-timezone "IST")

(def-timezone "JST")

(def-timezone "KST")

(def-timezone "ACT")

(def-timezone "AWST")
(def-timezone "ACST")
(def-timezone "AEST")

(def-timezone "ChST")