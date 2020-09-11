;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013-2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: March 2017

;; Initiated 11/5/13. 3/3/14 Added mechanics and NFkappaB while
;; commenting out the original molecules and verbs as OBE and requiring
;; revision. 7/23/14 Added terms and verbs to try to impose some order
;; on all this for at least expository purposes. Commented out loading
;; of NFkappaB since it's worth rethinking those fast an loose treatements.
;; Moved likely resuseable parts to terms and verbs.
;; 9/8/14 added [amino-acids], [proteins], and [taxonomy] to improve
;; searching through these. 11/12/14 added [switches]. Bumped verbs
;; to 1, 12/11/14. 12/28/14 added [phenomena]. 1/16/15 added
;; [rules]. 2/20/15 added doc-structure. 5/17/15 gated parse-biopax
;; when xmls moved out of normal Sparser load. 6/4/15 added [rhetoric]
;; so all elements can go in one place. 8/3/15 added [methods] to
;; avoid load-time category dependencies. It must be loaded last.
;; 10/8/15 added examples. 10/26/15 added citations.
;; 4/10/16 moved new-words to R3.

(in-package :sparser)

(gload "bio;allowable-protein-heads")
(gload "bio;mechanics")

(gload "bio;overrides") ;; before any verbs

(gload "bio;taxonomy")
(gload "bio;cellular-locations")
(gload "bio;new-defs;new-cell-loc")
(gload "bio;non-cellular-locations") ;; needs to be before protein families so human is defined
(gload "bio;new-defs;new-noncell-loc")
(gload "bio;new-defs;new-organisms")
(gload "bio;aux-taxonomy")
;; have to get the uniprot-names before you do any define-protein's
(gload "bio;uniprot-names.lisp")
;;(gload "bio;new-prot-defs-from-reach") temporary -- need to fold in
(gload "bio;new-defs;suspect-trips-protein-defs") ;; these will be vetted more later but are being moved to load before the main protein defs so they don't inadvertantly overwrite some good defs
(gload "bio;standardized-protein-defs")
;(gload "bio;standardized-protein-defs-no-fams-complete")
;(gload "bio;standardized-protein-defs-new")
(gload "bio;covid-proteins")
;;(gload "bio;non-upa-upm-proteins") all of these have been folded into real defs now
(gload "bio;proteins-revised") 
(gload "bio;fix-protein-defs")
#|
(gload "bio;uniprot-accession-id-mnemonic")
;; move RAS2 proteins first, so that the ras-model field is not blocked
(gload "bio;new-RAS2-proteins")
(gload "bio;proteins")
(gload "bio;rhgnc-proteins")
|#

(gload "bio;general-verbs") ;; akin to terms-to-move. also, new-cell-proc has dependency on this


(gload "bio;bio-complexes")
(gload "bio;new-defs;new-bio-complexes")
(gload "bio;bio-methods")
(gload "bio;new-defs;new-bio-meth")
(gload "bio;bio-stats") ;; new set, broken out from bio-methods
(gload "bio;bio-processes")
(gload "bio;new-defs;new-bio-proc")
(gload "bio;bio-predications")
(gload "bio;cells")
(gload "bio;new-defs;new-cells")
(gload "bio;cellular-processes")
(gload "bio;new-defs;new-cell-proc")
(gload "bio;diseases-pathogens")
;;(gload "bio;new-defs;new-diseases")
;; now moved to sl/disease and split into bacteria, viruses, cancers, and other-medical-conditions
(gload "bio;measurements")
(gload "bio;new-defs;new-units")
(gload "bio;molecular-locations")
(gload "bio;plasmids-rna")
(gload "bio;new-defs;new-rna")
(gload "bio;post-trans-mods")
(gload "bio;new-defs;new-post-trans-mod")
(gload "bio;substances")
(gload "bio;new-defs;new-substances")
(gload "bio;other-defs-from-reach") ; temporary -- will be folded into the correct definition files once checked
;(gload "bio;new-defs;reach-additional-proteins") folded into std prot
(gload "bio;new-defs;suspect-trips-defs") ;; these will be vetted more later



(gload "bio;amino-acids")
(gload "bio;terms-to-move")
(gload "bio;terms")
(gload "bio;drugs") ;; needed by verbs
(gload "bio;new-defs;new-drugs")

(gload "bio;harvard-terms")

(gload "bio;rhetoric")
(gload "bio;evidence-sources") ;; database names like reactome
(gload "bio;doc-structure")
(gload "bio;switches")
(gload "bio;rules")


;;(gload "bio;UCD-proteins")
;(gload "bio;protein-families")
(gload "bio;protein-fam-no-id")
;(gload "bio;new-protein-fam-no-id") ; temporary, while fixing things
(gload "bio;protein-fam-with-id")
(gload "bio;new-prot-fam-from-reach") ; temporary -- will be folded into protein-fam-with-id once checked

;(gload "bio;new-defs;new-prot-fam")
;(gload "bio;phenomena") ;; basically empty
(gload "bio;pathways") ;; after proteins
(gload "bio;protein-terminals-domains") ;; has to be after terms-to-move
(gload "bio;new-defs;new-prot-dom")
(gload "bio;verbs") ;; after phenomena, with bio synonyms of general verbs

(gload "bio;molecules")
(gload "bio;new-defs;new-molecules")
;; get rid of old incomplete list in favor of new one with ids


;(gload "bio;trips-terms.lisp")
;(gload "bio;trips-terms-new.lisp")
;(gload "bio;trips-terms-phase3-1-2000-non-proteins")
;(gload "bio;trips-terms-phase3-2nd-run-non-proteins")
;(gload "bio;trips-terms-apr24-non-proteins")
;;(gload "bio;trips-proteins")
;(gload "bio;reach-terms.lisp")

(gload "bio;citations")
(gload "bio;examples.lisp") ;; no definitions in here
(gload "bio;talking-about-a-model.lisp");; no definitions in here
(gload "bio;get-reactome-hgnc-names.lisp")
(gload "bio;visualization.lisp")
(gload "bio;hms-hgnc-grounding")
;; (gload "bio;category-defining-words.lisp") - moved to load-the-grammar

(gload "bio;sparser-to-indra")
(gload "bio;covid-macro-mentions")
(gload "bio;counts")



