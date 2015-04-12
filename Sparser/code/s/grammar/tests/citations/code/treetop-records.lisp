;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "treetop-records"
;;;   Module:  "grammar;tests:citations:code:"
;;;  version:  January 2015

;; initiated 1/25/15

(in-package :sparser)

;;;--------------------------
;;; sentence-corpora defined
;;;--------------------------
;; Location is ignored right now (

(define-sentence-corpus dec-test *dec-tests*
  :location corpus
  :doc "Passages distributed December 16th, 2014 for extracting events")

(define-sentence-corpus dry-run *jan-dry-run*
  :location corpus
  :doc "two passages distributed January 5th, 2015")

(define-sentence-corpus overnight *overnight-sentences*
  :location corpus
  :doc "two short passages distributed at the PI meeting
    January 22d, 2015")

(define-sentence-corpus ERK *ERK-ABSTRACT*
  :location corpus
  :doc "material on ERK translocation to the nucleus")
                        

;;;-----------
;;; snapshots
;;;-----------

#| This file is automatically extended with the treetop snapshots
used for lightweight regression testing on named corpora. It should
be reaped periodically to remove earlier entries that are no long
relevant.  |#

(define-treetop-snapshot overnight "1/27/15 16:58:25"
 (1 . 5) (2 . 1) (3 . 20) (4 . 5) (5 . 3)
 (6 . 4) (7 . 2) (8 . 10) (9 . 16) (10 . 16)
 (11 . 9) (12 . 2) (13 . 4) (14 . 3) (15 . 11)
 (16 . 5) (17 . 6) (18 . 10) (19 . 6) (20 . 7))

(define-treetop-snapshot dry-run "1/27/15 17:3:6"
 (1 . 1) (2 . 2) (3 . 6) (4 . 3) (5 . 4)
 (6 . 5) (7 . 13) (8 . 8) (9 . 6) (10 . 9)
 (11 . 3) (12 . 4) (13 . 9) (14 . 13) (15 . 5)
 (16 . 11) (17 . 3) (18 . 6) (19 . 8) (20 . 8)
 (21 . 6) (22 . 12) (23 . 5) (24 . 5) (25 . 3)
 (26 . 5) (27 . 6) (28 . 3) (29 . 3) (30 . 10)
 (31 . 2) (32 . 3) (33 . 5) (34 . 18) (35 . 4)
 (36 . 16) (37 . 1) (38 . 5) (39 . 2) (40 . 4)
 (41 . 12) (42 . 7))

(define-treetop-snapshot dec-test "1/27/15 17:36:30"
 (1 . 1) (2 . 8) (3 . 3) (4 . 3) (5 . 1)
 (6 . 7) (7 . 2) (8 . 3) (9 . 6) (10 . 3)
 (11 . 2) (12 . 4) (13 . 4) (14 . 10) (15 . 2)
 (16 . 3) (17 . 5) (18 . 17) (19 . 12) (20 . 19)
 (21 . 3) (22 . 14) (23 . 22) (24 . 19) (25 . 8)
 (26 . 6) (27 . 8) (28 . 7) (29 . 8) (30 . 1)
 (31 . 1) (32 . 8) (33 . 6) (34 . 8) (35 . 4)
 (36 . 15) (37 . 7) (38 . 11) (39 . 8) (40 . 6)
 (41 . 6) (42 . 9) (43 . 5) (44 . 4) (45 . 4)
 (46 . 8) (47 . 1) (48 . 7) (49 . 9) (50 . 6)
 (51 . 2) (52 . 8) (53 . 6) (54 . 2) (55 . 14)
 (56 . 6) (57 . 14))


(define-treetop-snapshot erk "4/11/15 17:36:30"  
  (1 . 3) (2 . 4) (3 . 6) (4 . 4) (5 . 13) (6 . 4) (7 . 17) (8 . 9) (9 . 9) (10 . 13) (11 . 8))