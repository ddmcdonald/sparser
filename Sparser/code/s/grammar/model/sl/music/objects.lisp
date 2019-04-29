;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2018 SIFT, LLC.
;;;
;;;     File:  "objects"
;;;   Module:  "grammar/model/sl/music/"
;;;  version:  September 2018

;; Initiated 8/30/18

(in-package :sparser)


;;--- goes in upper-model

(define-category symbolic
  :specializes non-physical)


;;--- Music things

(define-category beat
  :specializes symbolic
  :mixins (part-of-a-sequence)
  :realization (:common-noun "beat"))

#| "everything before beat 2 of measure 1"
|# "between beats 1 and 3"

(Define-category measure
  :specializes symbolic
  :mixins (container ;; of note stuff
           partonomic ;; comprised of parts
           part-of-a-sequence ;; fits into a larger sequence
           sequence ;;// alternative to partonomic
           )
  :bindings (part-type 'beat)
  ;;:restrict ((part-type beat))
  :realization (:common-noun "measure"))

;;--- intervals, tones, ...

(define-category step
  :specializes symbolic
  :realization (:common-noun "step"))

;;--- notes

(define-category abstract-note
  :specializes symbolic
  :mixins (part-of-a-sequence) ;; "the fifth note" // but: "eigth", "sixteenth"
  :binds ((duration factional-term)
          (pitch (:or note pitch-class))
          (accidental accidental)))

#| "the C4 quarter note"
   "the quarter note"
   "all the quarter notes"
   "a G4 quarter note"
   "the C quarter note"

Treat notes, rests, and pitch classes all the same in terms
of how they compose with other terms. 
|#

(define-category note
  :specializes abstract-note
  :lemma (:common-noun "note")
  :realization (:common-noun name))

(define-category accidental
  :specializes note)
(define-category sharp
  :specializes accidental
  :realization (:common-noun name))
(define-category flat
  :specializes accidental
  :realization (:common-noun name))

(define-category rest
  :specializes abstract-note
  :realization (:common-noun "rest"))

(define-category pitch-class
  :specializes abstract-note
  :binds ((note note)
          (number number)))

(defun setup-musical-notes ()
  (let* ((letter-list '("A" "B" "C" "D" "E" "F"))
         (words (loop for l in letter-list collect (resolve l))))
    (loop for l in letter-list do (strip-single-term-rules l))
    
    ;; Notes per se
    (let* ((notes (loop for w in words
                     collect (define-individual 'note :name w))))
      
      ;; accidentals
      (let ((sharp-strings (loop for l in letter-list
                              collect (string-append l "#")))
            (flat-strings (loop for l in letter-list
                             collect (string-append l "b"))))
        (loop for string in sharp-strings
           as word = (resolve/make string)
           collect (define-individual 'sharp :name word))
        (loop for string in flat-strings
           as word = (resolve/make string)
           collect (define-individual 'flat :name word)))

      ;; selected pitch classes
      
 )))



(define-category note-length
  :specializes note
  :realization (:common-noun name))

(defun setup-note-lengths ()
  (let* ((pw-strings
          (loop for s in '("whole" "half" "quarter"
                           "eight" "sixteenth")
             collect (string-append s " note")))
         (polywords
          (loop for s in pw-strings collect (resolve/make s))))
    ;; Now instantiate the individuals. Because there's a
    ;; realization specification on the category this will
    ;; also setup the correponding grammar.
    (loop for pw in polywords
       collect (define-individual 'note-length
                   :name pw))))
#|
(eval-when (#|:compile-toplevel|# :load-toplevel :execute)
  (setup-note-lengths))
|#


(defun create-pitch-class (note-edge number-edge start-pos end-pos)
  "Called from resolve-ns-pattern when we get the pattern
   (:single-cap :single-digit) and the first edge is labeled
   'note'. As in the string 'C3'. We construct the individual
   here as though it had been parsed and formed compositionally."
  (let ((note (edge-referent note-edge))
        (number (edge-referent number-edge)))
    ;; Because we're called from the no-space machinery rather
    ;; than the application of a phrase structure rule, we have to
    ;; make the edge ourselves.
    (let* ((i (define-or-find-individual 'pitch-class
                  :note note :number number))
           (edge
            (make-binary-edge/explicit-rule-components
             note-edge
             number-edge
             :category (category-named 'pitch-class t)
             :rule-name 'create-pitch-class
             :form (category-named 'n-bar)
             :referent i)))
      edge)))
             
