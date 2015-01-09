;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "syntactic rules"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  October 2014

;; Initiated 9/7/14 to collect the rules into one place. 10/25 flushed
;; the temporary vp+prep rules. 10/26/14 put in one for vg+pp
;; 1/2/2015 added syntactic rule for sub-categorization rule vp --> (vp pp)
;; made the default referent for a prepositional phrase be the preposition -- otherwise the prepositional phrase can be interpreted as a direct object!
;; 1/8/2015 added (def-syntax-rule (preposition proper-name)for PP

(in-package :sparser)

;;--- subject + verb

(def-syntax-rule (np vg)
                 :head :right-edge
  :form subj+verb
  :referent (:head right-edge))

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
(def-syntax-rule (modal verb)
                 :head :right-edge
  :form vg
  :referent (:head right-edge)) ;;//// plus subtype

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

;;--- direct object

(def-syntax-rule (vg np)
                 :head :left-edge
  :form vp
  :referent (:head left-edge
             :bind (participant right-edge)))


;;--- NPs

(def-syntax-rule (proper-noun proper-noun) ;; "ford suv"
                 :head :right-edge ; 
  :form n-bar ;; requires a determiner 
  :referent (:head right-edge)) ;; modifer ??  classifier ??
  

(def-syntax-rule (adjective n-bar) ;; "black suv"
                 :head :right-edge
  :form np ;;/// cutting corners
  :referent (:head right-edge))

(def-syntax-rule (common-noun common-noun)
                 :head :right-edge
  :form n-bar
  :referent (:function noun-noun-compound
                       left-edge right-edge))


(def-syntax-rule (np pp)
                 :head :left-edge
  :form np
  :referent (:function interpret-pp-adjunct-to-np left-edge right-edge))



;;--- adverbs

(def-syntax-rule  (adverb infinitive)
  :head :right-edge
  :form infinitive
  :referent (:daughter right-edge))

(def-syntax-rule  (vg adverb)
  :head :left-edge
  :form vg
  :referent (:daughter left-edge))

(def-syntax-rule  (adverb vg)
  :head :right-edge
  :form infinitive
  :referent (:daughter right-edge))

#+ignore
(def-syntax-rule (adverb comma)
   :head :left-edge
  :form vg
  :referent (:daughter left-edge))


;;--- prepositional phrases

;;/// makes for a counter-intutive edge since the preposition
;; is its label
(def-syntax-rule (preposition np)
                 :head :left-edge
  :form pp
  ;; I suppose we need a generic relationship here for
  ;; a proper referent
  ;; THIS SHOULD NOT BE THE REFERENT OF THE NP --
  ;; it makes a PP acceptable as a direct object
  :referent (:head left-edge)) ;; (:head right-edge))

(def-syntax-rule (preposition proper-noun)
                 :head :left-edge
  :form pp
  ;; I suppose we need a generic relationship here for
  ;; a proper referent
  ;; THIS SHOULD NOT BE THE REFERENT OF THE NP --
  ;; it makes a PP acceptable as a direct object
  :referent (:head left-edge)) ;; (:head right-edge))

(def-syntax-rule (preposition proper-name)
                 :head :left-edge
  :form pp
  ;; I suppose we need a generic relationship here for
  ;; a proper referent
  ;; THIS SHOULD NOT BE THE REFERENT OF THE NP --
  ;; it makes a PP acceptable as a direct object
  :referent (:head left-edge)) ;; (:head right-edge))




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

(def-syntax-rule (np relative-clause)
                 :head :left-edge
  :form np
  :referent (:function assimilate-appositive left-edge right-edge))


