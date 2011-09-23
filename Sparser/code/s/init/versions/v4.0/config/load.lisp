;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1996  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "load"
;;;    Module:   "loaders;config:"
;;;   version:   January 2007
;;;
;;; This file establishes the value for all the specializing parameters
;;; that the loaders respond to.  


;;  2/5/91, v1.8.1, Started adding settings for the size of the controllable
;;  parameters.
;;  4/17 v1.8.2 added *maximum-number-of-edges-in-an-edge-vector*
;;  6/26 v1.8.5 took the values of the edges and chart back from the
;;       stratosphere
;;  7/23 v1.8.6 bumped the size of the edge resource to 400 because of
;;       wierdness in running tts on the Yoshinoya article
;; 10/7  v2.0 Redid/moved many of the symbols as part of the rearrangement
;;       of the code overall.
;; 12/28 None of the file-loading specializations were still being used
;;       so they were removed.
;; 5/9 v2.2 Added *maximum-number-of-pending-left-openers*
;; 4/19/94 revised some values and messages.  Ditto 6/5/96
;; 4/13/06 Bumped *maximum-number-of-edges-in-an-edge-vector* from 10 to 20
;;  to handle the deep parses of BBC material. 1/25/07 Wrapped everything in
;;  unless boundp's.

(in-package :sparser)

;;;--------------------------------------
;;; parameters for architectural options
;;;--------------------------------------

(unless (boundp '*make-chart-with-edge-vectors*)
  (defparameter *make-chart-with-edge-vectors*  t
    "Must be on if any parsing is to be done, but can be off if the
     image is going to do nothing beyond word frequency or other word-
     level observations. If left off the chart will require markedly
     less space."))


;;;---------------------------------------------------------------
;;; parameters governing the size of the resource data structures
;;;---------------------------------------------------------------

(unless (boundp '*number-of-positions-in-the-chart*)
  (defparameter *number-of-positions-in-the-chart* 500
    "The number of words that can be parsed before the chart resource 
     wraps."))

(unless (boundp '*length-of-edge-resource*)
  (defparameter *length-of-edge-resource* 5000
    "The number of edges that the parser can use before the edge 
     resource wraps."))

(unless (boundp '*maximum-number-of-edges-in-an-edge-vector*)
  (defparameter *maximum-number-of-edges-in-an-edge-vector* 20
    "The number of edges that can be piled up on a given position
     (starting or ending there). If this overflows, it is probably
     because of a loop in the phrase structure rules.  Note that this
     flag is only meaningful when using 'array' edge-vectors. For
     'kcons' edge-vectors there is no limit."))

(unless (boundp '*word-lookup-buffer-length*)
  (defparameter *word-lookup-buffer-length* 100
    "This is the maximun word length. If the tokenizer passes in a longer
     word an error will be signaled."))

(unless (boundp '*maximum-number-of-pending-left-openers*)
  (defparameter *maximum-number-of-pending-left-openers* 20
    "This fixes the length of a stack used for pending sgml tags and
     similar scoping elements that span indefinite lengths that are
     not well described by context free rules."))
