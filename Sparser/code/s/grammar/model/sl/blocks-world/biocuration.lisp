;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "biocuration"
;;;    Module:  grammar/model/sl/blocks-world/
;;;   version:  March 2016

;; Initiated 2/2/16 for working on biocuration dialog texts
#|
USR: I have a patient with pancreatic cancer. What drug should I use?
BOB: 88% of pancreatic cancer patients have a mutation in KRAS that makes it active.
BOB: But I don’t know of any drug targeting KRAS. 
USR: Let’s look at the KRAS neighborhood
USR: I know that KRAS activates Raf, which activates Erk. Erk activation drives cancer progression. 
[alt: I know that KRAS activates Raf, and Raf activates Erk. Erk activation drives cancer progression. ]
BOB: OK. <<displays mechanism>>
USR: OK. Are there any known Raf inhibitors?
BOB: Dabrafenib, vemurafenib, GDC-0879 and dabrafenib mesylate are known RAF inhibitors.
USR: Is Erk inactivated if I add vemurafenib?
BOB: Yes, the model you proposed shows that Erk is inactivated
BOB: However, vemurafenib is a BRAF inhibitor. 
     When I expand the Raf protein family to BRAF and RAF1, Erk is not inactivated. 
BOB: Yes, my model shows that Erk is inactivated. 
     But the model is incomplete. There is negative feedback from Erk to KRAS. 
     When the feedback loop is included in the model, ERK remains active.
|#



#|--------------------------------------------------------
         Thinking through what's being skipped over in 
         this one simple remark. Suggests enthymemes could
         be a good way to go if they actually model to this depth.

 H: What drug should I use?
 Bob: I don't know of any 
   (drugs that address target proteins in pancreatic cancer)

 Bob: But 88% of pancreatic cancer patients have mutated active KRAS

P: patients with pancreatic cancer
C: cancer cells in P
K: the KRAS proteins in C
M: mutated (K, [G12D, G12C, G12V, Q61H])
Prevelance: 88% of the K are M
Functional-effect-of(M, active(K))

 the KRAS proteins in 88% of <patients> have mutations that make them active

|#


;;;----------------------------------------------
;;; experiments (-not- the equivalent messages)
;;;----------------------------------------------

(in-package :mumble)

(noun "KRAS" 'proper-name)
(noun "Raf" 'proper-name)


(defun pancreatic-cancer ()
  (let ((pancreatic (adjective "pancreatic"))
	(cancer (noun "cancer")))
    (let ((dtn (make-dtn :resource cancer)))
      (make-adjunction-node pancreatic dtn)
      dtn)))


;; "patients with pancreatic cancer"
(defun with-something (something)
  (let ((dtn (make-dtn :resource (prep "with")
		       :referent 'with-something)))
    (make-complement-node 'prep-object something dtn)
    dtn))


(defun patient-with-pancreatic-cancer ()
  (let ((with-pc (make-lexicalized-attachment 'np-prep-adjunct (with-something (pancreatic-cancer)))))
    (let ((dtn (make-dtn :resource (noun "patient")
			 :referent 'patient)))
      (make-adjunction-node with-pc dtn)
      dtn)))

;; "percent of patients with pancreatic cancer"
;; (say (percent-of-something (patient-with-pancreatic-cancer)))
(defun percent-of-something (something)
  (let ((of-s (make-lexicalized-attachment 'np-prep-adjunct (of-something something))))
    (let ((dtn (make-dtn :resource (noun "percent")
			 :referent 'percent)))
      (make-adjunction-node of-s dtn)
      dtn)))

#|
THIS NEEDS WORK

; add in-complement to np-head and define the slot label
(defun mutation-in-KRAS ()
  (let ((in-kras (make-lexicalized-attachment 'np-prep-complement (in-something (noun "KRAS")))))
    (let ((dtn (make-dtn :resource (noun "mutation")
			 :referent 'mutation)))
      (make-complement-node 'in-complement  in-kras dtn)
      dtn)))
;; or just make an adjunct


|#



(defun in-something (something)
    (let ((dtn (make-dtn :resource (prep "in")
		       :referent 'in-something)))
    (make-complement-node 'prep-object something dtn)
    dtn))


;; Not ideal. For percents, 'of' should be complement	 
(defun of-something (something)
  (let ((dtn (make-dtn :resource (prep "of")
		       :referent 'of-something)))
    (make-complement-node 'prep-object something dtn)
    dtn))


(defun mutation-in-KRAS ()
  (let ((kras (make-dtn :resource (noun "KRAS" 'proper-name)))
	(in-kras (make-lexicalized-attachment 'np-prep-adjunct (in-something kras))))
    (let ((dtn (make-dtn :resource (noun "mutation")
			 :referent 'mutation)))
      (make-adjunction-node in-kras dtn)
      dtn)))

;; "..patients have mutation in kras"
(defun have-mutation-in-kras (subject)
  (let ((verb-resource (verb "have"))
	(mutation-resource (mutation-in-kras)))
    (let ((dtn (make-dtn :referent 'have-mutation
			 :resource verb-resource)))
      (make-complement-node 's subject dtn)
      (make-complement-node 'o mutation-resource dtn)
      dtn)))


;; (say (present-tense (have-mutation-in-kras (percent-of-something (patient-with-pancreatic-cancer)))))

;; "a drug to target KRAS" (say (drug-targeting-kras))

(defun drug-targeting-kras ()
  "Makes an untensed clause. Comes out as an infinitive"
  (let* ((verb-resource (verb "target"))
         (kras-resource (noun "KRAS" 'proper-name))
         (drug-dtn (noun "drug")))
    (let ((dtn (make-instance 'derivation-tree-node
                 :referent 'target-kras
                 :resource verb-resource)))
      (make-complement-node 's drug-dtn dtn)
      (make-complement-node 'o kras-resource dtn)
      dtn)))

;; "but I don't know of any drug targeting KRAS"
(defun I-know-of-p (complement)
  (let ((verb-resource (transitive-with-bound-prep 
                        "know" "of"))
        (first-singular (mumble-value 'first-person-singular 'pronoun)))
    (let ((dtn (make-instance 'derivation-tree-node
                 :referent 'i-know-p
                 :resource verb-resource)))
      (make-complement-node 's first-singular dtn)
      (make-complement-node 'o complement dtn)
      dtn)))

;; (say (negate (I-know-of-p (drug-targeting-kras))))


;; (say (I-know-of-p (drug-targeting-kras)))
;;  => "I to know of a drug to target KRAS"

