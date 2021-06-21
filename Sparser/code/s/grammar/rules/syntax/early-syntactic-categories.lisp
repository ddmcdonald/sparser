;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1997,2013-2021  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "early-syntactic-categories"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  June 2021

;; initiated 6/8/21 to get around a load order issue and then improve
;; on the notion of 'definite'. 

(in-package :sparser)

;;;--------------------------------------------
;;; Categories used for subtype specifications
;;;--------------------------------------------
;; But look at elaborations / alternatives in rules/syntax/articles
;;  and in rules/words/determiners

(define-mixin-category  indefinite
  :instantiates nil
  :specializes linguistic)
  ;; The idea is to be able to search off of this in the dh
  ;; to convert over any that are unresolved at the end.
  ;; //never exploited yet

(define-mixin-category definite
  :instantiates nil
  :specializes linguistic)

(define-mixin-category possessive
  :instantiates nil
  :specializes linguistic)
