;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015-2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "vocabulary"
;;;    Module:  grammar/model/sl/blocks-world/
;;;   version:  January 2016

;; Initiated 12/3/15.

(in-package :sparser)

;;--- nouns

(noun "staircase" :specializes artifact :rule-label artifact)
(noun "table" :specializes artifact :rule-label artifact)

;;--- Interjections -- see ex. in model/sl/checkpoint/
(sentential-interjection "good")
(sentential-interjection "ok")

;;--- Verbs

;; (p "Add another block")

(define-category add-to
  :specializes achievement
  :instantiates self
  :binds ((agent physical-agent)
          (theme object)
          (location location))
  :realization ((:main-verb "add")
                (:tree-family vp+adjunct
                 :mapping ((vg . :self)
                           (vp . :self)
                           (adjunct . physical)
                           (slot . theme)))))

;; Ignore "let's" for now (1.1), 

;; 1.4  (p "that's good.") -- "that" construed as a relative marker


;; 1.1 (p "Let's build a staircase.") 
;;     (p "build a staircase.")
(define-category build
  :specializes process
  ;; we're going through the steps of constucting the
  ;; staircase. With "lets'" we haven't even started
  :mixins (with-an-agent)
  :binds ((artifact artifact)) ;; what they build
  :realization
    ((:main-verb ("build" :past-tense "built"))
     (:mumble ("build" svo :o artifact))
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
    ((:main-verb "push")
     (:mumble ("push" svo :s agent :o theme))))




(define-category push-together
  :mixins (with-an-agent)
  :binds ((items collection))
  :realization
    ((:main-verb "push")
     (:mumble (transitive-with-final-adverbial "push" "together"))))


;; 1.2 "Put a block on the table"
(define-category put-something-somewhere
  :specializes process
  :mixins (with-an-agent) ;; adds 'agent' variable
  :binds ((theme physical)
          (location location)) ;; mixin has-location
  :realization
    ((:main-verb "put")
     (:mumble ("put" svo1o2 :o1 theme :o2 location))))
          

(defparameter *c3-syntactic-rules*
  (list 
   (def-syntax-rule (verb np)
                    :head :left-edge
     :form vp
     :referent (:function fill-compatible-slot left-edge right-edge)))
  "The specific set of rules to use because (hack hack) their
   interpretation is controlled without having to fold into the 
   regular set as should be done when the basics are shaken down.")
    




