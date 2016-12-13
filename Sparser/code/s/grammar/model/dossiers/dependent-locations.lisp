;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "spatial prepositions"
;;;   Module:  "model;dossiers:"
;;;  version:  December 2016

;; initiated 11/18/16

(in-package :sparser)

(define-dependent-location
    "top" :multiple t ;; "the tops of the steps
    :category-name 'top-qua-location)

(define-dependent-location "bottom")

(define-dependent-location "end" :multiple t) ;; rows have two ends
(define-dependent-location "middle")

(define-dependent-location "side" :multiple t) ;; place for count argument?

(define-dependent-location "surface")

