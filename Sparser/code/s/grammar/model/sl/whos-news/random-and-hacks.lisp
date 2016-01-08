;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "random and hacks"
;;;   Module:  "model;sl:whos news:"
;;;  version:  June 1995

;; initiated 6/18/93 v2.3
;; (1/7/94) patched Interpret-name-as-person.  5/12 pulled "--"
;; 4/12/95 pulled inter-name-as-person stuff
;; 6/13/95 pulled verb]. on "succeeding"

(in-package :sparser)

;;;---------------------------------------------
;;; random rules that should be moved elsewhere
;;;---------------------------------------------

(def-cfr be ("wasn't")
  )
(assign-bracket "wasn" ].verb )
(assign-bracket "wasn" .[verb )



;;;---------------------------------------------------------
;;;---------------------------------------------------------
;;; hacks to patch around things that need to be carefully
;;;        worked out to get general treatments
;;;---------------------------------------------------------
;;;---------------------------------------------------------


;;;-----------------------------------------------
;;; commas - appositives, participle markers, etc.
;;;  need a treatment as such
;;;-----------------------------------------------

(def-cfr confirm-as-job+ed ("," confirm-as-job+ed)
  :form vp
  :referent (:daughter right-edge))


(def-cfr WH ("," WH))


;;;----------------
;;; name -> person
;;;----------------

;;--- these need to be moved late in the load so that
;;    all their categories are defined already
;;
;; And... they shouldn't have to be special-cased to each
;; verb -- The compiler should look at the restrictions on
;; their variables and know specifically about the vagueness
;; of names and internal vs. external criteria


;; this one is actually superfluous given how the parse is going
;; to rool up
(def-csr name person
  :right-context  succeed-to-job
  :form NP
  :referent (:function interpret-name-as-person left-edge))

(def-csr name person
  :left-context  succeed-to-job
  :form NP
  :referent (:function interpret-name-as-person right-edge))

(def-csr name person
  :right-context job-event/agent
  :referent (:function interpret-name-as-person left-edge))



(def-csr name person
  :right-context  WH
  :referent (:function interpret-name-as-person left-edge))


;; was in syntax;subject relatives, but it referenced "person"
;; before it had been fully defined
(def-csr WH person
  :left-context person
  :referent (:daughter left-edge))



;;--------- these brackets were supposed to have been assigned
;; when the verbs were defined (it's in the code), but for
;; some reason nothing's happening.  Assigning them again here
;; to ensure the bracketing is as intended

;(assign-bracket "remain" ].verb)  ;; 6/95 should now come from original def
;(assign-bracket "remain" .[verb)

;; this keeps "Kenneth Dalton" from being in the
;; same segment as the verb just in front of it, which
;; in turn lets the ", who" see it before it's submerged
;; under the VP edge
;(define-bracket :] :after verb)
;(assign-bracket "succeeding" verb].)
;;  flush those -- this here is the right thing, and should have
;;   already happened automatically  6/95
;(assign-brackets-as-a-main-verb (word-named "succeeding"))


;; this changes the default, which makes the forest much
;; finer grained than it needs to be (given the default
;; conclusions we can draw from the presence of segment
;; boundaries), but which also puts a segment over 
;; "and Clive Brown" for some reason -- would have thought
;; that conjunction.[ did the right thing -- and that
;; blocks its combination with the relative pn that follows
;; it
;;(setq *use-Segment-edges-as-segment-defaults* nil)
;;    turned 'off' 7/11/94 to check that problem has gone away
