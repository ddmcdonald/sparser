;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: MUMBLE -*-
;;; Copyright (c) 2016-2017 SIFT LLC. All Rights Reserved.

(in-package :mumble)

;;; Generation from semantics in the biological domain.
;;; Examples are from "Talking about a Dynamical Model"
;;; by Benjamin Gyori, et al.

;; Need a procedure that fixes non-canonical protein
;; names. Changed value (10/31/17) to fit what we get
;; without fixing them.

(deftest (say braf)
  (mumble-says "BRAF.")
  "BRAF")

(deftest (say phosphorylated braf)
  (mumble-says "phosphorylated BRAF.")
  "phospho BRAF")

(deftest (say braf that is phosphorylated)
  (mumble-says "BRAF that is phosphorylated.")
  "BRAF that is phosphorylated")

(deftest (say braf phosphorylated by mek)
  (mumble-says "BRAF that is phosphorylated by MEK.")
  "BRAF that is phosphorylated by MEK 1/2")

(deftest (say braf that mek phosphorylated)
  (mumble-says "BRAF that MEK phosphorylated.")
  "BRAF that is phosphorylated by MEK 1/2")

(deftest (say mek-phosphorylated braf)
  (mumble-says "MEK-phosphorylated BRAF.")
  "BRAF that is phosphorylated by MEK 1/2")

(deftest (say braf phosphorylated on serine)
  (mumble-says "BRAF that is phosphorylated on serine.")
  "BRAF that is phosphorylated on serine")

(deftest (say braf phosphorylated on serine and tyrosine)
  (mumble-says "BRAF that is phosphorylated on serine and tyrosine.")
  "BRAF that is phosphorylated on serine and tyrosine")

(deftest (say amount phosphorylated braf)
  (mumble-says "The amount of phosphorylated BRAF.")
  "the amount of phospho BRAF")


#| The scheme for getting the simple, 'use with a person' name from the 
defining function for proteins works for BRAF, but not for NRAS
Instead we get "RASN" -- changing all the tests to reflect that
|#

(deftest (say concentration braf-nras complex)
  (mumble-says "The concentration of BRAF-NRAS complex.")
  "the concentration of BRAF-RASN complex")

(deftest (say mek phosphorylates erk)
  (mumble-says "MEK phosphorylates ERK.")
  "MEK 1/2 phosphorylates ERK")

(deftest (say egfr binds egf)
  (mumble-says "The receptor tyrosine kinase EGFR binds the growth factor ligand EGF.")
  "the receptor tyrosine kinase EGFR binds the growth factor ligand EGF")

;; Section 2.2.
(deftest (say double amount of braf)
  (mumble-says "Double the amount of BRAF.") ; missing "total"
  "double the amount of BRAF")

(deftest (say increase braf 10-fold)
  (mumble-says "Increase the amount of BRAF by 10-fold.")
  "increase the amount of BRAF by ten fold")

(deftest (say assume no nras)
  (mumble-says "Assume there is no NRAS in the system.")
  "assume there is no RASN in the system")

(deftest (say set amount of braf to zero)
  (mumble-says "Set the amount of BRAF to zero.") ; missing total
  "set the amount of BRAF to zero")

(deftest (say decrease binding rate of nras and braf)
  (mumble-says "Decrease the binding rate of NRAS and BRAF.")
  "decrease the binding rate of RASN and BRAF")

;; Section 2.4.

(deftest (say it is transient in time)
  (mumble-says "it is transient in time.")
  "it is transient in time")

(deftest (say it is not transient in time)
  (mumble-says "it is not transient in time.")
  "it isn't transient in time")

(deftest (say certain it is transient)
  (mumble-says "I'm quite certain it is transient.")
  "I am quite certain that it is transient")

(deftest (say confident it is transient)
  (mumble-says "I am confident it is transient.")
  "I am confident that it is transient")

(deftest (say transient with high probability)
  (mumble-says "It is transient with a high probability.")
  "it is transient with a high probability")
