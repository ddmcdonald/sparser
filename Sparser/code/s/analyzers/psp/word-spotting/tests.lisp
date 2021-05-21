;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "tests"
;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version: May 2021

;; Initiated 5/18/21

(in-package :sparser)


#|  (p "a hairless creature that sparked chupacabra rumors")

;; in lm_rules
  ["chupacabra_CHAR", "chupacabra", "fuzzy=0.9"]

|#

(setup-word-to-spot "chupacabra" :name 'chupacabra :note 'chupacabra_CHAR)

(p "a well-known chupacabra")

(p "and with regard to the chupacabra")  ;; 'with regard to' is a pw
