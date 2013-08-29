;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "spread"
;;;    Module:   "sl;disease:"
;;;   version:   December 2007

;; initiated 12/28/07.
;;removed citations having to do with outbreaks specifically
;;moved these to sl;disease:outbreak

;;in a very general sense we can think of disease spreading events as being trivalent
;;i.e. spread involves a transmission from a source to a target location via some carrier
;;e.g. "bird flu is believed to spread along bird migration routes"
;;here the source is not specified, target = migration routes, vector = birds
;;from the articles however spreading events do not always manifest this way syntactically
;;there are other headwords, like "transmit," "find", which each have different syntax

;;a skeletal category definition, not yet implemented
#|(define-category spread
  :specializes event
  :instantiates self
  :binds ((source location)
          (target location)
          (vector carrier))
  :realization (:commmon-noun "spread"))|#
          

;;;-----------
;;; citations
;;;-----------

;; authorities in France had been carrying out tests on wild birds 
;;     over the past week in several locations in the east.
;; the three swans that tested positive

;; last month the virus was found on two poultry farms in the Czech Republic

;; the H5N1 strain has been found in poultry farms 
;;    in three other EU countries this year

;; The virus is highly contagious to birds

;; a virus that can be transmitted from human to human

;; bird flu is believed to spread along bird migration routes

;; France experienced a bird flu scare

;; 5 bbc_Feb-3.txt

;; bird flu has been found in poultry

;; 6 Newsfactor_Feb-16.txt

;; but catching the disease

;; cases of birds being found with the disease

;; the dead uncle of an iraqi girl who died last month 
;; after contracting the deadly bird flu virus

;; the uncle had caught the virus from his niece

;; a virus capable of being passed directly between humans

;; the uncle did in fact have bird flu h5n1 s
