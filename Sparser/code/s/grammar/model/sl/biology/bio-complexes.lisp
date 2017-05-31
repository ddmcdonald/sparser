;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "bio-complexes"
;;;  Module: "grammar/model/sl/biology/
;;; version: April 2017

;; Broken out from phenomena 4/27/17

;; currently contains: bio-complex types and binding; dimers and their
;; fellow travelers; calcium and related complexes; bio-complex
;; definitions with IDs

;;;-------------------------------
;;; bio-complex types and binding 
;;;-------------------------------
(define-category bio-complex   :specializes bio-chemical-entity
  ;; changed -- complexes are not molecules, but associated groups of
  ;; molecules, often proteins, but not always
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
         :of direct-bindee
         :to bindee
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
           :of :object))

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


;; manually added from TRIPS
(define-category polymerize :specializes oligomerize
  :bindings (uid "NCIT:C34072")
  :realization
  (:verb "polymerize" 
   :noun "polymerization"
   :etf (sv)))

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
  :restrict ((molecule calcium)))

(def-synonym calcium-ion
             (:noun "Ca2+"))
(def-synonym calcium-ion
             (:noun "Ca(2+)"))

(define-category calcium-complex :specializes bio-complex
  :bindings (component (category-named 'calcium-ion)))

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

(def-indiv-with-id bio-complex "9-1-1" "EBI:2606881" :synonyms ("Rad9-Hus1-Rad1 complex" "9-1-1 complex" "Rad9-Hus1-Rad1 (9-1-1) clamp complex" "Rad9-Rad1-Hus1"))
(def-indiv-with-id bio-complex "proteasome complex" "GO:0000502" :adj "proteasomal" :synonyms ("PR:000027410"))
(def-indiv-with-id bio-complex "mediator complex" "NCIT:C19864" :synonyms ("mediator of activation")) ;; used to be defined as protein with "mediators" as a synonym, but I'm not sure that's likely to be the primary definition of "mediators" 

;(def-family "DDR" :identifier "IPR003208" :synonyms ("diol dehydratase-reactivating factor")) ;; also PR:000027169 -- both a family and a complex
;(def-family "TSH" :identifier "NCIT:C2280" :synonyms ("thyroid stimulating hormone") :members ("UP:P01215" "UP:P01222")) ;; alternate id  "PR:000028269" -- more of a complex than a protein family
;(define-protein "PR:000028438" ("casein kinase II")) ;; another complex  in humans with alpha (UP:P68400 -- not in our defs) alpha' (UP:P19784) and beta (UP:P67870)
;(define-protein "PR:000028509" ("chaperonin-containing TCP1 complex")) ;; another complex, in the mouse, with 8 subunits
