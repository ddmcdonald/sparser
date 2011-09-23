;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011  David D. McDonald  -- all rights reserved
;;; $Id:$
;;;
;;;     File:  "paths"
;;;   Module:  "model;core:places:"
;;;  version:  July 2011

;; initated 7/13/11

(in-package :sparser)

;;;-----
;;; top
;;;-----

(define-category  path
  :instantiates self
  :specializes location
;;  :realization  ?? where does "path" go?
  )


;;;----------------
;;; types of paths
;;;----------------

(define-category path-type ;; "street", "turnpike"
  :instantiates :self
  :specializes path
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))

(define-type-category-constructor path-type) ;; creates define-path-type 

;; dossier is [path-types]

;;;------------------
;;; highway patterns
;;;------------------

;; Need "route 66" -- fold in here?

(define-category highway  ;; "MA 102"
  :instantiates :self
  :rule-label location
  :specializes location
  :binds ((authority :or country state)
          (number . number))
  :realization (:tree-family pair-instantiates-category
                :mapping ((result-type . :self)
                          (np . :self)
                          (first . (country US-state))
                          (second . number)
                          (item1 . authority)
                           (item2 . number))))



;;; throughways and exits

(define-category throughway-exit
  :instantiates :self
  :rule-label location
  :specializes location ;; object with a location
  :binds ((throughway . highway))
  :realization (:common-noun "exit"))

(define-category exit-on-throughway
  :instantiates :self
  :rule-label location
  :specializes dependent-substrate
  :binds ((exit . throughway-exit) ;; dependent
          (throughway . highway))  ;; substrate
  :realization (:tree-family dependent-of
                :mapping ((dependent . exit)
                          (substrate . throughway)
                          (np . :self)
                          (prep . "of")
                          (complement . location))))
  
