;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "C3-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  March 2014

;; Initiated 9/16/13. Elaborated through 3/26/14

(in-package :sparser)

;;//// Add quantifiers to the C3 grammar
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

; (load "/Users/ddm/sift/nlp/C3/code/ISR-ripper.lisp")

;;--- Setting up restrictions
; decode-category-parameter-list handle-variable-restrictions

;;  => load-nlp => "scripts/C3" to set *c3* parameter
;;  everything -- unless boundp the parameter
;;     grammar-config dispatch, New file c3
;;  config;launch -- setting  (c3-setting)
;;  setting -> establish-kind-of-chart-processing-to-do = :c3-protocol
;;   => (initiate-c3-protocol) -- new file in drivers/chart/psp/
;;      crib from inititate-top-edges-protocol
#| 
 => scan-segment is the loop
Calls read-through-segment-to-end (same file), 
which does the scan-next-position calls and bracket analysis
and returns once it's found the end of the segment.

Every word has  single-rewrite rule ends up in 

;;--- single word, unambiguous edge
;; transition referent to situation in referent-from-unary-rule 
;; at the end when the *c3* flag is up via 
;; incorprate-referent-into-the-situation (referent rule edge)
;;
;;--- composition of two edges into a third would be
;; same idea, but in referent-from-rule

What happens in incorporate-referent-into-the-situation (referent of single word)
depends on the current state, which comes from calling phrasal-state.
All in grammar/rules/situation/

The phrasal-state is the value of the state field of the situation object.
The choice of situation object, e.g. sentence-situation in objecs/doc/situation.lisp
 is set up once by designate-sentence-container and then used by
 make-sentence-container/situation which is called from make-sentence-container
 when start-sentence is called which is kicked from from initialize-paragraphs and
 on up: objects/doc/object1.lisp

States are objects with transition tables (grammar/rules/situation/state.lisp)
that may be for assembling phrases, sentences, or the whole discourse. 

They go with situation classes with the same range. Though right now (3/20/14)
it's not clear how to structure the discourse. 

States standup indexicals: grammar/rules/situation/variables.lisp





|#

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
;   incorporate-referent-into-the-situation  incorporate-phrasal-head
;   the-situation  current-peg  update-situation-state
;   add-indexical-to-situation

; ontology is all in grammar/sl/ISR/




;;--- 
#|  to do

|#