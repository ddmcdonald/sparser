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

#|  Lifted from a long transcript
"I want to find a molecular treatment for pancreatic cancer."
"What drug could I use?"
"What proteins might lead to the development of pancreatic cancer."

<R T="00:01:49.28" S="DAGENT">
(REQUEST 
 :CONTENT
    (INTERPRET-SPEECH-ACT 
     :CONTENT (ONT::ASK-WHAT-IS
               :CONTENT ONT::V32862
               :CONTEXT ((ONT::A ONT::V32862 
                            :INSTANCE-OF ONT::MEDICATION 
                            :NAME W::DRUG 
                            :RULE -SIMPLE-REF 
                            :SUCHTHAT ONT::V32902)
                         (ONT::RELN ONT::V32902
                                    :INSTANCE-OF ONT::USE
                                    :RULE -RULE1B
                                    :AFFECTED ONT::V32862
                                    :TENSE W::PRES
                                    :MODALITY (:* ONT::CONDITIONAL W::COULD)
                                    :FORCE ONT::POSSIBLE))
               :ACTIVE-GOAL ONT::V32109)) :REPLY-WITH IO-33172)
</R>

<S T="00:01:49.36" R="DTDA">
(REQUEST
 :CONTENT (FIND-TREATMENT
           :DISEASE (CANCER))
 :REPLY-WITH BA-QUERY-32 :sender SPG-AGENT)
</S>

<R T="00:02:03.96" S="DTDA">
(reply
 :content ((SUCCESS
            :protein (:name PIK3CA :hgnc PIK3CA)
            :prevalence 0.22
            :functional-effect ACTIVE)
           (SUCCESS
            :drugs ((:name NVP-BKM120) (:name GSK2126458)
                    (:name BYL719) (:name XL147 :chebi_id 71957)
                    (:name A66) (:name GSK1059615 :chebi_id 71955)
                    (:name PI103 :chebi_id 90524) (:name ZSTK474 :chebi_id 90545)
                    (:name GDC-0941))))
 :receiver SPG-AGENT :in-reply-to BA-QUERY-32)


<S T="00:02:35.36" R="SPG-AGENT">
(REQUEST 
 :CONTENT (GENERATE 
           :CONTENT (ONT::TELL :CONTENT BA-QUERY-56) 
           :CONTEXT ((RELN BA-QUERY-56 
                           :INSTANCE-OF LOOK-UP 
                           :QUERY (FIND-DISEASE-TARGETS 
                                   :DISEASE (CANCER)) 
                           :ANSWER (SUCCESS 
                                    :PROTEIN (:NAME PIK3CA :HGNC PIK3CA)
                                    :PREVALENCE 0.22 
                                    :FUNCTIONAL-EFFECT ACTIVE)))) 
:sender DAGENT)
</S>

"22% of pancreatic cancer patients have a mutation in PIK3CA."

"Are there any drugs targeting KRAS?"
|#

#|  From Jeff 6/14/16
This one is insane because we were supposed to look up treatments for
PANCREATIC-CANCER, but instead we asked the bioagents about CANCER. So
according to the script we should respond: "I don't know of any drugs
that treat pancreatic cancer." Obviously, we found several drugs in this
case. The query (an instance of look-up) is what we actually sent to the
bioagents.

(REQUEST
 :CONTENT (GENERATE
           :CONTENT (ONT::TELL
                     :CONTENT BA-QUERY-30)
           :CONTEXT ((RELN BA-QUERY-30
                           :INSTANCE-OF LOOK-UP
                           :QUERY (FIND-TREATMENT
                                   :DISEASE (CANCER))
                           :ANSWER (SUCCESS
                                    :DRUGS ((:NAME NVP-BKM120) (:NAME GSK2126458)
                                            (:NAME BYL719) (:NAME XL147 :CHEBI_ID 71957)
                                            (:NAME A66)
                                            (:NAME GSK1059615 :CHEBI_ID 71955)
                                            (:NAME PI103 :CHEBI_ID 90524)
                                            (:NAME ZSTK474 :CHEBI_ID 90545)
                                            (:NAME GDC-0941))))))
 :sender DAGENT)


------------------------------------------------------------
Again we are off script here. We were supposed to not find any drugs. So
then, when the user asks if we know of any proteins that affect
pancreatic cancer, we should say something about KRAS affecting 88% of
pancreatic cancer patients. In this case, the bioagents tell us that
PIK3CA affects 22% of CANCER patients.

(REQUEST
 :CONTENT (GENERATE
           :CONTENT (ONT::TELL
                     :CONTENT BA-QUERY-55)
           :CONTEXT ((RELN BA-QUERY-55
                           :INSTANCE-OF LOOK-UP
                           :QUERY (FIND-DISEASE-TARGETS :DISEASE (CANCER))
                           :ANSWER (SUCCESS
                                    :PROTEIN (:NAME PIK3CA :HGNC PIK3CA)
                                    :PREVALENCE 0.22
                                    :FUNCTIONAL-EFFECT ACTIVE))))
 :sender DAGENT)

We should say: It looks like PIK3CA is implicated in 22% of cancer
cases. [or something...]

------------------------------------------------------------
Continuing with the schizophrenic conversation, we make a non sequitur
and ask if there are any drugs that target KRAS.

(REQUEST
 :CONTENT (GENERATE
           :CONTENT (ONT::TELL
                     :CONTENT (ONT::FAIL
                               :FORMAL BA-QUERY-80
                               :TENSE PAST))
           :CONTEXT ((RELN BA-QUERY-80
                           :INSTANCE-OF LOOK-UP
                           :QUERY (FIND-TARGET-DRUG :TARGET (KRAS))
                           :ANSWER (SUCCESS :DRUGS NIL))))
 :sender DAGENT)

We should say: I couldn't find any drugs that target KRAS.

"Let's build a model of the KRAS neighborhood."
"I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
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
#| (p "pancreatic cancer.")
[pancreatic cancer]

e2    CANCER        1 "pancreatic cancer" 3
                    period

sp> (stree 2)
 e2 cancer/np                 p1 - p3   rule 290
  e0 pancreas/adjective       p1 - p2   rule 44726
    "pancreatic"
  e1 cancer/common-noun       p2 - p3   rule 2683
    "cancer"

(pprint (semtree 2)) =>
  (#<cancer 12561> (organ #<ref-category PANCREAS>))

(dcr 'cancer)
    :"of"  v/r: bio-organ  var: organ
    :m  v/r: bio-organ  var: organ
    :"in"  v/r: bio-organ  var: organ
|#

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
#| (p "patients with pancreatic cancer.")
[patients ]with [pancreatic cancer]

e6    PATIENT       1 "patients with pancreatic cancer" 5
                    period
(#<patient 12565> 
   (context (#<cancer 12561> 
               (organ #<ref-category PANCREAS>))))

(dcr 'patient)
    :"with"  v/r: (or #<ref-category BIO-CONTEXT>
                   #<ref-category EXPERIMENT-DATA>)  var: context
  It's the bio-context that does it. 
|#

;; "88 percent of patients with pancreatic cancer"
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
  (let ((verb-resource (verb "have" 'svo))
	(mutation-resource (mutation-in-kras)))
    (let ((dtn (make-dtn :referent 'have-mutation
			 :resource verb-resource)))
      (make-complement-node 's subject dtn)
      (make-complement-node 'o mutation-resource dtn)
      dtn)))
#| (p "patients have mutation in K-Ras.")
[patients ][have ][mutation ]in [K-Ras]

e10   HAVE          1 "patients have mutation in K-Ras" 8
---- The focus of the statement is on the
     patients. How do we get that from this? e.g. the mutation
   is something they have. 
 (semtree 10)
(#<have 12559> (possessor (#<patient 9406>))
 (thing-possessed (#<mutation 12557> (object (#<protein "RASK_HUMAN" 2701>)))))

sp> (p "the K-Ras gene in patients.")
[the K-Ras gene ]in [patients]
e9    GENE          1 "the K-Ras gene " 6
e10   IN            6 "in patients" 8

sp> (p "the gene for K-Ras.")
[the gene ]for [K-Ras]
e7    GENE          1 "the gene " 3
e8    FOR           3 "for K-Ras" 7
|#

;; (say (present-tense (have-mutation-in-kras (plural (percent-of-something 88 (patients-with-pancreatic-cancer))))))

(defun drug-to-treat-pancreatic-cancer ()
  (let* ((cancer (pancreatic-cancer))
         (verb (verb "treat" 'svo))
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
  (let* ((verb-resource (verb "target" 'svo))
         (kras-resource (noun "KRAS" 'proper-name))
         (drug-dtn (noun "drug")))
    (let ((dtn (make-instance 'derivation-tree-node
                 :referent 'target-kras
                 :resource verb-resource)))
      (make-complement-node 's drug-dtn dtn)
      (make-complement-node 'o kras-resource dtn)
      dtn)))
#| (p "a drug to target KRAS.")
[a drug ]to [target ][KRAS]

e8    DRUG          1 "a drug " 3
e10   TO            3 "to target KRAS" 6

-- nothing on 'drug' beyond being a molecule 
(semtree 10)
(#<target 12553> (object (#<protein "RASK_HUMAN" 2701>)))
|#
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
