;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "talking-about-a-model"
;;;  Module: "grammar/model/sl/biology/
;;;  version:  May 2016

;; Broken out from patterns 7/20/15. 11/2/15 fanout from converting
;; edge patterns early. 

(in-package :sparser)


(defparameter *dynamic-model-sents*
  '("phosphorylated BRAF."
    "unphosphorylated BRAF."
    "BRAF that is phosphorylated."
    "Phospho-BRAF."
    "double-phosphorylated BRAF."
    "serine-phosphorylated BRAF."
    "BRAF that is phosphorylated on serine and tyrosine."
    "BRAF that is phosphorylated on Ser-602."
    "BRAF that is bound to NRAS."
    "NRAS-bound BRAF."
    "the BRAF-NRAS complex."
    "BRAF-V600E."
    "mutant BRAF."
    "BRAF monomer."
    "BRAF homodimer."
    "BRAF-RAF1 heterodimer."

    "the amount of phosphorylated BRAF."
    "the concentration of BRAF-NRAS complex."
    "the number of molecules of BRAF."
    "the number of BRAF-NRAS complexes."

    "The initial amount of phosphorylated BRAF."
    "The total amount of BRAF."
    "The initial concentration of BRAF."
    "The initial number of molecules of BRAF."

    "The binding rate of NRAS and BRAF."
    "The dissociation rate of NRAS and BRAF."
    "The catalysis rate of BRAF phosphorylating MAP2K1."

    "Is the BRAF-NRAS complex sustained in time?"
    "Is the amount of BRAF-NRAS complex sustained at a high level? ."
    "Is the BRAF-NRAS complex sustained in the first 2 hours?"
    "Is the BRAF-NRAS complex sustained after 2 hours?"
    "Is the concentration of the BRAF-NRAS complex sustained at a low level? ."
    "Does the amount of phosphorylated BRAF reach a high level and then drop to a low level?"
    "Is the amount of phosphorylated BRAF transient in time?"
    "Is the amount of BRAF dimer unchanged in time?"
    "Is the amount of BRAF dimer unchanged over time?"
    "Does the amount of phosphorylated MAP2K1 always remain low?"
    "Is the amount of phosphorylated BRAF always high?"
    "Does the amount of phosphorylated BRAF ever reach a high value?"
    "Does the amount of phosphorylated BRAF at some time reach a low value?"
    "Does the amount of phosphorylated BRAF at any time reach a low value?"
    "Does the amount of phosphorylated MAP2K1 remain low until phosphorylated BRAF reaches a high value?"
    "Does phosphorylated BRAF being high precede phosphorylated MAP2K1 reaching a high level?"
    "Does phosphorylated MAP2K1 being high follow phosphorylated BRAF reaching a high value?"
    "Does phosphorylated BRAF become high before phosphorylated MAP2K1 becomes high?"
    "Does phosphorylated BRAF rise faster than phosphorylated MAP2K1?"
    "Does the amount of BRAF-NRAS complex have a maximum?"
    "Does phosphorylated MAP2K1 behave like phosphorylation MAPK1?"
    "Is the BRAF-RAF1 complex more abundant than the BRAF-NRAS complex at 2 hours?"
    "Is the concentration of phosphorylated BRAF at 2 hours higher than the concentration of phosphorylated MAP2K1?"
    "Is phosphorylated BRAF very noisy over time?"
    "Does the BRAF-NRAS complex vanish?"
    "Does the BRAF-NRAS complex vanish at some time?"

    "Double the amount of total BRAF."
    "Assume there is no NRAS in the system."
    "Set the total amount of BRAF to zero."
    "Decrease the binding rate of NRAS and BRAF."
    "Increase the dissociation rate of NRAS and BRAF."
    "Increase the binding rate of NRAS and BRAF by 10 fold."
    "Increase the binding rate of NRAS and BRAF by an order of magnitude."
    "Decrease the catalysis rate of MAP2K1 phosphorylation by half."

    "Is phosphorylated BRAF transient if we double the amount of BRAF?"
    "Does the BRAF-NRAS dimer vanish even if we increase the binding rate of NRAS and BRAF?"
    "Is phosphorylated BRAF high at any time if there is no NRAS in the system?"
    ))
