;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "diseases-pathogens"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Broken out from terms 5/10/17

;; Contains both diseases and pathogens -- this is partly because when
;; things come back from TRIPS, sometimes viruses are called medical
;; conditions (i.e., diseases) so if they all end up in here it will
;; be easier to sort those out and recategorize them, and also because
;; sometimes the bacteria and viruses are talked about in ways that
;; are more about the disease they cause as opposed to being used for
;; experimental manipulations

;; contains bacteria, cancers, disease terms, other diseases, and viruses

(in-package :sparser)

;;;-------------------------------
;;; bacteria
;;;-------------------------------

;;;-------------------------------
;;; cancers
;;;-------------------------------

(noun "glioblastoma" :super cancer)
(noun "keratoacanthoma" :super cancer)
(noun "neuroblastoma" :super cancer) ;; removed erroneous extra "o"

;;;--------------
;;; disease terms
;;;--------------

(noun "abnormality" :super disease)
(noun "disorder" :super disease)

;;;----------------
;;; other diseases
;;;----------------

(noun "anaphylaxis" :super disease)
(noun "metaplasia" :super disease)
(noun "neurofibromatosis" :super disease)
(noun "CML" :super disease)

;;;-----------------
;;; viruses
;;;-----------------
