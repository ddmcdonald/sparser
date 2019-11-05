;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,2014-2019  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "comparatives"
;;;    Module:   "grammar;rules:syntax:"
;;;   Version:   November 2019

;; initiated 7/29/94. 10/24/94 added defdata
;; 7/20/14 Added a lemma for "comparative"

(in-package :sparser)

#| The predicate that's based on comparative adjectives (or superlatives)
makes a statement about the value of some attribute of its open argument 
that compares it to those values on some reference set. When applied to
an individual to form a predication that 'subject' individual must
be able to take that attribute (e.g. it isa 'has-size'). The attribute,
e.g. size, is scalar. Comparative also convey the 'direction' of the
difference from the reference set. Trips says 'orientation'. 

abstract > abstract-region > 
   attribute-value > size-value > big > bigger
|#

;;;----------------------------------
;;; comparative adjective contructor
;;;----------------------------------

(defun setup-comparatives (base-adj base-pname direction-flag er est)
  "Called from the define function of an attribute (e.g. define-size)
   after the category for the  attribute-value ('base-adj') has been
   created. Make categories for the comparative ('er') and superlative ('est')
   forms. The morphology routines for constructing these words
   by rule is not particularly good at it, so for that reason
   and because some comparative paradigms are irregular, there is
   a provision to pass the strings for 'er' and 'est' in explicitly.
   Note that since we're using define-function-term to do all the heavy lifting
   that we get an individual along with the category, and that individual
   is the referent of the constructed rule."
  (declare (special category::up category::down
                    category::comparative category::superlative
                    *comparative-brackets*))
  (unless direction-flag ;; reasonable default
    (setq direction-flag :+))
  (let* ((direction (ecase direction-flag (:+ :more) (:- :less)))
         (base-word (word-named base-pname))
         (er-word
          (if er
            (resolve/make er)
            (make-comparative/superlative
             base-word :suffix "er" :y-suffix "ier")))
         (est-word
          (if est
            (resolve/make est)
            (make-comparative/superlative
             base-word :suffix "est" :y-suffix "iest"))))

    (multiple-value-bind (er-category er-indiv er-rule)
        (define-function-term est-word 'comparative-adjective
          :super-category (cat-name base-adj)
          :mixins '(comparative)
          :rule-label 'comparative)

      (multiple-value-bind (est-category est-indiv est-rule)
          (define-function-term est-word 'superlative-adjective
            :super-category (cat-name base-adj)
            :mixins '(superlative)
            :rule-label 'superlative)
        
        (values er-category er-indiv er-rule
                est-category est-indiv est-rule)))))


;;;-----------------
;;; base categories
;;;-----------------

(define-mixin-category comparative
  ;; inherits name, attribute variables from attribute-value
  :specializes attribute-value
  :binds ((direction) ;; more/less
          ))

#+ignore
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
 particular comparative." 
  ;; inherits name, attribute variables from attribute-value
  :binds ((more :primitive category) ;; a custom direction-of-comparison
          (less :primitive category))
  :index (:permanent :key name)
  :realization (:word name))

(define-mixin-category superlative
    :specializes comparative)

#+ignore
(define-category superlative
  :specializes comparative
  :documentation "Not different from comparative in any
    germane respect")

(define-category direction-of-comparison
  :specializes comparative
  :documentation "Nothing neeeds to be done here
    other than provide a distinguishing name
    that we can attach inferences to.")
(define-category more-than ;; => 'more' once they're done right
  :specializes direction-of-comparison)
(define-category less-than ;; => 'less'
    :specializes direction-of-comparison)


;;;-----------------------------
;;; relations over comparatives
;;;-----------------------------

#| Functionally a comparative (or superlative) is an adjective
that modifies some nominal head, as in "a bigger block".
  -- That composition is done by comparative-adj-noun-compound,
  which uses variable-for-attribute to see what variable to
  bind (e.g. 'size'). The value that's bound is a new instance
  (individual) of comparative-attribution. This is where the
  reference-set is introduced.

The 'than clause' that explicitly identifies the reference set
is assimilated in one of two ways.
  (a) In constructions like "bigger than a breadbox" we have both
elements of the attribution available at once. The syntax function
that assembles it is make-comparative-adjp-with-np and the
result is a {comparative, superlative}-adjp.
  (b) In a construction like "a bigger block than that one"
we are appling the predicate [bigger than that block] to the
head to form a comparative-predication. The syntax function
is maybe-extend-comparative-with-than-np, which has to do
a bit of digging to find the comparative-attribution since
the np for "a bigger block" is interpreted before the than phrase
is seen. 

|#
;; "bigger than a breadbox"
(define-category comparative-attribution
  :specializes quality-value-predicate
  :documentation "This represents the 
   combination of the comparative (or superlative) term
   and the reference set it's being compared to."
  :binds ((reference-set))
  :restrict ((value comparative))
  :index (:permanent :sequential-keys value reference-set))

(define-category comparative-predication
  :specializes has-attribute
  :documentation "A predication that is based on applying
  a comparative-attribution to something, as in 'b1 is
  bigger than b2', which applies the predicate 'bigger 
  than b2' to the individual 'b1'. TRIPS would probably
  use 'figure' where we're using (for the moment) item.")


(define-category qualified-attribute ;; "more precise"
  :specializes quality-value-predicate
  :mixins (comparative)
  :binds ((attribute)
          (comparative comparative))
  :documentation "Provides an envelop for compound comparatives
  formed with 'more', 'less', or any other comparative quantifier.
  Provides the hook that's needed to link 'than' complements to
  the quantifier (value of the 'comparative' variable). These are
  formed directly by application of the rule that composes a
  comparative with an an adjective.")


;;;-------------------------------
;;; derived-category constructors
;;;-------------------------------

(defun specialize-comparative (attribute)
  "Make a new category that specializes comparative
   by binding the attribute. The result will be stored
   by binding the 'comparative' variable on the 
   attribute category."
  (let ((*legal-to-add-bindings-to-categories* t))
    (declare (special *legal-to-add-bindings-to-categories*))
  (let* ((c-name (s-intern (cat-name attribute) '#:-comparative))
         (s-name (s-intern (cat-name attribute) '#:-superlative))
         (c-category 
          (define-category/expr c-name
               `(:specializes comparative
                 :instantiates self
                 :bindings (attribute ,attribute)
                 :rule-label comparative
                 :index (:permanent :key name)
                 :realization (:word name))))
         (s-category 
          (define-category/expr s-name
               `(:specializes superlative
                 :instantiates self
                 :bindings (attribute ,attribute)
                 :rule-label superlative
                 :index (:permanent :key name)
                 :realization (:word name)))))
    (bind-variable 'comparative c-category attribute)
    (bind-variable 'superlative s-category attribute)
    (specialize-directions c-category attribute)
    (specialize-directions s-category attribute)
    c-category)))

(defun specialize-directions (comparative attribute)
  "Define a pair of categories, one representing more
   the other representing less. Both have to be 'terminal'
   categories, in the sense that we can instantiate
   properly indexed individuals from them."
  (let* ((base-name (cat-name comparative))
         (more-name (s-intern base-name '#:-more))
         (less-name (s-intern base-name '#:-less)))
    (let ((m-category
           (define-category/expr more-name
               `(:specializes more-than
                 :instantiates comparative
                 :bindings (attribute ,attribute)
                 :rule-label comparative
                 :index (:permanent :key name)
                 :realization (:word name))))
          (l-category
           (define-category/expr less-name
               `(:specializes less-than
                 :instantiates comparative
                 :bindings (attribute ,attribute)
                 :rule-label superlative
                 :index (:permanent :key name)
                 :realization (:word name)))))
      (bind-variable 'more m-category comparative)
      (bind-variable 'less l-category comparative)
      comparative)))




#| These two function compensate for not having comparative
or superlative realization options. The categories we instantiate
here use :word as their realization spec to ensure that nobody
mucks with the word under the covers. But the form specification
is also the basis of the form label on the rule that realization
creates, so these functions shift it over.
   They're also recruited by the morphology code itself to get
a reasonable referent for the cases that don't go through this
route. That threading requires them to return a rule. 
   Worse still, be have some duplicate definitions going on
(e.g. "cycle" in core/collections and in biology/taxonomy)
so to return a rule in those cases we have to look for
comparative rather than content-word.  |#
(defun switch-form-to-comparative (word)
  ;; simpler while designing these than extending the head keywords
  (let ((rule (find-form-cfr word category::content-word)))
    (when rule
      (setf (cfr-form rule) category::comparative-adjective))
    (or rule
        (find-form-cfr word category::comparative-adjective))))

(defun switch-form-to-superlative (word)
  (let ((rule (find-form-cfr word category::content-word)))
    (when rule
      (setf (cfr-form rule) category::superlative-adjective))
    (or rule
        (find-form-cfr word category::superlative-adjective))))

(defun modify-comparatives-rule-labels (base-word er-word est-word)
  (let* ((base-rule (find-form-cfr base-word category::adjective))
         (base-label (cfr-category base-rule))
         (er-rule (find-form-cfr er-word category::comparative-adjective))
         (est-rule (find-form-cfr est-word category::superlative-adjective)))
    (setf (cfr-category er-rule) base-label)
    (setf (cfr-category est-rule) base-label)))
       

;;;----------------------------------------------
;;; for anonymous comparatives, e.g. from Comlex
;;;----------------------------------------------
;;--- Minimal treatment for when we don't know the attribute
;;    and have no principled way to determine what variable to bind

(define-category comparative-modification
  :specializes scalar-attribute
  :bindings (var (find-variable-for-category 'modifier 'top))
  :documentation "Modeled on comparative-quantification")

(define-category comparative-modifier
  :specializes attribute-value
  :mixins (modifier)
  :index (:permanent :key name)
  :realization (:word name)) ;; form category is content-word

(define-category superlative-modifier
  :specializes attribute-value
  :index (:permanent :key name)
  :realization (:word name))


(defun define-comparative (word)
  "Called from setup-comparative"
  (define-or-find-individual 'comparative-modifier :name word)
  (switch-form-to-comparative word))

(defun define-superlative (word)
  "Called from setup-superlative"
  (define-or-find-individual 'superlative-modifier :name word)
  (switch-form-to-superlative word))



;;-------------------------------------------------------------------
;;--- old / alterantives keeping them around to mine/reinvigorate
#|
(define-category  comparative
  :instantiates nil
  :specializes nil
  :binds ((word  :primitive word))   ;; just a stand-in
  :index (:permanent :key word)
  :lemma (:adjective "comparative")
  :realization (:word word))

(defun define-comparative (string &key rule-label discriminator)
  (define-function-term string 'comparative
    :rule-label rule-label
    :discriminator discriminator
    :tree-families '(pre-adv-adverb pre-adj-adverb)))  |#

(define-autodef-data  'comparative
  :display-string  "comparative adjectives"
  :form 'define-comparative
  :dossier "dossiers;comparatives"
  :module *comparatives*
  :description "a word, often ending in 'er', that fits in the context '___ than'"
  :examples "\"fewer\", \"more\", \"better\"" )

  #| This scheme says the denotation of a comparative word ("bigger")
 is a category. (The table in allowable-referential-edge? ensures this.)
 The reason is that the identity of a comparative depends on all three
 of its values at once. 

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

    (direction (ecase direction-flag
                     (:+ (find-individual 'direction :name "up"))
                     (:- (find-individual 'direction :name "down")))) |#
