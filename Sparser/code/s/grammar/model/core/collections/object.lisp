;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993-2005,2012-2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:collections:"
;;;  version:  February 2018

;; initiated 6/7/93 v2.3, added Sequence 6/9.
;; 6/13/95 added searching routine: collection-of-type/dh
;; 1.0 (3/21/00) Started make-over to lattice points. Flushed indexes.
;;     (4/29) Added realization for "three companies".
;;     (2/2/05) Added commentary. (4/1/12) exposed collection-of-type/dh
;;     to quiet compiler
;; 1.1 (8/16/13) Make sequences permanent to avoid odd bugs due to reclamation
;;     (5/27/14) Added mixins sequential, cyclic
;;     (8/24/14) Added lemmas

(in-package :sparser)

;;;----------------
;;; generic object
;;;----------------

(define-category  collection
  :instantiates self
  :specializes abstract
  :lemma (:common-noun "collection")
  :index (:permanent
          :special-case :find find/collection
                        :index index/collection
                        :reclaim reclaim/collection)
  :binds ((items :primitive list)
          (type :primitive category)
          (number :primitive integer))
  :realization ((:tree-family quantity-of-kind  ;; "three companies"
                 :mapping ((np-head . :self)
                           (quantifier . number)
                           (np . :self)
                           (item . number))))
  :documentation "A collection is an unordered bag of items. 
    They were designed for conjoined phrases such as a company
    names, but we now also use them as the base of plural nouns.
    The type of a conjunction is the type of its items, though
    in practice it is just the type of the first item.")

#| N.b. an interim version of this definition includes these mixins
         :mixins (takes-tense-aspect-modal takes-adverb)
Which had the effect of making a conjunction almost a perdurant in terms
of the variables it provided for composition. That requirement is
very likely OBE, but should the need for something like that to arise
we should reconsider what the most useful representation of conjoined
phrases actually is. |#


;;;-----------------
;;; specializations
;;;-----------------

(define-category  sequence
  :instantiates collection
  :specializes collection
  :lemma (:common-noun "sequence")
  :index (:permanent :key items)
  :binds ((item))  ;; i.e. each individual item
  :documentation "A sequence is a collection where the order matters
.  You can't have partial information about a sequence, and I'm 
   not even sure that you can extend them without creating a new object.")


;;;--------
;;; mixins
;;;--------

(define-mixin-category sequential
  ;;  :lemma (:adjective "sequential") ;; defined in bio;terms.lisp
  :specializes sequence
  :binds ((sequence sequence)
          (previous sequential)
          (next sequential))
  :documentation "Augments the concept of a sequence by providing
 explicit relations tying together the successive items in the
 sequence to each can point to its immediate neighbor.")

(define-mixin-category cyclic
  :specializes sequential
  :lemma (:adjective "cyclic")
  :binds ((cycle-length :primitive number))
  :documentation "Cyclic sequences wrap. The 'next' of the last item
 in the sequence is the sequences first item. Natural way to conceptualize
 the months of the year and most of the other categories in time.q")



