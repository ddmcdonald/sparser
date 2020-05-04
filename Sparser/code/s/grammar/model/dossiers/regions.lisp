;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,2020  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "regions"
;;;   Module:  "model;core:places:"
;;;  version:  April 2020

;; initiated 4/4/94 v2.3

(in-package :sparser)

;;--- vague cases

(define-geographical-area "Midwest") 
(define-geographical-area "New England")
(define-geographical-area "Mediterranean")
(define-geographical-area "Australasia")
(define-geographical-area "Scandinavia") ;; :adjective "Scandinavian")

;;--- continents
(define-continent "Africa" :adjective "african")
(define-continent "Antarctica")
(define-continent "Asia" :adjective "asian")
(define-continent "Europe" :adjective "european")
(define-continent "North America" :adjective "North American")
(define-continent "South America" :adjective "South American")
(define-continent "Central America" :adjective "Central American")

(define-continent "Oceania")

;;--- oceans
(define-ocean "Atlantic")
(define-ocean "Pacific")


;;--- seas
(define-sea "Arabian Gulf")
(define-sea "Caribbean")
(define-sea "Mediterranean Sea")
(define-sea "Red Sea")
(define-sea "South China Sea")
