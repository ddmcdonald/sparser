;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "death"
;;;    Module:   "sl;disease:"
;;;   version:   March 2013

;; initiated 12/27/07 with just the category for "die". Revised slightly
;; 3/6/13 to specialize to 'event'.

(in-package :sparser)

;; who died on Jan. 17 in the Kurdish city of Sulaimaniya
;; Nearly 200 people have died from the H5N1 strain worldwide
;; The H5N1 virus has killed at least 191 people worldwide
;; Three swans found dead in eastern France
;;    were victims of the H5N1 bird flu virus 
;;    that can be fatal to humans
;; French swans have deadly bird flu
;; none has yet resulted in human deaths
;; more possible deaths of wild birds

#|
 It's a classic 'process=>resulting-state' system. If one is dying (vb), the
 result is death (n), whereupon one is dead (adj). The agent that brought 
 about one's death is deadly (adv). The process is intransitive; the agentive
 form uses a different (set of) verb(s), e.g. kill. 
    They all revolve around the same core concept, so they could be based
 on the same category
|#

(define-category  die
  :instantiates self
  :specializes  event
  :binds ((who person) ;; animate? What about the birds -- need "animal" ??
          (of-what pathogen)) ;;e.g. age, disease, warfare, crime, accident, etc.
  ;;:index (:key who) doesn't work for "die of Y" since no who variable used
  :realization ((:main-verb "die")
		(:tree-family intransitive
		 :mapping ((agent . who)
			   (s . :self)
			   (vp . :self)
			   (np/subject . person)))
                (:tree-family empty-head-of-complement
                 :mapping ((result-type . :self)
                           (of-item . who)
                           (base-np . :self)
                           (complement . person)
                           (np . :self))
                 :common-noun "death")
                (:tree-family empty-head-of-complement ;;i.e. "die of h5n1"
                 :mapping ((result-type . :self)
                           (of-item . of-what)
                           (base-np . :self)
                           (complement . pathogen)
                           (np . :self))
                 :main-verb "die")))


(define-category kill
  :instantiates self
  :specializes  event
  :binds ((who person)
          (by-whom person))
  :index (:key who) ;; ought to suffice
  :realization ((:main-verb "kill")
                (:tree-family transitive/passive
                 :mapping ((agent . by-whom)
                           (patient . who)
                           (s . :self)
                           (vp . :self)
                           (vg . :self)
                           (np/subject . person)
                           (np/object . person)))))

;;/// need a "just like" macro or function that can be smart about
;; the substitutions
(define-category assassinate
  :instantiates self
  :specializes  event
  :binds ((who person)
          (by-whom person))
  :index (:key who) ;; ought to suffice
  :realization ((:tree-family transitive/passive
                 :mapping ((agent . by-whom)
                           (patient . who)
                           (s . :self)
                           (vp . :self)
                           (vg . :self)
                           (np/subject . person)
                           (np/object . person))
                 :main-verb "assassinate")
                (:tree-family empty-head-of-complement
                 :mapping ((result-type . :self)
                           (of-item . who)
                           (base-np . :self)
                           (complement . person)
                           (np . :self))
                 :common-noun "assassination")))


;;;------------
;;; cfrs
;;;------------

;;cfr to bind a cause adjunct to a dying event
;;we should probably come up with a general analysis of cause-adjuncts
;;for now this ad-hoc rule will suffice for cases like "X died of Y"
#|(def-cfr die (die np)
  :form main-verb
  :referent (:head left-edge
             :bind (of-what . right-edge)))|#




