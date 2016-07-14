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

"I want to find a molecular treatment for pancreatic cancer."
"What drug could I use?"
"What proteins might lead to the development of pancreatic cancer."

<R T="00:01:49.28" S="DAGENT">
(REQUEST :CONTENT (INTERPRET-SPEECH-ACT :CONTENT (ONT::ASK-WHAT-IS :CONTENT ONT::V32862 :CONTEXT ((ONT::A ONT::V32862 :INSTANCE-OF ONT::MEDICATION :NAME W::DRUG :RULE -SIMPLE-REF :SUCHTHAT ONT::V32902) (ONT::RELN ONT::V32902 :INSTANCE-OF ONT::USE :RULE -RULE1B :AFFECTED ONT::V32862 :TENSE W::PRES :MODALITY (:* ONT::CONDITIONAL W::COULD) :FORCE ONT::POSSIBLE)) :ACTIVE-GOAL ONT::V32109)) :REPLY-WITH IO-33172)
</R>

<S T="00:01:49.36" R="DTDA">
(REQUEST :CONTENT (FIND-TREATMENT :DISEASE (CANCER)) :REPLY-WITH BA-QUERY-32 :sender SPG-AGENT)
</S>
<R T="00:02:03.96" S="DTDA">
(reply :content ((SUCCESS :protein (:name PIK3CA :hgnc PIK3CA) :prevalence 0.22 :functional-effect ACTIVE) (SUCCESS :drugs ((:name NVP-BKM120) (:name GSK2126458) (:name BYL719) (:name XL147 :chebi_id 71957) (:name A66) (:name GSK1059615 :chebi_id 71955) (:name PI103 :chebi_id 90524) (:name ZSTK474 :chebi_id 90545) (:name GDC-0941)))) :receiver SPG-AGENT :in-reply-to BA-QUERY-32)
<S T="00:02:03.99" R="SPG-AGENT">

(REQUEST :CONTENT (GENERATE :CONTENT (ONT::TELL :CONTENT BA-QUERY-32) :CONTEXT ((RELN BA-QUERY-32 :INSTANCE-OF LOOK-UP :QUERY (FIND-TREATMENT :DISEASE (CANCER)) :ANSWER (SUCCESS :DRUGS ((:NAME NVP-BKM120) (:NAME GSK2126458) (:NAME BYL719) (:NAME XL147 :CHEBI_ID 71957) (:NAME A66) (:NAME GSK1059615 :CHEBI_ID 71955) (:NAME PI103 :CHEBI_ID 90524) (:NAME ZSTK474 :CHEBI_ID 90545) (:NAME GDC-0941)))))) :sender DAGENT)
</S>


<S T="00:02:35.36" R="SPG-AGENT">
(REQUEST :CONTENT (GENERATE :CONTENT (ONT::TELL :CONTENT BA-QUERY-56) :CONTEXT ((RELN BA-QUERY-56 :INSTANCE-OF LOOK-UP :QUERY (FIND-DISEASE-TARGETS :DISEASE (CANCER)) :ANSWER (SUCCESS :PROTEIN (:NAME PIK3CA :HGNC PIK3CA) :PREVALENCE 0.22 :FUNCTIONAL-EFFECT ACTIVE)))) :sender DAGENT)
</S>
"22% of pancreatic cancer patients have a mutation in PIK3CA."

"Are there any drugs targeting KRAS?"

<R T="00:02:49.82" S="DTDA">
(reply :content (SUCCESS :drugs ()) :receiver SPG-AGENT :in-reply-to BA-QUERY-80)
</R>

<S T="00:02:49.93" R="DAGENT">
(TELL :RECEIVER DAGENT :CONTENT (REPORT :CONTENT (FAILURE :WHAT BA-QUERY-80 :AS (SUBGOAL :OF C00003)) :CONTEXT ((RELN BA-QUERY-80 :INSTANCE-OF LOOK-UP :QUERY (FIND-TARGET-DRUG :TARGET (KRAS)) :ANSWER (SUCCESS :DRUGS NIL)))) :IN-REPLY-TO IO-38690 :sender SPG-AGENT)
</S>

"Let's build a model of the KRAS neighborhood."
"I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

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


(defun patients-with-pancreatic-cancer ()
  (let ((with-pc (make-lexicalized-attachment 'np-prep-adjunct (with-something (pancreatic-cancer)))))
    (let ((dtn (make-dtn :resource (noun "patients")
			 :referent 'patient)))
      (make-adjunction-node with-pc dtn)
      dtn)))

;; "percent of patients with pancreatic cancer"
;; (say (percent-of-something 88 (patients-with-pancreatic-cancer)))
(defun percent-of-something (n something)
  (let ((of-s (make-lexicalized-attachment 'np-prep-adjunct (of-something something))))
    (let ((dtn (make-dtn :resource (noun (format nil "~d percent" n))
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
  (let* ((kras (make-dtn :resource (noun "KRAS" 'proper-name)))
         (in-kras (make-lexicalized-attachment 'np-prep-adjunct (in-something kras)))
         (dtn (make-dtn :resource (noun "a mutation")
                        :referent 'mutation)))
    (make-adjunction-node in-kras dtn)
    dtn))

;; "..patients have mutation in kras"
(defun have-mutation-in-kras (subject)
  (let ((verb-resource (verb "have"))
	(mutation-resource (mutation-in-kras)))
    (let ((dtn (make-dtn :referent 'have-mutation
			 :resource verb-resource)))
      (make-complement-node 's subject dtn)
      (make-complement-node 'o mutation-resource dtn)
      dtn)))


;; (say (present-tense (have-mutation-in-kras (plural (percent-of-something 88 (patients-with-pancreatic-cancer))))))

(defun drug-to-treat-pancreatic-cancer ()
  (let* ((cancer (pancreatic-cancer))
         (verb (verb "treat"))
         (drug (noun "drug")))
    (let ((dtn (make-instance 'derivation-tree-node
                              :referent 'drug-to-treat-pancreatic-cancer
                              :resource verb)))
      (make-complement-node 's drug dtn)
      (make-complement-node 'o cancer dtn)
      dtn)))

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

;; "I don't know of any drug targeting KRAS"
;; (say (negate (present-tense (I-know-of-p (drug-targeting-kras)))))
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
