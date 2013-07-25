;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rules-over-referents"
;;;   Module:  "model/core/kinds/"
;;;  version:  July 2013

;; initiated 3/18/13. Elaborated through 7/24/13, gradually moving out rules.

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


;;--- subject relative clauses ( rules/syntax/subject-relatives.lisp )

;;--- direct object

(def-syntax-rule (vg np)
                 :head :left-edge
  :form vp
  :referent (:head left-edge
             :bind (participant right-edge)))

;;--- for dates
;;should we add these patterns to date-pattern in tree-families?

;;this cfr is for phrases like June 26 2013, added 6/6/13
;;Chomsky adjunction
(def-cfr date (date year)
  :form np
  :referent(:head left-edge
            :bind (year right-edge)))

;;this cfr is for phrases like Monday June 26 2013, added 6/6/13
;;Chomsky adjunction
(def-cfr date (time date)
  :form np
  :referent(:head right-edge
            :bind (time left-edge)))




