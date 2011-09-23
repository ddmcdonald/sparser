;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995-1999  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "directions"
;;;   Module:  "model;core:places:"
;;;  version:  1.0 September 2007

;; initiated in 1/9/95. Added string printer 1/9/96.
;; 0.1 (11/25/99) Changed the realizations to use the new schema protocol
;;      and flushed the treatment of prepositions that take np complements
;;      over to its own file [spatial prepositions] with their category
;;      in [places;object]. Broke out the two types as their own subcategories
;; 1.0 (9/5/07) Dumped the schema-driven realizations since they were just
;;  for 'standalone-word' and the rules they created instantiated the specific
;;  categories rather than the more general 'direction' category which is the
;;  better semantic discriptor. 

(in-package :sparser)

;;;----------
;;; category 
;;;----------

(define-category  direction
  :instantiates  self
  :specializes   location
  :binds ((name :primitive word)))

(defun string/direction (d)
  (let ((w (value-of 'name d)))
    (word-pname w)))


;;-- when it's inside parentheses, elevate it above them
(define-interior-action category::direction  :parentheses
  'elevate-spanning-edge-over-paired-punctuation)
  

;;;-------
;;; cases
;;;-------

;;---- "(to the) {left, north}"

;; These are np heads.  When their deictic anchors are given explicitly
;; they appear as prepositional complements: "left of the garage"
;; except in the case of proper names where they're also simple classifiers:
;; "(to) John's left". 
;;   They also can be used adjectivally: "John's left ear", and Pullum lists
;; "left" as an adjective, so we have to be careful about the choice of
;; brackets. I'm going with the brackets that start NPs but not the finishers.


(defun define-standalone-direction (string)
  (let* ((word (or (word-named string)
                   (define-function-word string 
                     :form 'noun
                     :brackets '( .[np ))))
         (i (define-individual 'direction :name word))
         (rule (define-cfr category::direction `(,word)
                 :form category::noun
                 :referent i)))
    ;; stash the rule on the individual's plist?
    i))

(def-cfr direction ("the" direction)
  ;; This overgenerates (*"the westwards"), but since that phrase
  ;; won't be produced it's moot. 
  :form np
  :referent (:daughter right-edge))



;;---- "leftward(s)"

;; These are standalone adjuncts (H&P pg. 688, Quirk (Brown) pg. 471).
;; Because they don't take prenominal modifiers or determiners, I'm calling
;; them NPs, which is a fine starting point for pp complements defining
;; relative directions.
;; In British English the suffix is "wards", 

(defun define-ward-direction (string)
  (let* ((word (or (word-named string)
                   (define-function-word string
                     :form 'np
                     :brackets '( .[np np]. ))))
         (i (define-individual 'direction :name word))
         (rule (define-cfr category::direction `(,word)
                 :form category::np
                 :referent i)))
    ;; stash the rule on the individual's plist?
    i))


;; ??????????? (define-standalone-direction "out") -- doesn't pattern the same way

