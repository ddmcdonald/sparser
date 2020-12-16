;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013,2020  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "sl;disease:"
;;;   version:   November 2020

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
;; (gload "disease;cases") -- subsumed by outbreak

(gload "disease;covid-19") ;; <-------- empty this out


(defun disease-loaded-after-bio ()
  These are loaded after bio because their superclasses are still in
  biology's taxonomy for now"
  
  ;;(gload "disease;medical-taxonomy")
  ;;   Moved to bio;loader. Still too entangled by the categories it uses


  (gload "disease;misc-covid") ;; uses 'disease' from the taxonomy

  ;; moved from bio;new-defs;new-diseases
  ;; partially supercede the covid-19 and misc-covid files, but not
  ;; removing those until we have more discussions integrating viruses
  ;; (and bacteria) as organisms w/ pathogens and the resulting
  ;; diseases
  (gload "disease;viruses")
  (gload "disease;bacteria")
  (gload "disease;cancers")
  (gload "disease;other-medical-conditions") ;; diseases, syndromes, symptoms
  )
