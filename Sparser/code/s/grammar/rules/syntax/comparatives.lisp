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
  :binds (;;(word  :primitive word)
          ;; inherits name, attribute
          (direction :primitive category))
  :index (:permanent :key name)
  :lemma (:adjective "comparative")
  :realization (:word name))

(define-category superlative
  :specializes comparative)


;; "bigger than a breadbox"
(define-category comparative-attribution
  :specializes predicate
  :documentation "Analogous to quality-value-predicate
   in the attribution system. This represents the 
   combination of the comparative (or superlative) term
   and the reference set it's being compared to."
  )

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
                    category::comparative category::superlative))
  (let* ((attribute (value-of 'attribute (itype-of i)))
        (direction (ecase direction-flag
                     (null category::up)
                     (:+ category::up)
                     (:- category::down)))
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
    ;;/// convert to trace
    (format t "~&~s => ~s ~s~%"
            (pname base-word) (pname er-word) (pname est-word))

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
           


;;/// old version -- flush when all done
(defun define-comparatives-for-attribute (attribute
                                          er-string est-string
                                          direction-flag)
  "Given an attribute and the strings for its comparative and
   superlative, create the category objects for these two words
   and their unary rules. Thread all the necessary bindings that
   tie the new categories to the attribute."
  (declare (special category::up category::down))
  (flet ((decode-direction (flag)
           "Trips uses 'more' and 'less' but they are
            compatives themselves, so it'd be odd bootstrapping"
           (ecase flag
             (:more category::up)
             (:less category::down))))
    (let ((er-category
           (define-function-term er-string 'comparative
             :super-category 'comparative))
          (est-category
           (define-function-term est-string 'superlative
               :super-category 'comparative))
          (direction (decode-direction direction-flag)))
      (flet ((setup-attributes (c)
               (bind-variable 'attribute attribute c)
               (bind-variable 'direction direction c)))
        (setup-attributes er-category)
        (setup-attributes est-category)
        (values er-category
                est-category)))))



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


