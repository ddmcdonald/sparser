;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "movement"
;;;   Module:  "grammar/sl/ISR/
;;;  version:  March 20114

;; Initiated 3/20/14

(in-package :sparser)

#| Something moves. Its location changes. It was at some location
before the event ("from") and it is a a different location now ("to").

The movement verb assigns roles to the constituents it is in construction
with. Incrementally as they are encountered. 

Presupositions and entailments are managed by typed methods, 
bundled together as a packet.

Roles (predicates)
  the thing that moves
  manner
  path
  from
  to

Cases:
  I throw a rock. I am the agent of its movement. I bring it about.

|#