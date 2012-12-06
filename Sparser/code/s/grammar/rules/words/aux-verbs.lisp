;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2012 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "aux verbs"
;;;   Module:  "grammar;rules:words:"
;;;  Version:  0.3 December 2012

;; redesigned from scratch & pulled out of [syntax] 5/7/93 v2.3
;; 0.1 (6/18/93) added  .[verb brackets.  Adding words 1/11/94, 1/12, 1/13
;;     (7/20) added contraction prefixes
;; 0.2 (4/19/95) sharpened bracket choices
;; 0.3 (4/24) added aux]. to all but modals
;;     (12/4/12) Moved out bracket assigner to rules/brackets/assignments
;;     12/5/12 added "didn"

(in-package :sparser)

;;;--------- oddities

(define-function-word  "to"  :brackets '( ].phrase  phrase.[ ))


;;;---------  modals

(define-function-word  "will"   :brackets '( ].verb .[modal ))
(define-function-word  "would"  :brackets '( ].verb .[modal ))
(define-function-word  "can"    :brackets '( ].verb .[modal ))
(define-function-word  "may"    :brackets '( ].verb .[modal ))
(define-function-word  "must"   :brackets '( ].verb .[modal ))
(define-function-word  "could"  :brackets '( ].verb .[modal ))
(define-function-word  "should" :brackets '( ].verb .[modal ))



;;;---------- have

(define-function-word  "have"   :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "has"    :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "had"    :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "having" :brackets '( ].verb .[verb  aux]. ))



;;;---------- do

(define-function-word  "do"    :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "does"  :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "did"   :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "done"  :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "doing" :brackets '( ].verb .[verb  aux]. ))


;;;---------- be

(define-function-word  "be"    :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "am"    :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "are"   :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "is"    :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "was"   :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "were"  :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "been"  :brackets '( ].verb .[verb  aux]. ))
(define-function-word  "being" :brackets '( ].verb .[verb  aux]. ))





;;----------- prefixes of contracted forms

(define-function-word "won"     :brackets '( ].verb .[verb ))
(define-function-word "wouldn"  :brackets '( ].verb .[verb ))
(define-function-word "cann"    :brackets '( ].verb .[verb ))
(define-function-word "cannot"  :brackets '( ].verb .[verb ))
(define-function-word "mustn"   :brackets '( ].verb .[verb ))
(define-function-word "couldn"  :brackets '( ].verb .[verb ))
(define-function-word "shouldn" :brackets '( ].verb .[verb ))
(define-function-word "haven"   :brackets '( ].verb .[verb ))
(define-function-word "hasn"    :brackets '( ].verb .[verb ))
(define-function-word "hadn"    :brackets '( ].verb .[verb ))
(define-function-word "didn"    :brackets '( ].verb .[verb ))
(define-function-word "doesn"   :brackets '( ].verb .[verb ))
(define-function-word "aren"    :brackets '( ].verb .[verb ))
(define-function-word "isn"     :brackets '( ].verb .[verb ))
(define-function-word "wasn"    :brackets '( ].verb .[verb ))
(define-function-word "weren"   :brackets '( ].verb .[verb ))

