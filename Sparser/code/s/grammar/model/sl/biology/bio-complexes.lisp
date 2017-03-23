;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2017

;; Broken out from phenomena 3/1/17
;; currently contains: bio-complex types and binding; dimers and their fellow travelers; Calcium and related complexes; Complex definitions with IDs

;;;-------------------------------
;;; bio-complex types and binding 
;;;-------------------------------
(define-category bio-complex   :specializes bio-chemical-entity
  ;; changed -- complexes are not molecules, but associated groups of
  ;; molecules, often preteins, but not always
  :mixins (reactome-category)
  :binds ((component
	   (:or bio-complex small-molecule protein protein-domain ion)) ;; ion is for things like Ca2+-calmodulin
          (componentstoichiometry stoichiometry)) 
  :realization
  (:noun "complex"
         ;; verb form is very rare, and causes problems
         ;;:verb ("complex" :third-singular "complexXXX") :etf (sv) ;; we have a comment with is complexed with SOS,
         ;;:s component
         :m component
         :with component
         :of component
         :between component))

(define-category tricomplex
  :specializes bio-complex
  :mixins (reactome-category)
  :realization
  (:noun "tricomplex"))

;;------------------------ binding ----------------
; Have to include binding here because dimerize inherits 
; from it and this file is loaded before the verbs are
;/// We could change that.

;; "GTP-binding" "GO:00055525
;; from http://www.ebi.ac.uk/QuickGO/GTerm?id=GO:0005525
;; "interacting selectively and non-covalently with GTP"
;;
(define-category binding  :specializes molecular-function
  ;;:obo-id 
  :bindings (uid "GO:0005488")
  ;; "<binder> binds to <bindee>" the subject moves
  :binds ((binder (:or bio-chemical-entity molecular-location))
          (bindee (:or bio-chemical-entity molecular-location))
          (binding-set (:or bio-chemical-entity molecular-location)) ;; this is conjunctive, as in "binding between X and Y"
          (direct-bindee (:or bio-chemical-entity molecular-location))
          (site molecular-location)
          (domain protein-domain)
          (cell-location cellular-location)
          (complex bio-complex))
  :realization 
  (:verb ("bind" :past-tense "bound" :present-participle "binding") ;; xxx is to prevent "binding" being a verb form
         :etf (svo-passive)

         :noun "binding"
         ;; to handle "bindings" and not break up "the p53 binding ability of ASPP2" during chinking

         :s binder
         :o  direct-bindee
         :m direct-bindee
         :to bindee
         :of bindee
         :via site
         :at site
         :at cell-location
         :to cell-location
         :to domain
         :with bindee
         :through domain
         :between binding-set
         :in complex))

(def-synonym binding (:noun "binding event"))

(delete-verb-cfr (resolve "assemble"))
(delete-verb-cfr (resolve "assembles"))
(delete-verb-cfr (resolve "assembled"))
(delete-verb-cfr (resolve "assembling"))

(define-category assemble
    :specializes binding
    :binds ((binder (:or protein molecule protein-domain bio-entity))
            (bindee (:or protein molecule protein-domain bio-entity))
            (result bio-complex))
    :realization
    (:verb "assemble" ;; keyword: ENDS-IN-ED 
	   :noun "assembly"
	   :etf (svo-passive)
	   :s binder
	   :m bindee
	   :o bindee
           :into result
           :of bindee))

;; added in notion of direct-bindee for "A binds B" as opposed to "A binds to B"

;;;-----------------------------------
;;; dimers and their fellow travelers 
;;;-----------------------------------

(define-category oligomerize :specializes molecular-function ;; generalization for dimerize, polymerize, trimerize
  :binds ((monomer protein)
          (domain protein-domain))                         
  :realization
  (:verb "oligomerize" ;; need this (perhaps) for etf and :s and :o
   :etf (sv)
   :noun "oligomerization"
   :s monomer
   :of monomer
   :with monomer
   :via domain ))

; From the ERK abstract:
; #1 "Dimerization-independent" (in title)
; #6 "dimerization of ERK"
; #7 "shown consistently to be dimerization-deficient in vitro"
; #7 "dimerization of ERK1"
; #8 "did not detect dimerization of GFP-ERK1-WT upon activation"
; #10 "is a consequence of delayed phosphorylation of ERK by MEK rather than dimerization."
(define-category dimerize :specializes oligomerize
  :realization
  (:verb "dimerize" 
   :noun "dimerization"
   :etf (sv)))

(define-category heterodimerize :specializes dimerize
  :realization
  (:verb "heterodimerize" 
   :noun "heterodimerization"
   :etf (sv)))

(def-synonym heterodimerize
     (:verb "hetero-dimerize" 
   :noun "hetero-dimerization"
   :etf (sv)))

(define-category homodimerize :specializes dimerize
  :realization
  (:verb "homodimerize" 
   :noun "homodimerization"
   :etf (sv)))

(define-category homo/heterodimerize :specializes dimerize
  :realization
  (:verb "homo/heterodimerize" 
   :noun "homo/heterodimerization"
   :etf (sv)))

(def-synonym homo/heterodimerize
             (:noun "homo- or heterodimerization"
                    :verb "homo- or heterodimerize"
                    :etf (sv)))
(def-synonym homo/heterodimerize
             (:noun "homo- and heterodimerization"))


(def-synonym homo/heterodimerize
    (:verb "homo- and hetero- dimerize"
           :etf (sv)
           :noun "homo- and hetero- dimerization"))




(define-category monomer :specializes bio-complex ;; a funny sort of complex, but needed to get conjunction of "monomers and dimers"
  :realization
  (:noun "monomer"))

(define-category dimer :specializes bio-complex
  :realization
  (:noun "dimer"))

(define-category trimer :specializes bio-complex
  :realization
  (:noun "trimer"))

(define-category tetramer :specializes bio-complex
  :realization
  (:noun "tetramer"))

(define-category heterodimer :specializes dimer
  :realization
  (:noun "heterodimer"))

(define-category homodimer :specializes dimer 
  :realization
  (:noun "homodimer"))

(define-category homotriamer :specializes trimer 
  :realization
  (:noun "homotriamer"))

(define-category homotetramer :specializes tetramer 
  :realization
  (:noun "homotetramer"))

(define-category homo/heterodimer :specializes dimer
  :realization
  (:noun "homo/heterodimer"))

(def-synonym homo/heterodimer
             (:noun "homo-heterodimer"))

; Dec32: C-RAF activation and heterodimerization with B-RAF constitute critical components
; Dec33: endogenous C-RAF:B-RAF heterodimers
;; already covered in homodimerize definition
#+ignore(define-category homodimerization
  :specializes other-bio-process
  :instantiates :self
  :lemma (:common-noun "homodimerization"))

;;;-----------------------------------
;;; Calcium and related complexes 
;;;-----------------------------------

;; from EDGFR comments

(noun "calcium" :super molecule)
(define-category calcium-ion :specializes ion
  :bindings (molecule (category-named 'calcium)))

(def-synonym calcium-ion
             (:noun "Ca2+"))
(def-synonym calcium-ion
             (:noun "Ca(2+)"))

(define-category calcium-complex :specializes bio-complex
  :bindings(component (category-named 'calcium-ion)))

(define-protein "CALM_HUMAN" ("calmodulin" "CALM1" "CaM"))

(define-category calcium-calmodulin-complex :specializes calcium-complex
  :bindings (component (category-named 'calmodulin)))

(def-synonym calcium-calmodulin-complex
             (:noun "Ca2+/CaM"))

(def-synonym calcium-calmodulin-complex
             (:noun "Ca2+/calmodulin"))

(def-synonym calcium-calmodulin-complex 
             (:noun "Ca2+-calmodulin"))

(def-synonym calcium-calmodulin-complex
             (:noun "calcium/calmodulin"))

;;;-------------------------------------
;;; Complex definitions with IDs 
;;;-------------------------------------

(def-ided-indiv bio-complex "F-actin" "GO:0031941" :name "filamentous actin")
(def-ided-indiv bio-complex "IgG1" "GO:0071735" :name "IgG immunoglobulin complex")
(def-ided-indiv bio-complex "IgG2a" "GO:0071735" :name "IgG immunoglobulin complex")
(def-ided-indiv bio-complex "IgG2b" "GO:0071735" :name "IgG immunoglobulin complex")
(def-ided-indiv bio-complex "IgG3" "GO:0071735" :name "IgG immunoglobulin complex")
(def-ided-indiv bio-complex "PIC" "GO:0019035" :name "viral integration complex")
(def-ided-indiv bio-complex "PTPC" "GO:0005757" :name "mitochondrial permeability transition pore complex")
(def-ided-indiv bio-complex "Pre-BCR" "GO:0035369" :name "pre-B cell receptor complex")
(def-ided-indiv bio-complex "Rad17-RFC" "GO:0031389" :name "Rad17 RFC-like complex")
(def-ided-indiv bio-complex "Ripoptosome" "GO:0097342" :name "ripoptosome")
(def-ided-indiv bio-complex "SET1C" "GO:0048188" :name "Set1C/COMPASS complex")
(def-ided-indiv bio-complex "TORC1" "GO:0031931" :name "TORC1 complex")
(def-ided-indiv bio-complex "U2AF" "GO:0089701" :name "U2AF")
(def-ided-indiv bio-complex "apoptosome" "GO:0043293" :name "apoptosome")
(def-ided-indiv bio-complex "eIF2" "GO:0005850" :name "eukaryotic translation initiation factor 2 complex")
(def-ided-indiv bio-complex "eIF4F" "GO:0016281" :name "eukaryotic translation initiation factor 4F complex")
(def-ided-indiv bio-complex "euchromatin" "GO:0000791" :name "euchromatin") ; hand edited out hyphen
(def-ided-indiv bio-complex "pre-RC" "GO:0036387" :name "pre-replicative complex")
(def-ided-indiv bio-complex "ribosome" "GO:0005840" :name "ribosome") 