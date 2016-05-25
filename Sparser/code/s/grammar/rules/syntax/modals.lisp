;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996,2013-2016 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "modals"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  May 2016

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

;;;------------
;;; categories
;;;------------

(define-category  be-able-to
  :instantiates nil
  :specializes modal )
  
(define-category  conditional
  :instantiates nil
  :specializes modal
  :binds ((condition)))


;;-- category to hold the word
(define-category modal-operator
  :instantiates nil
  :specializes operator
  :binds ((name :primitive word)))


;;;-------------
;;; constructor
;;;-------------

;; Modals get their bracket assignments through a set of calls
;; to define-function-word in words/aux-verbs

(defmacro define-modal (words &key negatives referent)
  `(define-modal/expr ',words
     :negatives ',negatives
     :referent ',(and referent (category-named referent t))))

(defun define-modal/expr (words &key negatives ((:referent referent-to-use)))
  (unless (consp words) (setq words (list words)))
  (when negatives
    ;;//// have to hack the multiple terms in the rhs
    (setq negatives nil))
  ;; define the category based on the first of the words
  (let* ((string (car words))
         (word (resolve-string-to-word/make string))
         (category-name (name-to-use-for-category string))
         (modal (category-named 'modal-operator))
         (category
          (define-category/expr category-name
            `(:specializes  ,modal
              :instantiates :self
              :rule-label ,modal
              :bindings (name ,word))))
         (individual (make-category-indexed-individual category)))
    (create-shadow individual)

    ;; for each word, create the corresponding rule
    (let ((form category::modal)
          (schema (get-schematic-word-rule :modal)))

      (flet ((positive-rule (w)
               (let ((word (etypecase w
                             (string (resolve-string-to-word/make w))
                             (word w)
                             (polyword w)
                             (category w)
                             (symbol (category-named w t)))))
                 (define-cfr category::modal `(,word)
                   :form form
                   :referent (or referent-to-use
                                 category) ;; or individual ??
                   :schema schema
                   :source :def-cfr))))

        (let* ((pos-rules
                (loop for word in words
                  collect (positive-rule word)))
               (neg-rules
                (when negatives ;; see below
                  (loop for word in negatives
                    collect (positive-rule word))))
               (rules (if neg-rules
                        (nconc pos-rules neg-rules)
                        pos-rules)))
          (add-rules-to-category category rules)
          category)))))



;;;-------
;;; cases
;;;-------

(define-modal "can"
              :negatives (("cann" apostrophe-t)
                          ("can" apostrophe-t)
                          "cannot")
              :referent be-able-to)

(define-modal "could" 
              :negatives (("couldn" apostrophe-t))
              :referent be-able-to)

(define-modal "may" :referent be-able-to)

(define-modal "might" :referent be-able-to)

(define-modal "must" :referent be-able-to)

(define-modal "should"
              :negatives (("shouldn" apostrophe-t))
              :referent be-able-to)

(define-modal ("will" apostrophe-ll) 
              :negatives (("won" apostrophe-t))
              :referent future)

(define-modal "would" 
              :negatives (("wouldn" apostrophe-t))
              :referent conditional)



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


;;; ugly TEMPORARY (triaged) solution for "can then" as in "MAPK phosphorylates ASPP2 which can then relocate to..."
;; drop the "then" on the floor

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


