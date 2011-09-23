;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "fiscal"
;;;   Module:  "model;core:time:"
;;;  version:  2.0 February 2005

;; 1.0 (12/15/92 v2.3) setting up for new semantics.
;;     (12/20/95) actually putting them in. Elaborating through 1/8/96.
;;     (1/13) moved the cs rules.
;; 2.0 (7/7/00) Totally reworked for psi and explicit realizations.
;;     (2/9/05) Added fiscal.  (2/17) Reworking end-date so that is actually works.

(in-package :sparser)

#| There's a weakness in this analysis that there's no mechanism for generalizing
across all the kinds of time periods ("half-year", "nine months") in ERN. The
obvious generalization to a super category won't work in Sparser semantic category
parse while still retaining anything that's specific to quarter or half such as
how many of them there are in a year. Need a treatment in the parsing that operates
on the taxonomy of the lattice and probably does it on the fly via form rules. |#

;;;---------------------------
;;;  "second quarter of 1998"
;;;---------------------------

#| It's a specific interval in actual time there for the year is an essential
part even if it's invariably left out as obvious except in comparisons. |#

(define-category  quarter
  :specializes time
  :instantiates self  ;; ?? generalization to all these fiscal accounting periods?
  :binds ((year . year)
          (position-in-year . ordinal)
          (end-date . end-date)
          (company . company))
  :realization ((:tree-family designated-instance-of-set   ;; "first quarter"
                 :mapping ((designator . position-in-year)
                           (np-head . :self)
                           (qualifier . ordinal)
                           (np . :self))
                 :common-noun "quarter")

                (:tree-family  member-of ;; "___ of 1998"
                 :mapping ((identifier . year)
                           (complement . year)
                           (np . :self)))

                (:tree-family  modifier-creates-subtype  ;; "fiscal ___"
                 :mapping ((n-bar . :self)
                           (subtyping-modifier . fiscal)
                           (np-head . :self)))

                (:tree-family  np-participle  ;; "___ ending June 26, 2004"
                 :mapping ((np . :self)
                           (participle . end-date)
                           (participle-field . end-date)))

                (:tree-family  premodifier-adds-property  ;; "2004 ___"
                 :mapping ((modifier . year)
                           (np-head . :self)
                           (property . year)))

                (:tree-family  possessive/bind-slot   ;; "its ___"
                 :mapping ((pos-slot . company)
                           (np . :self)
                           (possessive . company-s)
                           (np-head . :self)))))




;;;-------------------------------------
;;; "ending April 30, 1999"
;;;-------------------------------------

(define-category  end-date
  ;; :specializes to-end  ;; not bothering with the general case and its
  :instantiates self      ;; automatic suptyping as yet.
  :binds ((thing-ended)
          (date . date))
  :realization (:tree-family  verb+direct-object
                :mapping ((individual-for-verb . :self)
                          (patient . date)
                          (result-type . :self)
                          (vp . :self)
                          (vg . end)
                          (np/object . date))))


;;!!! Move to a place with 'start' and 'continue' and the like, and then
;; give it's realization some content -- for now ignoring the fact that
;; there's a psi involved.  ///This should be subsumed by the end-date that
;; uses it for fiscal quarters, but right now (2/05) just want to get further
;; along.
;;
(define-category end
  :binds ((thing -ended)
          (time-ended))
  :realization (:main-verb ("end" 
                            :past-tense "ended" 
                            :present-participle "ending")))


;;;------------------------
;;; fiscal (quarter, year)
;;;------------------------

(define-category fiscal
  :instantiates self
  :realization ((:adjective "fiscal")
                (:tree-family  adjective-creates-subtype
                :mapping ((adjective . :self)
                          (specializing-function . subtype-the-head)))))


#| ========= The old stuff ========================

;;;-----------------------
;;; specific fiscal years
;;;-----------------------

(define-category fiscal-year
  :specializes time
  :instantiates self
  :binds ((year . year)
          (starting-point . date)
          (ending-point . date))
  :index (:temporary :key year))

#| Without mention of the starting/ending time, this will default to
 a calendar year.  Given a specific start/end then the 'year' amounts
 to a name since its relationship to the calendar year with that name
 is pretty arbitrary.  |#

;;--- rules

;; hmm... no 'common noun as category' analysis. This is quicker,
;; but will it lose some opportunity later?
;;
(def-cfr fiscal-year ("fiscal year" year)
  :form np
  :referent (:instantiate-individual fiscal-year
             :with (year right-edge)))

(def-cfr fiscal-year ("fiscal" year)
  :form np
  :referent (:instantiate-individual fiscal-year
             :with (year right-edge)))



;;;--------------------------------------------------------
;;; The category for "first quarter", "three months", etc.
;;;--------------------------------------------------------

(define-category part-of-a-fiscal-year
  :specializes time
  :instantiates self
  :binds ((selector . ordinal)  ;; "first", "second"
          (unit . fractional-term)   ;; "quarter", "half" but not "third"
          (fiscal-year . fiscal-year)
          (ending-point)
          (starting-point)))





;;--- prepositions

(def-cfr for-part-of-a-fiscal-year ("for" part-of-a-fiscal-year)
  :form pp
  :referent (:daughter right-edge))

(def-cfr in-part-of-a-fiscal-year ("in" part-of-a-fiscal-year)
  :form pp
  :referent (:daughter right-edge))


(def-form-rule (preposition part-of-a-fiscal-year)
  :form pp
  :referent (:daughter right-edge))





;;;--------------------------------------
;;;  part-of-a-fiscal-year + fiscal-year
;;;--------------------------------------

;; "first quarter of fiscal 1996"
;;
(def-cfr part-of-a-fiscal-year (part-of-a-fiscal-year of-fiscal-year)
  :form np
  :referent (:head left-edge
             :bind (fiscal-year right-edge)))


;; "first quarter fiscal 1996"
;;
(def-cfr part-of-a-fiscal-year (part-of-a-fiscal-year fiscal-year)
  :form np
  :referent (:head left-edge
             :bind (fiscal-year right-edge)))


;; "first three months of fiscal 1996"
;;
(def-cfr part-of-a-fiscal-year (fraction-of-amount-of-time of-fiscal-year)
  :form np
  :referent (:instantiate-individual part-of-a-fiscal-year
             :with (selector left-edge
                    fiscal-year right-edge)))


;; (I think I saw this) "fiscal 1995 second quarter"
;;
(def-cfr part-of-a-fiscal-year (fiscal-year part-of-a-fiscal-year)
  :form np
  :referent (:head right-edge
             :bind (fiscal-year left-edge)))



;; "During the first six months of fiscal 1996"
;;    -- seems safe to throw away the "during", though if the sequencer
;;    were something like "after" then this treatment will probably 
;;    probably lose information that would be valuable
;;
(def-cfr part-of-a-fiscal-year (sequencer part-of-a-fiscal-year)
  :form pp
  :referent (:daughter right-edge))





;;;------------------------------
;;; stating the start/end points
;;;------------------------------

;; "ending Oct. 31"
(def-cfr ending-date (end day-of-the-month)
  :form participle
  :referent (:daughter right-edge))


;; "ended Oct. 31, 1995"
(def-cfr ending-date (end date)
  :form participle
  :referent (:daughter right-edge))

;; n.b. the verb "end" is in [semantics-free verbs]





;;;----------------------------------------
;;; compositions with the start/end points
;;;----------------------------------------

;; "six months ended Oct. 31, 1995"
;;
(def-cfr part-of-a-fiscal-year (amount-of-time ending-date)
  :form np
  :referent (:instantiate-individual part-of-a-fiscal-year
             :with (selector left-edge
                    unit left-edge ;; ///yeuch, but we need the index
                    ending-point right-edge)))


;; "second quarter ended Oct. 31, 1995"
;;
(def-cfr part-of-a-fiscal-year (part-of-a-fiscal-year ending-date)
  :form np
  :referent (:daughter left-edge
             :bind (ending-point right-edge)))



;;--- article gets lost //perhaps we're going to np too soon?

;; "for the six months ended Oct. 31"
(def-form-rule ("the" np)
  :form np
  :referent (:daughter right-edge))




;;;--------------------
;;; definite reference
;;;--------------------

(defun dereference-fraction-term-as-part-of-fiscal-year (fraction-term)
  ;;// this should be generalized once we have the ability
  ;; to walk up the 'used-in' view of the rule-set and see what
  ;; consumers of "quarter" there would be that would fit in the
  ;; ongoing context.
  (let ((pofy/dh (discourse-entry (category-named 'part-of-a-fiscal-year))))
    (if pofy/dh
      (let ((choice (most-recently-mentioned pofy/dh)))
        (if choice
          choice
          fraction-term )) ;; i.e. the category, just so there's a value for the referent
      fraction-term )))


(def-cfr part-of-a-fiscal-year ("the" quarter)
  :form np
  :referent (:function dereference-fraction-term-as-part-of-fiscal-year
                       right-edge))


(def-cfr part-of-a-fiscal-year ("the" period)
  :form np
  :referent (:function dereference-fraction-term-as-part-of-fiscal-year
                       right-edge))
  |#
