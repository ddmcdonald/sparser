;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "time of fin-dat"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1995

;; initiated 12/20/95. Elaborated through 1/9/96

(in-package :sparser)

;;;------------------
;;; specialized type
;;;------------------

(define-category time-anchored-financial-datum
  :specializes financial-data
  :instantiates self
  :binds ((datum . financial-data)
          (time-interval . time))
  :index (:temporary :sequential-keys datum time-interval))


;;;--------------
;;; rules for it
;;;--------------

#| Note that the specificity of the type isn't considered relevant
 for how these phrases pattern. |#


;; "first quarter earnings"
;;
(def-cfr financial-data (part-of-a-fiscal-year financial-data)
  :form np
  :referent (:instantiate-individual time-anchored-financial-datum
             :with (datum right-edge
                    time-interval left-edge)))


;; I don't know if I've actually seen this one, but there's
;; no harm in including it since if the two phrases are ever
;; adjacent in this order this -is- how they'd combine.
;;
(def-cfr financial-data (financial-data part-of-a-fiscal-year)
  :form np
  :referent (:instantiate-individual time-anchored-financial-datum
             :with (datum left-edge
                    time-interval right-edge)))


;; "fiscal 1996 earnings"
;;
(def-cfr financial-data (fiscal-year financial-data)
  :form np
  :referent (:instantiate-individual time-anchored-financial-datum
             :with (datum right-edge
                    time-interval left-edge)))

;; "1996 earnings"
;;
(def-cfr financial-data (year financial-data)
  :form np
  :referent (:instantiate-individual time-anchored-financial-datum
             :with (datum right-edge
                    time-interval left-edge)))



;;--- prepositional combinations with 'part-of-a-fiscal-year'


;; "earnings for the first quarter of fiscal 1996"
;;
(def-cfr financial-data (financial-data  for-part-of-a-fiscal-year)
  :form np
  :referent (:instantiate-individual time-anchored-financial-datum
             :with (datum left-edge
                    time-interval right-edge)))

(def-cfr financial-data (financial-data  in-part-of-a-fiscal-year)
  :form np
  :referent (:instantiate-individual time-anchored-financial-datum
             :with (datum left-edge
                    time-interval right-edge)))



;;--- prepositional combinations with 'fiscal-year'
;;
;; n.b. these can be building on a fin-dat that's already
;; been time-anchored:  "first quarter earnings for fiscal 1995"
;; and these parts aren't yet being brought together
;;
(def-cfr financial-data (financial-data for-fiscal-year)
  :form np
  :referent (:instantiate-individual time-anchored-financial-datum
             :with (datum left-edge
                    time-interval right-edge)))

(def-cfr financial-data (financial-data in-fiscal-year)
  :form np
  :referent (:instantiate-individual time-anchored-financial-datum
             :with (datum left-edge
                    time-interval right-edge)))

(def-cfr financial-data (financial-data of-fiscal-year)
  :form np
  :referent (:instantiate-individual time-anchored-financial-datum
             :with (datum left-edge
                    time-interval right-edge)))



;;;--------------------------------
;;; leading pp-based time-adjuncts
;;;--------------------------------

#|  1/9 This was a nice experiment, but given that it loses the leading
 subordinating preposition, a scheme that looks for scoping time-phrases
 like that should be more useful. 

#| This is the same pattern as the common one:
     part-of-a-fiscal-year + financial-data
 Except that since this is a leading adjunct, the two contituents will
 usually be separated by a comma.
    The least ad-hoc treatment seems not to be to hack-up individual
 cases with anticipations of commas, and the stranded comma rule won't
 work well since by the time we get to analyzing treetops the second
 constituent could be virtually any of the one that fin-dat projects
 into. |#

(def-form-rule ("," s)
  :form s 
    ;; calling the result an 's' facilitates the next form rule,
    ;; but it could get into trouble (overgenerate) if this pattern
    ;; ever occurs in anything other than the matrix s.
  :referent (:head right-edge))

;; This works, but because of the strict 'roll-up-from-the-right' protocol
;; it strands the leading preposition.
;;   "During the first six months of fiscal 1996, operating income of $17,683,000 increased 35%"

(def-form-rule (part-of-a-fiscal-year s)
  ;; This will compose the information with any full-clause form
  ;; of the fin-dat relations
  :form s
  :referent (:head right-edge
             :bind (time-interval left-edge)))  |#
