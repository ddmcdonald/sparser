;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$

;;;    File: "call-signs"
;;;  Module: "grammar/model/sl/ambush/
;;; version: July 2007

;; Call signs, acknowledgements, the base comms protocol.

;; Initiated 7/16/07

(in-package :sparser)

;;;------------
;;; call-signs
;;;------------

;; "assassin one six"

;;/// also need a setup for the alphanumeric style
;;  e.g. "romeo three tango"

(define-category call-sign
  :instantiates self
  :binds ((base . call-word)
	  (number . number-sequence))
  ;; Unclear whether the realization is a generalizable pattern,
  ;; so setting it up as ad-hoc rules rather than a schema
  ;; //// need a way to systematize a set of "ad-hoc" rules
  ;; even if they really are a one-off
  :index (:temporary :sequential-keys base number))


;;--- the "base" to a call-sign, e.g. "assassin"
;; ////Get David to lookup what the right term is

(define-category call-word
  :instantiates self
  :binds ((word :primitive word))
  ;; Proper noun is close to what these are, and by including
  ;; a realization we get the rule for free.
  :realization (:proper-noun word))

(define-with-all-instances-permanent
  ;; technically this stuff ought to be in a dossier, but since
  ;; they're ad-hoc, maybe this is a better model
  (define-individual 'call-word :word "assassin"))

;;--- the rule

(def-cfr call-sign (call-word sequence-of-numbers)
  :form nil
  :referent (:instantiate-individual call-sign
	     :with (base left-edge
		    number right-edge)))

(def-cfr call-sign (call-word ones-number) ;; "assassin six"
  :form nil
  :referent (:instantiate-individual call-sign
	     :with (base left-edge
		    number right-edge)))



;;;-----------------------
;;; "this is <call-sign>"
;;;-----------------------

;; /// Perhaps this remark has a real name?

(define-category this-is  ;; yuck, but what's better?
  :instantiates self
  :binds ((call-sign . call-sign))
  :index (:temporary :sequential-keys call-sign))

(def-cfr this-is ("this" "is"))
  ;; terrible rule from a linguistic standpoint, but it lets
  ;; us handle restarts in a clever way if rules roll up from
  ;; the left rather than waiting for a head

(def-cfr this-is-call-sign (this-is call-sign)
  :form clause
  :referent (:instantiate-individual this-is
             :with (call-sign right-edge)))

;; one six IT'S one seven


;;;----------------------------
;;; the combination of the two
;;;----------------------------

;; /// again, there's got to be a term for this COMMS event

(define-category call-to/from
  :instantiates self
  :binds ((to . call-sign)
	  (from . call-sign))
  :index (:temporary :sequential-keys from to))

(def-cfr call-to/from ;; couldn't think of a better name (sigh)
    (call-sign this-is-call-sign)
  :form clause
  :referent (:instantiate-individual call-to/from
             :with (to left-edge
		    from right-edge)))
