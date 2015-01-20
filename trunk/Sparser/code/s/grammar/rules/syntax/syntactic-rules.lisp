;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "syntactic rules"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  January 2015

;; Initiated 9/7/14 to collect the rules into one place. 10/25 flushed
;; the temporary vp+prep rules. 10/26/14 put in one for vg+pp
;; 1/2/2015 added syntactic rule for sub-categorization rule vp --> (vp pp)
;; made the default referent for a prepositional phrase be the preposition -- otherwise the prepositional phrase can be interpreted as a direct object!
;; 1/8/2015 added (def-syntax-rule (preposition proper-name)for PP
;; 1/1/4/2015 support for thatcomp
;; 1/15/2015 add (adjective pp) rule for cases of bare adjective
;; i1/18/2015 nserted correct rules for direct objects and premodifying verb+ing

(in-package :sparser)



#| This is too potent to use in a leftward sweep
   because it catches things early
(def-syntax-rule (np vp)
                 :head :right-edge
  :form s
  ;;/// what sort of relationships are possible
  ;; between these. The VP could be a reduced
  ;; relative so would need to look at its form.
  :referent (:daughter right-edge))
|#

;;--- vg's

;; The treatment of modals was being revamped in May 2013
;; but composition rules weren't finished thinking there should be
;; a schema. Can't wait for that


;;--- predicate adjective

;; For 'be' there's the form rule psr235
(def-syntax-rule (vg adjective) ;;/// adjp
                 :head :left-edge
  :form vp
  ;; referent should try to geneate a predicate
  :referent (:head left-edge
             :function vg-plus-adjective left-edge right-edge))


;;--- PP complement
(def-syntax-rule (vg pp)
                 :head :left-edge
  :form vp
  :referent (:function adjoin-pp-to-vg left-edge right-edge))

(def-syntax-rule (vp pp)
                 :head :left-edge
  :form vp
  :referent (:function adjoin-pp-to-vg left-edge right-edge))


#| normally copular adjectives become VPs, but in 
(5 (P "Therefore, mUbRas is insensitive to GAP–mediated regulation, similar
to an oncogenic RasG12V mutation (9).")) 

"similar" is just an adjective
|#

(def-syntax-rule (adjective pp)
                 :head :left-edge
  :form vp
  :referent (:function adjoin-pp-to-vg left-edge right-edge))



#|
(def-syntax-rule (proper-noun proper-noun) ;; "ford suv"
                 :head :right-edge ; 
  :form n-bar ;; requires a determiner 
  :referent (:function noun-noun-compound
                       left-edge right-edge))


(def-syntax-rule (common-noun common-noun)
                 :head :right-edge
  :form n-bar
  :referent (:function noun-noun-compound
                       left-edge right-edge))

(def-syntax-rule (common-noun common-noun/plural)
                 :head :right-edge
  :form n-bar
  :referent (:function noun-noun-compound
                       left-edge right-edge))


(def-syntax-rule (proper-noun common-noun)
                 :head :right-edge
  :form n-bar
  :referent (:function noun-noun-compound
                       left-edge right-edge))

(def-syntax-rule (proper-noun common-noun/plural)
                 :head :right-edge
  :form n-bar
  :referent (:function noun-noun-compound
                       left-edge right-edge))

(def-syntax-rule (n-bar n-bar)  ;; "GAP–mediated GTP hydrolysis"
                 :head :right-edge
  ;;////// Changes to the leading n-bar because of change to
  ;; form of stuff like "GAP-mediated" goes here. ddd/rjb
  :form n-bar
  :referent (:function noun-noun-compound
                       left-edge right-edge))

;; GAP–mediated hydrolysis.

(def-syntax-rule (n-bar common-noun)  ;; "GAP–mediated GTP hydrolysis"
                 :head :right-edge
  ;;////// Changes to the leading n-bar because of change to
  ;; form of stuff like "GAP-mediated" goes here. ddd/rjb
  :form n-bar
  :referent (:function noun-noun-compound
                       left-edge right-edge))
|#

(loop for nb in *n-bar-categories*
  do
  (eval 
   `(def-syntax-rule (adjective ,nb) ;; "black suv"
                     :head :right-edge
      :form n-bar ;;/// cutting corners
      :referent (:function adj-noun-compound
                           left-edge right-edge)))
  (eval
   `(def-syntax-rule (verb+ed ,nb) ;; "black suv"
                     :head :right-edge
      :form n-bar ;;/// cutting corners
      :referent (:function verb-noun-compound
                           left-edge right-edge)))
  (eval
   `(def-syntax-rule (verb+ing ,nb) ;; "black suv"
                     :head :right-edge
      :form n-bar ;;/// cutting corners
      :referent (:function verb+ing-noun-compound
                           left-edge right-edge)))
  (loop for nbmod in *n-bar-categories*
    do   
    (eval
     `(def-syntax-rule (,nbmod ,nb) ;; "black suv"
                       :head :right-edge
        :form n-bar ;;/// cutting corners
        :referent (:function noun-noun-compound
                             left-edge right-edge)))))


;;--- NP + PP

(def-syntax-rule (np pp)
                 :head :left-edge
  :form np
  :referent (:function interpret-pp-adjunct-to-np left-edge right-edge))



;;--- adverbs

(def-syntax-rule  (adverb infinitive) ;;??? what's the test example?
  :head :right-edge
  :form infinitive
  :referent (:function interpret-adverb+verb left-edge right-edge))

(def-syntax-rule  (vg adverb)
  :head :left-edge
  :form vg
  :referent (:function interpret-adverb+verb right-edge left-edge))

(def-syntax-rule  (adverb vg)
  :head :right-edge
  :form infinitive
  :referent(:function interpret-adverb+verb left-edge right-edge))

#|
WORK NEEDS TO BE DONE HERE TO DEAL WITH SENTIENTIAL LEVEL ADVERBS SUCH AS RHETORICAL ADVERBS
(def-syntax-rule  (adverb vp)
  :head :right-edge
  :form vp
  :referent(:function interpret-adverb+verb left-edge right-edge))

(def-syntax-rule  (adverb s)
  :head :right-edge
  :form s
  :referent(:function interpret-adverb+verb left-edge right-edge))
|#


;;--- prepositional phrases
(define-category prepositional-phrase :specializes abstract
  :binds ((prep)(pobj)))

;;/// makes for a counter-intutive edge since the preposition
;; is its label
(def-syntax-rule (preposition np)
                 :head :left-edge
  :form pp
  :referent (:function make-pp left-referent right-referent))

(def-syntax-rule (preposition proper-noun)
                 :head :left-edge
  :form pp
  :referent (:function make-pp left-referent right-referent))

(def-syntax-rule (preposition proper-name)
                 :head :left-edge
  :form pp
  :referent (:function make-pp left-referent right-referent))


(def-syntax-rule (spatial-preposition np) ;;//// get rid of spatial-preposition!
                 :head :left-edge
  :form pp
  ;; I suppose we need a generic relationship here for
  ;; a proper referent
  :referent (:head right-edge))

;;/// This should be stated over vp+ing or vg+ing
;; (which need to be created and managed), then we
;; could have a form rule that announced that it was
;; a manner adjunct
(def-syntax-rule (preposition vp)
                 :head :left-edge
  :form pp
  ;; again, neeed a moere interesting referent.
  :referent (:function apply-preposition-to-complement left-edge right-edge))

(def-syntax-rule (preposition vg) ;; J3 hydrolysis maybe elevate?
                 :head :left-edge
  :form pp
  :referent (:function apply-preposition-to-complement left-edge right-edge))

(def-syntax-rule (preposition s) ;;//// "GTP loading" or subj+verb
                 :head :left-edge
  :form pp
  :referent (:function apply-preposition-to-complement left-edge right-edge))


;;--- Relative clauses

(def-syntax-rule (wh-pronoun s) ;; also vp ?
                 :head :right-edge
  :form relative-clause
  :referent (:function compose-wh-with-vp left-edge right-edge))

(def-syntax-rule (wh-pronoun vp)
                 :head :right-edge
  :form relative-clause
  :referent (:function compose-wh-with-vp left-edge right-edge))

#+ignore
(def-syntax-rule (np relative-clause)
                 :head :left-edge
  :form np
  :referent (:function assimilate-appositive left-edge right-edge))

(def-syntax-rule (np relative-clause)
                 :head :left-edge
  :form np
  :referent (:function apply-subject-relative-clause left-edge right-edge))



;;--- direct object
(loop for nb in (cons category::np *n-bar-categories*)
  do
  (eval 
   `(def-syntax-rule (vg ,nb)
                     :head :left-edge
      :form vp
      :referent (:function assimilate-object left-edge right-edge))))


;; subject 
;;--- subject + verb

(def-syntax-rule (np vg)
                 :head :right-edge
  :form subj+verb
  :referent (:function assimilate-subject left-edge right-edge))

(def-syntax-rule (np vp)
  :head :right-edge
  :form s
  :referent (:function assimilate-subject left-edge right-edge))

(def-syntax-rule (proper-noun vp)
  :head :right-edge
  :form s
  :referent (:function assimilate-subject left-edge right-edge))

(def-form-rule (that s)
  :form thatcomp
  :referent (:head right-edge))