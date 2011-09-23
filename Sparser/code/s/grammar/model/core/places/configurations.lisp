;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011  David D. McDonald  -- all rights reserved
;;; $Id:$
;;;
;;;     File:  "configurations"
;;;   Module:  "model;core:places:"
;;;  version:  September 2011

;; initated 8/3/11. Tweaked fit into DH 9/12

(in-package :sparser)

;; e.g junction, split, fork, cross
;; 8/15 Can't decide that there's enough commonality
;; of form here to lump them into one category with
;; a def form

(define-category path-configuration
  :specializes location
  :binds ((paths . collection)))

(define-category junction
  :specializes path-configuration
  :instantiates :self
  :rule-label location
  :realization ((:tree-family group-of-type
                 :mapping ((type . paths)
                           (np . :self)
                           (group . :self)
                           (complement . path)))
                (:common-noun "junction")))

(define-category fork
  :specializes path-configuration
  :instantiates :self
  :rule-label location
  :realization ((:tree-family np-common-noun/defnp
                 :mapping ((np . location)
                           (n-bar . :self)
                           (np-head . :self)))
                (:tree-family np-common-noun/indefinite
                 :mapping ((np . location)
                           (np-head . :self)))
                (:common-noun "fork")))

