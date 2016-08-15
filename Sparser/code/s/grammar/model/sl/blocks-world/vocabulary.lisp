;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015-2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "vocabulary"
;;;    Module:  grammar/model/sl/blocks-world/
;;;   version:  August 2016

;; Initiated 12/3/15.

(in-package :sparser)

;;--- nouns

(define-category component-part :specializes object ;; wanted it to be an object, but that caused CLOS problems
  :binds ((part-of object))
  :realization (:of part-of))

(define-category relative-position :specializes component-part)
(noun "end" :super relative-position)
(noun "middle" :super relative-position)
(noun "left" :super relative-position)
(noun "right" :super relative-position)


#+ignore
(define-category has-relative-position :specializes physical-object
  :binds ((position relative-position))
  :realization (:m position))

(define-mixin-category with-specified-location
  :binds ((location location)
          (supported-by object)
          (next-to object)
          (at-relative-location relative-position))
  :realization
  (:next\ to next-to
             :on supported-by
             :on\ top\ of supported-by
             :at at-relative-location ;; at the end
             :on at-relative-location)) ;; on the left

;;---  blocks
#| This has to meet/merge with Scott's treatment 
for the individuals. 
///  Artifact is too immediate since we want to incorporate
inherited slots for things like color, label, orientation,
location, membership in structures (staircase), local relations
with other blocks, mention in utterances, etc. |#
(define-category block
  :specializes object
  :mixins (has-name with-specified-location)
  :binds ((position relative-position))
  :instantiates :self
  :index (:permanent :key name)
  :realization ;; for connection to Mumble
  (:noun "block"
         :m position))

#|
(define-category drug
    :specializes
  :mixins (has-name) ;; e.g. Dabrafenib
  :index (:permanent :key name)
  :realization
  (:common-noun "drug"))
|#

#| An interesting deference between a block and a table is
that you can't use the table as part of any of the standard
BW constructions. Only blocks can be used. The affordance for
supporting other things is also markedly different since
a block can typically only support a single other block
(and any stack that starts with it) whereas a table can
support a substantial number of blocks.
|#
(define-category table
  :specializes object
  :mixins (has-name)
  :index (:permanent :list)
  :realization
     (:common-noun "table"))


(define-category composite-object :specializes object
  :mixins (artifact)
  :binds ((composed-of object))
  :realization (:of composed-of))

(noun "staircase" :specializes composite-object :rule-label artifact)
(def-synonym staircase (:noun "stair"))
(noun "stack" :specializes composite-object :rule-label artifact)
(noun "row" :specializes composite-object :rule-label artifact)




(define-category surface :specializes component-part
  :realization
  (:noun "surface"))

(define-category top-surface :specializes surface
                 :realization (:noun "top"))
(define-category bottom-surface :specializes surface
                 :realization (:noun "bottom"))
(define-category side-surface :specializes surface
                 :realization (:noun "side"))

(define-category step :specializes component-part
   :restrict ((part-of staircase))
   :realization (:noun "step"))


;;--- Interjections -- see ex. in model/sl/checkpoint/
(sentential-interjection "done")
(sentential-interjection "good")
(sentential-interjection "ok")
(sentential-interjection "yes")
(sentential-interjection "hello")
(sentential-interjection "goodbye")
(sentential-interjection "let's")

;;--- Verbs

;; (p "Add another block")

#+ignore
(define-category add-to
  :specializes achievement
  :mixins (with-an-agent)
  :instantiates self
  :binds ((theme object)
          (goal location))
  :realization ((:verb "add")
		(:mumble ("add" svo :o theme)) 
                (:tree-family vp+adjunct
                 :mapping ((vg . :self)
                           (vp . :self)
                           (adjunct . physical)
                           (slot . theme)))))


  
(define-category add-to
  :specializes achievement
  :mixins (with-an-agent with-specified-location)
  :binds ((theme object)
          (goal location))
  :realization
  (:verb "add"
         :etf (svo-passive)
         :o theme
         :s agent
         :to goal
         :loc-pp-complement (next\ to on on\ top\ of at)
         ;; requires a PP -- not quite true
         :mumble ("add" svo :o theme)))


;; Ignore "let's" for now (1.1), 


;; 1.1 (p "Let's build a staircase.") 
;;     (p "build a staircase.")
(define-category build
    :specializes process
    ;; we're going through the steps of constucting the
    ;; staircase. With "lets'" we haven't even started
    :mixins (with-an-agent)
    :binds ((artifact artifact)) ;; what they build
    :realization
    (:verb ("build" :past-tense "built")
           :etf (svo-passive)
           :s agent
           :o artifact
           :mumble ("build" svo :o artifact)
           #+ignore
           (:tree-family vp+adjunct
                         :mapping ((vg . :self)
                                   (vp . :self)
                                   (adjunct . physical)
                                   (slot . artifact)))))

(define-category push
    :specializes process
    :mixins (with-an-agent)
    :binds ((theme physical))
    :documentation "The meaning of a puah depends largly
    on what is pushed (= the type of the theme): block
    wall, door, etc. If the specific action to take
    is object (sort) specific then co-composition is
    involved in the interpretation of the literal 
    directive."
    :realization
    (:verb "push"
           :etf (svo-passive)
           :o theme
           :s agent
           :mumble ("push" svo :s agent :o theme)))


(define-category push-together
  :mixins (with-an-agent)
  :binds ((items collection))
  :realization
    ((:verb "push")
     (:mumble (transitive-with-final-adverbial "push" "together"))))


;; 1.2 "Put a block on the table"
(define-category put-something-somewhere
  :specializes process
  :mixins (with-an-agent with-specified-location) ;; adds 'agent' variable and location variables
  :binds ((theme physical)) ;; mixin has-location
  :realization
  (:verb "put"
         :etf (svo-passive)
         :s agent
         :o theme
         :loc-pp-complement (next\ to on on\ top\ of at) ;; requires a PP
         :mumble ("put" svo1o2 :o1 theme :o2 location)))


(define-category make
  :specializes process
  ;; we're going through the steps of constucting the
  ;; staircase. With "lets'" we haven't even started
  :mixins (with-an-agent)
  :binds ((object object)
          (adj-comp t)) ;; what they build
  :realization
    (:verb ("make" :past-tense "made")
     :etf (svo-passive)
     :s agent
     :o object
     :adjp-complement adj-comp
     :mumble ("make" svo :o object)))
          
;; maybe move up to mid-level..
#|
(define-category propose
    :specializes achievement
  :mixins (with-an-agent)
  :binds ((statement  ))
  :realization
  ((:verb "propose")
   (:mumble ("propose" svscomp :o statement))
   (:tree-family )))

(define-category show
    :specializes achievement
    :binds ((statement ))
    :realization
    ((:verb "show")
     (:mumble ("show" svscomp :s ? :o statement))))

(define-category suggest
    :specializes achievement
  :mixins
  :binds
  :realization
  ((:verb "suggest")
   (:mumble ("suggest" svscomp :s ? :o statement))))
|#


(defparameter *c3-syntactic-rules*
  (list 
   (def-syntax-rule (verb np)
                    :head :left-edge
     :form vp
     :referent (:function fill-compatible-slot left-edge right-edge)))
  "The specific set of rules to use because (hack hack) their
   interpretation is controlled without having to fold into the 
   regular set as should be done when the basics are shaken down.")





