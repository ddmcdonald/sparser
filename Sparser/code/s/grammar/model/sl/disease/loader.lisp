;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013,2020  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "sl;disease:"
;;;   version:   March 2020

;; initiated 12/27/07. Started expanding 5/6/13 with [named-entities],
;; [h-n-scanner]

(in-package :sparser)

(gload "disease;death")
(gload "disease;pathogen")
(gload "disease;pathogen-type")
(gload "disease;outbreak")
(gload "disease;contract")
(gload "disease;spread")
(gload "disease;h-n-scanner")
(gload "disease;named-entities")
(gload "disease;disease-ref")
(gload "disease;cases")

(gload "disease;covid-19")


(defun disease-loaded-after-bio ()
  (gload "disease;misc-covid")

  ;; moved from bio;new-defs;new-diseases
  ;; partially supercede the covid-19 and misc-covid files, but not
  ;; removing those until we have more discussions integrating viruses
  ;; (and bacteria) as organisms w/ pathogens and the resulting
  ;; diseases
  ;; these are loaded after bio because their superclasses are still in
  ;; bio;taxonomy for now
  (gload "disease;viruses")
  (gload "disease;bacteria")
  (gload "disease;cancers")
  (gload "disease;other-medical-conditions") ;; diseases, syndromes, symptoms
  )
