;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1999,2011-2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "prepositions"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   2.4 May 2014

;; broken out from "fn words - cases" 12/17/92 v2.3
;; 1/11/94 added "through"  7/14 added "up" & "down"  8/19 added "off"
;; 9/1 added "ahead"
;; 0.1 (11/16) restated the definitions in terms of Define-preposition, which
;;      gives their literal edges form categories
;;     (1/6/95) added some locatives  1/9 put in default for brackets
;; 1.0 (1/30) changed all the brackets to be 'treetop', and moved them into
;;      the defaults of the def-form
;; 2.0 (10/14/99) Added the spatial-orientation category for the spatial
;;      prepositions, and broke out the prepositions accordingly.
;;     (11/18) finished debugging it. 
;; 2.1 (11/25) moved all this to [places;object] and [dossiers;spatial prepositions]
;;      because the category depends on location that comes later in the load.
;;      Only the prepositions that don't have a spatial interpretation are left 
;;      here. (for the moment at least) Temporal orienting prepositions are here too
;; 2.2 (1/10/07) List was woefully incomplete compared with [prepositions1]. Took
;;      cases there that were given just as function words and declared them
;;      prepositions. Lets see what happens.
;; 2.3 (4/27/09) Changed the brackets to be specialized for prepositions rather
;;      than the generic 'treetop' brackets. Motivated by verb+preposition facilities.
;;      Copied in missing cases from dossiers/spatial-prepositions
;;     4/17/10 Added "between"
;; 2.4 (9/29/11) Positioned the load to after adjuncts and reworked as a class
;;      creator with special form categories to drive general rules. 10/4 original
;;      base rule was circular so made it have the prep category as its label.
;;     (2/20/12) Added schema to the constructed cfr.  11/25/12 "near", "far"
;;     (1/18/13) Corrected order-of-args in push-onto-plist. 1/30/13 "away".
;;     (5/24/13) "against" (4/30/14) "onto"
;;     (5/29/14) many added from Comlex; added code for synonyms
;;       Noticed some duplications in modifiers. Commented them out with a note.

(in-package :sparser)


;; do we care to distinguish which can be complements of NP, for example, vs which can't? e.g. 'a book about science' *'a book besides science'

(defun define-preposition (string &key brackets form super-category synonyms)
  (unless brackets  ;; v.s. ].treetop  treetop.[ 
    ;; Keep set in assign-brackets-to-preposition in sync
    (setq brackets (list  ].preposition preposition]. preposition.[ )))
  (unless form
    (setq form 'preposition))
  (unless super-category
    (setq super-category 'prepositional-operator))
  (let* ((word (define-function-word string
                 :brackets brackets
                 :form form))
         (category-name (name-to-use-for-category string)))
    (let* ((expr `(define-category ,category-name
                    :specializes ,super-category
                    :instantiates :self
                    :bindings (name ,word)))
           (category (eval expr))
           (word-rule
            (define-cfr category `(,word)
              :form (resolve-form-category form)
              :schema (get-schematic-word-rule :preposition)
              :referent category)))
      (when synonyms
        (dolist (syn-string synonyms)
          (let ((synonym (resolve-string-to-word/make syn-string)))
            (define-cfr category `(,synonym)
              :form (resolve-form-category form)
              :schema (get-schematic-word-rule :preposition)
              :referent category))))
      (push-onto-plist category word-rule :rule)
      (values category
              word-rule
              word ))))

;; "to" and "of" may warrant special treatment

(define-preposition "abaft" :form 'spatial-preposition)
(define-preposition "abeam" :form 'spatial-preposition)
(define-preposition "aboard" :form 'spatial-preposition)
;; See modifiers.lisp (define-preposition "about")
(define-preposition "above" :form 'spatial-preposition)
(define-preposition "abreast of") ;; reference?
(define-preposition "according to") ;; reference?
(define-preposition "across") ;; spatial?
(define-preposition "across from" :form 'spatial-preposition)
(define-preposition "afore" :form 'spatio-temporal-preposition)
(define-preposition "after" :form 'spatio-temporal-preposition)
(define-preposition "against" :form 'spatial-preposition) ;;what about non-spatial sense
;; Seems like an adverb (define-preposition "ahead" :form 'spatial-preposition)
(define-preposition "ahead of" :form 'spatial-preposition)
(define-preposition "along" :form 'spatial-preposition)
(define-preposition "along with") ;;??
(define-preposition "amid" :synonyms '("amidst")) ;;spatiotemporal?
(define-preposition "among" :synonyms '("amongst")) 
(define-preposition "apart from")
;; (define-preposition "around") moved to modifiers as an approximator
(define-preposition "as")
(define-preposition "as a result of")
(define-preposition "as far as")
(define-preposition "as for")
(define-preposition "as from")
(define-preposition "as of")
(define-preposition "as per")
(define-preposition "as to")
(define-preposition "aside from")
(define-preposition "at" :form 'spatial-preposition) ;;what about "at 5PM"
(define-preposition "at the expense of") 
(define-preposition "at the hands of")
(define-preposition "at variance with")
(define-preposition "atop" :form 'spatial-preposition)
(define-preposition "away")
(define-preposition "away from")
(define-preposition "bar")
(define-preposition "barring")
(define-preposition "before" :form 'spatio-temporal-preposition)
(define-preposition "behind" :form 'spatial-preposition)
(define-preposition "below" :form 'spatial-preposition)
(define-preposition "beneath" :form 'spatial-preposition)
(define-preposition "beside" :form 'spatial-preposition)
(define-preposition "besides")
(define-preposition "between" :form 'spatial-preposition)
(define-preposition "beyond" :form 'spatial-preposition)
(define-preposition "by" )
(define-preposition "by means of")
(define-preposition "by virtue of")
(define-preposition "by way of")
(define-preposition "close to" :form 'spatial-preposition) ;;can also be temporal, even an approximator?
(define-preposition "contrary to")
;; (define-preposition "despite") in modifiers as a reflection-on
(define-preposition "devoid of")
(define-preposition "down"  ) ;; as in, 'down the street' ?
(define-preposition "due to")
(define-preposition "during"  )
(define-preposition "except")
(define-preposition "except for") 
(define-preposition "exclusive of")
;; This is more of an adverb, no? (define-preposition "far" :form 'spatial-preposition)
(define-preposition "for" )
(define-preposition "for sake of")
(define-preposition "for the sake of")
(define-preposition "for want of")
(define-preposition "from" )
(define-preposition "from want of")
(define-preposition "in" )
(define-preposition "including")
(define-preposition "in process of")
(define-preposition "in accordance with")
(define-preposition "in addition to")
(define-preposition "in aid of")
(define-preposition "in back of")
(define-preposition "in case of")
(define-preposition "in common with")
(define-preposition "in comparison with")
(define-preposition "in compliance with")
(define-preposition "in conformity with")
(define-preposition "in connection with")
(define-preposition "in consequence of")
(define-preposition "in contact with")
(define-preposition "in exchange for")
(define-preposition "in face of")
(define-preposition "in favor of")
(define-preposition "in front of" :form 'spatial-preposition)
(define-preposition "in lieu of")
(define-preposition "in light of")
(define-preposition "in line with")
(define-preposition "in need of")
(define-preposition "in place of")
(define-preposition "in quest of")
(define-preposition "in reference to")
(define-preposition "in regard to")
(define-preposition "in relation to")
(define-preposition "in respect of")
(define-preposition "in respect to")
(define-preposition "in return for")
(define-preposition "in search of")
;; (define-preposition "in spite of") in modifiers as a reflection-on
(define-preposition "in terms of")
(define-preposition "in the face of")
(define-preposition "in the light of")
(define-preposition "in the process of")
(define-preposition "in view of")
(define-preposition "inside" :form 'spatial-preposition)
(define-preposition "inside of" :form 'spatial-preposition)
(define-preposition "instead of")
(define-preposition "into" :form 'spatial-preposition)
(define-preposition "irrespective of")
(define-preposition "like")
(define-preposition "minus")
(define-preposition "near" :form 'spatial-preposition)
(define-preposition "near to" :form 'spatial-preposition)
(define-preposition "nearer") ;;comparative
(define-preposition "nearer to") ;;comparative
(define-preposition "next to")
(define-preposition "notwithstanding")
(define-preposition "of" )
(define-preposition "off" )
(define-preposition "off of")
(define-preposition "on" )
(define-preposition "on account of")
(define-preposition "on behalf of")
(define-preposition "on ground of")
(define-preposition "on pain of")
(define-preposition "on the grounds of")
(define-preposition "on the matter of")
(define-preposition "on the part of")
(define-preposition "on the strength of")
(define-preposition "on top of")
(define-preposition "onto" :form 'spatial-preposition)
(define-preposition "out" )
(define-preposition "out of" )
(define-preposition "outside" )
(define-preposition "outside of")
(define-preposition "over" )
(define-preposition "owing to")
(define-preposition "past" :form 'spatial-preposition)
(define-preposition "pending")
(define-preposition "per")
(define-preposition "plus")
(define-preposition "preliminary to")
(define-preposition "preparatory to")
(define-preposition "previous to")
(define-preposition "prior to")
(define-preposition "pursuant to")
;; (define-preposition "regardless of") in modifiers as a reflection-on
(define-preposition "short of")
(define-preposition "since")
(define-preposition "subsequent to")
(define-preposition "such as")
(define-preposition "thanks to")
(define-preposition "through" :form 'spatial-preposition)
(define-preposition "throughout")
(define-preposition "till")
(define-preposition "to" )
(define-preposition "together with")
(define-preposition "toward")
(define-preposition "towards")
(define-preposition "under" :form 'spatial-preposition)
(define-preposition "unlike")
(define-preposition "until")
(define-preposition "unto")
(define-preposition "up" )
(define-preposition "up against")
(define-preposition "up to")
(define-preposition "upon")
(define-preposition "upwards of")
(define-preposition "versus" :synonyms '("vs" "vs.")) 
(define-preposition "via")
(define-preposition "void of")
(define-preposition "with" :synonyms '("w/"))
(define-preposition "with reference to")
(define-preposition "with regard to")
(define-preposition "with respect to" :synonyms '("w.r.t."))
(define-preposition "with the exception of")
(define-preposition "within" :form 'spatial-preposition)
(define-preposition "without" :synonyms '("w/o"))
(define-preposition "worth")



