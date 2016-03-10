;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "phenomena"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2015

;; Initiated 12/28/14 to handle moderately complicated notions
;; like cell line and mutation. Conformation and isoform and such
;; would go here. Reorganizes some items in terms. Incremental
;; extensions through 1/6/15
;; 1/9/2015 give ubiquitinate a site variable, and define "pro-apoptotic" as a subclass of "apoptotoic"
;; 1/14/2015 tweaks on N and C-terminus
;; 2/15/15 trying to make some headway with ubiquitination
;; 4/23/15 Pulled in dimer material from other files
;; 5/29/15 Added the rest of the Mitre-designated modification features

(in-package :sparser)
(define-category signal-propagation
                 :specializes bio-process
  :binds ((direction pathway-direction))
  :realization (:noun "signal propagation"
                      :m direction))

(define-realization-scheme pre-mod premodifier-adds-property 
  ;; used in quarter -- as are a number of other np patterns
  :head :common-noun
  :mapping ((property . modifier-slot)
            (np-head . :self)
            (modifier . modifier-v/r)))
;///// This is here because it was "forgotten" by the time we needed
; to use it (e.g. in signaling. Maybe the symbol was overwritten ?



;;---------- signalling 
;; (setq *break-on-illegal-duplicate-rules* t)
; The def-synonym call is creating a rule it should be able
; to lookup and reuse because the lhs and rhs are eq/equal
; but the reuse existing rule case isn't being taken and
; it's instead mis-construed as a duplicate, which should
; require a different lhs. 

;; "RAS signalling"
;; a new mode of Ras activation in which signaling is sustained ...
(define-category signal
  :specializes other-bio-process
  ;;//// bind it explicitly? :obo-id "GO:0023052"  ;; reasonable stand-in
  :binds ((agent protein) ;;bio-entity) ;; what's doing the signalling
          (object (:or bio-process protein)))  ;; what's being signaled
  :realization 
    (:verb ("signal"  :present-participle "xxxsignaling") ;; block "signaling" as a verb
     :noun "signalling"
     :etf (svo-passive)
     :m agent
     :s agent 
     :o object
     :to object))

(def-synonym signal ;; Jan.#26
   (:noun "signaling" 
          :m agent    
          :to object))

(def-synonym signal ;; Jan.#26
   (:noun "signal" 
          :m agent    
          :to object))

;;"It is interesting that various stimuli provoke EGF receptor tyrosine phosphorylation by two distinct means.")
(define-category post-translational-modification :specializes caused-bio-process
  :binds ((substrate protein)
	  (site molecular-location)
          (amino-acid amino-acid)) ;; which is attached here
  :realization 
  (:noun "post-translational modification"
         :o substrate
	 :o site
         :m amino-acid
         :m substrate
         :m site
         :m agent ;;somehow this overridew the ones below
         :of substrate
         :at amino-acid
	 :at site
	 :in site
	 :m site
	 :on site))


				    

(def-synonym post-translational-modification
     (:noun "post-transcriptional modification"))  
(def-synonym post-translational-modification
     (:noun "post-transcriptional fate"))  

(define-category transformation
  :specializes  post-translational-modification
  :realization
  (:verb "transform" :noun "transformation" 
  :etf (svo-passive)))

(define-category phosphorylation-modification :specializes post-translational-modification)

(define-category acetylation
  :specializes post-translational-modification
  :realization
  (:verb "acetylate" :noun "acetylation"
   :etf (svo-passive)))

(define-category farnesylation 
  :specializes post-translational-modification 
  :realization 
  (:verb "farnesylate"
         :noun "farnesylation"
         :etf (svo-passive) ))

(define-category glycosylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "glycosylate"
     :noun "glycosylation"
     :etf (svo-passive)))

(define-category hydoxylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "hydoxylate"
     :noun "hydoxylation"
     :etf (svo-passive)))

(define-category methylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "methylate"
     :noun "methylation"
     :etf (svo-passive)))


;;--- "phosphorylate"
;; GO:0016310	
;; "activated IKKα phosphorylates specific serines"
;;  "The phosphorylation of these specific serines"
(define-category phosphorylate
  :specializes phosphorylation-modification
  :instantiates self
  :realization
  (:verb "phosphorylate" :noun "phosphorylation"
   :etf (svo-passive)))


(define-category auto-phosphorylate
  :specializes phosphorylation-modification
  :realization
  (:verb "auto-phosphorylate" :noun "auto-phosphorylation"
   :etf (sv)))

(def-synonym auto-phosphorylate
  (:verb "autophosphorylate" :noun "autophosphorylation"
   :etf (sv)))

(def-synonym auto-phosphorylate
             (:verb "autophosphosphorylate"
              :etf (sv)))

(define-category cis-auto-phosphorylate
  :specializes auto-phosphorylate
  :realization
  (:verb "cis-auto-phosphorylate" :noun "cis-auto-phosphorylation"
   :etf (sv)))
(def-synonym cis-auto-phosphorylate
             (:verb "cis-autophosphosphorylate"
              :etf (sv)
              :noun "cis-autophosphorylation"))

(define-category trans-auto-phosphorylate
  :specializes auto-phosphorylate
  :realization
  (:verb "trans-auto-phosphorylate" :noun "trans-auto-phosphorylation"
   :etf (sv)))
   
(def-synonym trans-auto-phosphorylate
             (:verb "trans-autophosphosphorylate"
                    :etf (sv)
                    :noun "trans-autophosphorylation"))

(define-category dephosphorylate
  :specializes post-translational-modification
  :realization
  (:verb "dephosphorylate" :noun "dephosphorylation"
   :etf (svo-passive)))

(def-synonym dephosphorylate
  (:verb "de-phosphorylate" :noun "de-phosphorylation"
   :etf (svo-passive)))

(def-synonym dephosphorylate
  (:noun "dephophosphorylation" ;; misplelling from comments
))

(define-category transphosphorylate
  :specializes phosphorylation-modification
  :instantiates self
  :realization
  (:verb "transphosphorylate" :noun "transphosphorylation"
   :etf (svo-passive)))

(define-category hypersphosphorylate
  :specializes phosphorylation-modification
  :instantiates self
  :realization
  (:verb "hyperphosphorylate" :noun "hyperphosphorylation"
   :etf (svo-passive)))

(define-category ribosylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "ribosylate"
     :noun "ribosylation"
     :etf (svo-passive)))

(define-category sumoylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "sumoylate"
     :noun "sumoylation"
     :etf (svo-passive)))


; monoubiquitination increases the population 
;;  this process has this effect
; the enzymatic and chemical ubiquitination linkers 
; the monoubiquitinated and unmodified fractions of Ras
; the sensitivity of mUbRas
; our ability to easily generate mUbRas
; the c–terminus of Ubiquitin (Ubiquitin C77)
; Ras ligated to Ubiquitin C77
; ligated to Ubiquitin G76C. <--- point mutation
(def-bio "ubiquitin" protein)
;; not strictly true, but a reasonable approximation. 

(define-category ubiquitination
 :specializes post-translational-modification 
  :realization 
    (:verb "ubiquitinate"
     :noun "ubiquitination"
     :etf (svo-passive)))

(def-synonym ubiquitination 
             (:verb "ubiquitylate" 
                    :etf (svo-passive)
                    :noun "ubiquitylation"))

(define-category auto-ubiquitinate
  :specializes ubiquitination
  :realization
  (:verb "auto-ubiquitinate" :noun "auto-ubiquitination"
   :etf (sv)))

(def-synonym auto-ubiquitinate
             (:verb "auto-ubiquitylate" 
                    :etf (svo-passive)
                    :noun "auto-ubiquitylation"))

(def-synonym auto-ubiquitinate 
             (:verb "autoubiquitinate"
                    :etf (sv)
                    :noun "autoubiquitination"))

(define-category poly-ubiquitination :specializes ubiquitination
  :realization
  (:verb "poly-ubiquitinate" 
         :etf (svo-passive)
         :noun "poly-ubiquitylation"))

(def-synonym poly-ubiquitination 
             (:verb "polyubiquitinate"
                    :etf (sv)
                    :noun "polyubiquitination"))


;;;------------------------------
;;; mUbRas, monoubitutinated Ras
;;;------------------------------
;;///// This is a process/result pattern. This verb results
;; in a protein that has been ubiquitinated. (Has one or
;; more ubiquitin molecules attached to it.
;; Need to do this systematically

;; In Baker et al.
;; "we did not separate monoubiquitinated Ras (mUbRas) from ..."
;; Jan #1 "the effect of Ras monoubiquitination on ...
;; ... effect of Ras monoubiquitination on ...
;; Resulting version of Ras after adding one ubiquitin. 

;; strictly for the rule-label
(define-category monoubiquitination 
 :specializes post-translational-modification
  :realization 
  ;;/// only providing a realization for the result, not the process
  ;; that leads to the result
    (:verb "monoubiquitinate" 
     :noun "monoubiquitination"
     :etf (svo-passive)))

(def-synonym monoubiquitination 
             (:verb "mono-ubiquitylate" 
                    :etf (svo-passive)
                    :noun "mono-ubiquitylation"))

(def-synonym monoubiquitination 
             (:verb "monoubiquitylate" 
                    :etf (svo-passive)
                    :noun "monoubiquitylation"))



;;--- wrapper



;;;-------------------
;;; protein terminals
;;;-------------------

#|The convention for writing peptide sequences is 
to put the N-terminus on the left and write 
the sequence from N- to C-terminus. When the 
protein is translated from messenger RNA, 
it is created from N-terminus to C-terminus.|#

; There are two terminals, N and C, and they only make
; sense in a technical article when they're tied to 
; a particular protein.
; Semantically these are 'regions' in that they talk about
; things happening in these places. "region" is defined in
; dossiers/location-kinds.lisp as a region-type


; "located in both N- and C-terminal regions of p100"
; "via the ASPP2 N-terminus"
; the amino terminus of β-catenin

(define-category protein-terminus
  :specializes protein-domain
  :instantiates :self
  :lemma (:common-noun ("terminus" :plural ("termini" "terminuses")))
  :realization
    (:noun "terminal"))

;;//////////// These two are essentially identical definitions
;; Meed a macro or something 
(define-category N-terminal ;; amino-terminus
  :specializes protein-terminus
  :realization
  (:etf (pre-mod)
        :noun ("n-terminal" "n-terminus" "N-terminal" "N-terminus"
          "n-termini"
          "amino terminus"
          "NtA") ;; n-terminal acidic
        :premod context ;; NEEDS TO BE CHANGED -- only here because need :etf (pre-mod), to get synonyms
         ))

(define-category C-terminal ;; carboxyl-terminus
  :specializes protein-terminus
  :binds ((protein protein))
  :realization
  (:etf (pre-mod)
        :noun ("c-terminal" "c-terminus" "C-terminal" "C-terminus"
          "c-termini")
        :premod context ;; NEEDS TO BE CHANGED -- only here because need :etf (pre-mod), to get synonyms
        ))


(define-category binding-domain :specializes protein-domain
  :binds ((bound-item bio-chemical-entity))
  :realization
  (:noun "binding domain"
         :m bound-item))

(define-category RBD :specializes binding-domain
      :realization 
      (:noun "RBD"))
(noun "Raf-RBD" :super RBD)
(noun "G-domain" :super binding-domain) ;; somehow (def-bio "G-domain" protein-segment) did not work
(noun "BRCT" :super protein-domain)
(noun "BRCT1" :super protein-domain)
(noun "BRCT2" :super protein-domain)

(noun "SH2" :super protein-domain)
(noun "SH3" :super protein-domain)

(noun "g1" :super protein-domain)
(noun "g2" :super protein-domain)
(noun "g3" :super protein-domain)
(noun "g4" :super protein-domain)
(noun "g5" :super protein-domain)
(noun ("pleckstrin-homology domain" "pleckstrin homology domain" "PH domain" "pleckstrin-homology") :super protein-domain)



(define-category DBD :specializes binding-domain
      :binds ((substrate bio-entity))
      :realization 
      (:noun "DBD"
             :of substrate))
(def-synonym DBD (:noun "DNA binding domain"))

(define-category molecular-loop :specializes protein-domain
      :realization
      (:noun "loop"))

(define-category activation-loop :specializes protein-domain
      :realization
      (:noun "activation loop"))

(define-category shuttling-domain :specializes protein-domain
  :realization
  (:noun "shuttling domain"))

(define-category NtA-region :specializes protein-domain
  :realization
  (:noun "NtA region"))

(def-synonym NtA-region
             (:noun "N-terminal acidic region"))

(def-synonym NtA-region
             (:noun "N-terminal acidic domain"))

(def-synonym NtA-region
             (:noun "N-terminal acidic motif"))

(noun "ring finger domain" :super protein-domain)

(define-category regulatory-subunit :specializes protein-domain
  :realization
  (:noun "regulatory subunit"))

(def-synonym regulatory-subunit
             (:noun "regulatory sub-unit"))

;; not clear that we need a proper handling
;; of the molecule configuration, etc. that
;; differentiates N from C




;;;----------
;;; Pathways
;;;----------
; diverse signaling pathways
; specific effector pathways
; specific effector pathway(s)
; the Raf/MEK/ERK pathway
; MAPK pathway inhibitors / inhibition

(define-category  pathway
  :specializes bio-mechanism
  ;;:mixins (type-marker biological)
  :binds ((protein-sequence sequence)
          (pathwayComponent)
	  (pathwayOrder))
  :realization (:noun "patheway")
  :documentation "Pathways are inhibited and activated
   which makes them more like entities than processes.
   They are named according to the sequence of proteins
   (protein families) in the causal chain.")

(define-category PathwayStep :specializes other-bio-process
  :binds ((pathway pathway)
          (nextStep PathwayStep)
	  
          (stepProcess (:or control pathway catalysis 
                            biochemical-reaction bio-transport)))
  :instantiates :self
  :lemma (:common-noun "step")
  :realization (:common-noun name))

(define-category signaling-pathway
   :specializes pathway
   :instantiates :self
   :realization
  (:noun "signaling pathway"))


(defmacro def-pathway (&rest strings-naming-proteins)
  `(def-pathway/expr ',strings-naming-proteins))

(defun def-pathway/expr (strings-naming-proteins)
  (let ( proteins )
    (dolist (name strings-naming-proteins)
      (let ((protein (get-protein name)))
        (unless protein
          (error "Cannot identify a protein named ~s~
                ~%Maybe extend get-protein to an additional ~
                  caps variant?" name))
        (push protein proteins)))
    (setq proteins (nreverse proteins))
    (let ((sequence (create-sequence proteins))
          (name (create-slash-separated-string strings-naming-proteins)))
      (let ((i (find-or-make-individual 'pathway)))
        ;;/// make a lowercase version?
        (setq i (bind-dli-variable 'protein-sequence sequence i))
        i))))

;;//// move to string utilities
(defun create-slash-separated-string (strings)
  (let ( list )
    (do ((string (car strings) (car rest))
         (rest (cdr strings) (cdr rest)))
        ((null string))
      (push string list)
      (unless (null rest)
        (push "/" list)))
    (apply #'string-append (nreverse list))))

(def-pathway "Ras" "Raf" "MAPK")

(def-pathway "MEK" "ERK")

(def-pathway "Raf" "MAPK")



(define-category step
  :specializes other-bio-process
  :instantiates :self
  :binds ((pathway pathway)
          (process bio-process))
  :lemma (:common-noun "step")
  :realization (:common-noun name))

(fom-subcategorization category::step
                       :category category::step
                       :slots `(:in pathway
                                    :in process))



;;;-------------------------------
;;; transcription and its control
;;;-------------------------------
; the ZFN217 transcription factor
; Wikipedia for 'transcription factor'
;    factor – a substance, such as a protein, that contributes to 
;      the cause of a specific biochemical reaction or bodily process
; and CtBP1/CtBP2 corepressors, CtBPs
; the HER3 promoter
; expression of HER3
; inhibition of HER3 transcription
; "enhances the transcription function of p53"

;;;-----------
;;; Apoptosis
;;;-----------
; "RAS can enhance the apoptotic function of p53"
; intracellular apoptotic signaling
; apoptotic signals
; the apoptosis pathway


(define-category apoptosis ;; aka cell death
    :specializes other-bio-process
    :binds ((process bio-process)) ;; inherits cell-line and cell-type
    :realization
    (:noun "apoptosis" :adj "apoptotic"
	   :m process
	   :of cell-type
	   :of cell-line))

(define-category  autophagy;; like apoptosis
  :specializes other-bio-process
  :binds ((process bio-process)) ;; should be cell
  :realization
  (:noun "autophagy" 
	 :m process
	 :of cell-type
	 :of cell-line))

(define-category senescence ;; aka cell death
  :specializes other-bio-process
  :binds ((process bio-process)(object biological)) ;; should be cell
  :realization
  (:noun "senescence" :adj "senescent"
	 :m process
	 :of cell-type
	 :of cell-line))


(adj "pro-apoptotic" :super apoptosis)



;;; accumulation 

; that ERK1 nuclear accumulation increased
; ERK1-4 ... accumulated in the nucleus to the same level as ...


;;;-----------------------------------
;;; dimers and their fellow travelers 
;;;-----------------------------------

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
  :binds ((binder (:or molecule protein-domain bio-chemical-entity))
          (bindee (:or molecule protein-domain bio-chemical-entity))
          (binding-set (:or bio-chemical-entity protein-domain)) ;; this is conjunctive, as in "binding between X and Y"
          (direct-bindee (:or bio-chemical-entity protein-domain))
          (site molecular-location)
          (domain protein-domain)
          (cell-site cellular-location)
          (complex bio-complex))
  :realization 
  (:verb ("bind" :past-tense "bound" :present-participle "binding") ;; xxx is to prevent "binding" being a verb form
         :noun "binding"
         :etf (svo-passive) 
         :s binder
         :o  direct-bindee
         :to bindee
         :of bindee
         :via site
         :at site
         :at cell-site
         :to cell-site
         :to domain
         :with bindee
         :through domain
         :between binding-set
         :in complex))

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
	   :o bindee
           :into result
           :of bindee))

;; added in notion of direct-bindee for "A binds B" as opposed to "A binds to B"

(define-category oligomerize :specializes molecular-function ;; generalization for dimerize, polymerize, trimerize
  :binds ((monomer protein))
  :realization
  (:verb "oligomerize" ;; need this (perhaps) for etf and :s and :o
   :etf (sv)
   :noun "oligomerization"
   :s monomer
   :of monomer
   :with monomer))

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


(define-category bio-complex   :specializes bio-chemical-entity
  ;; changed -- complexes are not molecules, but associated groups of
  ;; molecules, often preteins, but not always
  :mixins (reactome-category)
  :binds ((component
	   (:or bio-complex small-molecule protein protein-domain ion)) ;; ion is for things like Ca2+-calmodulin
          (componentstoichiometry stoichiometry)) 
  :realization
  (:noun "complex"
         :m component
         :with component
         :of component
         :between component))

(define-category tricomplex
  :specializes bio-complex
  :mixins (reactome-category)
  :realization
  (:noun "tricomplex"))


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


(define-category dimer :specializes bio-complex
  :realization
  (:noun "dimer"
))

(define-category trimer :specializes bio-complex
  :realization
  (:noun "trimer"))

(define-category tetramer :specializes bio-complex
  :realization
  (:noun "tetramer"))

(define-category heterodimer :specializes dimer
  :realization
  (:noun "heterodimer"))

; Dec32: C-RAF activation and heterodimerization with B-RAF constitute critical components
; Dec33: endogenous C-RAF:B-RAF heterodimers
(define-category heterodimerization
  :specializes other-bio-process
  :instantiates :self
  :lemma (:common-noun "heterodimerization"))


(define-category homodimer :specializes dimer 
  :realization
  (:noun "homodimer"))

(define-category homo/heterodimer :specializes dimer
  :realization
  (:noun "homo/heterodimer"))

(def-synonym homo/heterodimer
             (:noun "homo-heterodimer"))


; Dec32: C-RAF activation and heterodimerization with B-RAF constitute critical components
; Dec33: endogenous C-RAF:B-RAF heterodimers
(define-category homodimerization
  :specializes other-bio-process
  :instantiates :self
  :lemma (:common-noun "homodimerization"))


;;;-----------------------------------
;;; knockout types -- applies to mice
;;;-----------------------------------
#| see https://en.wikipedia.org/wiki/Knockout_mouse
Given a particular mutated gene, a +/+ will be not have
the mutation (both parents). A - indicates the presence
of the mutation. That makes them homozygous (both)
or heterozygous (one of each). When the mutation is
present on both sides it's a "knockout mouse". 
One or both of the while type alleles have been replaced
with something else
|#

(define-category knockout-pattern :specializes bio-quality
  :mixins (has-name)
  :binds ((gene-or-protein (:or gene protein)))
  :realization
  (:m gene-or-protein
      :for gene-or-protein))

(define-category -/- :specializes  knockout-pattern
  :realization
  (:noun "-/-"))

(define-category +/- :specializes  knockout-pattern
  :realization
  (:noun "+/-"))
(define-category -/+ :specializes  knockout-pattern
  :realization
  (:noun "-/+"))
(define-category +/+ :specializes  knockout-pattern
  :realization
  (:noun "+/+"))


