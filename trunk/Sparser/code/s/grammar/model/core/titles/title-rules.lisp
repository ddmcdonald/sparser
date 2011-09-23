;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "title rules"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  April 1991      system version 1.8.2

(in-package :CTI-source)


;;;------------------------
;;; phrase structure rules
;;;------------------------

;;-------- prepositional phrases

(def-cfr title-pp ("as" title)
  :form pp
  :referent (:daughter right-edge))

(def-cfr title-pp ("in" title)
  :form pp
  :referent (:daughter right-edge))



(def-cfr title-pp ("as" title/plural)
  :form pp
  :referent (:daughter right-edge))

(def-cfr title-pp ("in" title/plural)
  :form pp
  :referent (:daughter right-edge))


;;;------------------------------------
;;; folding in determiners (as no-ops)
;;;------------------------------------

(def-cfr title  ( "a" title )
  :form NP
  :referent (:daughter right-edge))

(def-cfr title  ( single-capitalized-letter title )
  ;; This wildly overgenerates, but it's the only way to get
  ;; the capitalized form of "a" and still have that letter
  ;; form an initial under the :top parsing alg.
  :form NP
  :referent (:daughter right-edge))

(def-cfr title  ( "an" title )
  :form NP
  :referent (:daughter right-edge))


(def-cfr title  ( "the" title )
  :form NP
  :referent (:daughter right-edge))


(def-cfr title  ( "another" title )
  :form NP
  :referent (:daughter right-edge))


(def-cfr title  ( "other" title/plural )
  :form NP
  :referent (:daughter right-edge))

(def-cfr title  ( "both" title/plural )
  :form NP
  :referent (:daughter right-edge))



(def-cfr title  (ordinal title)       ;; "the sixth director"
  :form NP
  :referent (:daughter right-edge))


;;;---------------------------------------
;;; extending other phrases as an adjunct
;;;---------------------------------------

(def-cfr job-event (job-event title-pp)
  :form S
  :referent (:composite job-event+title
                        left-edge right-edge))


;;;----------------------------------
;;; extending with certain modifiers
;;;----------------------------------

(def-cfr title  ( country title )
  :form NP
  :referent (:daughter right-edge))


(def-cfr title  ( top title )
  :form NP
  :referent (:daughter right-edge))


(def-cfr title  ( temporal-adverb title )
  :form NP
  :referent (:daughter right-edge))


(def-cfr title  ( "ousted" title )
  :form NP
  :referent (:daughter right-edge))


(def-cfr title  ( title "emeritus" )
  :form NP
  :referent (:daughter left-edge))


(def-cfr title  ( sequencer title )
  :form NP
  :referent (:daughter left-edge))


;;;-------------------------------
;;; extending with title adjuncts
;;;-------------------------------

(def-cfr title/plural (title/plural of-the-board)
  :referent (:daughter left-edge))

(def-cfr title (title of-the-board)
  :referent (:daughter left-edge))


;;;-------------------------------
;;; setup for larger compositions
;;;-------------------------------

(def-cfr comma-title ("," title)
  :referent (:daughter right-edge))

(def-cfr comma-to-title ("," to-title)
  :referent (:daughter right-edge))

