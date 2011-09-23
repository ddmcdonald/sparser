;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 1995,2011  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "per share"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  February 2011

;; initiated 12/22/95
;; 1.1 (7/24/98) Moved to cleaner design given newer techniques
;; 1.2 (2/17/11) Reconciling with core/finance/per share(1), which has
;;      the better treatments that this must have been migrating to
;;      but not gotten all the way. Removed redundant share-of-stock and
;;      amount-per-share categories.
;;----------- 2/20/11 Don't load this one (nobody presently does)
;;   instead use /core/finance/per-share1.lisp ----------------------
;;   Contents were copied out of here in toto to core/finance/per-share
;;   in January 1996.

(in-package :sparser)

#| 
(define-category  share-of-stock
  :specializes nil
  :instantiates self
  :binds nil
  :realization (:common-noun "share"))

;; :tree-family  np-common-noun/indefinite
;;    this would add 'indefinite' as a substype

 The real question is how to do the "per" part in the cleanest way.
 Can it be done with binary rules or is it necessarily a three-tuple?
 Probably is, since from the right "a share" means what?  count=1 ??
 Well it does mean that count if it's taken concretely -- If it's taken
 generically then the count is pretty much irrelevant since it's just
 a way to refer to that kind of stuff. 

 We could take it seriously as a quantity with the "a" by extending
 the notion to include a 'count' within it.  Strictly speaking that
 should be a general facility with any number and should take the
 category into a specialization that makes it the criteria function
 of a collection, but since the clean subtyping facility isn't in place,
 we could just add a number slot and a form rule for the 'a'
  |#



(def-form-rule ("a" common-noun)
  :form np
  :referent (:daughter right-edge
             :bind (number . left-edge)))
               ;; This binds the number field to "a". (So some sort
               ;; of changeover should apply?)  The cleanest would be
               ;; to bind to the constant individual representing the
               ;; number 1, but that extends the rule language and I'd
               ;; like to see how general the need for that would be first.



;;-- explicit ratio 
;; This is a fragment. It's done by analogy to regular pps, but since
;; we know so much more about what's going to happen when this combines
;; to its left we should be able to do something intelligent with a
;; var+value treatment. 

(def-cfr per-share ("per" share-of-stock)
  :form pp
  :referent (:daughter right-edge))


(define-category amount-per-share
  :specializes  measurement  ;; well 'ratio' actually
  :instantiates self
  :binds ((quantity . money))
  :index (:key quantity))

(def-cfr amount-per-share (money per-share)
  :form np
  :referent (:instantiate-individual amount-per-share
             :with (quantity left-edge)))

(def-cfr amount-per-share (money share-of-stock)
  :form np
  :referent (:instantiate-individual amount-per-share
             :with (quantity left-edge)))


;;--- adjunct linked to money as an alternative value

(def-cfr or-amount-per-share ("or" amount-per-share)
  :form pp  ;; ?? well that's how this patterns
  :referent (:daughter right-edge))

(def-cfr or-amount-per-share ("," or-amount-per-share)
  :form apositive
  :referent (:daughter right-edge))


;;--- linking up that adjunct

(def-cfr money (money or-amount-per-share)
  :form np
  :referent (:daughter left-edge
             :bind (alternative-amount right-edge)))
