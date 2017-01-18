;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "talking-about-a-model"
;;;  Module: "grammar/model/sl/biology/
;;;  version:  May 2016

;; Broken out from patterns 7/20/15. 11/2/15 fanout from converting
;; edge patterns early. 

(in-package :sparser)


(defparameter *dynamic-model-sents*
  '(
    ;;1.1. Molecular species (model variables). 
    (p "phosphorylated BRAF.")
    (p "unphosphorylated BRAF.")
    (p "BRAF that is phosphorylated.")
    (p "Phospho-BRAF.")
    (p "double-phosphorylated BRAF.")
    (p "serine-phosphorylated BRAF.")
    (p "BRAF that is phosphorylated on serine and tyrosine.")
    (p "BRAF that is phosphorylated on Ser-602.")
    (p "BRAF that is bound to NRAS.")
    (p "NRAS-bound BRAF.")  ; 10
    (p "the BRAF-NRAS complex.")
    (p "BRAF-V600E.")
    (p "mutant BRAF.")
    (p "BRAF monomer.")
    (p "BRAF homodimer.")
    (p "BRAF-RAF1 heterodimer.")
    
    ;;1.2. Amounts of molecular species
    (p "the amount of phosphorylated BRAF.")
    (p "the concentration of BRAF-NRAS complex.")
    (p "the number of molecules of BRAF.")
    (p "the number of BRAF-NRAS complexes.")  ; 20

    ;;1.3. Initial/total amounts (model initial conditions).
    (p "The initial amount of phosphorylated BRAF.")
    (p "The total amount of BRAF.")
    (p "The initial concentration of BRAF.")
    (p "The initial number of molecules of BRAF.")

    ;;1.4. Kinetic rates (model parameters).
    (p "The binding rate of NRAS and BRAF.")
    (p "The dissociation rate of NRAS and BRAF.")
    (p "The catalysis rate of BRAF phosphorylating MAP2K1.")

    ;;2.1. Asking about the temporal behavior of a molecular entity
    (p "Is the BRAF-NRAS complex sustained in time?")
    (p "Is the amount of BRAF-NRAS complex sustained at a high level?")
    (p "Is the BRAF-NRAS complex sustained in the first 2 hours?")  ; 30
    (p "Is the BRAF-NRAS complex sustained after 2 hours?")
    (p "Is the concentration of the BRAF-NRAS complex sustained at a low level?")
    (p "Does the amount of phosphorylated BRAF reach a high level and then drop to a low level?")
    (p "Is the amount of phosphorylated BRAF transient in time?")
    (p "Is the amount of BRAF dimer unchanged in time?")
    (p "Is the amount of BRAF dimer unchanged over time?")
    (p "Does the amount of phosphorylated MAP2K1 always remain low?")
    (p "Is the amount of phosphorylated BRAF always high?")
    (p "Does the amount of phosphorylated BRAF ever reach a high value?")
    (p "Does the amount of phosphorylated BRAF at some time reach a low value?")  ; 40
    (p "Does the amount of phosphorylated BRAF at any time reach a low value?")
    (p "Does the amount of phosphorylated MAP2K1 remain low until phosphorylated BRAF reaches a high value?")
    (p "Does phosphorylated BRAF being high precede phosphorylated MAP2K1 reaching a high level?")
    (p "Does phosphorylated MAP2K1 being high follow phosphorylated BRAF reaching a high value?")
    (p "Does phosphorylated BRAF become high before phosphorylated MAP2K1 becomes high?")
    (p "Does phosphorylated BRAF rise faster than phosphorylated MAP2K1?")
    (p "Does the amount of BRAF-NRAS complex have a maximum?")
    (p "Does phosphorylated MAP2K1 behave like phosphorylated MAPK1?")
    (p "Is the BRAF-RAF1 complex more abundant than the BRAF-NRAS complex at 2 hours?")
    (p "Is the concentration of phosphorylated BRAF at 2 hours higher than the concentration of phosphorylated MAP2K1?") ; 50
    (p "Is phosphorylated BRAF very noisy over time?")
    (p "Does the BRAF-NRAS complex vanish?")
    (p "Does the BRAF-NRAS complex vanish at some time?")

    ;; 2.2 Manipulating model initial conditions and model parameters
    (p "Double the amount of total BRAF.")
    (p "Assume there is no NRAS in the system.")
    (p "Set the total amount of BRAF to zero.")
    (p "Decrease the binding rate of NRAS and BRAF.")
    (p "Increase the dissociation rate of NRAS and BRAF.")
    (p "Increase the binding rate of NRAS and BRAF by 10 fold.")
    (p "Increase the binding rate of NRAS and BRAF by an order of magnitude.")  ; 60
    (p "Decrease the catalysis rate of MAP2K1 phosphorylation by half.")

    ;;2.3. Asking about temporal properties while manipulating initial conditions and model parameters
    (p "Is phosphorylated BRAF transient if we double the amount of BRAF?")
    (p "Does the BRAF-NRAS dimer vanish even if we increase the binding rate of NRAS and BRAF?")
    (p "Is phosphorylated BRAF high at any time if there is no NRAS in the system?")

    ;; sentences added by Mark -- possibly from a writeup by Harvard?
   ;; Statements about temporal properties:  Worry about the *'d ones
    ;;2.4. Make statements about temporal properties
    (p "Yes it is transient in time.")
    (p "No it is not transient.")
    (p "No, it is sustained over time.")

    ;; certainty
    ;; (p "I’m [quite certain|confident|uncertain] it is transient.")
    (p "I am quite certain it is transient.")
    (p "I am confident it is transient.")
    (p "I am uncertain it is transient.") ; 70
    (p "It is transient with a high probability.")
    
    (p "It is likely that it is transient.")
    (p "It is unlikely that it is transient.")
    (p  "It is only sometimes transient.")
    (p  "It is mostly transient but not always.")
    (p "It is very unlikely that it is transient.")

    (p "There is little chance that it is transient.")
    (p "I am 95% sure that it is not transient.")
    (p "I am pretty sure it is transient but I can give a more precise answer later.")
    (p "It is sometimes transient and sometimes isn’t.") ; 80
    (p "It is only sometimes transient.")
    (p "It is mostly transient but not always.")

    ;;3. Question­answer pairs
    (p "Is there a peak in the phosphorylated amount of MAPK1 before 2 hours?") ;; Human
    (p "I’m quite sure there isn’t.") ;;Machine 
    (p "What if we double the amount of DUSP6?") ;;Human
    (p "There is still no peak.") ;;Machine
    (p "Is the total amount of DUSP6 unchanged in time?") ;;Human
    (p "Yes it is unchanged.") ;;Machine
    (p "Is the amount of MAP2K1­MAPK1 complex higher at 1 hour than the amount of MAPK1­DUSP6 complex?") ;;Human
    (p "Yes it is. In fact the amount of MAPK1­DUSP6 complex is always low.") ;; 90 Machine
    (p "That’s odd. What if we increase the binding rate of MAPK1 and DUSP6 by 10 fold?") ;;Human
    (p "The amount of MAPK1­DUSP6 complex is not always low anymore.") ;; Machine
    (p "And does phospho­MAPK1 now have a peak?") ;;Human
    (p "It does with high probability.") ;;Machine
    ))


(define-sentence-corpus dynamic-model *dynamic-model-sents*
  :location corpus
  :doc "material from Ben Gyori and Walter Fontana")

(defun test-dynamic-model-sents (&optional (no-sem nil) (stream *standard-output*))
  (let ((*suppress-indiv-uids* t)
	(*no-small-trees* t))
    (declare (special *suppress-indiv-uids* *no-small-trees*))
    (loop for s in *dynamic-model-sents*
       do
	 (format stream "~%___________________~%~s~%" (second s))
	 (cond (no-sem
                (eval `(p ,(second s))))
               (t
                (eval `(pp ,(second s)))
                (show-sem-forest)))
	 (format stream "~%~%~%"))))

