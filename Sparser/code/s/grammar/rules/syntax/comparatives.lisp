;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,2014-2017  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "comparatives"
;;;    Module:   "grammar;rules:syntax:"
;;;   Version:   January 2017

;; initiated 7/29/94. 10/24/94 added defdata
;; 7/20/14 Added a lemma for "comparative"

(in-package :sparser)

#| obviously these don't start NPs really -- rather then start
 adjective phrases which then start nps -- but that's subtler than
 we need since modals are being glossed as starting vg's etc.  |#

;;; compartives

#| The predicate that's based on comparative adjectives (or superlatives)
makes a statement about the value of some attribute of its open argument 
that compares it to those values on some reference set. When applied to
an individual to form a predication that 'subject' individual must
be able to take that attribute (e.g. it isa 'has-size'). The attribute,
e.g. size, is scalar. Comparative also convey the 'direction' of the
difference from the reference set. Trips says 'orientation'. 

(define-size "big" :er "bigger" :est "biggest")
(define-size 

abstract > region > attribute-value > size-value 
  > comparative-size-value > bigger
|#

(define-category  comparative
  :specializes attribute-value
  :instantiates nil
  :documentation "Functionally this is a mixin since
 it is the super class of every specific comparative 
 category. Comparatives are a particular kind of attribute
 value, so their principal link is to the attribute they
 correspond to, and their second is to the direction
 on the scalar dimension of the attribute that they
 pick out (Trips calls this 'orientation'). They naturally
 fall into contrastive pairs ('larger', 'smaller'), but
 that's a property of the attribute rather than the
 particular comparative. 
   Superlative are identical as far as all this is
 concerned."
  ;; inherits name, attribute variables from attribute-value
  :binds ((direction direction))
  :index (:permanent :key name)
  :realization (:word name))

(define-category superlative
  :specializes comparative)


(defun setup-comparatives (i direction-flag er est)
  "Called from the define function of an attribute (e.g. define-size)
   after the attribute-value ('i') has been defined (see define-attribute).
   This makes a category and rule for the comparative ('er') and
   superlative ('est') forms, getting its base word from the
   name binding on i.  The routines for constructing the words
   by rule is not particularly good at it, so for that reason
   and because some comparative lemmas are irregular, there is
   a provision to pass the strings for 'er' and 'est' in explicitly."
  (declare (special category::up category::down
                    category::comparative category::superlative
                    *comparative-brackets*))
  (unless direction-flag ;; reasonable default
    (setq direction-flag :+))
  
  (let* ((attribute (value-of 'attribute (itype-of i)))
        (direction (ecase direction-flag
                     (:+ (find-individual 'direction :name "up"))
                     (:- (find-individual 'direction :name "down"))))
        (base-word (value-of 'name i))
        (er-word
         (if er
           (resolve/make er)
           (make-comparative/superlative base-word
                                         :suffix "er" :y-suffix "ier")))
        (est-word
         (if est
           (resolve/make est)
           (make-comparative/superlative base-word
                                         :suffix "est" :y-suffix "iest"))))
    (assign-brackets-to-word er-word *comparative-brackets*)
    (assign-brackets-to-word est-word *comparative-brackets*)

    ;;/// convert to trace
    (format t "~&~s => ~s ~s~%"
            (pname base-word) (pname er-word) (pname est-word))

  #| This scheme says the denotation of a comparative word ("bigger")
 is a category. (The table in allowable-referential-edge? ensures this.)
 The reason is that the identity of a comparative depends on all three
 of its values at once. 
|#
    (let ((er-category
           (define-category/expr (name-to-use-for-category er-word)
               `(:specializes comparative
                 :instantiates self
                 :bindings (name ,er-word
                            attribute ,attribute
                            direction ,direction))))
          (est-category
           (define-category/expr (name-to-use-for-category est-word)
               `(:specializes comparative
                 :instantiates self
                 :bindings (name ,est-word
                            attribute ,attribute
                            direction ,direction)))))

      (let ((er-rule
             (define-cfr category::comparative `(,er-word)
               :form category::comparative
               :referent er-category))
            (est-rule
             (define-cfr category::superlative `(,est-word)
               :form category::superlative
               :referent est-category)))
        (add-rules (list er-rule est-rule) i)
        er-category ))))
           


;; "bigger than a breadbox"
(define-category comparative-attribution
  :specializes quality-value-predicate
  :documentation "This represents the 
   combination of the comparative (or superlative) term
   and the reference set it's being compared to."
  :binds ((reference-set))
  :index (:permanent :sequential-keys value reference-set)
  :restrict ((value (:primitive category)))) ;;comparative)))

(define-category comparative-predication
  :specializes has-attribute
  :documentation "A predication that is based on applying
  a comparative-attribution to something, as in 'b1 is
  bigger than b2', which applies the predicate 'bigger 
  than b2' to the individual 'b1'. TRIPS would probably
  use 'figure' where we're using (for the moment) item.")


;;--- old design that just produced an adjective

(defun define-comparative (string &key rule-label discriminator)
  (define-function-term string 'comparative
    :rule-label rule-label
    :discriminator discriminator
    :tree-families '(pre-adv-adverb pre-adj-adverb)))
                     

(defun define-superlative (string &key rule-label discriminator)
  (define-function-term string 'superlative
    :rule-label rule-label
    :discriminator discriminator
    :tree-families '(pre-adv-adverb pre-adj-adverb)))


(define-autodef-data  'comparative
  :display-string  "comparative adjectives"
  :form 'define-comparative
  :dossier "dossiers;comparatives"
  :module *comparatives*
  :description "a word, often ending in 'er', that fits in the context '___ than'"
  :examples "\"fewer\", \"more\", \"better\"" )

