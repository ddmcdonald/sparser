;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996,2013-2016 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "modals"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  September 2016

;; moved from [syntax;aux verbs] 5/7/93 v2.3. Populated w/o semantics 1/11/94
;; Given a mix-in interpretation 7/11.  8/2 pulled the check for whether 'modal'
;; was already defined since the change to form-categories makes it moot.
;; 8/16 added "must".  9/6 "won't", "'ll'   9/28 form combination with verb+object
;; 12/30 form combination with infinitive (and verb+ed).  
;; 1/27/95 added modal + verb+passive rules
;; 5/27/96 Disabled subtyping until it's reimplemented. 7/6/07 missed one.
;; 1/30/13 added "might"
;; 5/22/13 Rewrote the whole thing using a uniform set of categories
;;  and generating them for each modal. Incomplete because 
;;   (1) need to implement the case of multiple terms in a rhs
;;   (2) Aux hopping needs to be reformulated and pushed into a schema
;; 1/13/15 Redid be-able-to and conditional. It seems ti be implicated
;;  somehow in the creation of a PSI through some backdoor since lately
;;  they've been turned off. 
;; 4/24/2015 make modal applied to "BE" have the category "BE" and not "MODAL" as in "will likely be..."
;; 5/30/2015 update to take into accoun addition of new passive categories
;; 9/22/15 Form om form rules changed from verb to vg

(in-package :sparser)

;;;--------------------
;;; top modal category
;;;--------------------

(define-category modality
  :instantiates nil
  :specializes state
  :documentation "We need this category to solve a set
 of technical issues. The category 'modal' is a grammatical
 description, and it seems like too much of a stretch to
 make it do what it has to here. The illocationary force of
 modals is to make an assertion about the deontic properties
 of the eventuality it is part of. That, of course, may just
 be a back-argument to justify having the top category over all
 the different sort of modal that inherits from state, and
 consequently can provide tense and aspect variables which
 we need to handle at least negation.")


;;;-------------
;;; constructor
;;;-------------

;; Modals get their bracket assignments through a set of calls
;; to define-function-word in words/aux-verbs

(defmacro define-modal (words &key negatives)
  `(define-modal/expr ',words :negatives ',negatives))

(defun define-modal/expr (words &key negatives &aux (words (ensure-list words)))
  (let* ((word (resolve-string-to-word/make (first words)))
         (category-name (name-to-use-for-category word))
         (category (define-category/expr category-name
                     `(:specializes category::modality
                       :rule-label category::modal
                       :instantiates :self
                       :bindings (name ,word))))
         (individual (make-category-indexed-individual category)))
    (flet ((positive-rule (w)
             (let ((word (etypecase w
                           ((or word polyword category) w)
                           (string (resolve-string-to-word/make w))
                           (symbol (category-named w t)))))
               (define-cfr category::modal `(,word)
                 :form category::modal
                 :referent category
                 :schema (get-schematic-word-rule :modal))))
           (negative-rule (w)
             (typecase w
               (string ;; "cannot"
                (def-cfr/expr category (ensure-list w)
                  :form category::modal
                  :referent `(:head ,category
                              :bind (negation ,(category-named 'not)))))
               (cons ;; ("can" apostrophe-t)
                (def-cfr/expr category (ensure-list w)
                  :form category::modal
                  :referent `(:head ,category
                              :bind (negation right-edge)))))))
      (add-rules (mapcar #'positive-rule words) category)
      (add-rules (mapcar #'negative-rule negatives) category)
      category)))


;;;-------
;;; cases
;;;-------

(define-modal "can"
  :negatives (("cann" apostrophe-t)
              ("can" apostrophe-t)
              "cannot"))

(define-modal "could"
  :negatives (("couldn" apostrophe-t)))

(define-modal "may")

(define-modal "might")

(define-modal "must")

(define-modal "shall")

(define-modal "should"
  :negatives (("shouldn" apostrophe-t)))

(define-modal ("will" apostrophe-ll)
  :negatives (("won" apostrophe-t)))

(define-modal "would"
  :negatives (("wouldn" apostrophe-t)))


;;;-------------------
;;; aux-hopping rules
;;;-------------------

;;--- modal + aux form

(def-form-rule (modal have)
  :form vg
  :referent (:function absorb-auxiliary left-edge right-edge))


(def-form-rule (modal be)
  :form vg
  :new-category be
  :referent (:function absorb-auxiliary left-edge right-edge))


;;--- modal + verb+ed
;; This is spurious in a proper grammar, but if an infinitive form
;; is mis-labeled as a past tense then we'll get here gratuitously
;; e.g. LS: "set"

(def-syntax-rule (modal verb+ed)
                :head :right-edge
  :form vg
  :referent (:function absorb-auxiliary left-edge right-edge))



(def-cfr modal (modal not)
  :form vg
  :referent (:head left-edge
             :bind (negation right-edge)))



;;; ugly TEMPORARY (triaged) solution for "can then" as in "MAPK phosphorylates ASPP2 which can then relocate to..."
;; drop the "then" on the floor

#+ignore ;; we need to handle this now RJB 5/26/2016
(def-cfr modal (modal then)
  :form modal
  :referent (:head left-edge))




#|

Have to sort out how to do this. And they need schema anyway.
If we just substitute 'modal' for the previous generated categories
like 'will' then we have form rules with two form rules, which will
blow up. 

They would work find as syntax rules.
They might well work as straight-up cfr rules, and that's a case
 for a one-off ETF for aux-hopping

;;--- modal + infinitive

(def-form-rule (will infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype will
                   ))

(def-form-rule (would infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype would
                   ))

(def-form-rule (could infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype could
                   ))

(def-form-rule (should infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype should
                   ))

(def-form-rule (can infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype can
                   ))

(def-form-rule (may infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype may
                   ))

(def-form-rule (might infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype might
                   ))
|#


#|
(def-form-rule (will verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype will
                   ))

(def-form-rule (would verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype would
                   ))

(def-form-rule (could verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype could
                   ))

(def-form-rule (should verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype should
                   )) 

(def-form-rule (can verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype can
                   ))

(def-form-rule (may verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype may
                   ))

(def-form-rule (might verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype might
                   ))
|#

;;--- modal + verb

(def-syntax-rule (modal verb)
                :head :right-edge
  :form vg
  :referent (:function absorb-auxiliary left-edge right-edge))

(def-syntax-rule (modal vg) ;; needed for "can still associate" -- intervening adverb
                :head :right-edge
  :form vg
  :referent (:function absorb-auxiliary left-edge right-edge))

#|
(def-form-rule (will verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype will
                   ))

(def-form-rule (would verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype would
                   ))

(def-form-rule (could verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype could
                   ))

(def-form-rule (should verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype should
                   )) 

(def-form-rule (can verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype can
                   ))

(def-form-rule (may verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype may
                   ))

(def-form-rule (might verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype might
                   ))


;;--- modal + vp

(def-form-rule (will verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype will
                   ))

(def-form-rule (would verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype would
                   ))

(def-form-rule (could verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype could
                   ))

(def-form-rule (should verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype should
                   ))

(def-form-rule (can verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype can
                   ))

(def-form-rule (may verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype may
                   ))

(def-form-rule (might verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype might
                   ))
|#


;;--- modal + verb+passive

(def-syntax-rule (modal verb+passive)
                :head :right-edge
  :form vg
  :referent (:function absorb-auxiliary left-edge right-edge))

(def-syntax-rule (modal vg+passive)
                :head :right-edge
  :form vg+passive
  :referent (:function absorb-auxiliary left-edge right-edge))


#|
(def-form-rule (will verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype will
                   ))

(def-form-rule (would verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype would
                   ))

(def-form-rule (could verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype could
                   ))

(def-form-rule (should verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype should
                   ))

(def-form-rule (can verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype can
                   ))

(def-form-rule (may verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype may
                   ))

(def-form-rule (might verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype might
                   ))

|#


