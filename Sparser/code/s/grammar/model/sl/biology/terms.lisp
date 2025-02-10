;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2020 SIFT LLC. All Rights Reserved
;;; Copyright (c) 2025 David D. McDonald  -- all rights reserved

;;;
;;;    File: "terms"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2025

;; Initiated 7/23/14 by lifting proteins from NFkappaB experiment.
;; Moved proteins out to their own file 9/8/14
;;; temporary home for rules
;;; gene  --> mutate gene
;;; enzyme --> bio-process enzyme
;;; move out oncoogene to taxonomy, and mutate to be a verb (so mutated is a past participle)
;; 11/9/14 hack for ', in part,' and terms for g1,...,g5, 'as a consequence' and .exchange' as a bio-process
;; added critical, common, "tumor formation", first stab at "form", revised "condition", revised "G-domain"
;; 12/8/14 Starting cell lines and drugs
;; RJB 12/13/2014 ugly handling of variety, form and analog <<DAVID-- we have to talk about this>>
;; also ugly handling of "et al." to start making it a signal for references, 
;; and get rid of the interpretation of "al." as a bio-entity (couldn't even find where that cam from)
;; RJB 12/14/2014 Added a bunchof stand-in definitions for words that were primed by COMLEX, added cell-line definitions (some) -- need help from <<DAVID>>
;; add MEK/ERK and ERK/MEK as pathway designators, try to define S338 as a residue
;; diverse vocabulary hacking
;; 02/18/15 alphabetized terms
;; 4/24/2015 added subject variable for many adjectives that can be copular adjectives
;; 4/27/2015 improve handling of "serum" and "fetal calf serum" and "open reading frame" using def-synonym
;; 5/15/2015 substantial revision in taxonomy to drastically reduce the overloading of bio-process,
;;  provide bio-rhetorical as a marker for verbs that talk about belief and truth, bio-event for actions that are not bio-processes in the OBO sense, bio-relation for things like
;;  contain, sonstitute, etc.
;;  concomitant revision for things like thatcomp and whethercomp
;;  5/30/2015 Rename poorly named "predicate" to "bio-predication" and update dependencies
;;  bunch of vo cabulary tweaks for test set -- at the beginning of the file temporarily
;; 6/5/2015 DAVID!! There is a temporary fix for the problems with interpreting "the next day" -- make it into a polyword
;;  the underlying problem needs to be fixed (by you)
;; 6/8/2015 added a bunch of plasmids
;; 6/10/15 Commented out "c" and "h" for clobbering more frequent interpretations


(in-package :sparser)


;;from pathway comments

(adj "open" :super bio-relation)

;; avoid errors for words describing processes in biology and computation

;; turns out "line" is a protein
(define-adjective "in-line")
(define-adjective "on-line")
(define-adjective "over-arching")


;; Moved in from dossiers/modifiers.lisp
(define-adverb "biochemically")
(define-adverb "biologically")
(define-adverb "chemically")
(define-adverb "endosymbiotically")
(define-adverb "enzymatically")
(define-adverb "homeostatically")
(define-adverb "metabolically")
(define-adverb "mitotically")
(define-adverb "sterically")

(define-adjective "bioactive")
;; (define-adjective "biological") -- see taxonomy
(define-adjective "cancerous")
(define-adjective "catalytic")
;(define-adjective "chromosomal") ;chromosome
(define-adjective "conserved")
(define-adjective "non-conserved")
;(define-adjective "embryonic") added to embryo
(define-adjective "endothelial") ; endothelium is noun
;(define-adjective "epidermal")added to epidermis
(define-adjective "epigenetic")
(define-adjective "epithelial")
(define-adjective "extracellular" :form 'spatial-adjective)
;(define-adjective "genetic")
(define-adjective "genomic") ;genome
(define-adjective "hematopoietic")
(define-adjective "heterotypic")
(define-adjective "histopathological")
(define-adjective "homeostatic")
(define-adjective "immune") ;; add to immune system?
(define-adjective "immunosuppressive")
(define-adjective "intracellular" :form 'spatial-adjective)
(define-adjective "intratumoral" :form 'spatial-adjective)
(define-adjective "medical")
(define-adjective "metabolic")
(define-adjective "metastatic")
;(define-adjective "mitochondrial") added to mitochondria
(define-adjective "mitogenic")
(define-adjective "multicellular")
(define-adjective "necrotic")
(define-adjective "neoplastic")
;;(define-adjective "non-neoplastic")
(define-adjective "nonclonal")
(define-adjective "nonmutational")
(define-adjective "pericellular" :form 'spatial-adjective)
(define-adjective "peritumoral" :form 'spatial-adjective)
(define-adjective "physiologic")
;(define-adjective "pituitary") added to pituitary
(define-adjective "premalignant")
(define-adjective "preneoplastic")
(define-adjective "proangiogenic")
(define-adjective "proapoptotic") ;should explicitly relate to apoptosis?
(define-adjective "proinflammatory") 
(define-adjective "proliferative") ;opposite: "antiproliferative" or "nonproliferative"
(define-adjective "proteolytic")
;(define-adjective "renal") ;kidney
(define-adjective "replicative") 
(define-adjective "somatic")
(define-adjective "stromal") ;stroma
;(define-adjective "telomeric") ;telomere
(define-adjective "therapeutic") ;related to therapy
(define-adjective "tractable")
(define-adjective "transmembrane")
;(define-adjective "tumorigenic") ;tumorigenesis

;; new nouns and verbs used in Ras model comments

(define-category coincident 
                 :specializes bio-relation
  :realization
  (:adj "coincident"
        :with participant))



;;(noun "king" :super abstract) ;; actually an author's name, but treated as a verb because of morphology


;;proteins from comments -- TO-DO move out to proteins file and do correctly
;;(define-protein "KBTBD7 E3 RING" ("KBTBD7 E3 RING" )) ;; this isn't a protein but part of a complex "the CUL3:KBTBD7 E3 RING ligase complex" (CUL3 is an E3 RING ligase)


;; strange words used in 493 articles -- leads to incorrect stemming
;; in COMLEX lookups



;;(def-synonym not (:adj "non"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(noun "bar" :super abstract) 
;;Error: Comlex -- new POS combination for "#<word "bar">:: (NOUN PREP VERB)
;; DROPPING THIS CAUSES A MASSIVE ERROR ON CURE 38


(define-category affinity :specializes bio-relation
     :binds ((object bio-entity))
     :realization
           (:noun "affinity"
            :for object))






;; Usually in a hyphenated construction. Idiomatically as a XXXXXXX
;; marker and generally: "anti-inflammatory"
#|
(adj "anti" :super bio-predication)
(def-synonym anti (:adj "anti-"))
|#




;;(noun "condition" :super experimental-condition) OBE -- i taxonomy


(adj "current" :super bio-relation)



;; "the DSB repair defect", "a defect in sensitivity to GAP–mediated regulation"
(noun "defect" :super bio-relation
      :realization 
           (:m theme
            :in theme))

;; Something is deficient in something else. It needs that
;; thing but doesn't have it. Vitamin D, 
;; ERK#7 "to be dimerization-deficient in vitro"
(define-category deficient :specializes bio-relation
  :realization
    (:adj "deficient"
     :noun "deficiency"
     :m theme
     :in theme))

(noun "detail" :super information)

(adj "fail-proof" :super bio-predication)


(adj "reliable" :super bio-predication)


;; not sure why this was marked as bio-relation? -- has no object
(adj "effective" :super bio-predication
     :mixins (activity-with-a-purpose)
     :realization 
          (:against theme
           :in theme
	   :on theme
           :in result-or-purpose))

;; SEQUENTIAL is a key CORE mixin, and does not take an AUX
#+ignore ;; use the lemma on the category
(define-category sequential-adj :specializes bio-predication
  :realization (:adj "sequential"))


(define-category fact :specializes bio-rhetorical
      :mixins (bio-thatcomp)
      :binds ((info-context (:or model database)))
      :realization
            (:noun "fact"
             :in info-context))









;; "However" is actually a subordinate conjunction.
;; It can appear in adverbial positions as an interjection
;;/// but the correct fix is in the grammar.


(adj "ineffective" :super bio-relation
     :binds ((against biological))
     :realization (:against against))


(adj "insensitive" :super bio-relation
      :realization (:to theme))
   

(noun "insight" :super bio-rhetorical
      :binds ((concept biological))
      :realization
      (:noun "insight"
             :into concept))



(noun "lane" :super bio-mechanism)
#| Given these citations, this is a lane on a difusion gradient
  (wrong term).  This usage appropriates the similar notions
  of lanes on a highway or runner lanes in on track. 
  If we had to model such things we'd have a specific way to ground
   them. But the idea of labeling a lane would carry over
"heated for 10 min at 100°C, and 10 ng/lane "
"the doublet in the even numbered lanes (Figure xref )."
"(Figure xref , PBS, lane 1)."
"compare lanes 4 and 5" ; aspp2 55
"(Figure 4B, compare lanes 9 to 10)." ; aspp2 56 |#


           
(define-adverb "mechanistically")




(noun "mortality" :super bio-abstract) ;;/// relationship to "mortal" ??


(define-adverb "notably")

;; These three want to be synonyms
(noun "frame" :super bio-entity)
(noun ("open reading frame" :plural "open reading frames") :super bio-entity)

(def-synonym open-reading-frame (:noun "ORF")) 



(noun "paradox" :super bio-entity)

(noun "partner" :super bio-abstract)

;; Overwrites the mixin role 'patient' in core/kinds/roles.lisp
(define-category  bio-patient
    :specializes bio-entity
    :realization (:noun "patient"))



(noun "phenotype" :super bio-entity)
(noun "population" :super bio-entity
      :binds ((element biological))
      :realization
      (:noun "population"
             :of element))  

(adj "potent" :super bio-relation)



(noun "proto-oncogene" :super oncogene)


(adj "refractory" :super bio-relation
     :realization
     (:to theme))
     ;; keyword: (ory ADJ)


#+ignore ;; make "relative to" a preposition
(define-category relative :specializes bio-relation
     :restrict ((participant top))
     :realization (:adj "relative"
                   :to participant))

(adj "strong" :super bio-relation
  :realization 
  (:adj "strong"
        :noun "strength"))


(define-category responsive :specializes bio-relation
  :realization
  (:noun  "responsiveness"
          :adj "responsive"
          :verb "respond"
          :etf (sv)
          :to theme
          :m theme))


(adj "selective" :super bio-relation
     :realization (:for theme))

(adj "sensitive" :super bio-relation
      :realization
      (:to theme))



 

(adj "specific" :super bio-relation
     :binds ((situation biological)(beneficiary biological))
     :realization
          (:to situation
           :for beneficiary))


(adj "suitable" :super bio-relation
     :realization
     (:for theme))





(define-adverb "surprisingly")





(define-category unable :specializes bio-relation
  :mixins (control-verb-intrans raising-to-subject)
  :restrict ((theme bio-process))
  :realization
  (:adj "unable" :noun "inability"))
           

(adj "unresponsive" :super bio-relation
     :binds ((treatment (:or bio-process bio-entity)))
     :realization
     (:to treatment))

;; Supercategories of bio-relation do not bind a 'purpose' variable
#+ignore
(define-category useful :specializes bio-relation
     :restrict ((purpose (:or bio-process bio-method activity-with-a-purpose)))
     :realization
     (:adj "useful"
           :for purpose))

;; need to handle "for X to Y" as a to-comp










;;;-------------------------------------------------------
;;; Hacked up to 'get through' the 9/4/14 target abstract
;;;-------------------------------------------------------

;; Other contents of this section moved to mid-level/document-parts.lisp

(define-category article-table :specializes document-part
    :mixins (bio-abstract))


(define-category well-being :specializes of-participant-bio-predication
    :realization (:noun "well-being"))
(define-category health :specializes of-participant-bio-predication
    :realization (:noun "health"))

#+ignore
(define-category article-table
  :specializes bio-abstract)


;;;------------------------------------------------------------------
;;; all remaining (including overlap with the nouns and verbs above)
;;;------------------------------------------------------------------
 

"auto" 
"binder"
"effect" 
"fate" 
"fig" 
"groups" 
"trials" 
; a {wide, large, extensive, big} variety of ..
;; "variety" is an "of quantifier" like "many" or "some"
;; Def-bio doesn't appreciate part of speech, so hacked the
;; Needs a whole model
;; activated forms of the Ras proteins
;; cellular "GO:0005623"
;; cytosolic "GO:0005829"
;; presenting plural version here. #52
;; these adverbs are added to make the simple subj+verb test succeed in the island-driving phase
;; we need better semantics for these <<DAVID>>
;;(noun "formation")
;;--- j5
;;--- j8
;;; new words to be defined -- were primed bhy COMLEX
;;adjective
;;adverb
;;need prep cases
;;noun
;;;POTENTIAL AMBIGUITIES TO BE SUPPRESSED
"express";;ambiguous between (ADJECTIVE :super bio-predication ADVERB NOUN VERB)
"show";;ambiguous between (NOUN VERB)
"describe"
"paradigm"
"maintain"
"keep";;ambiguous between (NOUN VERB)
"approach";;ambiguous between (NOUN VERB)
"elucidate"
"escape";;ambiguous between (NOUN VERB)
"fate";;ambiguous between (NOUN VERB)
"membrane"
"scaffold"
"know";;ambiguous between (NOUN VERB)
"component";;ambiguous between (ADJECTIVE NOUN)
"wild";;ambiguous between (ADJECTIVE ADVERB)
"type";;ambiguous between (NOUN VERB)
"dead";;ambiguous between (ADJECTIVE ADVERB)
"derivative";;ambiguous between (ADJECTIVE NOUN)
"effect";;ambiguous between (NOUN VERB)
"resistance"
"candidate"
"screen";;ambiguous between (NOUN VERB)
"group";;ambiguous between (NOUN VERB)
"constitute"
"response"
"engender"
"target";;ambiguous between (NOUN VERB)
"observation"
"assay";;ambiguous between (NOUN VERB)


  










