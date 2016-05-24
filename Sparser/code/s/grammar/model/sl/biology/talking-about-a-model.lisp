;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "talking-about-a-model"
;;;  Module: "grammar/model/sl/biology/
;;;  version:  May 2016

;; Broken out from patterns 7/20/15. 11/2/15 fanout from converting
;; edge patterns early. 

(in-package :sparser)


(defparameter *dynamic-model-sents*
  '((p "phosphorylated BRAF.")
    (p "unphosphorylated BRAF.")
    (p "BRAF that is phosphorylated.")
    (p "Phospho-BRAF.")
    (p "double-phosphorylated BRAF.")
    (p "serine-phosphorylated BRAF.")
    (p "BRAF that is phosphorylated on serine and tyrosine.")
    (p "BRAF that is phosphorylated on Ser-602.")
    (p "BRAF that is bound to NRAS.")
    (p "NRAS-bound BRAF.")
    (p "the BRAF-NRAS complex.")
    (p "BRAF-V600E.")
    (p "mutant BRAF.")
    (p "BRAF monomer.")
    (p "BRAF homodimer.")
    (p "BRAF-RAF1 heterodimer.")

    (p "the amount of phosphorylated BRAF.")
    (p "the concentration of BRAF-NRAS complex.")
    (p "the number of molecules of BRAF.")
    (p "the number of BRAF-NRAS complexes.")

    (p "The initial amount of phosphorylated BRAF.")
    (p "The total amount of BRAF.")
    (p "The initial concentration of BRAF.")
    (p "The initial number of molecules of BRAF.")

    (p "The binding rate of NRAS and BRAF.")
    (p "The dissociation rate of NRAS and BRAF.")
    (p "The catalysis rate of BRAF phosphorylating MAP2K1.")

    (p "Is the BRAF-NRAS complex sustained in time?")
    (p "Is the amount of BRAF-NRAS complex sustained at a high level? .")
    (p "Is the BRAF-NRAS complex sustained in the first 2 hours?")
    (p "Is the BRAF-NRAS complex sustained after 2 hours?")
    (p "Is the concentration of the BRAF-NRAS complex sustained at a low level? .")
    (p "Does the amount of phosphorylated BRAF reach a high level and then drop to a low level?")
    (p "Is the amount of phosphorylated BRAF transient in time?")
    (p "Is the amount of BRAF dimer unchanged in time?")
    (p "Is the amount of BRAF dimer unchanged over time?")
    (p "Does the amount of phosphorylated MAP2K1 always remain low?")
    (p "Is the amount of phosphorylated BRAF always high?")
    (p "Does the amount of phosphorylated BRAF ever reach a high value?")
    (p "Does the amount of phosphorylated BRAF at some time reach a low value?")
    (p "Does the amount of phosphorylated BRAF at any time reach a low value?")
    (p "Does the amount of phosphorylated MAP2K1 remain low until phosphorylated BRAF reaches a high value?")
    (p "Does phosphorylated BRAF being high precede phosphorylated MAP2K1 reaching a high level?")
    (p "Does phosphorylated MAP2K1 being high follow phosphorylated BRAF reaching a high value?")
    (p "Does phosphorylated BRAF become high before phosphorylated MAP2K1 becomes high?")
    (p "Does phosphorylated BRAF rise faster than phosphorylated MAP2K1?")
    (p "Does the amount of BRAF-NRAS complex have a maximum?")
    (p "Does phosphorylated MAP2K1 behave like phosphorylation MAPK1?")
    (p "Is the BRAF-RAF1 complex more abundant than the BRAF-NRAS complex at 2 hours?")
    (p "Is the concentration of phosphorylated BRAF at 2 hours higher than the concentration of phosphorylated MAP2K1?")
    (p "Is phosphorylated BRAF very noisy over time?")
    (p "Does the BRAF-NRAS complex vanish?")
    (p "Does the BRAF-NRAS complex vanish at some time?")

    (p "Double the amount of total BRAF.")
    (p "Assume there is no NRAS in the system.")
    (p "Set the total amount of BRAF to zero.")
    (p "Decrease the binding rate of NRAS and BRAF.")
    (p "Increase the dissociation rate of NRAS and BRAF.")
    (p "Increase the binding rate of NRAS and BRAF by 10 fold.")
    (p "Increase the binding rate of NRAS and BRAF by an order of magnitude.")
    (p "Decrease the catalysis rate of MAP2K1 phosphorylation by half.")

    (p "Is phosphorylated BRAF transient if we double the amount of BRAF?")
    (p "Does the BRAF-NRAS dimer vanish even if we increase the binding rate of NRAS and BRAF?")
    (p "Is phosphorylated BRAF high at any time if there is no NRAS in the system?")
    ))


(define-sentence-corpus :dynamic-model *dynamic-model-sents*
  :location corpus
  :doc "material from Ben Gyori and Walter Fontana")

(defun test-dynamic-model-sents ()
  (sem-test-corpus *dynamic-model-sents*))

