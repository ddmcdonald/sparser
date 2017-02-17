;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013-2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "adjectives"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  June 2016

;; Initiated 1/22/13 to provides a place for the generic method for premodifiers.
;; 6/1/14 added traces. 
;; 7/31/14 added form rules. 1/12/14 Tried converting the method to a
;; k-method but got the calling pattern wrong (or something), so make the
;; addition to the original method, i.e. to not drop the modifier on the
;; floor. 
;; 4/24/2015 maybe-copy modified head before binding variable -- needed to avoid damaging vocabulary entries

(in-package :sparser)

;;;-----------
;;; base case
;;;-----------

(def-k-method modifier+noun (modifier head)
  (tr :modifier+noun_modifier+t)
  (setq head (individual-for-ref head))
  (setq head (bind-dli-variable 'modifier modifier head))
  head)

(loop for nn in '(noun common-noun common-noun/plural
                  n-bar np)
   do (def-form-rule/expr `(modifier ,nn)
         :form 'n-bar
         :referent '(:method modifier+noun left-edge right-edge)))


