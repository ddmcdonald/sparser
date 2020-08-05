;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2016-2020  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "age"
;;;   Module:  "model;core:time:"
;;;  version:  August 2020

;; 0.1 (7/18 v1.8.6) Flushed the CA routines as redundant w/ the CS rules
;; 0.2 (4/16/92 v2.2) added two more rules to handle "60-year-old"
;; 0.3 (5/16 v2.2) Commented out the "year" rules in favor of time-unit rules
;; 1.0 (12/15/92 v2.3) setting up for new semantics
;; 1.1 (4/27/94) doing that. 
;;     (10/6/94) really doing it

(in-package :sparser)

;;;---------------------------
;;; treat age as an attribute
;;;---------------------------

(define-category has-age
  ;;:specializes relation
  :binds ((age age))
  :documentation "Everything that can be construed as alive
    has an age: people, legislation, houses, ... This provides
    an age variable to record it. Note that the two 'age' in
    the bindings are a variable and a category (value restriction).")

(define-category age
  :specializes scalar-attribute
  :bindings (var (find-variable-for-category 'age 'has-age))
  :binds ((age amount-of-time))
  :index (:key age)
  :realization (:common-noun "age")
  :documentation "This provides the basis for using the attribute
 machinery, and also provides a representation of an amount
 of time as the value of an age per se, without having to simultaneously
 attribute it to something that has that age." )


(define-category qualitative-age
  :specializes attribute-value
  :bindings (attribute 'age)
  :rule-label age
  :realization (:adjective name))

(defun define-qualitative-age (string &key er est)
  "This is the 'instance-maker' of the standard attribution pattern.
  Could just call setup-comparatives, but that pattern presently sprouts
  extra categories (e.g. width-comparative, with-superlative-less, ...)
  and I don't think they're doing enough work for us."
  (declare (special category::comparative-adjective category::superlative-adjective))
  (let* ((word (resolve/make string))
         (i (define-or-find-individual 'qualitative-age :name word)))
    (make-corresponding-mumble-resource word :adjective i)
    (when er
      (let* ((er-word (resolve/make er))
             (rule (define-cfr category::age `(,er-word)
                     :form category::comparative-adjective
                     :referent i)))
        (make-corresponding-mumble-resource er-word :adjective i))) ;;// not right
    (when est
      (let* ((est-word (resolve/make er))
             (rule (define-cfr category::age `(,est-word)
                     :form category::superlative-adjective
                     :referent i)))
        (make-corresponding-mumble-resource est-word :adjective i)))
    i))


;; We really could use antonym relations, but need use case.
(define-qualitative-age "young" :er "younger" :est "youngest")
(define-qualitative-age "old" :er "older" :est "oldest")



(defun interpret-number-as-years-of-age (number)
  ;; called from cs rules
  (let ((amt (define-or-find-individual 'amount-of-time
                   :units (find-individual 'time-unit :name "year")
                   :quantity number)))
    (let ((age (define-or-find-individual 'age
                 :age amt)))
      age )))


(define-category amount-old
  :specializes amount ; // or age? and inherit the variable?
  :rule-label age
  :binds ((amount amount-of-time)
          (perspective qualitative-age))
  :realization (:tree-family quantity+kind
                :mapping ((np . :self)
                          (modifier . amount-of-time)
                          (np-head . age)
                          (result-type . :self)
                          (quantity . amount)
                          (base . perspective))))




;;--------- original rules for "N years old" and variations
#|

;; "10 years old"
;; n.b. this rule is only seen if *ignore-literal-edges* is nil
;;
(def-cfr age (amount-of-time "old")
  :form np
  :referent (:instantiate-individual age
             :bind (age left-edge)))

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
