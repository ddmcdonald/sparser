;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "seasons"
;;;   Module:  "model;dossiers:"
;;;  Version:  June 2013

;; Initiated 6/11/13. Lowercased the names and removed the lc
;; "abbreviations" 6/12 since the right thing will happen 
;; when the lowercase definition is parsed in upper case.

(define-season "summer"     1 )
(define-season "fall"       2 )
(define-season "autumn"     2 )
(define-season "winter"     3 )
(define-season "spring"     4 )