;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE -*-
;;; MUMBLE-86: message-level; single-choices
;;; $Id: single-choices.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; Copyright (C) 1985, 1986, 1987, 1988, 1995  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

;; ChangeLog
;;  6/6/95 added vp-as-adjp

(in-package :mumble)


(define-single-choice np-proper-name 
  :phrase  proper-name 
  :grammatical-characteristics (np) )

(define-single-choice np-common-noun
  :phrase common-noun
  :grammatical-characteristics (np))

(define-single-choice np-common-noun_of-complement
  :phrase np_common-noun_of-complement
  :grammatical-characteristics (np))

(define-single-choice nbar 
  :phrase  nbar 
  :grammatical-characteristics (np) )

(define-single-choice np-compound-head
  :phrase np-compound-noun
  :grammatical-characteristics (np))


(define-single-choice  prepositional-phrase
  :phrase prepositional-phrase 
  :grammatical-characteristics (pp) )

(define-single-choice pronoun
  :choice-is-argument t
  :grammatical-characteristics (np))

 (define-single-choice adjective
  :choice-is-argument t
  :grammatical-characteristics (prenominal-modifier))


(define-single-choice adjective-phrase
  :phrase  adjective-phrase
  :grammatical-characteristics (prenominal-modifier))
  
(define-single-choice adverbial-phrase
  :phrase  adverbial-phrase
  :grammatical-characteristics (adverbial-phrase))


(define-single-choice  vp-gerund
  :phrase  VP-ing
  :grammatical-characteristics (vp))

(define-single-choice  vp-as-adjp
  :phrase VP-one-arg/not-passive
  :grammatical-characteristics (vp))
