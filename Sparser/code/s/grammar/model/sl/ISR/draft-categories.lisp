;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2015 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "draft-categories"
;;;   Module:  "grammar/sl/ISR/
;;;  version:  December 2014

;; Initiated 10/9/13 to hold the more general categories that
;; we're only trying out for C3. Pulling out parts through 6/14. 
;; 12/3/15 Moved most of this to core/mid-level/ontology.lisp

(in-package :sparser)

#| color -- on a physical surface. Vs. a weather front or anything else 
 that is visible only because its contents are. Some materials are transparent. |#
(define-mixin-category physical-surface
  :specializes quality  ;; maybe border?
  :binds ((color . color))
  :realization ((:tree-family premodifier-adds-property
                 :mapping ((property . color)
                           (np-head . :self)
                           (modifier . color)))
;                (:tree-family thing-is-description
;                 :mapping ((
))

