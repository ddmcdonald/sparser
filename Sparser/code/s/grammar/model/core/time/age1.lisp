;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "age"
;;;   Module:  "model;core:time:"
;;;  version:  1.1 October 1994

;; 0.1 (7/18 v1.8.6) Flushed the CA routines as redundant w/ the CS rules
;; 0.2 (4/16/92 v2.2) added two more rules to handle "60-year-old"
;; 0.3 (5/16 v2.2) Commented out the "year" rules in favor of time-unit rules
;; 1.0 (12/15/92 v2.3) setting up for new semantics
;; 1.1 (4/27/94) doing that. 
;;     (10/6) really doing it

(in-package :sparser)
#|
;;;-----------------------------------------
;;; rules for  "N years old" and variations
;;;-----------------------------------------

(def-cfr unit-of-time-old (time-unit "old")
  :referent (:daughter right-edge))

(def-cfr age ( number unit-of-time-old ))



;;--- soak up the optional hyphens

(def-cfr "old" ("-" "old")
  :referent (:daughter right-edge))

(def-cfr time-unit ("-" time-unit)
  :referent (:daughter right-edge))

(def-cfr unit-of-time-old ("-" unit-of-time-old)
  :referent (:daughter right-edge))  |#


(define-category  age   ;; in the abstract, -not- someone being a certain age
  :specializes nil
  :instantiates self
  :binds ((age . amount-of-time))
  :index (:sequential-keys age)
  :realization (:tree-family  item+idiomatic-head
                :mapping ((np . :self)
                          (modifier . amount-of-time)
                          (np-head . "old")
                          (result-type . :self)
                          (item . age))))


(defun interpret-number-as-years-of-age (number)
  ;; called from cs rules
  (let ((amt (define-or-find-individual 'amount-of-time
                   :units (find-individual 'time-unit
                             :name "year")
                   :quantity number)))
    (let ((age (define-or-find-individual 'age
                 :age amt)))
      age )))

;;simple copy of the "old" treatment
;;lacks an interpretation of number of years of age, however
(define-category  age-ago   ;; in the abstract, -not- someone being a certain age
  :specializes nil
  :instantiates self
  :binds ((age-ago . amount-of-time))
  :index (:sequential-keys age-ago)
  :realization (:tree-family  item+idiomatic-head
                :mapping ((np . :self)
                          (modifier . amount-of-time)
                          (np-head . "ago")
                          (result-type . :self)
                          (item . age-ago))))

