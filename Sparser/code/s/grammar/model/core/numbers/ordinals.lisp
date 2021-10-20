;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2013-2020 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "ordinals"
;;;   Module:  "model;core:numbers:"
;;;  Version:  March 2020

;; initiated [ordinals1] 9/18/93 v2.3 as completely new treatment
;; 1.0 (1/7/94) redesigned as specialized categories
;;     (1/9/96) added string printer.
;; 2.0 (7/11/00) Changed the name of the interesting category from position-in-
;;      a-sequence to ordinal, flushing the simple category "ordinal". Reworked
;;      into the new regime as much as possible.
;; 2.1 (7/13) punted on the whole 'each ordinal is its own relation scheme 
;;      since it shouldn' be necessary given psi.
;; 3.0 (2/3/05) Version 2 doesn't appear coherent (asks for categories, defines individuals)
;;      so trying to get it all on the same page. Arranging for it to make individuals rather
;;      than psi. Fixing the nth-ordinal routine.
;; 3.1 (3/15) Reverting to 'position-in-a-sequence' in addition to an object for
;;      simple ordinals -- drops the partial-ness of ordinals and transfers that 
;;      functionality to the new (old) category.
;; 3.2 (9/18/13) Replaced the *load-ad-hoc-rules* gate on the 'nd' rules at the
;;      bottom with nil since it's unclear how they work: /// need a no-space
;;      criteria added to them, then we get "23rd" with some assurance. 
;;      Added ordinal+common-noun form/ rule - flow of referents needs work
;;RJB 12/13/2014 
;;     create new category post-ordinal for Roman numeral ordinals like I, II, III and IV
;;     these can occur after the head, and do not become the head, while the previous ordinals like first, second etc. are prenominal

(in-package :sparser)

;;;---------
;;; object
;;;---------

#| It's called 'ordinal' because that's the natural term for the words
   that realize them: "first", "second", etc.  But it's function is
   more complex and which follows from its previous name,
   position-in-a-sequence, where we are defining a relationship
   between a position (the ordinal proper), an item, and the sequence
   in which the item is the 'ordinal-th' element in the sequence.  The
   idea being that when you hear "first" you automatically know that
   there's an item and a sequence.  |#

(define-category  ordinal
  :instantiates self
  :specializes number
  :lemma (:common-noun "ordinal")
  :binds ((number number)
          (word  :primitive word)
          (roman-numeral :primitive word))
  :index (:key number)
  :realization (:quantifier word))

(defun string/ordinal (category)
  ;; see special check in String-for that gets us here
  (let ((number (value-of 'number category))
        (*print-short* t))
    (format nil "~A" number)))


;;;-----------------------
;;; ordinals as selectors
;;;-----------------------
#| -- living with sequence
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
|#
;;;--------------------------------------------
;;; 'post' ordinal treatment of Roman numerals
;;;--------------------------------------------

(define-category  post-ordinal
  :instantiates self
  :specializes number
  :binds ((number number)
          (word  :primitive word)
          (roman-numeral :primitive word))
  :documentation "Applies to romman numerals. Instantiated as part of
    define-ordinal.")


;;;------
;;; form
;;;------
;; See model/dossiers/ordinals.lisp

(defun define-ordinal (string        ;; e.g. "third"
                       lisp-number
                       &key roman-numeral)

  (let ((number (find-individual 'number :value lisp-number)))
    (unless number
      (error "When defining an ordinal, the corresponding number object ~
            ~%must be defined first. The number for ~A isn't" lisp-number))

    (let ((ordinal (find-individual 'ordinal :number number))
          rules )
      (or ordinal
          (let ((word (resolve/make string))
                (roman (when roman-numeral (resolve/make roman-numeral))))
            (setq ordinal
                  (define-individual 'ordinal
                    :number number
                    :word word))
            #+ignore(push (define-cfr category::ordinal `(,word)
                    :form category::quantifier
                    :referent `(:instantiate-individual ,category::position-in-a-sequence
                                :with (number ,ordinal)))
                  rules)

            (when roman-numeral
              (setq ordinal (bind-variable 'roman-numeral roman ordinal))
              (push (define-cfr category::post-ordinal `(,roman)
                        :form category::post-ordinal
                        :referent  category::post-ordinal )
                      rules))

            ordinal )))))


(defgeneric make-ordinal (number)
  (:documentation "We only predefine a small number or ordinals
    complete with their corresponding words and sometimes Roman 
    numerals. But some models insist on ordinals for arbitrary
    numbers. So even though we'll need a special routine to generate
    the words by rule when generating, we make the minimal
    ordinal individual based just on the number.")
  (:method ((n number))
    (let ((number (find-or-make-number n)))
      (make-ordinal number)))
  (:method ((i individual))
    (assert (itypep i 'number))
    (define-individual 'ordinal :number i)))


;;;----------
;;; accessor
;;;----------

(defgeneric nth-ordinal (n)
  (:documentation "Given an integer or a number individual return
    the corresponding ordinal")
  (:method ((n integer))
    (let ((i (find-or-make-number n)))
      (nth-ordinal i)))
  (:method ((i individual))
    (unless (itypep i 'number)
      (error "nth-ordinal only take number individuals"))
    (or (find-individual 'ordinal :number i)
        (make-ordinal i))))



;;;------------------------
;;; phrase structure rules
;;;------------------------

;; "site I"
(def-form-rule (common-noun post-ordinal)
  :form n-bar
  :head :left-edge
  :referent (:head left-edge
             :instantiate-individual position-in-a-sequence
             :with (number right-edge
                    item left-edge)))

;; "sites I and II"
(def-form-rule (common-noun/plural post-ordinal)  
  :form n-bar
  :head :left-edge
  :referent (:head left-edge
             :instantiate-individual position-in-a-sequence
             :with (number right-edge
                    item left-edge)))


#| Reworked as a set-selector 3/19/20 -- see syntax/specifiers.lisp

;;--- "the first two" 
(def-cfr sequence (ordinal number)
  :form n-bar
  :referent (:function made-subsequence-up-to left-edge right-edge))

(defun made-subsequence-up-to (ordinal number)
  (if *subcat-test*
    t
    (let ((number-val (value-of 'value number)))
      (if (= number-val 1)
        (make-ordinal-pronoun-reading ordinal number)
        (find-or-make-individual 'subseq-up-to
                                 :index ordinal
                                 :number number)))))

(defun make-ordinal-pronoun-reading (ordinal number)
  ;; First retrieve the pronoun that should be there
  (declare (special category::indefinite-pronoun))
  (let* ((right-edge (right-edge-for-referent))
         (ev (edge-starts-at right-edge))
         (pn-edge
          (includes-edge-with-label category::indefinite-pronoun
                                    (all-edges-on ev)))
         (pronoun (when pn-edge (edge-referent pn-edge))))
    (unless pronoun
      (push-debug `(,right-edge ,ev ,number))
      (error "Expected a pronoun for ~a" number))
    ;;/// have to work out some gymnastics to swap out the right edge
    ;; that's being composed (based on a number) for this pn-edge
    ;; based on the pronoun.
    (compose-ordinal ordinal pronoun)))
|#
        

;;--- "the first"
#+ignore
(def-form-rule (det ordinal)
  :form quantifier
  :head :left-edge ;; form edge is always the 'head'
  :referent (:function determiner-noun left-edge right-edge))
#|/// determiner-noun needs to be refactored to make the addition
of the determiner a standalone operation. (And it's handling of
plurality appears out of date - variables no on top.)|#

;;--- "first"



;;--- building a position-in-a-sequence without its sequence

;; "the fifth attack"
(def-form-rule (ordinal common-noun)
  ;; possible ETF: designated-instance-of-set ("third quarter")
  ;;  or modifier-creates-definite-individual ("last year")
  ;; The point is to create the position-in-a-sequence while
  ;; leaving the common-noun as the head. Those would be more
  ;; generically reversible than the compose oridinal function  
  :form n-bar
  :head :right-edge
  :referent (:function compose-ordinal left-edge right-edge))

(defun compose-ordinal (ordinal head)
  (declare (special *subcat-test*))
  (if *subcat-test*
    (and ordinal head)
    (let ((ss (value-of 'selector head)))
      (if ss
        (let ((ss-prime (extend-set-selector ss :ordinal ordinal)))
          (bind-variable 'selector (list ss-prime) head))
        (else
          (setq ss (make-set-selector :position ordinal))
          (bind-variable 'selector (list ss) head))))))


#+ignore
(defun compose-ordinal-to-head (ordinal head)
  "This approximates the treatment in the Krisp paper (pg. 31 & subseq)
   which would make a subtype of the head so that it gets the slots
   it would have if it was a position in a sequence (the same effect 
   as using a mixin would achieve provided we bound its item slot
   to the head."
  ;; Strictly speaking there should be FoM to get a version of
  ;; the head category where the position-in-sequence mixin has
  ;; applied, then for this individual we'd bind (FoM actually)
  ;; the item variable. Approximating that my using ad-hoc lambda 
  ;; variable manipulation
  (let ((num-var (find-variable-for-category 'number 'position-in-a-sequence))
        (item-var (find-variable-for-category 'item 'position-in-a-sequence))
        (head-category (etypecase head
                         (category head)
                         (individual (itype-of head))))
        (i (individual-for-ref head)))
    ;; how do we signal that the individual is open in the sequence?
    
    (setq i (bind-variable item-var head-category i))
    ;; Is this the best represention of the 'item', 

    (setq i (bind-variable num-var ordinal i))
    i))


(when t ;;/// these should get swallowed into reversible rdata  

  (def-cfr ordinal (number "st")
    :form quantifier
    :referent (:instantiate-individual position-in-a-sequence
               :with (number left-edge)))

  (def-cfr ordinal (number "nd")
    :form quantifier
    :referent (:instantiate-individual position-in-a-sequence
               :with (number left-edge)))

  (def-cfr ordinal (number "rd")
    :form quantifier
    :referent (:instantiate-individual position-in-a-sequence
               :with (number left-edge)))

  (def-cfr ordinal (number "th")
    :form quantifier
    :referent (:instantiate-individual position-in-a-sequence
               :with (number left-edge)))
  )


;;;-----------------------------------------------------------------
;;; ad-hoc use of an ordinal variable (moved from syntax functions)
;;;-----------------------------------------------------------------

#| Since this machinery isn't doing anything sensible, removing it
from the grammar / ontology 

(define-lambda-variable 'ordinal ;; used for "third" in "the third gene"
    nil 'top)

(defvar *ordinal-item-phrases* nil) ;; instance accumulator

(defun make-ordinal-item (ordinal item)
  ;; Used with np+number and np+hyphenated-number.
  ;; Compare to (merge with) rules in core/numbers/ordinals.lisp.
  (if *subcat-test*
    (and ordinal item)
    (else
      (when *parent-edge-getting-reference*
        (push (string-for-edge *parent-edge-getting-reference*)
              *ordinal-item-phrases*))
      (or (when (and (use-methods)
                     (most-specific-k-method 'compose (list ordinal item)))
            (compose ordinal item))
          (bind-variable 'ordinal ordinal item)))))

;;--- These bind a loose 'ordinal' variable to the number
(def-syntax-rule (np number) ;; should be allowable as a form rule
    :form np
    :head :left-edge
    :referent (:function make-ordinal-item right-edge left-edge))

(def-form-rule (np hyphenated-number)  
    :form np
    :head :left-edge
    :referent (:function make-ordinal-item right-edge left-edge)) |#

#| Sample from 40 june
 "the plasma levels of T 4 " "293T cells with T 3 " "day 3.5 [ xref ]"
 "regulated CREB protein 2 (TORC2) " "0.2 mM ZnCl 2 " "lane 3 " "lane 4"
 "supplementary file 2" "ZnCl 2 " "pH 7.2" "pH 7.0" "an O.D 600 "
 "pH 7.2" "50 mM Tris pH 8.0" "4 mM MnCl 2 " "pH 8.5" "5 mM MnCl 2 "
 "5 mM MgCl 2 " "pH 7.2" "the transcription reaction 1 µ" "Alexa Flour 568 "
 "4 mM MgCl 2 " "50 mM Tris-HCl pH 7.4" "5 mM EDTA pH 7.4" "8 mM Na 2 HPO 4 "
 "1.5 mM KH 2 PO 4 " "pH 7.2" "Fluor 488 F(ab’)2 " "Fluor 488 F(ab’)2 "
 "p21-activated kinase 4 (PAK4) " "both p21-activated kinase 4 (PAK4) "
 "p90 ribosomal S6 kinase 2 (Rsk2) " "lanes 2 "
 "response to E 2 (Fig. xref , lanes 2 and 3, second panel)" "lanes 2 and 3"
 "lane 5 " "lane 7 " "lanes 1, 4, 5, 6, and 7" "lane 7" "lane 6" "lane 5"
 "lane 4" "lane 3" "lane 2" "lane 1" "lane 1 " "lane 3 " "lanes 3 and 4"
 "lane 1" "lane 1" "lane 4" "lane 3" "lane 2" "lane 1" "pH 7.6" "5% CO 2 "
 "5% CO 2 " "200 µM Na 3 VO 4 " "200 µM Na 3 VO 4 "
 "the predicted Grb2-binding sites, tyrosines 175, 195, and 235 "
 "mixed cultures of two retrovirus producing cell lines, Bosc 23 and Phoenix E. 16 "
 "CO 2 " "0.5–1.0 " "150 μl dH 2 0 " "150 μl dH 2 " "reference 13" "pH 7.6"
 "pH 7.6" "Bosc 23 " "reference 9" "One hundred and seventy (79.4%) " "OD 600 "
 "TiO 2 " "TiO 2 ")

sp> (p *)
[50 mM Na 3 PO ]4 
                    source-start
e13   BIO-ENTITY    1 "50 mM Na 3 PO 4 " 7
                    end-of-source
sp> (semtree 13)
(#<bio-entity "PO" 250023> (ordinal 4) (number 50)
 (modifier
  (#<unit-of-measure millimolar 63636> (name "millimolar") (uid "UO:0000063")))
 (modifier
  (#<molecule sodium atom 106582> (raw-text "Na") (name "sodium atom")
   (uid "CHEBI:26708")))
 (number 3) (name "PO"))

|#

#+ignore
(def-syntax-rule (proper-noun number) ;; should be allowable as a form rule
    :form np
    :head :left-edge
    :referent (:function make-ordinal-item right-edge left-edge))

#+ignore
(def-form-rule (proper-noun hyphenated-number)  
    :form np
    :head :left-edge
    :referent (:function make-ordinal-item right-edge left-edge))

#+ignore
(def-syntax-rule (common-noun number) ;; should be allowable as a form rule
    :form np
    :head :left-edge
    :referent (:function make-ordinal-item right-edge left-edge))

#+ignore
(def-form-rule (common-noun/plural hyphenated-number)  
    :form np
    :head :left-edge
    :referent (:function make-ordinal-item right-edge left-edge))
