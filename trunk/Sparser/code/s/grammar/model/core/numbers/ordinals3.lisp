;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "ordinals"
;;;   Module:  "model;core:numbers:"
;;;  Version:  3.2 September 2013

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
;;      Added ordinal+common-noun form rule - flow of referents needs work

(in-package :sparser)

;;;---------
;;; objects
;;;---------

#| It's called 'ordinal' because that's the natural term for the words
   that realize them: "first", "second", etc.  But it's function is more
   complex (/// is this the right thing?), which follows from its previous
   name, position-in-a-sequence, where we are defining a relationship between
   a position, the ordinal proper, and an item, and the sequence in which it
   is the 'ordinal-th' position.  The idea being that when you hear "first"
   you automatically know that there's an item and a sequence.  |#

(define-category  ordinal
  :instantiates self
  :specializes number
  :binds ((number number)
          (word  :primitive word)
          (roman-numeral :primitive word))
  :realization (:quantifier word))

(defun string/ordinal (category)
  ;; see special check in String-for that gets us here
  (let ((number (value-of 'number category))
        (*print-short* t))
    (format nil "~A" number)))


(define-category  position-in-a-sequence
  :instantiates self
  ;;  ? what would this specialize ??
  :binds ((number . ordinal)
          (item)
          (sequence . sequence)))

;; /// See if we can follow the scheme in the Krisp paper

;; "the fifth attack" ///Referent is the sequence. Ought to be the attack
(def-form-rule (ordinal common-noun)
  ;; possible ETF: designated-instance-of-set ("third quarter")
  ;;  or modifier-creates-definite-individual ("last year")
  ;; The point is to create the position-in-a-sequence while
  ;; leaving the common-noun as the head.  
  :form n-bar
  :head :right-edge
  :referent (:head right-edge
             :instantiate-individual position-in-a-sequence
             :with (number left-edge
                    item right-edge)))


;;;------
;;; form
;;;------

(defun define-ordinal (string        ;; e.g. "third"
                       lisp-number
                       &key roman-numeral)

  (let ((number (find-individual 'number :value lisp-number)))
    (unless number
      (break "When defining an ordinal, the corresponding number object ~
              ~%must be defined first. The number for ~A isn't" lisp-number))

    (let ((ordinal (find-individual 'ordinal :number number)))
      (or ordinal
          (let ((word (resolve/make string))
                (roman (when roman-numeral (resolve/make roman-numeral))))
            (setq ordinal
                  (define-individual 'ordinal
                    :number number
                    :word word))

            (when roman-numeral
              (bind-variable 'roman-numeral roman ordinal))
              ;; not reversible yet
              ;  (push (define-cfr category::ordinal `(,roman)
              ;          :form category::adjective
              ;          :referent  ordinal )
              ;        rules)

            ordinal )))))



;;;------------
;;; operations
;;;------------

(defun get-ordinal-from-number (n)
  (let ((number (find-individual 'number :value n)))
    (unless number
      (break "There no existing number with the lisp value ~a" n))
    (find-individual 'ordinal :number number)))

(defun nth-ordinal (n)
  (let ((ordinal (get-ordinal-from-number n)))
    (unless ordinal
      (break "No ordinal has been defined for the lisp-number ~a" n))
    ordinal))





;;;------------------------
;;; phrase structure rules
;;;------------------------

(when t ;;/// these should get swallowed into reversible rdata  

  (def-cfr ordinal (number "st")
    :referent (:instantiate-individual position-in-a-sequence
               :with (number left-edge)))

  (def-cfr ordinal (number "nd")
    :referent (:instantiate-individual position-in-a-sequence
               :with (number left-edge)))

  (def-cfr ordinal (number "rd")
    :referent (:instantiate-individual position-in-a-sequence
               :with (number left-edge)))

  (def-cfr ordinal (number "th")
    :form det
    :referent (:instantiate-individual position-in-a-sequence
               :with (number left-edge)))
   )
