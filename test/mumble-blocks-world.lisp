;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: MUMBLE -*-
;;; Copyright (c) 2016-2019,2023 SIFT LLC. All Rights Reserved.
;;;
;;;     File:  "mumble-blocks-world"
;;;   Module:  /sparser/test/
;;;  Version:  August 2023

(in-package :mumble)

;;; Generation from semantics in the blocks world.

(deftest (say block)
  (mumble-says "a block.")
  "a block")

(deftest (say b6)
  (mumble-says "B6")
  "B6")

(deftest (say toyota)
  (mumble-says "the Toyota block")
  "The Toyota Block")

(deftest (say big red block)
  (mumble-says "a big red block.")
  "a big red block")

(deftest (say build three step staircase)
  (mumble-says "Build a three step staircase.")
  "build a three step staircase")

(deftest (say let\'s build staircase) ; tests explicit-suggestion path
  (mumble-says "Let's build a 3 step staircase.")
  "let's build a three step staircase")
;; "step" goes through 'no-bindings' path

(deftest (say there be block) ; tests 'there-exists' path
  (mumble-says "There is a block")
  "there is a block")

;; 11/11/19 Actual value: "Red.".
;;  bad parse. Make-polar-adjective-question made the wrong assumptions
(deftest (say question block red) ; test polar-question, copular-predication
  (mumble-says "is the block red?")
  "Is the block red?")

(deftest (say red blocks) ;; collection w/o items. 'red' is attribute-value
  (mumble-says "red blocks")
  "red blocks")

;; 11/11/19 Actual value: "to make"
;;    wrong parse -- "steps" taken in its music sense
(deftest (say make steps green) ; predicate-binding case: subtracts a diff given
  (mumble-says "Make the steps green.") ; how Rusty analyzes the semantics
  "make the steps green")

(deftest (say bottom row) ; headed on 'row'. 'bottom' is a location
  (mumble-says "the bottom row.")
  "the bottom row")

(deftest (say object dependent) ;; object-dependent-location path
  (mumble-says "end of the row")
  "end of the row")

;; "to the left of the block" -- sem is a vanila pp

(deftest (say left of block) ; relative-location case (orientation-dependent-location)
  (mumble-says "the left of the block")
  "the left of the block")

(deftest (say not enough green blocks)
  (mumble-says "We do not have enough green blocks.")
  "we don't have enough green blocks")

;; 11/11/19 Actual value: "make the the steps tops red".
;; 8/1/23 Actual value: "make the tops red"
;;  music sense of "steps".
;; Funny parse, [the steps] is in two places
;; Predicate is the whole the tops of the steps red
;; Works 8/16/23 -- was the adjunctive-modifier problem
(deftest (say make tops of steps red)
  (mumble-says "Make the tops of the steps red.")
  "make the tops of the steps red")

(deftest (say make bottom row)
  (mumble-says "Make the bottom row.")
  "make the bottom row")

(deftest (say put green block on table)
  (mumble-says "Put a green block on the table.")
  "put a green block on the table")

;; 8/1/23 No analysis for "another block" + "next to it"
;; Actual value: "put another block"
;; 8/17/23 fixed -- repaired earlier efforts to notice legal location arguments
(deftest (say put another block next to it)
  (mumble-says "Put another block next to it.")
  "put another block next to it")


;; 8/1/23 Actual value: "now".
;; No analysis for "a red block" + "next to that"
(deftest (say add red block next to that block)
  (mumble-says "Now add a red block next to that block.")
  "now add a red block next to that block")

;; 11/11/19 Actual value: "now put a green block on top of the block".
;;  The ordinal ("first") is there but Archie rules are ignoring it
;; 8/1/23 Actual value: "now".
(deftest (say put green block on first block)
  (mumble-says "Now put a green block on top of the first block.")
               "now put a green block on top of the first block")

(deftest (say put block on bottom middle block)
  (mumble-says "Put a red block on the bottom middle green block.")
  "put a red block on the bottom middle green block")

;; 8/1/23 Actual value: "make a row"
;; Works 8/16/23 -- was the adjunctive-modifier problem
(deftest (say make row of two green blocks)
  (mumble-says "Make a row of two green blocks.")
  "make a row of two green blocks")

#| This presently (9/18/17) fails because the relative location
 énd does not have a ground that it relative to ("the end of what")
 and the realization lookup dies because the mdata can't apply.
 The proper fix is to have a post-process in the parsing that 
 appreciates that this individual logically entails the existence
 of a value for its ground, which we would get from the context
 provided by the discourse or by the present scene. In lieu of
 making that lookup in a test we have the parser supply a special
 individual (or something) that will make the realization machinery
 happy.
(deftest (say put red block at end)
  (mumble-says "Put a red block at the end.")
  "put a red block at the end")
|#

;; 11/12/19 actual: "put another green block on the it block at the end of the row"
;;  It's pronominalizing the second instance of 'green'
;;  which gets through because of ugly patch in m::case-from-labels
;;  Need to block the pronoun choice further upstream
;; Fixed 4/26/23 now blocked in should-be-pronominalized-in-present-context?
(deftest (say put another at end)
  (mumble-says "Put another green block on the green block at the end of the row.")
  "put another green block on the green block at the end of the row")

#+(or) ; "on the left" should be a relative location, not a modifier
(deftest (say put another at end on left)
  (mumble-says "Put another green block on the green block at the end of the row on the left.")
  "put another green block on the green block on the end of the row on the left")

#+(or) ; Doesn't produce the "of"
(deftest (say put block on it)
  (mumble-says "Now put a block on top of it.")
  "now put a block on top of it")

;; 11/11/19 Actual value: "red"
;; new adj as head analysis -- lost tense/aspect, the color-value
;; individual doesn't have indication of the predication
(deftest (say top block should be red)
  (mumble-says "The top block should be red.")
  "the top block should be red")

;; 8/1/23  No analysis for "a row" + "of three blue blocks"
;; Actual value: "put a row on the table"
(deftest (say put row on table)
  (mumble-says "Put a row of three blue blocks on the table.")
  "put a row of three blue blocks on the table")

;; 8/1/23 No analysis for "a row" + "of two blocks"
;; Actual value: "put a row on top"
(deftest (say put row on top)
  (mumble-says "Put a row of two blocks on top.")
  "put a row of two blocks on top")

;; 8/1/23 No analysis for "a row" + "of two green blocks"
;; Actual value: "put a row on top of the bottom row"
(deftest (say put row on bottom row)
  (mumble-says "Put a row of two green blocks on top of the bottom row.")
               "put a row of two green blocks on top of the bottom row")

#+(or) ; not a question
(deftest (say which end)
  (mumble-says "Which end?")
  "which end?")

#+(or) ; Doesn't produce the "of"
(deftest (say left end of row)
  (mumble-says "The left end of the row.")
  "the left end of the row")

#+(or) ; doesn't produce "of" after "top"
(deftest (say put row on left end of row)
  (mumble-says "Put a row of two blocks on top of the left end of the bottom row.")
  "put a row of two blocks on top of the left end of the bottom row")

;; 8/1/23 No analysis for "a stack" + "of two red blocks"
;; No analysis for "a stack" + "of two red blocks on the table"
;; Actual value: "put a stack".
(deftest (say put stack on table)
  (mumble-says "Put a stack of two red blocks on the table.")
  "put a stack of two red blocks on the table")

;; 11/11/19 Actual value: "add a red block at right"
;; inadequate parse: don't get 'right end...'
(deftest (say add block at right end of row)
  (mumble-says "Add a red block at the right end of the row.")
  "add a red block at the right end of the row")

(deftest (say push two blocks together)
  (mumble-says "Push the two blocks together.")
  "push the two blocks together")

(deftest (say push together block and another)
  (mumble-says "Push together the block and another block.")
  "push together the block and another block")

(deftest (say push block to other block)
  (mumble-says "Push the block to the other block.")
  "push the block to the other block")

(deftest (say push block to end of table)
  (mumble-says "Push the block to the end of the table.")
  "push the block to the end of the table")

(deftest (say hold ball)
  (mumble-says "hold the ball")
  "hold the ball")


;;;--- test multiple subcategorizations

(deftest (say want block) ;; 11/11/19 -- doesn't parse. Agent needs narrowing
  (mumble-says "I want the block")
  "I want the block")

(deftest (say want hold block)
  (mumble-says "I want to hold the block")
  "I want to hold the block")

(deftest (say want you hold block)
  (mumble-says "I want you to hold the block")
 "I want you to hold the block")

;;;--- from clic-bw-tests

(deftest (say B7 on table)
  (mumble-says "put B7 on the table")
  "put B7 on the table")

(deftest (say B1 B2 together)
  (mumble-says "push B1 and B2 together")
  "push B1 and B2 together")

(deftest (say B1 on B2)
  (mumble-says "put B1 on B2")
  "put B1 on B2")

;; 7/7/17 This doesn't lift and needs a 2d B7 in place of "it"
;; "put B7 on the table and put B8 on it"
