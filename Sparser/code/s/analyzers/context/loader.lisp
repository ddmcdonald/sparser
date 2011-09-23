;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers;context:"
;;;  Version:  August 1994

(in-package :sparser)

#| Operations over data structures that maintain contextual information
   that is germain to the article as a whole, e.g. the article's date,
   source, topic-company, etc.  |#

(lload "analyzers;context:manage sections")
(lload "analyzers;context:operations")

