;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rules-over-referents"
;;;   Module:  "model/core/kinds/"
;;;  version:  March 2013

;; initiated 3/18/13

(in-package :sparser)

;;--- for event
#| The category for event has these variables:
  time, location, purpose, modifier, participant
|#

;;//// Add schema -- from vp adjuncts perhaps
(def-cfr event (event time)
  :form s
  :referent (:head left-edge
             :bind (time right-edge)))

(def-cfr event (event location)
  :form s
  :referent (:head left-edge
             :bind (location right-edge)))