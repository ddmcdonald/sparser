;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "association"
;;;   Module:  "model:sl:NIH:"
;;;  version:  July 1996

;; started 7/21/96

(in-package :sparser)

#| From article #3 'sch'.  In the text, the sentence is extended with a 'but'.

  "A mutant PDGF beta-receptor in which Tyr-579 was replaced with 
  phenylalanine showed 40% impaired association of Shc in vivo"     |#


(define-category  association-of-protein-with-receptor
  :specializes event
  :instantiates self
  :binds ((receptor . receptor)
          (protein . protein))
  :index (:temporary :sequential-keys protein receptor))

;; This too could use an nice etf (gl entry?) for process/product, but since
;; this notion cross-classifies the subcategorization frames, it's not immediately
;; clear how to organize it.  Besides, it should be educational to see all the
;; parts (rules) laid out one by one.



;;--- the verb (this is clipped from what the define-word menu routine did)

;; 7/22/96
(make-verb-rules/aux2  (define-word "associate")
       (find-or-make-category-object 'associate :referential)
       (category-named 'associate)
  :past-tense "associated"
  :past-participle "associated"
  :present-participle "associating"
  :third-singular "associates"
  :third-plural "associate"
  :nominalization "association" )


(def-cfr of-gene/protein ("of" gene/protein)
  :form pp
  :referent (:daughter right-edge))

;(p "of Shc")


;; Wait to make the assumption that we have this specific sense of 'associate'
;; until we see its context.

(def-cfr assoc/protein-with-receptor/n-bar (associate of-gene/protein)
  :form n-bar
  :referent (:instantiate-individual association-of-protein-with-receptor
             :head left-edge
             :bind (protein right-edge)))

;(p "association of Shc")


;;---- impairment

(define-category graded-impairment   ;; ? too ad hoc?
  :specializes nil
  :instantiates self
  :binds ((degree))
  :index (:temporary :key degree))

;; This should the tree-family that "40 years old" has, but I'm not immediately
;; sure how we use it to coerce (?) the past-participle (+ed version) of the
;; verb into the base of an adjp, so I'll do it by hand.
  

(make-verb-rules/aux2  (define-word "impair")
       (find-or-make-category-object 'impair :referential)
       (category-named 'impair)
  :past-tense "impaired"
  :past-participle "impaired"
  :present-participle "impairing"
  :third-singular "impairs"
  :third-plural "impair" )


(def-cfr impairment (percent impair)
  :form adjp
  :referent (:instantiate-individual graded-impairment
             :head right-edge
             :bind (degree left-edge)))

;(p "40% impaired")



;;------- impaired association

;; This is obviously over the top.  What it really calls for is treating
;; the Impair as a mix-in. The capability to do that is on my 'to do' list,
;; but it's not a simple matter, so it's not going to be soon.
;; Conceptually its like we were folding in a 'not'.

(define-category impaired-association-of-protein-with-receptor
  :specializes association-of-protein-with-receptor
  :instantiates association-of-protein-with-receptor  ;; <-- !
      ;; This puts these individuals in the same bucket in the
      ;; discourse history as the regular (unimpaired) assoc.,
      ;; which simplifies the effort of locating these once the
      ;; abstract is finished and we're going to export the
      ;; results. It's also the natural thing to do when the
      ;; impairment is conceptualized as a mix-in.

  :binds ((association . association-of-protein-with-receptor)
          (impairment))
  :index (:temporary :sequential-keys association impairment))


(def-cfr assoc/protein-with-receptor/n-bar (impairment
                                            assoc/protein-with-receptor/n-bar)
  :form np
  :referent (:instantiate-individual impaired-association-of-protein-with-receptor
             ;;:head right-edge
             :with (impairment left-edge
                    association right-edge)))

;(p "40% impaired association of Shc")
