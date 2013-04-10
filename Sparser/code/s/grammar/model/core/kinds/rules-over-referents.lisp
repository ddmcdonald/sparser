;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rules-over-referents"
;;;   Module:  "model/core/kinds/"
;;;  version:  April 2013

;; initiated 3/18/13. Elaborated through 4/9/13

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


;;--- title grammar

(def-form-rule (possessive title)
  :form np
  :head :right-edge
  ;;//// Dropping the argument ("Iraq's .. minister")
  ;; on the floor for the moment. See syntax/possessive
  ;; for a method to use in this rule. 
  ;;/// N.b. doesn't work in *iraqi-girl* because of timing
  ;; where the title has been swallowed before the country
  ;; could see it.  A heuristic might be entitled to lift
  ;; up the left edge on the grounds that it must compose
  ;; so it's only a question of which edge it composes
  ;; with -- a peek would get this rule and look for a
  ;; title. 
  :referent (:daughter right-edge))


;;--- subject relative clauses ( rules/syntax/subject-relatives.lisp )

(def-syntax-rule (wh-pronoun s) ;; also vp ?
                 :head :right-edge
  :form relative-clause
  :referent (:function compose-wh-with-vp left-edge right-edge))

(def-syntax-rule (np relative-clause)
                 :head :left-edge
  :form np
  :referent (:function assimilate-appositive left-edge right-edge))



