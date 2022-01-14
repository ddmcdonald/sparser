;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2017,2021-2022  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "single letters"
;;;   Module:  "model;core:names:"
;;;  version:  January 2022

;; 2.0 (11/20/92 v2.3) Completely made over for new semantics
;;     (5/15/93) finished the makeover, 5/26 finished debugging it
;;     (11/94) added a parameter to point to "A"

(in-package :sparser)


;;;------------
;;; the object
;;;------------

(define-category single-capitalized-letter
  :instantiates self
  :specializes  name
  :binds ((letter :primitive word))  ;;///// should inherit !!
  :index (:key letter  :permanent))



;;;--------------
;;; instantiator
;;;--------------

#| 1/12/22 -- There's an undiagnosed problem in handle-period-as-initial
whereby install-terminal-edges will not install the edge for the
single-capitalized-letter for "a", even though the rule it there.
  That makes the code assume its got a new one, so it calls this
and uses its rule. This function used to only make the individual
and the rule it the letter was new. Cutting that out redundantly
computes the rule but it makes the initials handling happy. s|#
(defun define-single-capitalized-letter (string)
  (let* ((word (define-word/expr string))
         new?  rule
         (individual
          (or (find-individual 'single-capitalized-letter
                               :letter word)
              (progn
                (setq new? t)
                (define-individual 'single-capitalized-letter
                    :letter word)))))
    
    (setq rule (define-cfr category::single-capitalized-letter
                   `( ,word )
                 :form category::proper-noun
                 :referent individual))
    (add-rule rule individual)

    (values individual rule)))

 

;;;-------
;;; cases
;;;-------

(mapc #'define-single-capitalized-letter 
      '("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M"
        "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"))

(defparameter *capital-a* (find-individual 'single-capitalized-letter
                                           :letter "A"))

(define-completion-action (category-named 'single-capitalized-letter)
    :disambiguate 'is-A-actually-a-determiner)

(defun is-A-actually-a-determiner (edge)
  "Sentence-initial instances of an #\a will be capitalized, but not
   with the intent that's the point of single capitalized letter
   (e.g. supporting the model of initials). If this is a capital a and it's
   sentence initial then we remake the edge as a determiner."
  (when (eq (edge-referent edge) *capital-a*)
    (when (eq (starts-at-pos (sentence))
              (pos-edge-starts-at edge))
      (revise-edge edge
                   (category-named 'a) ; category
                   (category-named 'det)  ; form
                   (find-individual (category-named 'a) :word word::a)) ; referent
      )))

