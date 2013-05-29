;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013  SIFT LLC  -- all rights reserved
;;;
;;;     File:  "Strider"
;;;   Module:  "init;workspaces:"
;;;  version:  May 2012

;; Initiated 5/7/13

;;  (load "/Users/ddm/sparser/load-nlp.lisp")

(in-package :sparser)

;;--- display parameters

;; (setq *tts-after-each-section* t)


;;--- control parameters

;; (setq *break-on-new-bracket-situations* nil)


;;--- text

;; ddm's hard pathnames. Replace with a logical or computed form
;;  (f "/Users/ddm/sift/nlp/Grok/corpus/helicopter-attack.txt")

;;  (f "/Users/ddm/ws/Strider/ws/Aljazeera_9-7-12.txt")
;;  (f "/Users/ddm/ws/Strider/ws/OSC Articles.txt")

;; Shaul Mofaz, former Chief of Staff of the Israeli Defense Forces, head of Kadima, and leader of the opposition in the Knesset,

;; "defense" is defined as a title-modifier, while "Defence" is a name-word
;; ditto for "forces" which is a military-force

;;--- setting up a grammar module for Strider-specific content

(define-grammar-module *middle-east*
  :name "The Middle East"
  :parent *sublanguages*)

(include-grammar-module *middle-east*)

(def-logical-pathname "mideast;" "sl;middle-east:")

(gate-grammar *middle-east*
  (gload "mideast;loader"))


(setq *do-domain-modeling-and-population* t) ;; ignores null referents



