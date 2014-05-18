;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "specifics"
;;;   Module:  "grammar/sl/ISR/
;;;  version:  May 2014

;; Initiated 4/14/14 to hold domain-specific categories.
;; 5/12/14 Fixed inherited location. 

(in-package :sparser)

;;;---------
;;; actions
;;;---------

#|  One way to say this compactly. Needs the s and o mapping
   set up -- see shortcuts. 
(def-rspec (:verb "enter") transition 
  SVO 
  (s . can-change-location)
  (o . container))
|#
(define-category enter
  :specializes move
  :restrict ((to-location . container))
  :realization ((:tree-family intransitive
                 ;; ordinary Sparser right-to-left parsing
                 :mapping ((agent . theme)
                           (s . :self)
                           (vp . :self)
                           ;; Needs *edges-from-referent-categories*
                           (np/subject . can-change-location))
                 :main-verb ("enter" :past-tense "entered"))
                (:tree-family subj/verb+np
                 ;; C3 left to right parsing
                 :mapping ((object . to-location)
                           (s . :self)
                           (np/object . container)))))
;; Attach axioms via another mechanism for now.

(c3-sv-optional-o "dismount" 'move 
  :subject '(can-change-location theme)
  :object '(location from-location))

;;;--------
;;; places
;;;--------

(define-category village
  :specializes spatial-region
  ;; real super class provides for having people, places where
  ;; they live, streets, squares, commerce (shops, markets, ...)
  ;; industry, etc.
  :mixins (has-name has-spatial-location container)
  :index (:permanent :key name))

