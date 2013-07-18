;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "interval"
;;;   Module:  "model;core:time:"
;;;  version:  1.0 July 2013

;;

(in-package :sparser)

;;;------------
;;; the object
;;;------------

;;category incomplete -- really just a skeleton/frame
(define-category  interval
  :specializes time
  :instantiates self
  :binds ((sequencer . sequencer)
          (amount-of-time . amount-of-time)
          (np-segment . np-segment))
  ;;:index (:permanent :key name)
  ;;:realization (:common-noun name )
  )

#|(def-cfr interval (sequencer amount-of-time) ;;this is not an actual interval, only the anchor part of it
  :form np
  :referent(:instantiate-individual interval
            :with (sequencer left-edge amount-of-time right-edge)))|#      
                          


;;;------
;;; form
;;;------

;;Are there any pre-defined intervals?