;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "molecular-locations"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Broken out from terms 5/10/17

(in-package :sparser)

;; Jan 29 "two MAPK phosphorylation sites in ASPP1 and ASPP2."
;; Jan 14 "mutation of the primary site of monoubiquitination"
;; 16 "mUbRas, modified at a single site, "
(noun "site" :super molecular-location
  :binds ((process bio-process)
          (kinase protein)
	  (substrate protein)
	  ;;(kinase-or-substrate protein)
          (residue residue-on-protein))
  :realization
     (:noun "site"
      :m process
      :m residue
      :m kinase
      :m substrate
      ;;:m kinase-or-substrate
      :of process
      :for process
      :in substrate
      :on substrate
      :at residue))

(noun "docking site" :super site)

(noun "surface area" :super molecular-location)

(noun "HA.11" :super epitope)
