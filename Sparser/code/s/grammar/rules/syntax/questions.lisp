;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2011 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "questions"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  September 2011

;; Broken out from /grammar/model/sl/checkpoint/rules 6/17/09
;; Elaborated through 7/23/09. 9/28/11 removed spatial-orientation
;; and cleaned up. 

(in-package :sparser)

;;--- Haphazard treatment of WH questions
;; In a treatment that wasn't haphazard we'd keep track of
;; the gaps in the clauses and use the traces or their
;; equivalent. Also needs the non-question usage and 
;; more systematic way to notice and sweep up the 'question'
;; aspects so that polar question fall out from the same
;; inversion of subject and verb.

(define-category question
  :specializes event
  :binds ((type) ;; which WH word
          (content)
          (participant)))

;;--- swallowing the inverted auxiliary into WH/be

(def-cfr WH/be (oblique-pronoun be) ;; gets all the WH pronouns
  :form question-marker
  :referent (:daughter left-edge))

(def-cfr WH/be (oblique-pronoun apostrophe-s) ;; gets all the WH pronouns
  :form question-marker
  :referent (:daughter left-edge))

(def-cfr WH/be (oblique-pronoun do) ;; "where did you come from"
  :form question-marker
  :referent (:daughter left-edge))

;(def-cfr WH/be (WH/be pronoun/second)
;  :form question-marker ;; unless we want to strand the "you" ??
;  :referent (:daughter left-edge
;	          :bind (participant . right-edge)))

;; "will"
; CATEGORY           #<mixin WILL>
; FORM               #<ref-category MODAL>
; REFERENT           #<mixin FUTURE>


;;--- Explicit cases motivated by the checkpoint domain
;;  This almost certainly has a clean generalization that can be cast
;; as a form rule, but I'm not certain yet what that would be. Need more
;; cases

(def-cfr event (WH/be location)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
                    content right-edge)))

(def-cfr event (WH/be individual)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

(def-form-rule (WH/be verb+ing)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

;; I think these next two need to be scrapped (cfg 13 Jul 09)

(def-cfr event (WH/be "from")
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

(def-cfr event (WH/be with-np)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

;; This is a rather important one right here...

(def-cfr event (WH/be event)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))


;; Handles commonly used (but not necessarily grammatical)
;; examples like "where you going" etc.

(def-form-rule (oblique-pronoun verb+ing)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

;(def-cfr WH/be (oblique-pronoun pronoun/second)
;  :form question-marker
;  :referent (:daughter left-edge
;	     :bind (participant . right-edge)))


;; For "why are you out today" -- really smacks into the
;; sticky psi issue though...

(def-cfr WH/be/you (WH/be pronoun/second)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            participant right-edge)))

;; (def-cfr event (WH/be/you spatial-orientation) ;; flushed spatial-orientation
;;   :form s
;;   :referent (:head left-edge
;; 	     :bind (location . right-edge)))

(def-cfr event (WH/be/you deictic-location)
  :form s
  :referent (:head left-edge
	         :bind (location . right-edge)))

(def-cfr event (WH/be/you prep-location)
  :form s
  :referent (:head left-edge
	     :bind (location . right-edge)))

;; (def-cfr event (WH/be spatial-orientation) ;; flushed spatial-orientation 
;;   :form s
;;   :referent (:instantiate-individual question
;;              :with (type left-edge
;; 		    content right-edge)))

(def-cfr event (WH/be deictic-location)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		    content right-edge)))


;; odds and ends...

;; (def-cfr event (event spatial-orientation) ;; flushed spatial-orientation
;;   :form s
;;   :referent (:head left-edge
;; 	     :bind (location . right-edge)))

(def-cfr event (event deictic-location)
  :form s
  :referent (:head left-edge
	     :bind (location . right-edge)))

(def-cfr event (oblique-pronoun event)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		    content right-edge)))