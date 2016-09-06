;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: MUMBLE -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.

(in-package :mumble)

;;; Generation from semantics in the biological domain.
;;; Examples are from "Talking about a Dynamical Model"
;;; by Benjamin Gyori, et al.

(deftest (say braf)
  (mumble-says "BRAF.")
  "BRAF")

(deftest (say phosphorylated braf)
  (mumble-says "phosphorylated BRAF.")
  "phosphorylated BRAF")

(deftest (say braf that is phosphorylated)
  (mumble-says "BRAF that is phosphorylated.")
  "BRAF that is phosphorylated")

(deftest (say braf phosphorylated by mek)
  (mumble-says "BRAF that is phosphorylated by MEK.")
  "BRAF that is phosphorylated by MEK")

(deftest (say braf that mek phosphorylated)
  (mumble-says "BRAF that MEK phosphorylated.")
  "BRAF that is phosphorylated by MEK")

(deftest (say mek-phosphorylated braf)
  (mumble-says "MEK-phosphorylated BRAF.")
  "BRAF that is phosphorylated by MEK")

(deftest (say braf phosphorylated on serine)
  (mumble-says "BRAF that is phosphorylated on serine.")
  "BRAF that is phosphorylated on serine")

(deftest (say braf phosphorylated on serine and tyrosine)
  (mumble-says "BRAF that is phosphorylated on serine and tyrosine.")
  "BRAF that is phosphorylated on serine and tyrosine")

(deftest (say amount phosphorylated braf)
  (mumble-says "The amount of phosphorylated BRAF.")
  "the amount of phosphorylated BRAF")

(deftest (say concentration braf-nras complex)
  (mumble-says "The concentration of BRAF-NRAS complex.")
  "the concentration of complex of BRAF and NRAS")

(deftest (say mek phosphorylates erk)
  (mumble-says "MEK phosphorylates ERK.")
  "MEK phosphorylates ERK")

(deftest (say egfr binds egf)
  (mumble-says "The receptor tyrosine kinase EGFR binds the growth factor ligand EGF.")
  "the receptor tyrosine kinase EGFR binds the growth factor ligand EGF")

;; Section 2.2.
(deftest (say double amount of braf)
  (mumble-says "Double the amount of BRAF.") ; missing "total"
  "double the amount of BRAF")

(deftest (say assume no nras)
  (mumble-says "Assume there is no NRAS in the system.")
  "assume there is no NRAS in the system")

(deftest (say set amount of braf to zero)
  (mumble-says "Set the amount of BRAF to zero.") ; missing total
  "set the amount of BRAF to zero")

(deftest (say decrease binding rate of nras and braf)
  (mumble-says "Decrease the binding rate of NRAS and BRAF.")
  "decrease the kinetics of NRAS and BRAF")

;; Section 2.4.

(deftest (say it is transient in time)
  (mumble-says "it is transient in time.")
  "it is transient in time")

(deftest (say it is not transient in time)
  (mumble-says "it is not transient in time.")
  "it isn't transient in time")
