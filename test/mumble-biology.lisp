;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: MUMBLE -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.

(in-package :mumble)

;;; Generation from semantics in the biological domain.

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
  "the concentration of complex between BRAF and NRAS")

(deftest (say mek phosphorylates erk)
  (mumble-says "MEK phosphorylates ERK.")
  "MEK phosphorylates ERK")

(deftest (say egfr binds egf)
  (mumble-says "The receptor tyrosine kinase EGFR binds the growth factor ligand EGF.")
  "the receptor tyrosine kinase EGFR binds the growth factor ligand EGF")
