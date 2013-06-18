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
;; (setq *break-before-creating-name* t)

(setq *do-domain-modeling-and-population* t) ;; ignores null referents
;; Need to adapt the segment-level switches and do this better



;;--- text

;; ddm's hard pathnames. Replace with a logical or computed form
;;  (f "/Users/ddm/sift/nlp/Grok/corpus/helicopter-attack.txt")

;;  (f "/Users/ddm/ws/Strider/ws/Aljazeera_9-7-12.txt")
;;  (f "/Users/ddm/ws/Strider/ws/OSC Articles.txt")

(def-logical-pathname "Strider;" "corpus;Strider:")
(def-logical-pathname "June15;" "Strider;OSC-rmr-15Jun13:")

(defvar june15th
  (define-document-stream '|Roger's articles as of June 15th 2013|
    :style-name 'hand-typed/no-headers
    :directory "June15;"
    :unified t))

#|
 (tuned-grok)

 (grok-pass-one june15th)
 (grok-pass-two june15th)
 (grok-pass-three june15th)
|#

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
  *trace-reclaimation* reclaim-all-instances get-tag-for
  collection string/sequence spread-sequence-across-ordinals
  string-for/name person named-object index-person-name-to-person
  link-named-object-to-name-word names/parens-after-names.lisp
  relationship-to-country 

|#
;;--- setting up a grammar module for Strider-specific content

(define-grammar-module *middle-east*
  :name "The Middle East"
  :parent *sublanguages*)

(include-grammar-module *middle-east*)

(def-logical-pathname "mideast;" "sl;middle-east:")

(gate-grammar *middle-east*
  (gload "mideast;loader"))


;; Something is off with the error handler. Going to the listener on
;; the first error it gets, rather than collecting them.
;;  (tb-segmentation-tester "/Users/ddm/sift/nlp/corpus/treebank/treebank-00.txt")


