;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2016-2023  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "age"
;;;   Module:  "model;core:time:"
;;;  version:  September 2023

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
  :specializes adds-relation
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

#|/// "ten years of age"  Examples from dictionary
   "ten years old"
   "at the age of 16 he ..."
 
 Alternatively: "the Bronze Age", "Ice Age"
|#

;;;---------------------------------
;;; qualitative descriptions of age
;;;---------------------------------
;; /// "midddle/old age", teenage?
;; "older" "younger

(define-category qualitative-age
  :specializes attribute-value
  :binds ((attribute age))
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


;;---- helper

(defun plausible-age-in-years (number)
  "Syntax function to vet the comma-number rule as a feeder into
   age via the CS rules in people/names-to-people.lisp to rule out
   composing, e.g. 'Jacob Edler and Tom Littell, 5.4 each' from
   AC #297 where the subject is scores in games."
  (declare (special *subcat-test*))
  (when (itypep number 'number) ; vs. e.g. amount-of-stuff
    (let ((lisp-number (number-value number)))
      (cond
        (*subcat-test* (typep lisp-number 'integer))
        (t number)))))


(defun interpret-number-as-years-of-age (number)
  ;; called from cs rules
  (when (and (numberp (value-of 'value number))
             (< (value-of 'value number) 150))
    (let ((amt (define-or-find-individual 'amount-of-time
                 :units (find-individual 'time-unit :name "year")
                 :quantity number)))
      (let ((age (define-or-find-individual 'age
                   :age amt)))
        age ))))


;; "10 years old"
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

