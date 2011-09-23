;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-

;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$

;;;    File: "checkpoints"
;;;  Module: "grammar/model/sl/ambush/
;;; version: August 2007

;; Initiated 8/1/07

(in-package :sparser)

;;--- 1st create the minimal category

(find-or-define-kind "checkpoint")
  ;; Are these just points of reference for the people in the convoy, or are
  ;; they "checkpoints" like we hear about in the news, where soldiers are
  ;; maning a baracade and making all traffic stop there to be checked out, etc.
; That does

;;;---------------------------------------
;;; "we know that's our first checkpoint"
;;;---------------------------------------
;;--- There's an implied sequence of checkpoints. Is that useful to represent?
;;    (e.g. they got through the first N, but no further)
; Ultimately a question of utility to the modeler (the AI in the AAR). If we
; want it, we create a define-type-of-collection function to ease the burden,
; and a specialization protocol that will mutate a collection into a sequence
; when we see 'first checkpoint'.  Note that the function implies a notation for
; binding a variable as part of a category definition, and that might not be
; implemented yet. 

;; "is everybody observing the map you can go ahead and look at it and i put in the checkpoints"
;;     As it happens, the default treatment of plurals will make a subtype collectionn.
;;     Seems to work, but should test that we get the same object every time.

(define-lambda-variable 'position-of-checkpoint-in-sequence
  ;; this is a plausible constructed name for the variable we'd get if we
  ;; did it seriously by specializing the sequence category
  'ordinal 'checkpoint)

(def-cfr checkpoint (ordinal checkpoint)
  :form np
  :referent (:head right-edge
             :bind (position-of-checkpoint-in-sequence . left-edge)))

;                                 SOURCE-START
;e0    PRONOUN/FIRST/PLURAL    1 "we" 2
;                                 "know"
;e1                               "that"
;e5    BE                      4 "' s" 6
;e3    PRONOUN/FIRST/PLURAL    6 "our" 7
;e8    CHECKPOINT              7 "first checkpoint" 9
;                                 END-OF-SOURCE


;;;-------------------------------
;;; "once you hit checkpoint one"
;;;-------------------------------

(define-lambda-variable 'checkpoint-designator
  'number ;; too specific?
  'checkpoint)

(def-cfr checkpoint (checkpoint sequence-of-numbers)
  :form np
  :referent (:head left-edge
	     :bind (checkpoint-designator . right-edge)))


;; once you hit checkpoint one
;; after assassin one seven HAS CROSSED  checkpoint one 
;; that's the (%hesitation) tactical checkpoint there just go ahead
;; crossing checkpoint 
;; crossing checkpoint one
;; i just (%hesitation) crossed checkpoint one
;; crossing checkpoint one now
;; we're through checkpoint one
;; we have crossed the checkpoint
;; at checkpoint two
;; passing checkpoint TWO
;; all vehicles had cleared checkpoint two
;; REACHING FIVE now