;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 SIFT LLC  -- all rights reserved
;;;
;;;     File:  "Strider"
;;;   Module:  "init;workspaces:"
;;;  version:  June 2012

;; Initiated 5/7/13. Adding bits through 6/6/13

;;  (load "/Users/ddm/sparser/load-nlp.lisp")

(in-package :sparser)

;;--- display parameters

(setq *tts-after-each-section* t)


;;--- control parameters

;; (setq *break-on-new-bracket-situations* nil)

(setq *do-domain-modeling-and-population* t) ;; ignores null referents
;; Need to adapt the segment-level switches and do this better



;;--- text

;; ddm's hard pathnames. Replace with a logical or computed form
;;  (f "/Users/ddm/sift/nlp/Grok/corpus/helicopter-attack.txt")

;;  (f "/Users/ddm/ws/Strider/ws/Aljazeera_9-7-12.txt")
;;  (f "/Users/ddm/ws/Strider/ws/OSC Articles.txt")

;;      (trace-reclaimation)
;; Shaul Mofaz, former Chief of Staff of the Israeli Defense Forces, head of Kadima, and leader of the opposition in the Knesset,
#| 
(p "Shaul Mofaz, former Chief of Staff of the Israeli Defense Forces,")

2do: 6/7/14
 - Run whole articles
     - copy the scheme for setting up a corpus from Grok
     - write that up some
     - add a break option with *tts-after-each-section*
 - Setup a little bit of general segment handling (lifted from Grok)
   to give us a platform for noting named entities, and other items of interest
 - Why does person individual here (and elsewhere) have a plist full of rules?
 - Expand indexing of sequences so find doesn't need to know the category
 - Do the other titles and refine position-at-co to appreciate them
     head of Kadima
     leader of the opposition in the Knesset
       - probably entails predefining Kadima and the Knesset (ditto IDF)
       - which will require a useful extension of the conceptualization
         of named-entity

Meta-dot
  *trace-reclaimation* reclaim-all-instances
  collection string/sequence spread-sequence-across-ordinals
  string-for/name person named-object index-person-name-to-person
  link-named-object-to-name-word names/parens-after-names.lisp

|#
;;--- setting up a grammar module for Strider-specific content

(define-grammar-module *middle-east*
  :name "The Middle East"
  :parent *sublanguages*)

(include-grammar-module *middle-east*)

(def-logical-pathname "mideast;" "sl;middle-east:")

(gate-grammar *middle-east*
  (gload "mideast;loader"))



