;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1997  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:context:"
;;;  Version:  November 1995

;; initiated 6/18/92, populated 6/25
;; (12/15/93 v2.3) added [article]. 5/12/94 added [marker glifs].
;; 11/17/95 added [dateline]

(in-package :sparser)

#| Data structures that maintain contextual information that is 
   germain to the article as a whole, e.g. for the article's date,
   source, topic-company, etc.  |#

(gload "context-rules;article")
(gload "context-rules;source")
(gload "context-rules;date")
(gload "context-rules;dateline")
(gload "context-rules;document number")

(gload "context-rules;printers")

(gate-grammar *glifs*
  (gload "context-rules;marker glifs"))

