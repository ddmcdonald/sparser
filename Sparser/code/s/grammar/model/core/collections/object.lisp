;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993-2005,2012-2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:collections:"
;;;  version:  November 2020

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


;;;-----------------
;;; specializations
;;;-----------------

(define-category collection-taking-tense
  :specializes collection
  :mixins (takes-tense-aspect-modal) ;; and takes-adverb ?
  :documentation "This version of collection is intended for
 when we are conjoining verbs: ('eating and drinking is pleasant',
 'we were eating and drinking'). There is tense/aspect information
 on the verbs and there would be clause-level adjuncts, and they have to
 have landing sites, which is what takes-tense-aspect-modal provides")

;; Example of what motivates this
;; warning:
;;    no variable named past on #<collection #<gene-transcript-express 86609> #<purify 85065> 112298> of category nil
;;  in sentence "Proteins were expressed and purified from E. coli as described
;;                     previously xref ."

(define-category  sequence
  :instantiates self
  :specializes collection
  ;; also a tensed clause
  :lemma (:common-noun "sequence")
  :index (:permanent :key items)
  :binds ((item)  ;; i.e. each individual item
          (items :primitive list) ;; copied down while conjunction is bad
          (type :primitive category)
          (number :primitive integer))
  :documentation "A sequence is a collection where the order matters.
 You can't have partial information about a sequence, and I'm 
 not even sure that you can extend them without creating a new object.")


;;--- predicates

(defun collection-p (item)
  (itypep item category::collection))

(defun sequence-p (item)
  (itypep item category::sequence))



;;--- specializations initially motivated by music

(define-category subsequence
  :instantiates self
  :specializes sequence
  :binds ((reference-sequence sequence)
          (index ordinal))
  :index (:permanent :sequential-keys index reference-sequence)
  :documentation "Defines a portion  of a sequence
 relative to the position of a designated index element.")

(define-category subseq-up-to
   :specializes subsequence
   :documentation "A closed-interval. Denotes all of
 the items in the reference sequence from its beginning up to
 but not including the element at the index.")

(define-category subseq-after
   :specializes subsequence
   :documentation "A closed-interval. Denotes all of
 the items in the reference sequence from the index element
 to the end of the sequence, excluding the index element..")

(define-category subseq-both-ends
  :specializes subsequence
  :binds ((end-index ordinal))
  :documentation "A region that is closed on both ends.
 Denotes all the elements of the reference sequence that
 are between the index position (start) and the end-index,
 exclusing those elements.")


;;--- ordinals as selecting a position in a sequence

(define-category  position-in-a-sequence
  :instantiates self
  :specializes index
  :binds ((number . ordinal)
          (item)
          (sequence . sequence))
  :documentation "Free-standing relation linking a sequence, one of
 its elements ('item') and a ordinal that records the position of
 the item in the sequence. Automatically instantiated as one of the
 steps in indexing a sequence. Indirectly useful in modeling proper
 names since they are a sequence of name-word instances.
 We use this one when the position of the item is the focus")

(define-mixin-category part-of-a-sequence
  :instantiates nil
  :specializes index ;; ???
  :binds ((position ordinal)
          (sequence sequence))
  :documentation "Folded into other objects to indicate that any
 instance of the object with occupy a particular position in
 a particular sequence. Compared with position-in-a-sequence, this
 is not a free-standing relationship, just the addition of a few
 properties. Should also compare to sequential, which adds variables
 for previous and next and is principally used in calendar time.
 If ordering doesn't matter, then partonomies are worth considering.
 We use this when the position and sequence are incidental.")



;;--- specifier

(define-category sequence-selector
  :specializes subsequence ;; inherits number
  :mixins (part-of-a-sequence) ;; provides position, sequence
  :binds ((ordering superlative))
  :documentation "Provides a container for bare NP specifier phrases
 that function as specifications of what to select from the reference
 set (which will usually be construed as an ordered sequence).")



;;;--------
;;; mixins
;;;--------

(define-mixin-category sequential
  ;;  :lemma (:adjective "sequential") ;; defined in bio;terms.lisp
  :specializes sequence
  :binds ((sequence sequence)
          (position ordinal)
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

(fixed-at-runtime '(sequence previous next) 'sequential)
(fixed-at-runtime '(cycle-length) 'cyclic)
