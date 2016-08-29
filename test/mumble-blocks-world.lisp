;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: MUMBLE -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.

(in-package :mumble)

;;; Generation from semantics in the blocks world.

(deftest (say block)
  (mumble-says "a block.")
  "a block")

(deftest (say big red block)
  (mumble-says "a big red block.")
  "a big red block")

(deftest (say build three step staircase)
  (mumble-says "Build a three step staircase.")
  "build a three step staircase")

(deftest (say let\'s build staircase)
  (mumble-says "Let's build a 3 step staircase.")
  "let's build a three step staircase")

(deftest (say make steps green)
  (mumble-says "Make the steps green.")
  "make the steps green")

(deftest (say not enough green blocks)
  (mumble-says "We do not have enough green blocks.")
  "we doesn't have enough green block") ; wrong tense, missing plural

(deftest (say make tops of steps red)
  (mumble-says "Make the tops of the steps red.")
  "make the tops of the steps red")

(deftest (say make bottom row)
  (mumble-says "Make the bottom row.")
  "make the bottom row")

(deftest (say put green block on table)
  (mumble-says "Put a green block on the table.")
  "put a green block on the table")

(deftest (say put another block next to it)
  (mumble-says "Put another block next to it.")
  "put another block next to it")

(deftest (say add red block next to that block)
  (mumble-says "Now add a red block next to that block.")
  "now add a red block next to that block")

(deftest (say put green block on first block)
  (mumble-says "Now put a green block on top of the first block.")
  "now put a green block on the first block")

(deftest (say put block on bottom middle block)
  (mumble-says "Put a red block on the bottom middle green block.")
  "put a red block on the bottom middle green block")

(deftest (say make row of two green blocks)
  (mumble-says "Make a row of two green blocks.")
  "make a row of two green blocks")

(deftest (say put red block at end)
  (mumble-says "Put a red block at the end.")
  "put a red block on the end")

(deftest (say put another at end)
  (mumble-says "Put another green block on the green block at the end of the row.")
  "put another green block on the green block on the end of the row") ; dup prep

#+(or) ; "on the left" should be a relative location, not a modifier
(deftest (say put another at end on left)
  (mumble-says "Put another green block on the green block at the end of the row on the left.")
  "put another green block on the green block on the end of the row on the left")

(deftest (say put block on it)
  (mumble-says "Now put a block on top of it.")
  "now put a block on it")

#+(or) ; two trees: BLOCK, COLOR
(deftest (say top block should be red)
  (mumble-says "The top block should be red.")
  "the top block should be red")

(deftest (say put row on table)
  (mumble-says "Put a row of three blue blocks on the table.")
  "put a row of three blue blocks on the table")

(deftest (say put row on top)
  (mumble-says "Put a row of two blocks on top.")
  "put a row of two blocks on top")

(deftest (say put row on bottom row)
  (mumble-says "Put a row of two green blocks on top of the bottom row.")
  "put a row of two green blocks on the bottom row")

#+(or) ; not a question
(deftest (say which end)
  (mumble-says "Which end?")
  "which end?")

(deftest (say left end of row)
  (mumble-says "The left end of the row.")
  "left end of the row") ; missing determiner

(deftest (say put row on left end of row)
  (mumble-says "Put a row of two blocks on top of the left end of the bottom row.")
  "put a row of two blocks on left end of the bottom row") ; missing determiner

(deftest (say put stack on table)
  (mumble-says "Put a stack of two red blocks on the table.")
  "put a stack of two red blocks on the table")

(deftest (say add block at right end of row)
  (mumble-says "Add a red block at the right end of the row.")
  "add a red block on right end of the row") ; missing determiner

(deftest (say push two blocks together)
  (mumble-says "Push the two blocks together.")
  "push the two blocks together")

(deftest (say push together block and another)
  (mumble-says "Push together the block and another block.")
  "push together the block and another block")
