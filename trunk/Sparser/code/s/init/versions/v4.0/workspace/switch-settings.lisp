;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991  David D. McDonald
;;; copyright (c) 1991,1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "switch settings"
;;;   Module:  "init;versions:<current version>:workspace"
;;;  version:  2.1 November 1991

;; initialized as a separate file 10/30

(in-package :sparser)


;;;------------------------
;;; debugging alternatives
;;;------------------------

(setq *break-on-unexpected-cases* t)
;(setq *break-on-unexpected-cases* nil)


;;;-----------------------
;;; operations on records
;;;-----------------------

;(setq *vet-records* t)
;(setq *vet-records* nil)
;(setq *accept-all-records* t)
;(setq *accept-all-records* nil)
;(setq *write-db-records-for-salient-objects* t)
;(setq *write-db-records-for-salient-objects* nil)


;;;-----------------------
;;; fixed timing routines
;;;-----------------------

;(setq *time-chart-level* t)
;(setq *time-chart-level* nil)


;;;------------------------
;;; Algorithm alternatives
;;;------------------------

;(setq *do-heuristic-boundary-detection* t)
;(setq *do-heuristic-boundary-detection* nil)
;(setq *do-conceptual-analysis* t)
;(setq *do-conceptual-analysis* nil)
;(setq *make-edges-for-unknown-words-from-their-properties* t)
;(setq *make-edges-for-unknown-words-from-their-properties* nil)


#|
(establish-character-translation-protocol :no-changes)
(establish-character-translation-protocol
 :convert-uppercase-to-lower)


(establish-version-of-Look-at-terminal
 :no-op)
(establish-version-of-Look-at-terminal
 :display-token-sequence)
(establish-version-of-Look-at-terminal
 :record-word-frequency)
(establish-version-of-Look-at-terminal
 :check-if-terminal-triggers-action)


(establish-kind-of-chart-processing-to-do
      :look-at-all-terminals)
(establish-kind-of-chart-processing-to-do
      :Look-at-terminals-and-maximal-edges)
(establish-kind-of-chart-processing-to-do
      :check-trigger-on-every-completion)
(establish-kind-of-chart-processing-to-do
      :add-heuristic-phrasal-analysis)
(establish-kind-of-chart-processing-to-do :SAS+brackets)


(establish-edge-protocol :treetops)
(establish-edge-protocol :all-edges)


(establish-version-of-next-terminal-to-use
 :no-whitespace)
(establish-version-of-next-terminal-to-use
 :pass-through-all-tokens)
(establish-version-of-next-terminal-to-use
 :single-level-polywords)

(Use-NL-as-word-Newline-FSA)
(Use-Newline-FSA/paragraph)
(Use-Newline-FSA-for-paras-&-indentation)
(Use-Newline-FSA/paras-&-indentation/linefeed)
(Use-Newline-FSA/indentation/linefeed)


(establish-version-of-assess-position-to-use
    :only-words-are-terminals)
(establish-version-of-assess-position-to-use
    :words-and-polywords-are-terminals)


(establish-version-of-assess-edge-label :all-edges)
(establish-version-of-assess-edge-label :treetops)


(establish-document-source-type :WSJ/DJNW/sissor)
(establish-document-source-type :Whos-News/typed)


(what-to-do-with-unknown-words :ignore)
(what-to-do-with-unknown-words :capitalization-&-digits)
(what-to-do-with-unknown-words :capitalization-digits-&-morphology)


(establish-version-of-complete :psp)
(establish-version-of-complete :subsume)
(establish-version-of-complete :ca/ha)
(establish-version-of-complete :no-op)


(establish-direction-Do-edge-looks-first :left)
(establish-direction-Do-edge-looks-first :right)


(when *open-stream-of-source-characters*
  (close-character-source-file))
|#


; (word-frequency-setting)
; (all-edges-setting)
; (top-edges-setting)

;(HA-setting)
;(establish-kind-of-chart-processing-to-do :SAS+brackets)
;(establish-kind-of-chart-processing-to-do :all-edges)

;; global parameters
; (setq *display-word-stream*  *standard-output*)

; (setq *send-db-records-to-listener* t)
; (setq *send-db-records-to-listener* nil)
