;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2000,2014-2020 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "rules"
;;;   Module:  "grammar;model:core:numbers:"
;;;  Version:  November 2020

;; trivial instance 10/91.  Added prefix rules for ordinals 8/16/94
;; 0.1 (6/24/99) Pulled the empty '10 million' rule. 
;;     (4/00) Considered putting the rule for "three companies" here
;;      but realized it had to go on the category collectin or it wouldn't
;;      be invertible.

(in-package :sparser)

;;;------------
;;; appositive
;;;------------

#| Doing this as a simple bare comma rule because in the (1st) target
context -- age -- it's going to have to undergo a type elevation, which
is easiest with a cs rule.  |#


;; this rule is not appropriate for biology
(unless (eq script :biology)
  (def-cfr comma-number ( "," number )
    :form appositive-prefix
    :referent (:daughter right-edge)))


(def-cfr plus-minus-number ( plus-minus number )
    :form plus-minus-number
    :referent (:daughter right-edge))

(def-cfr number-range (number plus-minus-number)
  :form number
    :referent (:instantiate-individual number-range
                :with (value left-edge
                       range right-edge)))


(define-early-pattern-rule numerical-range
    :pattern ( number "to" number )
    :action (:function make-numerical-range first third))

(defun make-numerical-range (from-edge to-edge &key (includes-low t) (includes-high t))
  (let* ((from (edge-referent from-edge))
         (to (edge-referent to-edge))
         (from-val (value-of 'value from))
         (to-val (value-of 'value to))
         (low (if (<= from-val to-val)
                  from
                  to))
         (high (if (equal low from)
                   to
                   from))
         (i (define-or-find-individual 'range
                :low low
                :includes-low includes-low
                :high high
                :includes-high includes-high
                )))
    (make-edge-spec
     :category (category-named 'range) ;; changed from number too be more specific
     :form (category-named 'np)
     :referent i)))

(defun make-relational-number (relation number)
  (etypecase relation
    (cons (let ((rname (pname (car relation))))
            (cond ((member rname '("=" "COLON" ":") :test #'equal)
                   number)
                  ((equal rname ">")
                   (define-or-find-individual 'range
                       :low (edge-referent number)
                       :includes-low nil
                       ))
                  ((equal rname "<")
                   (define-or-find-individual 'range
                       :high (edge-referent number)
                       :includes-high nil
                       )
                   ))))
    (edge (cond ((or (member (edge-cat-name relation) '(BE OF))
                     (equal (edge-category relation) word::colon))
                 number)))))

;; make new single-bounded range with limit and relation -- make numerical relation
;; what about -5 < r < 5 "less-than-or-equal-to" 0-5

;; CI  # 95% CI 0.69-1.87
;; # 95% CI [0.08, 0.10]
;; go with hyphenated then if we know it's range, convert it

;;;---------------
;;;  "8 million"
;;;---------------

;; Made obsolete by the rspec on illion
;(def-cfr number  ( number multiplier ) 
;  )
#|

;;;-------------------------
;;; ordinal prefixes to NPs
;;;-------------------------

(def-cfr ordinal ("a" ordinal)
  :form adjective
  :referent  (:daughter right-edge))

(def-cfr ordinal ("an" ordinal)
  :form adjective
  :referent  (:daughter right-edge))

(def-cfr ordinal ("the" ordinal)
  :form adjective
  :referent  (:daughter right-edge))

(def-cfr ordinal (single-capitalized-letter ordinal)
  :form adjective
  :referent  (:daughter right-edge))
|#



