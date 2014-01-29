;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "C3-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  January 2014

;; Initiated 9/16/13. Elaborated through 1/23/14

(in-package :sparser)

;;//// Add quantifiers to the grammar

;; (setq cl-user::script :c3)
;; (load "/Users/ddm/sparser/load-nlp.lisp")

;; While there's teething problems getting it all loading 
;;  or if we use a load that doesn't set *c3* 

;; (ad-hoc-c3-loader)
(defun ad-hoc-c3-loader ()
  (setq *c3* t)
  (lload "objects;situation:loader")
  (gload "sit-rules;loader")
  (gload "isr;loader")
  (create-ford-motor-company)
  (create-wakil)
  (c3-setting))

; (p "black ford suv has entered wakil")

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

;; Text that breaks -- for Alex
;; (p "Saudi Arabia has confirmed six new infections from the potentially fatal MERS virus, the World Health Organization reported Friday, raising the total number of cases worldwide to 136. Most of the cases, which have resulted in 58 deaths, have been in Saudi Arabia. The latest cases, the W.H.O. said in a statement, afflicted three men and three women, all from the Riyadh region. MERS stands for Middle East Respiratory Syndrome. It is believed to be spread by bats and possibly camels. The concentration of MERS cases in Saudi Arabia has raised concern about the possible spread of the infection during the annual pilgrimage to Mecca and Medina later this month, when millions of Muslims from around the world visit the kingdom.")



;;;---------
;;;  meta-.
;;;---------

;; c3-grammar-module-choices  lambda-variable-named itype

; the-Master-loader load-the-grammar  c3-grammar-module-choices

; traces: trace-c3
; protocol: initiate-c3-protocol  bracket-that-starts-the-segment
;   incorprate-into-the-situation  incorporate-phrasal-head
;   the-situation  current-peg  update-situation-state
;   add-indexical-to-situation

; ontology is all in grammar/sl/ISR/


;;--- single word, unambiguous edge
;; transition referent to situation in referent-from-unary-rule 
;; at the end when the *c3* flag is up via 
;; incorprate-into-the-situation (referent rule edge)
;;
;;--- composition of two edges into a third
;; same idea, but in referent-from-rule


;;--- 
#|  to do

|#