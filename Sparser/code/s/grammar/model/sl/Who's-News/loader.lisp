;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1997  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;sl:whos news:"
;;;  version:  March 1995

;; initiated 6/11/93 v2.3. Specialized the grammar modules 4/11/94. Broke
;; out secondary loader 4/19
;; 0.1 (10/12/94) move pct outside this loader to the grammar loader
;;     Redid calls as logicals 3/18/95

(in-package :sparser)

(gate-grammar *whos-news/core*
  (unless *pct*  ;; it's already been loaded
    (gload "pct;loader"))
  (gload "je;loader2"))

(defun whos-news-post-dossiers-loader ()
  ;; gets called when the name suggests. Allows odd references to specific
  ;; categories to refer to full referential-categories rather than prematurely
  ;; build simple categories
  (gate-grammar *whos-news-special-grammar*
     (gload "Who's News;random and hacks")))


#|  the files that were loaded for the Spring 1991 system
    to check for reference to possible rules to design
    for the new treatment

  (gload "who's news;job events:loader #1")
  (gload "who's news;acts:loader")
  (gload "who's news;job events:loader #2 1"))

  (gload "syntax;be cases")
  (gload "syntax;be rules")
  (gload "who's news;predications")
  (gload "who's news;commas1")
  (gload "who's news;prepositions:loader")
  (gload "who's news;time")
  (gload "who's news;vacancy")
  (gload "who's news;daughter table")
  (gload "who's news;csrs")
  (gload "who's news;complements")
  (gload "who's news;raising")
  (gload "who's news;co owners")
  (gload "who's news;in reports")
  (gload "who's news;person CA")
  (gload "who's news;patches")
  (gload "who's news;new")
  (gload "who's news;tests:loader"))  |#

