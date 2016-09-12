;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "syntactic rules"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  September 2016

;; Initiated 9/7/14 to collect the rules into one place. 10/25 flushed
;; the temporary vp+prep rules. 10/26/14 put in one for vg+pp
;; 1/2/2015 added syntactic rule for sub-categorization rule vp --> (vp pp)
;; made the default referent for a prepositional phrase be the preposition -- otherwise the prepositional phrase can be interpreted as a direct object!
;; 1/8/2015 added (def-syntax-rule (preposition proper-name)for PP
;; 1/1/4/2015 support for thatcomp
;; 1/15/2015 add (adjective pp) rule for cases of bare adjective
;; 1/18/2015 inserted correct rules for direct objects and premodifying verb+ing
;; 1/20/15 Added number and quantifier np rules
;; added more adverb rules
;; allow PP modifiers for proper-noun (which is how Ser877 is treated, as a residue-on-protein
;; allow PRONOUN to be a subject -- so we can parse "it inhibits BRAF"
;; 3/4/2015 rules should produce form as S and not subj+verb
;; 3/8/2015 rulle for NP+thatcomp,
;; rule for VG+DEICTIC-LOCATION (as in "here" as an adverb)
;; 4/15/15 moved prepositional-phrase category to syntax-functions.
;; 4/24/2015 make "adverb + verb" be a VG and not a VP -- making it a VP prevented absorbing an object
;; 4/27/2015 extend PP rules to allow for (preposition ng) and other general np-type heads
;; 5/12/2015 get rid of problematic rule for (number ng) which ended up eating 1C as in "Figure 1C
;; add rule for postmodification by adjective phrase (perhaps should be done in post-pass)
;; added rule for to-comp on NPs
;; 5/23/2015 allow for PPs that start relative clauses -- "to which", "from whose..."
;; 5/25/2015 bunch of cleanup for rule-creating loops. Put in rules for subject-relative-clause and pp-relative-clause
;;  still need to hook those in
;; 5/30-2015 update to take into accoun addition of new passive categories
;;(def-form-category  vg+ed) ;; vg with an untensed (no aux or modal) V+ED
;;(def-form-category  vg+passive) ;; vg with an be and V+ED
;;(def-form-category  vp+passive) ;; vg with an be and V+ED
;; 6/2/15 Added pronoun and reflexive/pronoun to direct object rules
;; proper handling of "where" relative clause
;; 6/22/15 Downgraded to-comp in favor of prep-comp, which needs work to make
;;  a more specific set of rules that pay attention the the syntax of the
;;  complement: infinitive vs. particlple vs. ?. 
;; 10/8/15 Wrote syntax rule for (subordinate-conjunction vp+ing). It will
;;  presumably need extensions to other kinds of complements. 
;; 10/16/15 Wrote s + to-comp, which is looks to be a purpose clause in
;;  the cases I've seen. 


(in-package :sparser)

;;; to review and fix or remove
#+ignore
(def-form-rule (comma subject-relative-clause)
               :head :right-edge
  :form comma-separated-subject-relative-clause
  :referent (:daughter right-edge))


#+ignore ;; not yet ready
(def-syntax-rule (np pp-relative-clause)
    :head :left-edge
    :form np
    :referent (:function apply-pp-relative-clause left-edge right-edge))


#+ignore
(def-syntax-rule (preposition s) ;;//// "GTP loading" or subj+verb
                 :head :left-edge
  :form pp
  :referent (:function apply-preposition-to-complement left-edge right-edge))



;; TO-DO make a debris rule for NP VP+ING which happens "late"


;;---- Nouns's and their pre-modifiers

#|
(def-syntax-rule (n-bar common-noun)  ;; "GAP–mediated GTP hydrolysis" ;
    :head :right-edge
  ;;////// Changes to the leading n-bar because of change to ;
  ;; form of stuff like "GAP-mediated" goes here. ddd/rjb ;
    :form n-bar
    :referent (:function noun-noun-compound
                         left-edge right-edge))
|#

;;;----------
;;; NP rules
;;;----------

;;; Rules for creating NPs by adding determiners or possessives

(loop for nb in `(verb+ing ;; treat present-participles as noun-like
		  ,@*n-bar-categories*)
   do
     (eval
      `(def-syntax-rule (det ,nb) 
           :head :right-edge
           :form np
           :referent (:function determiner-noun left-edge right-edge)))
     
     (eval
      `(def-syntax-rule (possessive ,nb) 
           :head :right-edge
           :form np
           :referent (:function possessive-np left-edge right-edge))))

;;; Partitive NPs -- these make use of the fact the PPs with OF as prep, are of semantic category OF
(def-form-rule (quantifier of)
    :form np
    :referent (:function create-partitive-np left-edge right-edge))

(def-cfr np (number of)
  :form np
  :referent (:function create-partitive-np left-edge right-edge))

(def-cfr np (ones-number of)
  :form np
  :referent (:function create-partitive-np left-edge right-edge))

(def-syntax-rule (quantifier det) ;; e.g. "all these"
    :head :right-edge
    :form np
    :referent (:function quantifier-noun-compound
                         left-edge right-edge))


;;;-------------
;;; N-BAR rules
;;;-------------

;;; rules for creating n-bar edges -- all premodifiers to the head of an NP,
;;;  as well as simple adjectival post-modifiers like "in vivo", "offshore"

(loop for nb in `(verb+ing ;; treat present-participles as noun-like
		  ,@*n-bar-categories*)
   do
     (eval 
      `(def-syntax-rule (adjective ,nb) ;; "black suv"
           :head :right-edge
           :form n-bar
           :referent (:function adj-noun-compound left-edge right-edge)))
     (eval
      `(def-syntax-rule (,nb adjective) ;; "RAS in vivo"
           :head :left-edge
           :form n-bar
           :referent (:function adj-postmodifies-noun left-edge right-edge)))
     (eval 
      `(def-syntax-rule (comparative-adjective ,nb) ;; "black suv"
           :head :right-edge
           :form n-bar
           :referent (:function adj-noun-compound left-edge right-edge)))
     (eval
      `(def-syntax-rule (,nb comparative-adjective)
           :head :left-edge
           :form n-bar
           :referent (:function adj-postmodifies-noun left-edge right-edge)))
     (eval
      `(def-syntax-rule (,nb adjp) ;; "RAF activation downstream of RAS" 
           :head :left-edge
           :form n-bar
           :referent (:function adj-postmodifies-noun left-edge right-edge )))
     (eval
      `(def-syntax-rule (verb+ed ,nb)
           :head :right-edge
           :form n-bar
           :referent (:function verb-noun-compound left-edge right-edge)))
     (eval
      `(def-syntax-rule (vp+ed ,nb)
           :head :right-edge
           :form n-bar
           :referent (:function verb-noun-compound left-edge right-edge)))
     
     (eval
      `(def-syntax-rule (verb+ing ,nb)
           :head :right-edge
           :form n-bar 
           :referent (:function verb+ing-noun-compound left-edge right-edge)))
     (eval
      `(def-syntax-rule (quantifier ,nb)
           :head :right-edge
           :form n-bar 
           :referent (:function quantifier-noun-compound left-edge right-edge)))
   ;; this rule seemed to generate bad parses of things like 1C, 
   ;; and not to be terribly useful...
   ;; but should be OK now
     (eval
      `(def-syntax-rule (number ,nb)
           :head :right-edge
           :form n-bar 
           :referent (:function number-noun-compound
                                left-edge right-edge)))
     
     (loop for nbmod in *n-bar-categories*
        do   
          (eval
           `(def-syntax-rule (,nbmod ,nb) 
                :head :right-edge
                :form n-bar 
                :referent (:function noun-noun-compound left-edge right-edge)))))

;; These two are special cases where we do want to attach post-modifiers to full NPs
;;; (these occur because the determiner is combined with the n-bar before we see the
;;;   post-modifying adjective)

(def-syntax-rule (np adjp) ;; "RAS in vivo"
    :head :left-edge
    :form np
    :referent (:function adj-postmodifies-noun left-edge right-edge ))

(def-syntax-rule (np adjective) ;; "RAS in vivo"
    :head :left-edge
    :form np
    :referent (:function adj-postmodifies-noun left-edge right-edge ))

(def-form-rule (percent adjective)
    :head :right-edge
    :form adjective
    :referent (:function interpret-intensifier+adjective left-edge right-edge))
  
;;;------------------
;;; NP postmodifiers
;;;------------------

(loop for nb in `(np ,@*n-bar-categories*)
   do
   ;;--- NP + PP -- postmodifiers
     (eval 
      `(def-syntax-rule (,nb pp)
           :head :left-edge
           :form np
           :referent (:function interpret-pp-adjunct-to-np left-edge right-edge)))
     
   ;;--- NP + sentential-complements (THATCOMP, WHETHERCOMP)
     (eval
      `(def-syntax-rule (,nb thatcomp)
           :head :left-edge
           :form np
           :referent (:function assimilate-thatcomp left-edge right-edge)))
     (eval
      `(def-syntax-rule (,nb whethercomp)
           :head :left-edge
           :form np
           :referent (:function assimilate-whethercomp left-edge right-edge)))
     
     (eval 
      `(def-syntax-rule (,nb to-comp)
           :head :left-edge
           :form np
           :referent (:function interpret-to-comp-adjunct-to-np left-edge right-edge))))



#+ignore
(loop for n in `(np pronoun  ,@*n-bar-categories*) ;; move vp+ing vg+ing to da-rules
   do
     (eval ;; this is the gerund form of the verb as an NP!!!
      `(def-syntax-rule (,n vp+ing)
           :head :right-edge
           :form np
           :referent (:function assimilate-subject-to-vp-ing left-edge right-edge))))





;;;------------------------
;;; Rules for VG, VP and S
;;;------------------------


;;;--------
;;; VG -- Rules for constructing VGs (and some hangers on for adverbials and deictic locations on S as a whole)
;;;--------


(loop for vv in '((verb+ed vg+ed)
                  (verb+ing vg+ing)
                  (verb+present vg)
                  (verb vg)
                  (vg vg)
                  (vp vp)
                  (vg+ing vg+ing)
                  (vp+ing vp+ing)
                  (vg+ed vg+ed)
                  (vp+ed vp+ed)
                  (vg+passive vg+passive)
                  (vp+passive vp+passive)
                  (s s)
                  (infinitive infinitive)
                  (to-comp to-comp))
  ;; "here" is used adverbially
  do
  (eval 
   `(def-form-rule (deictic-location ,(car vv))
        :head :right-edge
        :form ,(second vv)
        :referent (:function interpret-adverb+verb left-edge right-edge)))
  (eval 
   `(def-form-rule (,(car vv) deictic-location)
        :head :left-edge
      
        :form ,(second vv)
        :referent (:function interpret-adverb+verb right-edge left-edge)))
  
  (eval
   `(def-syntax-rule  (adverb ,(car vv))
        :head :right-edge
        :form ,(second vv)
        :referent (:function interpret-adverb+verb left-edge right-edge)))
  (eval
   `(def-syntax-rule  (comparative ,(car vv))
        :head :right-edge
        :form ,(second vv)
        :referent (:function interpret-adverb+verb left-edge right-edge)))
  (eval
   `(def-syntax-rule  (,(car vv) adverb)
        :head :left-edge
        :form ,(second vv)
        :referent (:function interpret-adverb+verb right-edge left-edge))))



(def-form-rule (not verb+ed) ;; "RAS not bound to ERK"
    :form vg+ed
    :referent (:head right-edge
                     :bind (negation left-edge)))


(def-form-rule (time vg) ;; for "may now bind ..."
    :form vg
    :referent (:function add-time-adjunct left-edge right-edge))


(def-form-rule (time verb) ;; for "may now bind ..."
    :form vg
    :referent (:function add-time-adjunct left-edge right-edge))



;;;--------
;;; SUBJECT 
;;;--------


;;--- subject + verb for relative clauses

(loop for nb in `(np pronoun vp+ing vg+ing ,@*n-bar-categories*)
   do
     (eval 
      `(def-form-rule (,nb copular-pp)
           :form s
           :referent (:function apply-copular-pp left-edge right-edge)))
     
     (loop for src in '(subject-relative-clause  vp+ing vg+ing)
	 ;; vp+ed ;; reduced relative clauses
        do
          (eval 
           `(def-syntax-rule (,nb ,src)
                :head :left-edge
                :form np
                :referent (:function apply-subject-relative-clause left-edge right-edge))))
     
     (eval
      `(def-syntax-rule (,nb transitive-clause-without-object)
           :head :left-edge
           :form np
           :referent (:function apply-object-relative-clause left-edge right-edge)))

     (eval
      `(def-syntax-rule (,nb object-relative-clause)
           :head :left-edge
           :form np
           :referent (:function apply-object-relative-clause left-edge right-edge))))


(loop for n in `(np pronoun ,@*n-bar-categories*) ;; move vp+ing vg+ing to da-rules
  do
  (loop for v in '(vp vg vp+passive vg+passive 
                      ;; vg+ing ;; TO-DO see if this change improves or damages things
                      )
    do
    (eval
     `(def-syntax-rule (,n ,v)
          :head :right-edge
          :form S
          :referent (:function assimilate-subject left-edge right-edge))))
     ;; I don't really believe that you can have a subject befor the subordinate conjunction -- prove it
     ;; OK -- proven -- "we thus tested whether ..."
     (eval
      `(def-syntax-rule (,n subordinate-clause)
	   :head :right-edge
	   :form subordinate-clause
	   :referent (:function assimilate-subject left-edge right-edge))))

;; special handlng for vp+ed/vg+ed  -- may be a reduced relative or a main clause

(loop for n in `(np pronoun  vp+ing vg+ing ,@*n-bar-categories*)
   do
     (loop for v in '(vg+ed vp+ed)
        do
          (eval
           `(def-syntax-rule (,n ,v)
                :head :right-edge
                :form S
                :referent (:function assimilate-subject-to-vp-ed left-edge right-edge)))))


;;;---------------
;;; DIRECT OBJECT
;;;--------------

(loop for nb in `(vp+ing vg+ing ;; allow present-participles (gerunds) as objects
                         np pronoun reflexive/pronoun ,@*n-bar-categories*)
  do
  (loop for vv in '((vg vp)(vg+ing vp+ing)(vg+ed vp+ed)(infinitive to-comp) (to-comp to-comp))
    do
    (eval 
     `(def-syntax-rule (,(car vv) ,nb)
          :head :left-edge
          :form ,(second vv)
          :referent (:function assimilate-np-to-v-as-object left-edge right-edge)))))



;;;----------------------------------------------------------------
;;; PP and CLAUSAL COMPLEMENTS to VGs and VPs (verb-like elements)
;;;  as well as ADJGs
;;;----------------------------------------------------------------

(loop for vv in '((vg vp)
                  (vp vp)
                  (vg+ing vp+ing)
                  (vp+ing vp+ing)
                  (vg+ed vp+ed)
                  (vp+ed vp+ed)
                  (vg+passive vp+passive)
                  (vp+passive vp+passive)
                  (infinitive to-comp)
                  (to-comp to-comp)
                  (adjective adjp)
                  (adjp adjp))
  do
  (eval
   `(def-syntax-rule (,(car vv) pp)
        :head :left-edge
        :form ,(second vv)
        :referent (:function adjoin-pp-to-vg left-edge right-edge)))
  (eval
   `(def-syntax-rule (,(car vv) to-comp)
        :head :left-edge
        :form ,(second vv)
        :referent (:function adjoin-tocomp-to-vg left-edge right-edge)))
  
  (eval
   `(def-syntax-rule (,(car vv) as-comp)
        :head :left-edge
        :form ,(second vv)
        :referent (:function adjoin-ascomp-to-vg left-edge right-edge)))

  (eval
   `(def-syntax-rule (,(car vv) prep-comp)
        :head :left-edge
        :form ,(second vv)
        :referent (:function adjoin-prepcomp-to-vg left-edge right-edge))))

(def-syntax-rule (s to-comp)
    :head :left-edge
    :form s
    :referent (:function interpret-to-comp-adjunct-to-s left-edge right-edge))


;;-- infinitives / to-comps, compensating rules

(def-syntax-rule (vg+ed vp) ;; where vp is disguising "... to be ..."
  ;; erk #7, semantically it's [show + copular-predicate]
  ;; analogy is to vg+ed + to-comp
  :head :left-edge
  :form vp+ed
  :referent (:function adjoin-vg-to-embedded-tocomp left-edge right-edge))

(def-syntax-rule (vg vg+passive)
  :head :left-edge
  :form vp
  :referent (:function passive-is-covert-tocomp left-edge right-edge))



;; add in S because it can happen that the "THATCOMP" and "WHETHERCOMP" my not be produced until after
;; the verb element gets promoted to an S
;; e.g. "interestingly , we observed that in contrast to wild type aspp 2 , aspp 2 ( s 827 a ) remains at the plasma membrane"
(loop for vv in '((s s)(vp vp)(vp+ing vp+ing)(vp+ed vp+ed) (vg vp)(vg+ing vp+ing)
                  (vg+ed vp+ed)(vg+passive vp+passive)(vp+passive vp+passive)
                  (infinitive to-comp))
  ;; verb complements 
  do
  (eval
   `(def-syntax-rule (,(car vv) thatcomp)
        :head :left-edge
        :form ,(second vv)
        :referent (:function assimilate-thatcomp left-edge right-edge)))
  (eval
   `(def-syntax-rule (,(car vv) s) ;; "I am certain (that) it is transient."
        :head :left-edge
        :form ,(second vv)
        :referent (:function assimilate-thatcomp left-edge right-edge)))
     (eval
   `(def-syntax-rule (,(car vv) subj+verb) ;; "I am certain (that) there is."
        :head :left-edge
        :form ,(second vv)
        :referent (:function assimilate-thatcomp left-edge right-edge)))
  (eval
   `(def-syntax-rule (,(car vv) whethercomp)
        :head :left-edge
        :form ,(second vv)
        :referent (:function assimilate-whethercomp left-edge right-edge)))
  (eval
   `(def-syntax-rule (,(car vv) verbal-adjunct)
        :head :left-edge
        :form ,(second vv)
        :referent (:function assimilate-whethercomp left-edge right-edge))))




;;;-----------------------
;;;   Relative clauses
;;;-----------------------

(loop for rel in '(which who whom  that)
   ;;  (where, when) this is more often used as a subordinate conjunction
   do
     (eval
      `(def-form-rule (,rel transitive-clause-without-object)
           :head :right-edge
           :form object-relative-clause
           :referent (:function compose-wh-with-vp left-edge right-edge)))
     
     (loop for v in '(vp vp+passive vg+passive vg)
        do
          (eval
           `(def-form-rule (,rel ,v) 
                :head :right-edge
                :form subject-relative-clause
                :referent (:function compose-wh-with-vp left-edge right-edge)))))


(loop for v in '(vp vp+passive vg+passive vg)
   do
     (eval
      `(def-syntax-rule (pp-wh-pronoun ,v) 
	   :head :right-edge
	   :form pp-relative-clause
	   :referent (:function make-pp-relative-clause left-edge right-edge))))

(loop for rel in '(which who whom)
   do
     (eval
      `(def-form-rule (,rel subordinate-clause) 
	   :head :right-edge
	   :form subordinate-relative-clause
	   :referent (:function compose-wh-with-vp left-edge right-edge))))


;; this is not a subject relative -- the subject already exists
(def-form-rule (where s) 
    :head :right-edge
    :form where-relative-clause
    :referent (:function make-subordinate-clause left-edge right-edge))

(def-form-rule (when s) 
    :head :right-edge
    :form when-relative-clause
    :referent (:function make-subordinate-clause left-edge right-edge))


(def-form-rule (comma pp-relative-clause)
    :head :right-edge
    :form pp-relative-clause
    :referent (:daughter right-edge))


;;;------------------------------------------------------
;;; ADJG COMPLEMENTS to VGs and VPs (verb-like elements)
;;;------------------------------------------------------

(loop for vv in '((vg vp)
                  (vp vp)
                  (vg+ing vp+ing)
                  (vp+ing vp+ing)
                  (vg+ed vp+ed)
                  (vp+ed vp+ed)
                  (vg+passive vp+passive)
                  (vp+passive vp+passive))
   do
     (eval
      `(def-syntax-rule (,(car vv) adjg)
           :head :left-edge
           :form ,(second vv)
           :referent (:function assimilate-adj-complement left-edge right-edge)))
     (eval
      `(def-syntax-rule (,(car vv) adjp)
           :head :left-edge
           :form ,(second vv)
           :referent (:function assimilate-adj-complement left-edge right-edge)))

     (eval
      `(def-syntax-rule (,(car vv) adjective)
           :head :left-edge
           :form ,(second vv)
           :referent (:function assimilate-adj-complement left-edge right-edge))))


;;;--------------------------------------
;;; subordinate clauses and conjunctions
;;;-------------------------------------
; These frequently have rhetorical or temporal force
; e.g. the "thus" in 
;   (p "SOS promotes the formation of GTP-bound RAS, thus activating this protein.")

;;; subordinate clauses 
(def-syntax-rule (modal subordinate-clause)
    :head :right-edge
    :form subordinate-clause
    :referent (:function absorb-auxiliary left-edge right-edge))

(def-form-rule (subordinate-conjunction comma)
    :head :left-edge
    :form subordinate-conjunction
    :referent (:daughter left-edge))


(loop for vv in '((subordinate-clause subordinate-clause)
                  ;; as in "Thus, although genetic alterations that engender C-RAF activation..."
		  (s s)(vp vp)(vp+ing vp+ing)(vp+ed vp+ed) (vg vp)(vg+ing vp+ing)
                  (vg+ed vp+ed)(vg+passive vp+passive)(vp+passive vp+passive)
		  (verb+present vg))
   do
     (loop for prep in '(before after)
        do
          (eval
           `(def-form-rule (,prep ,(car vv))
                :head :right-edge
                :form subordinate-clause
                :referent (:function make-subordinate-clause left-edge right-edge))))
     
     (eval `(def-syntax-rule (subordinate-conjunction ,(car vv))
                :head :right-edge
                :form subordinate-clause
                :referent (:function make-subordinate-clause left-edge right-edge))))




;;;-------------------------------------------------------------------------
;;; clause-based complements "to", "for-to", "that" and "whether" and "how"
;;;-------------------------------------------------------------------------
              
(def-form-rule (that s)
    :form thatcomp
    :referent (:function create-thatcomp left-edge right-edge)) ;; (:head right-edge))

(def-form-rule (whether s)
    :form whethercomp
    :referent (:function create-whethercomp left-edge right-edge))

(def-form-rule (how s)
    :form np
    :referent (:function create-howcomp left-edge right-edge))


(def-form-rule (for to-comp)
    :form to-comp
    :referent (:function interpret-for-to-comp left-edge right-edge))


(def-form-rule (as vp+ed)
    :head :right-edge
    :form as-comp
    :referent 
    (:function interpret-adverb+verb left-edge right-edge))

(def-form-rule (as vg+ed)
    :head :right-edge
    :form as-comp
    :referent 
    (:function interpret-adverb+verb left-edge right-edge))


(loop for v in  '(vg vp vg+ed vp+ed vg+passive vp+passive)
   ;; the vg+passive and vp+passive are for "to be investigated...", "to be mediated by ASPP2"
   ;;vg+ing  )
  do
     (eval `(def-syntax-rule (preposition ,v)
                ;; this really is only for TO, but can't do it as a form rule
                ;;  because the semantics of the entire PP with a TO preposition
                ;;  is TO, and that can absorb the follwoing vg/vp/...
             :head :left-edge
             :form prep-comp ;;//////////////////////////
             :referent (:function make-prep-comp left-referent right-referent))))

;; dynamics change with "to be" taken as a polyword with 'infinitive' as the form
#+ignore
(def-syntax-rule (infinitive np) ;; overnight #3
  :head :right-edge
  :form to-comp
  :referent (:daughter right-edge))


(def-syntax-rule (preposition vg+ing) ;; J3 hydrolysis maybe elevate?
    :head :left-edge
    :form pp
    :referent (:function apply-preposition-to-complement left-edge right-edge))

(def-syntax-rule (preposition vp+ing) ;; aspp2 # 64 "in prompting senescence
    :head :left-edge
    :form pp
    :referent (:function apply-preposition-to-complement left-edge right-edge))


;;/// written as expedient way to handle "even in" (overnight #6)
;; but that phrase actually means something and should be a real preposition
(def-syntax-rule (adverb preposition)
    :head :right-edge
    :form preposition
    :referent (:method modified left-edge right-edge))




;;; ----------------------
;;; PREPOSITIONAL PHRASES
;;; ----------------------

(loop for nb in `(np pronoun reflexive/pronoun ,@*n-bar-categories*)
  do
  (eval 
   `(def-syntax-rule (preposition ,nb)
        :head :left-edge
        :form pp
        :referent (:function make-pp left-referent right-referent)))
  (eval
   `(def-syntax-rule (spatial-preposition ,nb)
        :head :left-edge
        :form pp
        :referent (:function make-pp left-referent right-referent)))
  (eval
   `(def-syntax-rule (spatio-temporal-preposition ,nb)
        :head :left-edge
        :form pp
        :referent (:function make-pp left-referent right-referent))))


(def-form-rule (of thatcomp)
    ;; compensate for shift in form done by create-howcomp that stranded
    ;; dry-run 41 (aka aspp2 69). ///form there should be whcomp or something
    ;; like that since it's better fit to more prepositions. This instance
    ;; with "of" is really forced.
  :head :left-edge
  :form pp
  :referent (:function make-pp left-referent right-referent))

;; "by who" or "in who" etc. is very non standard, so this
;; overgenerates
(loop for nb in `(who which whom)
  do
  (eval 
   `(def-form-rule (preposition ,nb)
        :head :left-edge
        :form pp-wh-pronoun
        :referent (:function make-relativized-pp left-referent right-referent)))
  (eval
   `(def-form-rule (spatial-preposition ,nb) ;;//// get rid of spatial-preposition!
        :head :left-edge
        :form pp-wh-pronoun
        :referent (:function make-relativized-pp left-referent right-referent)))
  (eval
   `(def-form-rule (spatio-temporal-preposition ,nb) ;;//// get rid of spatial-preposition!
        :head :left-edge
        :form pp-wh-pronoun
        ;; I suppose we need a generic relationship here for
        ;; a proper referent
        :referent (:function make-relativized-pp left-referent right-referent))))


;; DAVID -- need to learn how to bind the amount-of-time to the spatio-temporal-preposition
;;   e.g. 30 minutes after (treatment)
(def-form-rule (amount-of-time spatio-temporal-preposition)
    :head :right-edge
    :referent (:head right-edge
                     :bind (amount-of-time left-edge))
    :form spatio-temporal-preposition)





;;;----------------------------
;;; rules for adjective groups 
;;;----------------------------

(def-syntax-rule (comparative adjective)
    :head :right-edge
    :form comparative-adjective
    :referent (:head right-edge
                     :bind (comparative left-edge)))
(cond
  (*clos*
   (def-syntax-rule (adverb adjective)
       :head :right-edge
       :form adjective
       :referent (:method modified left-edge right-edge)))
  (t 
   (def-syntax-rule (adverb adjective)
       :head :right-edge
       :form adjective
       :referent (:function interpret-adverb+verb left-edge right-edge))))

;;--- predicate adjective

#| normally copular adjectives become VPs, but in 
(5 (P "Therefore, mUbRas is insensitive to GAP–mediated regulation, 
similar to an oncogenic RasG12V mutation (9).")) 

"similar" is just an adjective
|#

(def-syntax-rule (adjective pp)
    :head :left-edge
    :form adjp
    :referent (:function adjoin-pp-to-vg left-edge right-edge))

(def-syntax-rule (comparative-adjective pp)
    :head :left-edge
    :form adjp
    :referent (:function adjoin-pp-to-vg left-edge right-edge))

(def-syntax-rule (superlative-adjective pp)
    :head :left-edge
    :form adjp
    :referent (:function adjoin-pp-to-vg left-edge right-edge))

(def-syntax-rule (adjective s) ;; "confident it is transient"
    :head :left-edge
    :form adjp
    :referent (:function make-adj-comp left-edge right-edge))

(def-syntax-rule (adjective thatcomp) ;; Dec #24
  :head :left-edge
  :form adjp
  :referent (:function make-adj-comp left-edge right-edge))

(def-syntax-rule (adjective subj+verb) ;; "I’m quite sure there isn’t."
  :head :left-edge
  :form adjp
  :referent (:function make-adj-comp left-edge right-edge))

(def-syntax-rule (adjective vp+passive)
  ;; aspp2 #31 "... likely to be mediated by ..."
  :head :left-edge
  :form adjp
  :referent (:function passive-is-covert-tocomp left-edge right-edge))

;;;--------------------------------------------------------
;; new rules for numbered items -- needs review
;;;--------------------------------------------------------

(def-syntax-rule (np number) ;; should be allowable as a form rule
    :form np
    :head :left-edge
    :referent (:function make-ordinal-item right-edge left-edge))

(def-syntax-rule (proper-noun number) ;; should be allowable as a form rule
    :form np
    :head :left-edge
    :referent (:function make-ordinal-item right-edge left-edge))

(def-form-rule (np hyphenated-number)  
    :form np
    :head :left-edge
    :referent (:function make-ordinal-item right-edge left-edge))

(def-form-rule (proper-noun hyphenated-number)  
    :form np
    :head :left-edge
    :referent (:function make-ordinal-item right-edge left-edge))

(def-syntax-rule (approximator number)
    :form number
    :head :right-edge
    :referent (:daughter right-edge
			 :bind (approximator left-edge)))
