;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2018 SIFT, LLC.
;;;
;;;     File:  "verbs"
;;;   Module:  "grammar/model/sl/music/"
;;;  version:  September 2018

;; Initiated 9/3/18 for verbs used in Museci sentences to avoid gratuitous
;; clash with bio. 

(in-package :sparser)

;; "Delete everything before beat 2 of measure 1"
;;
(define-category delete
  :specializes process
  :mixins (simple-action)
  :restrict ((theme (:or endurant sequence)))
  :realization (:verb "delete"))

;; "insert a F4 whole note on beat 1 of measure 4"
;;
(define-category insert ;; something somewhere -- see "put"
  :specializes process
  :mixins (move-something-verb)
  :realization (:verb "insert")
  :documentation "The move mixin provides for a physical or
 social agent as the subject. Something physical as the direct
 object (theme), and location variable for where it moves.")

;; "invert all the notes around G4"
(define-category invert
  :specializes process
  :mixins (simple-action)
  :realization (:verb "invert"))

;; "Move all the notes in measure 2 down an octave
;;    -- move their pitch, not their location.
;;  Should fail the 'can-change-location' constraint on the theme
;;  or the pitch interval will turn up odd for a location

;; "put a C in the rest"
;; "put a C where the rest is"
;; "put a C on top of the E"

;; "reverse the first and last notes"
;; "reverse everything between the C in measure 1 and the E in measure 2"
;;   feels like a single post-nominal argument, but it has a requirement
;;   that there are two elements that are going to exchange places
;;
(define-category reverse
  :specializes process
  :mixins (simple-action)
  :realization (:verb "reverse"))

;; "transpose the C up 1 half step"
;;
(define-category transpose
  :specializes process
  :mixins (simple-action)
  :binds ((amount step))
  :realization (:verb "transpose"
                :up amount))

;; "work on measures 1 and 2"
