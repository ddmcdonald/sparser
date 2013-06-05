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

;; (setq *tts-after-each-section* t)


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
#| Recognizing the IDF as a predefined company yields a position, which will need
some more. position cs rules, and an adjunct ETF to tie it to person. 
|#
;;--- setting up a grammar module for Strider-specific content

(define-grammar-module *middle-east*
  :name "The Middle East"
  :parent *sublanguages*)

(include-grammar-module *middle-east*)

(def-logical-pathname "mideast;" "sl;middle-east:")

(gate-grammar *middle-east*
  (gload "mideast;loader"))



