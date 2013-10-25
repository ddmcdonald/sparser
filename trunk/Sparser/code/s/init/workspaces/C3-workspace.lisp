;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "C3"
;;;   Module:  "init;workspaces:"
;;;  version:  September 2013

;; Initiated 9/16/13

(in-package :sparser)

;; (setq cl-user::script :c3)
;; (load "/Users/ddm/sparser/load-nlp.lisp")

;;  While there's teething problems getting it all loading 
; (lload "objects;situation:loader")
; (gload "sit-rules;loader")
; (gload "isr;loader")

; (c3-setting)
; (just-bracketing-setting)
; (word-frequency-setting)

;;--- Setting up restrictions
; decode-category-parameter-list handle-variable-restrictions

;;  => load-nlp => "scripts/C3" to set *c3* parameter
;;  everything -- unless boundp the parameter
;;     grammar-config dispatch, New file c3
;;  config;launch -- setting  (c3-setting)
;;  setting -> establish-kind-of-chart-processing-to-do = :c3-protocol
;;   => (initiate-c3-protocol) -- new file in drivers/chart/psp/
;;      crib from inititate-top-edges-protocol

;; c3-grammar-module-choices  lambda-variable-named itype

;; (c3-setting)

; the-Master-loader load-the-grammar  c3-grammar-module-choices


;;--- single word, unambiguous edge
;; transition referent to situation in referent-from-unary-rule 
;; at the end when the *c3* flag is up via 
;; incorprate-into-the-situation (referent rule edge)
;;
;;--- composition of two edges into a third
;; same idea, but in referent-from-rule

(setq cl-user::location-of-text-corpora ;; copied from Grok
 "Users:ddm:sift:nlp:corpus:")          ;;/// Needs one location  !!
;; Note the pathname is given in ancient Mac syntax. 
(def-logical-pathname "corpus;" cl-user::location-of-text-corpora)

(def-logical-pathname "gboss;"  "corpus;gboss:")

(defvar gboss
  (define-document-stream '|ISR transcripts from EC10|
    :style-name 'hand-typed/no-headers
    :directory "gboss;"
    :unified t))




;;--- 
#|  to do

|#