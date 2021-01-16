;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2018 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "syntactic rules"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  September 2018

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


(defvar *n-bar-categories*)
(defvar *n-bar-category-names*)



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
      `(def-syntax-rule (demonstrative ,nb) 
           :head :right-edge
           :form np
           :referent (:function determiner-noun left-edge right-edge)))
     (eval
      `(def-syntax-rule (wh-pronoun ,nb) 
           :head :right-edge
           :form np
           :referent (:function determiner-noun left-edge right-edge)))
     
     (eval
      `(def-syntax-rule (possessive ,nb) 
           :head :right-edge
           :form np
           :referent (:function possessive-np left-edge right-edge))))


;;--- Partitive NPs

(def-form-rule (quantifier of)
    :form np
    :head :left-edge
    :referent (:function create-partitive-np left-edge right-edge))

(def-syntax-rule (quantifier rel-pro-to-be-quantified) ;; "many of which"
    :form np
    :head :left-edge
    :referent (:function create-partitive-np left-edge right-edge))

(def-syntax-rule (superlative-adjective pp-wh-pronoun) ;; "most of whom"
    :form np
    :head :right-edge
    :referent (:function create-partitive-np left-edge right-edge))

;;--- other cases of leading quantifiers making det's or np's

(def-form-rule (all det) ;; e.g. "all these"
    :head :right-edge
    :form det
    :referent (:function quantifier-noun-compound left-edge right-edge))

(def-form-rule (both det) ;; e.g. "both these"
    :head :right-edge
    :form det
    :referent (:function quantifier-noun-compound left-edge right-edge))



;;--- post-position quantifiers

(def-syntax-rule (proper-noun quantifier) 
  :head :left-edge 
  :form np
  :referent (:function allowable-post-quantifier? left-edge right-edge))

(def-syntax-rule (n-bar quantifier) 
    :head :left-edge 
  :form np
  :referent (:function allowable-post-quantifier? left-edge right-edge))

(def-syntax-rule (np quantifier) 
    :head :left-edge 
  :form np
  :referent (:function allowable-post-quantifier? left-edge right-edge))






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
     ;; duplicated comparative/superlative-adjective rules were here
     (eval 
      `(def-syntax-rule (adjg ,nb) ;; "very black suv"
           :head :right-edge
           :form n-bar
           :referent (:function adj-noun-compound left-edge right-edge)))

     (eval
      `(def-syntax-rule (adverb ,nb)
           :head :right-edge
           :form :n-bar
           :referent (:function adverb-noun-compound left-edge right-edge)))

     (eval
      `(def-syntax-rule (,nb adjective) ;; "RAS in vivo"
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
      ;; transitive-clause-without-object comes from "PEDF activated" in
      ;; "PEDF activated kinases"
      `(def-syntax-rule (transitive-clause-without-object ,nb)
           :head :right-edge
           :form n-bar 
           :referent (:function verb-noun-compound left-edge right-edge)))        
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

     ;; for cases like S167 phosphorylation -- "S167" becomes an NP
     (eval `(def-syntax-rule (np ,nb) 
                :head :right-edge
                :form n-bar 
                :referent (:function noun-noun-compound left-edge right-edge)))
        
     (loop for nbmod in *n-bar-categories*
        do   
          (eval
           `(def-syntax-rule (,nbmod ,nb) 
                :head :right-edge
                :form n-bar 
                :referent (:function noun-noun-compound left-edge right-edge)))))

(def-syntax-rule (np number) ;; "position 146"
           :head :left-edge
           :form np
  :referent (:function np-number left-edge right-edge))

(def-syntax-rule (common-noun number) ;; "study 2 participants" for "study 2"
           :head :left-edge
           :form n-bar
           :referent (:function np-number left-edge right-edge))

(def-syntax-rule (quantifier np) ;; "all the blocks" (should be red)
    :head :right-edge
    :form np
    :referent (:function quantifier-noun-compound left-edge right-edge))

(def-syntax-rule (approximator np)
    ;;// relevant approximators are determiners, action is like quantifier
    :head :right-edge
    :form np
    :referent (:function determiner-noun left-edge right-edge))

(def-syntax-rule (quantifier number) ;; "all three" (should be red)
    :head :right-edge
    :form n-bar
    :referent (:function quantifier-noun-compound left-edge right-edge))


(def-syntax-rule (indef-pronoun pp) ;; "everything on the table"
  :head :right-edge
  :form np
  :referent (:function indefinite-pn/np left-edge right-edge))



;; These two are special cases where we do want to attach post-modifiers to full NPs
;;; (these occur because the determiner is combined with the n-bar before we see the
;;;   post-modifying adjective)

(def-syntax-rule (np adjp)
    :head :left-edge
    :form np
    :referent (:function adj-postmodifies-noun left-edge right-edge ))

(def-syntax-rule (np adjective)
    :head :left-edge
    :form np
    :referent (:function adj-postmodifies-noun left-edge right-edge ))

(def-form-rule (percent adjective)
    :head :right-edge
    :form adjective
    :referent (:function interpret-intensifier+adjective left-edge right-edge))

(def-form-rule (percent adjp) ;; 95% sure that it is transient
    :head :right-edge
    :form adjp
    :referent (:function interpret-intensifier+adjective left-edge right-edge))

  
;;;------------------
;;; NP postmodifiers
;;;------------------

(loop for nb in `(np ,@*n-bar-categories*)
      do
        (unless (eq nb 'music-note))
      ;;--- NP + PP -- postmodifiers
        (eval 
         `(def-syntax-rule (,nb pp)
              :head :left-edge
              :form np
              :referent (:function interpret-pp-adjunct-to-np left-edge right-edge)))
     
;;--- NP + sentential-complements (THATCOMP, WHETHERCOMP, HOWCOMP, IFCOMP)
        (eval
         `(def-syntax-rule (,nb thatcomp)
              :head :left-edge
              :form np
              :referent (:function assimilate-thatcomp left-edge right-edge)))
        (eval
         `(def-syntax-rule (,nb howcomp)
              :head :left-edge
              :form np
              :referent (:function assimilate-howcomp left-edge right-edge)))
        (eval
         `(def-syntax-rule (,nb whethercomp)
              :head :left-edge
              :form np
              :referent (:function assimilate-whethercomp left-edge right-edge)))
             (eval
              `(def-syntax-rule (,nb ifcomp)
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





;;;-------------
;;; Rules for S
;;;-------------

(def-syntax-rule (s pp)
  :head :left-edge
  :form s
  ;; See DA rules like attach-pp-following-clause
  :referent (:function clause+pp left-edge right-edge))

(def-syntax-rule (polar-question-form pp)
  :head :left-edge
  :form polar-question-form
  ;; See DA rules like attach-pp-following-clause
  :referent (:function clause+pp left-edge right-edge))

(def-syntax-rule (s than-np)
  :head :left-edge
  :form s
  :referent (:function make-comparative-adjp-with-np left-edge right-edge))

(def-syntax-rule (polar-question-form than-np)
  :head :left-edge
  :form polar-question-form
  :referent (:function make-comparative-adjp-with-np left-edge right-edge))


;;;--------
;;; VG -- Rules for constructing VGs (and some hangers on
;;;    for adverbials and deictic locations on S as a whole)
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
                  (vp+past vp+past) ;; if there already was a direct object, then keep the marking
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
      `(def-form-rule (not ,(car vv))
           :form ,(second vv)
           :head :right-edge
           :referent (:head right-edge
                     :bind (negation left-edge))))
     
  (eval
    `(def-form-rule  (both ,(car vv))
        :head :right-edge
        :form ,(second vv)
        :referent (:function interpret-verb-conjunction-quantifier+verb left-edge right-edge)))

  (eval
    `(def-form-rule  (either ,(car vv))
        :head :right-edge
        :form ,(second vv)
        :referent (:function interpret-verb-conjunction-quantifier+verb left-edge right-edge)))

  (eval
   `(def-syntax-rule  (approximator ,(car vv))
        :head :right-edge
        :form ,(second vv)
        :referent (:function interpret-adverb+verb left-edge right-edge)))

  (eval
   `(def-syntax-rule  (,(car vv) adverb)
        :head :left-edge
        :form ,(second vv)
        :referent (:function interpret-adverb+verb right-edge left-edge)))

   (eval
   `(def-form-rule  (,(car vv) n-fold)
        :head :left-edge
        :form ,(second vv)
        :referent (:function interpret-adverb+verb right-edge left-edge))))



#+ignore ;; incorporated into rules above
(def-form-rule (not verb+ed) ;; "RAS not bound to ERK"
    :form vg+ed
    :head :right-edge
    :referent (:head right-edge
                     :bind (negation left-edge)))


(def-form-rule (time vg) ;; for "may now bind ..."
    :form vg
    :head :right-edge
    :referent (:function add-time-adjunct left-edge right-edge))


(def-form-rule (time verb) ;; for "may now bind ..."
    :form vg
    :head :right-edge
    :referent (:function add-time-adjunct left-edge right-edge))



;;;--------
;;; SUBJECT 
;;;--------

;;--- subject + verb for relative clauses

;; duplicate rules commented out -- ddm 6/18/20

(loop for nb in `(np pronoun vp+ing vg+ing ,@*n-bar-categories*)
   do
     (eval 
      `(def-form-rule (,nb copular-pp)
           :form s
           :head :right-edge
           :referent (:function apply-copular-pp left-edge right-edge)))
     
     (loop for src in '(subject-relative-clause  vp+ing vg+ing)
        do
          (eval 
           `(def-syntax-rule (,nb ,src)
                :head :left-edge
                :form np
                :referent (:function apply-subject-relative-clause left-edge right-edge))))
     ;; (eval
     ;;  `(def-syntax-rule (,nb when-relative-clause)
     ;;       :head :left-edge
     ;;       :form np
     ;;       :referent (:function apply-where-when-relative-clause left-edge right-edge)))

     (eval
      `(def-syntax-rule (,nb when-relative-clause)
           :head :left-edge
           :form np
           :referent (:function apply-when-relative-clause left-edge right-edge)))

     (eval
      `(def-syntax-rule (,nb where-relative-clause)
           :head :left-edge
           :form np
           :referent (:function apply-where-relative-clause left-edge right-edge)))

     (eval
      `(def-syntax-rule (,nb why-relative-clause)
           :head :left-edge
           :form np
           :referent (:function apply-why-relative-clause left-edge right-edge)))
    
     ;; (eval
     ;;  `(def-syntax-rule (,nb transitive-clause-without-object)
     ;;       :head :left-edge
     ;;       :form np
     ;;       :referent (:function apply-where-when-relative-clause left-edge right-edge)))

     ;; (eval
     ;;  `(def-syntax-rule (,nb transitive-clause-without-object)
     ;;       :head :left-edge
     ;;       :form np
     ;;       :referent (:function apply-where-when-relative-clause left-edge right-edge)))
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


(loop for n in `(np wh-pronoun demonstrative pronoun demonstrative ,@*n-bar-categories*
                    ;; put this in for "eating ice cream makes me feel good"
                    vp+ing) 
  do
     (loop for v in '(vp vg vp+passive vg+passive vp+past
                      #|vp+ed|#
                   ;; vg+ing ;; TO-DO see if this change improves or damages things
                   ;; or move vp+ing vg+ing to da-rules
                      )
    do
    (eval
     `(def-syntax-rule (,n ,v)
          :head :right-edge
          :form S
          :referent (:function assimilate-subject left-edge right-edge))))

     (eval
       `(def-syntax-rule (,n subordinate-clause)
	   :head :right-edge
	   :form subordinate-clause
	   :referent (:function assimilate-subject-to-subordinate-clause left-edge right-edge))))


(loop for nb in `(np ,@*n-bar-categories*)
      do
        (progn
          ;; this causes parses like "to activate Rac1 resulting "
          ;; where the resulting is absorbed into the Rac1 
          #+ignore
          (eval
           (unless (eq nb 'np)
             `(def-syntax-rule  (,nb vg+ing)
                  :head :right-edge
                  :form vg+ing
                  :referent (:function assimilate-object right-edge left-edge))))
          (loop for vv in '((verb+ing vg+ing)
                            (verb+present vg)
                            (verb vg)
                            #|(vp+ed vp+ed) |#
                            )
                do

                  (eval
                   `(def-syntax-rule  (,nb ,(car vv) )
                        :head :right-edge
                        :form ,(second vv)
                        :referent (:function interpret-premod-to-verb left-edge right-edge))))))

;; special handlng for vp+ed/vg+ed  -- may be a reduced relative or a main clause

(loop for n in `(np pronoun  vp+ing vg+ing ,@*n-bar-categories*)
   do
     (loop for v in '(vg+ed vp+ed verb+ed)
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
                         np pronoun reflexive/pronoun
                         demonstrative ,@*n-bar-categories*)
  do
        (loop for vv in '((vg vp) (vg+ing vp+ing)
                          (vg+ed vp+past) ;; if there is a direct object, then mark the vg+ed as a past tense
                          (infinitive to-comp) (to-comp to-comp))
              do
                (eval 
                 `(def-syntax-rule (,(car vv) ,nb)
                    :head :left-edge
                    ;; NOTE -- when the first NP after a VG is reasonably an indirect object
                    ;; or the verb takes an :oc (object complement), then the resulting
                    ;; form is reset to a VG (not a VP) in assimilate-np-to-v-as-object
                    :form ,(second vv)
                    :referent (:function assimilate-np-to-v-as-object left-edge right-edge)))))

;;; NEED TO DEAL WITH INDIRECT-OBJECTS and OBJECT COMPLEMENTS
;;; "we gave John a book"
;;; "he made John a hero"
;;; "it made John heroic"

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
                  (vp+past vp+past)  ;; if there already was a direct object, then keep the marking
                  (vg+passive vp+passive)
                  (vp+passive vp+passive)
                  (infinitive to-comp)
                  (to-comp to-comp)
                  (adjective adjp)
                  (comparative-adjective adjp)
                  (superlative-adjective adjp)
                  (adjp adjp))
  do
  (eval
   `(def-syntax-rule (,(car vv) pp)
        :head :left-edge
        :form ,(second vv)
        :referent (:function adjoin-pp-to-vg left-edge right-edge)))

  (eval
   `(def-syntax-rule (,(car vv) pp-wh-pronoun)
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



;; add in S because it can happen that the "THATCOMP" and
;; "WHETHERCOMP" my not be produced until after the verb element gets
;; promoted to an S

;; e.g. "interestingly , we observed that in contrast to wild type
;; aspp 2 , aspp 2 ( s 827 a ) remains at the plasma membrane"

(loop for vv in '((s s)(vp vp)(vp+ing vp+ing)
                  (vp+ed vp+past) ;; thatcomp and howcomp rule out passive (??)
                  (vg vp)(vg+ing vp+ing)
                  (vg+ed vp+past) ;; thatcomp and howcomp rule out passive (??)
                  (vg+passive vp+passive)(vp+passive vp+passive)
                  (adjective adjg)
                  (infinitive to-comp))
      ;; verb complements 
      do
        (eval
         `(def-syntax-rule (,(car vv) thatcomp)
              :head :left-edge
              :form ,(second vv)
              :referent (:function assimilate-thatcomp left-edge right-edge)))
        (eval
         `(def-syntax-rule (,(car vv) howcomp)
              :head :left-edge
              :form ,(second vv)
              :referent (:function assimilate-howcomp left-edge right-edge)))
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
         `(def-syntax-rule (,(car vv) s) ;; "I am certain (that) there is."
              :head :left-edge
              :form ,(second vv)
              :referent (:function assimilate-thatcomp left-edge right-edge)))
        (eval
         `(def-syntax-rule (,(car vv) whethercomp)
              :head :left-edge
              :form ,(second vv)
              :referent (:function assimilate-whethercomp left-edge right-edge)))
        (eval
         `(def-syntax-rule (,(car vv) ifcomp)
              :head :left-edge
              :form ,(second vv)
              :referent (:function assimilate-whethercomp left-edge right-edge)))
        (eval
         `(def-syntax-rule (,(car vv) verbal-adjunct)
              :head :left-edge
              :form ,(second vv)
              :referent (:function assimilate-whethercomp left-edge right-edge))))




;;;--------------------------
;;;  WH and Relative clauses
;;;--------------------------

(loop for v in '(vp vp+passive vg+passive vg)
   do
     (eval
      `(def-form-rule (that ,v) 
           :head :right-edge
           :form subject-relative-clause
           :referent (:function compose-that-with-vp left-edge right-edge))))

(def-form-rule (that transitive-clause-without-object)
    :head :right-edge
    :form transitive-clause-without-object
    :referent (:function compose-that-with-vp left-edge right-edge))


;;--- wh cases
(loop for rel in '(which who whom why)
      ;;  (where, when) this is more often used as a subordinate conjunction
      do
        (eval
         `(def-form-rule (,rel transitive-clause-without-object)
              :head :right-edge
              :form transitive-clause-without-object
              :referent (:function compose-that-with-vp left-edge right-edge)))
        
        (loop for v in '(vp  vg vp+passive vg+passive vg+ed)
              do
                (eval
                 `(def-form-rule (,rel ,v) 
                      :head :right-edge
                      :form subject-relative-clause
                      :referent (:function compose-wh-with-vp left-edge right-edge)))))


(loop for rel in '(which who whom)
   do
     (eval
      `(def-form-rule (,rel subordinate-clause) 
	   :head :right-edge
	   :form subordinate-relative-clause
	   :referent (:function compose-wh-with-vp left-edge right-edge))))

(def-syntax-rule  (adverb subordinate-s)
        :head :right-edge
        :form subordinate-s
        :referent (:function interpret-adverb+verb left-edge right-edge))


;;--- Embedded questions

(loop for wh in '(where why when) 
      do  (eval
           `(def-form-rule (,wh s)
                :head :right-edge
                :form ,(ecase wh
                         (when 'when-relative-clause)
                         (where 'where-relative-clause)
                         (why 'why-relative-clause))
                :referent (:function create-when-where-relative left-edge right-edge))))
;; No longer rewriting as where-relative-clause or when-relative-clause

(def-form-rule (whether s)
    :form whethercomp
    :head :right-edge
    :referent (:function create-whethercomp left-edge right-edge))

(def-form-rule (why s)
    :form whethercomp
    :head :right-edge
    :referent (:function create-whethercomp left-edge right-edge))

;; For the moment, treat clauses like "if STAT3 regulates MEK" in "Tell me if STAT3..."
;;  creates bad parses for subordinated conjunction use of "if"
;;  as if they werre whethercomp clauses
(def-form-rule (if s)
    :form whethercomp
    :head :right-edge
    :referent (:function create-ifcomp left-edge right-edge))

(def-form-rule (how s)
    :form howcomp  ;; was np, but create-howcomp will change it to this
    :head :right-edge
    :referent (:function create-howcomp left-edge right-edge))



;;;------------------------------------------------------
;;; ADJG COMPLEMENTS to VGs and VPs (verb-like elements)
;;;------------------------------------------------------

(loop for vv in '((vg vp)
                  (vp vp)
                  (vg+ing vp+ing)
                  (vp+ing vp+ing)
                  (vg+ed vp+ed)
                  (vp+ed vp+ed)
                  (vp+past vp+past)   ;; if there already was a direct object, then keep the marking
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

(def-cfr subordinate-conjunction (subordinate-conjunction comma)
  :form subordinate-conjunction
  :referent (:daughter left-edge))


;;                  in rule             form of result
(loop for vv in '((subordinate-clause subordinate-clause)
                  (subordinate-s subordinate-s)
		  (s s)
                  (transitive-clause-without-object transitive-clause-without-object)
                  (vp vp)(vp+ing vp+ing)(vp+ed vp+ed)(vp+past vp+past)
                  (vg vp)(vg+ing vp+ing)
                  (vg+ed vp+ed)(vg+passive vp+passive)(vp+passive vp+passive)
		  (verb+present vg))
   do
     (loop for prep in '(before after) ;;/// 1/11/14 should work over sequencer
        do
          (eval
           `(def-form-rule (,prep ,(car vv))  ;; before/after aren't syntactic categories
            ;;(def-syntax-rule (,prep ,(car vv)) /// sequencer case
                :head :right-edge
                :form subordinate-clause
                :referent (:function make-subordinate-clause left-edge right-edge))))
     
     (eval `(def-syntax-rule (subordinate-conjunction ,(car vv))
                :head :right-edge
                :form subordinate-clause
                :referent (:function make-subordinate-clause left-edge right-edge))))

(def-syntax-rule (subordinate-conjunction np)
  :head :left-edge
  :form subordinate-np
  :referent (:function make-subordinate-np left-edge right-edge))

(def-syntax-rule (np subordinate-np)
  :head :left-edge
  :form np
  :referent (:function add-subordinate-np-as-adjunct left-edge right-edge))




;;;-------------------------------------------------------------------------
;;; clause-based complements "to", "for-to", "that" and "whether" and "how"
;;;-------------------------------------------------------------------------
              
(def-form-rule (that s)
    :form thatcomp
    :head :right-edge
    :referent (:function create-thatcomp left-edge right-edge)) ;; (:head right-edge))

(def-form-rule (for to-comp)
    :form to-comp
    :head :right-edge
    :referent (:function interpret-for-to-comp left-edge right-edge))

(def-form-rule (as vp+ed)
    :head :right-edge
    :form as-comp
    :referent 
    (:function interpret-adverb+verb left-edge right-edge))

(def-form-rule (as vp+past)
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

(loop for prep in *prep-forms* ;;'(preposition spatial-preposition spatio-temporal-preposition)
      do
        (eval 
         `(def-syntax-rule (,prep vg+ing) ;; J3 hydrolysis maybe elevate?
              :head :left-edge
              :form pp
              :referent (:function apply-preposition-to-complement left-edge right-edge)))
        (eval
         `(def-syntax-rule (,prep vp+ing) ;; aspp2 # 64 "in prompting senescence
              :head :left-edge
              :form pp
              :referent (:function apply-preposition-to-complement left-edge right-edge))))


;;/// written as expedient way to handle "even in" (overnight #6)
;; but that phrase actually means something and should be a real preposition
;; the PI3KC2β RBD-Ras complex is stable even in the presence 
(def-syntax-rule (adverb pp)
    :head :right-edge
    :form pp
    :referent (:function maybe-attach-adverb-to-pp left-edge right-edge))




;;; ----------------------
;;; PREPOSITIONAL PHRASES
;;; ----------------------

(loop for nb in `(np pronoun wh-pronoun reflexive/pronoun demonstrative ,@*n-bar-categories*)
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

(def-form-rule (of howcomp)
    ;; compensate for shift in form done by create-howcomp that stranded
    ;; dry-run 41 (aka aspp2 69). ///form there should be whcomp or something
    ;; like that since it's better fit to more prepositions. This instance
    ;; with "of" is really forced.
  :head :left-edge
  :form pp
  :referent (:function make-pp left-referent right-referent))

;;-------------------

;; DAVID -- need to learn how to bind the amount-of-time to the spatio-temporal-preposition
;;   e.g. 30 minutes after (treatment)
(def-form-rule (amount-of-time spatio-temporal-preposition)
    :head :right-edge
    :referent (:head right-edge
               :bind (amount-of-time left-edge))
    :form spatio-temporal-preposition)




;;;----- Pied-piped wh-clauses 


(def-syntax-rule (np pp-relative-clause)
    :head :left-edge
    :form np
    :referent (:function apply-pp-relative-clause left-edge right-edge))

(loop for v in '(vp vp+passive vg+passive vg s)
   do
     (eval
      `(def-syntax-rule (pp-wh-pronoun ,v) 
	   :head :right-edge
	   :form pp-relative-clause
	   :referent (:function make-pp-relative-clause left-edge right-edge))))

(def-syntax-rule (pp-wh-pronoun to-comp) ;; (the location) at which to put the block
    :head :right-edge
    :form pp-relative-clause
    :referent (:function make-pp-relative-clause left-edge right-edge))

(def-form-rule (comma pp-relative-clause)
    :head :right-edge
    :form pp-relative-clause
    :referent (:daughter right-edge))

;; "by who" or "in who" etc. is very non standard, so this
;; overgenerates
(loop for nb in `(who which whom)
  do
  (eval 
   `(def-form-rule (preposition ,nb) ;; "to whom"
        :head :left-edge
        :form pp-wh-pronoun
        :referent (:function make-relativized-pp left-referent right-referent)))
  (eval
   `(def-form-rule (spatial-preposition ,nb) ;; "behind which"
        :head :left-edge
        :form pp-wh-pronoun
        :referent (:function make-relativized-pp left-referent right-referent)))
  (eval
   `(def-form-rule (spatio-temporal-preposition ,nb)
        :head :left-edge
        :form pp-wh-pronoun
        :referent (:function make-relativized-pp left-referent right-referent))))


;;--- "after-which" as clause-connector

(loop for sequencer in '(after before during)
   do (eval
       `(def-cfr subordinator (,sequencer which)  ;; "after which"
          ;; /// subordinator is not a particularly information semantic label
          :form relative-subordinator
          :referent (:function make-relative-subordinator left-referent right-referent))))

(def-syntax-rule (relative-subordinator s)
  :head :right-edge
  :form subordinate-s
  :referent (:function compose-relative-subordinator left-referent right-referent))


;;;----------------------------
;;; rules for adjective groups 
;;;----------------------------

(def-syntax-rule (adverb adjective)
    :head :right-edge
    :form adjective
    :referent (:function interpret-adverb+adjective left-edge right-edge))

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

(def-syntax-rule (adjective s) ;; "confident it is transient"
    :head :left-edge
    :form adjp
    :referent (:function make-adj-comp left-edge right-edge))

(def-syntax-rule (adjective thatcomp) ;; Dec #24
  :head :left-edge
  :form adjp
  :referent (:function make-adj-comp left-edge right-edge))

(def-syntax-rule (adjective howcomp) ;; Dec #24
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



;;;------------------------------
;;; comparatives -- at any level
;;;------------------------------

#|
 "bigger" is a comparative -- unary rules for the comparatives proper
    but "slightly smaller" would also be spanned by comparative
 "bigger block" is an np that binds a comparative

 "more effective" is an adjp. We can call it a comparative-adjp
   if that will direct us to the right function
  
|#
(loop for nb in `(verb+ing ;; treat present-participles as noun-like
		  ,@*n-bar-categories*)
   do
     (eval 
      `(def-syntax-rule (comparative-adjective ,nb) ;; "bigger suv"
           :head :right-edge
           :form n-bar
           :referent (:function comparative-adj-noun-compound left-edge right-edge)))
     (eval 
      `(def-syntax-rule (superlative-adjective ,nb) ;; "biggest suv"
           :head :right-edge
           :form n-bar
           :referent (:function superlative-adj-noun-compound left-edge right-edge)))
     (eval 
      `(def-syntax-rule (comparative-adjp ,nb) ;; "more intelligent woman"
           :head :right-edge
           :form n-bar
           :referent (:function comparative-adj-noun-compound left-edge right-edge)))
     (eval 
      `(def-syntax-rule (superlative-adjp ,nb) ;; "most intelligent woman"
           :head :right-edge
           :form n-bar
           :referent (:function superlative-adj-noun-compound left-edge right-edge))))

;;--- comparatives + pp

(def-syntax-rule (comparative-adjective pp)
    :head :left-edge
    :form comparative-adjp
    :referent (:function adjoin-pp-to-vg left-edge right-edge))

(def-syntax-rule (comparative-adjp pp)
    :head :left-edge
    :form comparative-adjp
    :referent (:function adjoin-pp-to-vg left-edge right-edge))

(def-syntax-rule (superlative-adjective pp)
    :head :left-edge
    :form superlative-adjp
    :referent (:function adjoin-pp-to-vg left-edge right-edge))

(def-syntax-rule (superlative-adjp pp)
    :head :left-edge
    :form superlative-adjp
    :referent (:function adjoin-pp-to-vg left-edge right-edge))
 
;;--- comparatives + adjp

(def-syntax-rule (comparative adjective) ;; "more precise"
    :head :right-edge
    :form comparative-adjp
    :referent (:function interpret-comparative+adjective left-edge right-edge))

(def-syntax-rule (superlative adjective)
    :head :right-edge
    :form adjp ;;superlative-adjp ;; adjective ;;superlative
    :referent (:function interpret-superlative+adjective left-edge right-edge))


(def-syntax-rule (superlative adverb) ;;/// what's an example of this??
    ;; "most frequently"
    :head :right-edge
    :form adverb ;;superlative-adverb ;; adverb ;;superlative
    :referent (:function interpret-superlative+adjective left-edge right-edge))

(def-syntax-rule (comparative-adjective adverb) ; "more tightly"
    :head :right-edge
    :form adverb
    :referent (:function interpret-comparative+adjective left-edge right-edge))
;;/// these functions need method options since the implicatures
;; are based on the direction of the comparative
(def-syntax-rule (quantifier comparative) ;; "many more"
    :head :right-edge
    :form comparative
    :referent (:function quantify-comparative left-edge right-edge))


;;--- comparative + than-np

(def-syntax-rule (comparative-adjective than-np) ;; (p/s "bigger than that block")
    :head :left-edge
    :form comparative-adjp
    :referent (:function make-comparative-adjp-with-np left-edge right-edge))

(def-syntax-rule (comparative-adjp than-np)
    :head :left-edge
    :form comparative-adjp
    :referent (:function make-comparative-adjp-with-np left-edge right-edge))

(def-syntax-rule (np than-np)
    :head :left-edge
    :form np
    :referent (:function maybe-extend-comparative-with-than-np left-edge right-edge))


;;--- comparative + vg

(loop for vv in '((verb+ed vg+ed)
                  (verb+ing vg+ing)
                  (vg+ing vg+ing)
                  (vp+ing vp+ing)
                  (vg+ed vg+ed)
                  (vp+ed vp+ed))
      do
      ;; CHANGE!!
      ;; these produce verb forms not adjective forms
        (eval
         `(def-syntax-rule  (comparative ,(car vv))
              :head :right-edge
              :form ,(second vv)
              :referent (:head right-edge
                               :bind (comparative left-edge))))
        (eval
         `(def-syntax-rule  (superlative ,(car vv))
              :head :right-edge
              :form ,(second vv)
              :referent (:head right-edge
                               :bind (superlative left-edge)))))


;;--- than-np
(loop for nb in `(np ,@*n-bar-categories*)
   do
     (eval
      `(def-form-rule (than ,nb)
           :head :right-edge
           :referent (:head right-edge) ;;  :bind (np left-edge)
           :form than-np)))


;;;--------------------------------------------------------
;; new rules for numbered items -- needs review
;;;--------------------------------------------------------

;;---  partitives
(def-cfr np (number of)
  :form np
  :referent (:function create-partitive-np left-edge right-edge))

(def-cfr np (which of)
  :form np
  :referent (:function create-partitive-np left-edge right-edge))

(def-cfr np (ones-number of)
  :form np
  :referent (:function create-partitive-np left-edge right-edge))

;; And see above syntax rule (number ,nb) --> number-noun-compound


;;;-------------------------------------
;;; rules involving semantic categories
;;;-------------------------------------

#+ignore  
(def-syntax-rule (approximator number)
    :form number
    :head :right-edge
    :referent (:daughter right-edge
	       :bind (approximator left-edge)))

#+ignore
(loop for nb in `(,@*n-bar-categories*) ;; see core/adjuncts/sequence/object.lisp
   do (eval `(def-syntax-rule (sequencer ,nb)
                :form n-bar
                :head :right-edge
                :referent (:function determiner-noun left-edge right-edge))))

(loop for sequencer in '(after before during)
   do (eval
       `(def-form-rule (,sequencer np)
            :head :left-edge
            :form pp
            :referent (:function make-pp left-edge right-edge))))




;;--------------------------------------
;;;;;; strange types of passives

(def-form-rule (become verb+ed)
  :form vg+passive
  :referent (:head right-edge
             :function check-passive-and-add-tense/aspect left-edge right-edge))

(def-form-rule (become vg+ed)
  :form vg+passive
  :referent (:head right-edge
             :function check-passive-and-add-tense/aspect left-edge right-edge))

(def-form-rule (become vp+ed) ;; "were previously used"
  :form vg+passive
  :referent (:head right-edge
                   :function check-passive-and-add-tense/aspect left-edge right-edge))

