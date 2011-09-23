;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "death"
;;;    Module:   "sl;disease:"
;;;   version:   December 2007

;; initiated 12/27/07.

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
  ;; :specializes  process << eventuality
  :binds ((who person)) ;; animate?
  :realization ((:main-verb "die")
		(:tree-family intransitive
		 :mapping ((agent . who)
			   (s . :self)
			   (vp . :self)
			   (np/subject . person)))))

