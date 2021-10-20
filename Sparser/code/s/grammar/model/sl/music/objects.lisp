;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2018-2021 SIFT, LLC.
;;;
;;;     File:  "objects"
;;;   Module:  "grammar/model/sl/music/"
;;;  version:  October 2021

;; Initiated 8/30/18

;; Molly 6/5/19 Notes now form a cyclic sequence.  Beats now
;; specializes time-unit.  Defined step and octave, which specialize
;; unit-of-measure Defined pitch, which specializes region, so that we
;; can support "moving" within it and incorporate its units of
;; measure, octave and step.  Note sequence is always the same, but
;; where you start changes depending upon key. Need to set key as a
;; kind of loadable configuration where the starting note is set (like
;; make-temporal-sequence grounds us using (today))

;; Call setup-musical-notes, make-note-sequence.


#| Molly 8/15/19 Progress

Chunking issues arise in sentences like "Reverse everything from beat
3 of measure 1 through beat 1 of measure 2" where the chunker wants to
treat "3 of..." onward as a number.  Otherwise, most of the test
sentences are working properly.

The next step as I see it is to flesh out the relationships between
notes that are necessary in order to properly execute commands
involving moving them - especially distances (in steps, half-steps)
between notes (i.e. when we "move the G up one half-step", what note
do we get?), defining the note sequences that accompany certain keys,
etc.

|#

(in-package :sparser)


(defparameter *the-notes* '("A" "B" "C" "D" "E" "F" "G"))
(defparameter *note-sequence* '())


;;--- goes in upper-model

(define-category musical
  :specializes symbolic)


;; handles movement-verb adjuncts that combine a direction and a measurement,
;; like "up three steps"; "down one half step"

(define-category trajectory
  :specializes direction
  :instantiates nil
  :lemma (:common-noun "trajectory")
  :binds ((direction (:or up down))
          (extent (:or music-step music-half-step octave)))
  :realization (:tree-family pair-instantiates-category
                :mapping ((result-type . :self)
                          (np . :self)
                          (first . (direction :or up down))
                          (second . (extent :or music-step music-half-step octave))
                          (item1 . direction)
                          (item2 . extent))))


;;; Pitch as a region. Thought it would be useful to designate differnet types of abstract regions, in order to
;;; easily restrict types of movement within a particular region.

(define-category pitch-region
  :instantiates nil
  :specializes abstract-region
  :realization (:common-noun "pitch")
  :documentation "Instantiating pitch as an abstract region, so that we can talk about moving 'up' or 'down' in pitch
  and make sense of its various intervals/units of measure - step, half-step, octave, etc.")


;;--- Music things

(define-category music-key
  :specializes symbolic
  :index (:permanent :key name :get)
  :binds ((note music-note)
          (accidental music-accidental)
          (in-region pitch-region)))


(define-category music-beat
  :specializes time-unit
  :mixins (part-of-a-sequence)
  :realization (:common-noun "beat"))

#| "everything before beat 2 of measure 1"
|# "between beats 1 and 3" 

(define-category music-measure
  :specializes musical
  :mixins (part-of-a-sequence  ;; fits into a larger sequence
            container ;; of note stuff 
            partonomic ;; comprised of parts 
            sequence ;;// alternative to partonomic
           )
  :bindings (part-type 'music-beat)
  ;;:restrict ((part-type beat))
  :realization (:common-noun "measure"))

(define-category music-bar
  :specializes musical
  :mixins (container 
           partonomic
           part-of-a-sequence
           sequence)
  :bindings (part-type 'music-beat)
  :realization (:common-noun "bar"))

;;--- intervals, tones, ...
;;--- Should these be units of measure? Seem like abstract units of measure within a "pitch" region, but I'm not sure.

(define-category music-step
  :specializes unit-of-measure
  :binds ((in-region pitch-region))
  :realization (:common-noun "step"))

(define-category music-half-step
  :specializes unit-of-measure
  :binds ((in-region pitch-region))
  :realization (:common-noun "half-step" :common-noun "1/2 step"))

(define-category octave
  :specializes unit-of-measure
  :binds ((in-region pitch-region))
  :realization (:common-noun "octave"))

;;--- notes

(define-category abstract-note
  :specializes musical
  :mixins (part-of-a-sequence) ;; "the fifth note" // but: "eigth", "sixteenth"
  :binds ((duration fractional-term)
          (accidental music-accidental)
          (in-region pitch-region)
          (pitch music-note))
  :realization (:common-noun "note"))

#| "the C4 quarter note"
   "the quarter note"
   "all the quarter notes"
   "a G4 quarter note"
   "the C quarter note"

Treat notes, rests, and pitch classes all the same in terms
of how they compose with other terms. 
|#

;;; Allows us to estabish a kind of synonymy of notes, by connecting
;;; notes that are enharmonic to one another for more accurate parsing

(defun bind-enharmonics (note1 note2)
  (bind-variable 'enharmonic note1 note2)
  (bind-variable 'enharmonic note2 note1))

(define-category music-note
  :specializes abstract-note
  :mixins (cyclic part-of-a-sequence)
  :binds ((moves-in pitch-region)
          (flat music-flat)
          (sharp music-sharp)
          (enharmonic (:or music-note music-accidental)))
  :index (:permanent :key name :get)
  :realization (:common-noun name))

;;; Workaround that allows us to parse sequences like "A B B C" as a
;;; single object, divisible into a sequence of individual notes.

(define-category note-sequence 
  :specializes musical
  :mixins (sequence partonomic part-of-a-sequence)
  :binds ((moves-in pitch-region)
          (part1 :or note-sequence music-note)
          (part2 :or note-sequence music-note))
  :bindings (part-type 'music-note)
  :realization (:tree-family pair-instantiates-category
                :mapping ((result-type . :self)
                          (np . :self)
                          (first . (part1 :or note-sequence music-note))
                          (second . (part2 :or note-sequence music-note))
                          (item1 . part1)
                          (item2 . part2))))

(define-category music-accidental
  :specializes music-note
   :index (:permanent :key name :get)
  :binds ((base-note music-note)))


(define-category music-sharp
  :specializes music-accidental
  :binds ((base-note music-note))
  :realization (:common-noun name))

(define-category music-flat
  :specializes music-accidental
  :binds ((base-note music-note))
  :realization (:common-noun name))

(define-category music-rest
  :specializes abstract-note
  :realization (:common-noun "rest"))

(define-category music-pitch
  :specializes abstract-note
  :binds ((music-note music-note)
          (register number))
  :realization (:common-noun name))


(define-category note-length
  :specializes music-note
  :realization (:common-noun name))

;;;---Setup


(defun get-music-note (name)
  (if *description-lattice*
     (get-by-name category::music-note name)
    (find-individual 'music-note :name name)))


(defun make-note-sequence ()
  (let ((*sequence* (create-sequence *note-sequence*)))
    (old-bind-variable 'sequence *sequence* category::music-note)
    (old-bind-variable 'cycle-length 14 category::music-note)
    (thread-sequence *sequence*)))
    
(defun setup-musical-notes ()
  (let* ((letter-list *the-notes*) (all-notes '()))
    (loop for l in letter-list do (strip-single-term-rules l))
    (loop for l in letter-list
          as flat = (define-individual 'music-flat :name (string-append l "b"))
          as sharp = (define-individual 'music-sharp :name (string-append l "#"))
          as note = (define-individual 'music-note :name (resolve l) :flat flat :sharp sharp)
          do (bind-variable 'base-note note flat)
          do (bind-variable 'base-note note sharp)
          do (push flat all-notes)
          do (push note all-notes)
          do (push sharp all-notes))
    (setq *note-sequence* (reverse all-notes))))


(defun setup-note-lengths ()
  (let* ((pw-strings
          (loop for s in '("whole" "half" "quarter"
                           "eighth" "sixteenth")
             collect (string-append s " note")))
         (polywords
          (loop for s in pw-strings collect (resolve/make s))))
    ;; Now instantiate the individuals. Because there's a
    ;; realization specification on the category this will
    ;; also setup the correponding grammar.
    (loop for pw in polywords
       collect (define-individual 'note-length
                   :name pw))))


(defun create-pitches (note-edge number-edge start-pos end-pos)
  "Called from resolve-ns-pattern when we get the pattern
   (:single-cap :single-digit) and the first edge is labeled
   'note'. As in the string 'C3'. We construct the individual
   here as though it had been parsed and formed compositionally."
  (let ((music-note (edge-referent note-edge))
        (register (edge-referent number-edge)))
    ;; Because we're called from the no-space machinery rather
    ;; than the application of a phrase structure rule, we have to
    ;; make the edge ourselves.
    (let* ((i (define-or-find-individual 'music-pitch
                  :music-note music-note :register register))
           (edge
            (make-binary-edge/explicit-rule-components
             note-edge
             number-edge
             :category (category-named 'music-pitch t)
             :rule-name 'create-music-pitch
             :form (category-named 'n-bar)
             :referent i)))
      edge)))

             
