;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2000,2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "measurements"
;;;   module:  "model;core:amounts:"
;;;  Version:  May 2014

;; original version initiated 10/2/91
;; completely made over 9/18/93 in new semantics.  10/24/93 gave it rdata
;; 9/7/00 Added relative measurements. 12/22/00 tweaked realization.
;; Added rate of change.
;; 5/6/14 Pulled in categories, etc. from /sl/waypoints/xtensions-to-core

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  measurement  ;; "10 yards"
  :specializes nil
  :instantiates self
  :binds ((units . unit-of-measure)
          (quantity  :or quantity number))
  :realization (:tree-family  quantity+kind
                :mapping ((quantity . quantity)
                          (base . units)
                          (np . :self)
                          (np-head . unit-of-measure)
                          (modifier . (number quantity))
                          (result-type . :self))))


;;;----------------------
;;; kinds of measurement
;;;----------------------
#|
"What distance does he like to run?" "400 meters"
"What's the distance to New York City from here?
"How far is it to NYC?"

See QGLS 8.3 and many other places where it's classified 
as an adverbial. Specifically a spatial-measure.

The basic case is "the <measure-term> is <measurement>
and the word can stand by itself "that distance"
|#

(define-category named-measure ; 
                 ;; Provides a common supercategory. ///Easily replaced
  :binds ((name :primitive word))
  :specializes measurement)




;;;-------------------------
;;; rate of change measures
;;;-------------------------

;; Original version, 9/00 -- Reconcile once it's easy
;;    to trace out to the users of a category.
#| This is broken out because the meaning is so different
   as well as the realization. The fact that they have the very
   same bindings is inmaterial. |#
#|   oops!   This is identical to 'measurement' What was I really
             thinking about. |#
(define-category proportional-measurement  ;; "2 inches a year"
  :specializes measurement
  :instantiates measurement ;; ??
  :binds ((units . unit-of-measure)  ;; 'scalar' or 'measurable' might be good
          (quantity :or quantity number))
  :realization (:tree-family  N-per-unit
                :mapping ((type . :self)
                          (N . quantity)
                          (unit . units)
                          (unit-head . unit-of-measure)
                          (unit-np . per-unit-of-measure)
                          (N-np . (quantity number))
                          (top-np . :self))))


;;---- virtually identical (modulo name choices) version
;; done for Canto.

(define-category unit-of-rate-of-change
  :specializes unit-of-measure
  :binds ((distance-measure . unit-of-measure) ;; e.g. miles
          (time-measure . time-unit)  ;; e.g. hour
          (name :primitive word)) ;; need compact form for generating
  :index (:permanent :sequential-keys distance-measure time-measure)
  ;; "knot" is a rate of change all in one word: one nautical mile per hour
  :realization (:tree-family  N-per-unit
                :mapping ((type . :self)
                          (N . distance-measure)
                          (unit . time-measure)
                          (unit-head . time-unit)
                          (unit-np . time-unit)
                          (N-np . unit-of-measure)
                          (top-np . :self))))

(defmacro def-rate-of-change-unit (unit-of-measure unit-of-time abreviations)
  ;;/// confirm that they're all strings
  (def-rate-of-change-unit/expr unit-of-measure unit-of-time abreviations))

(defun def-rate-of-change-unit/expr (unit-of-measure unit-of-time abbreviations)
  (let ((distance (find-or-make-individual 'unit-of-measure :name unit-of-measure))
        (time (find-individual 'time-unit :name unit-of-time)))
    (push-debug `(,distance ,time))
    (let ((unit (find-or-make-individual 'unit-of-rate-of-change
                  :distance-measure distance
                  :time-measure time)))
      (when abbreviations
        ;;//// it needs the plural -- parenthesize the marked case        
        (let ((*inihibit-constructing-plural* t))
          (declare (special *inihibit-constructing-plural*))
          (dolist (string abbreviations)
            (let ((word (define-word/expr string)))
              (make-cn-rules/aux 
               word (category-named 'unit-of-rate-of-change) unit)))
          (bind-variable 'name (word-named (car abbreviations)) unit)))
      unit)))


;;;-------
;;; rates
;;;-------

(define-category rate
  :specializes measurement
  :binds ((units . unit-of-rate-of-change)
          (quantity . number)) ;;  :or quantity number)
  :index (:permanent :sequential-keys units quantity)
  :realization ((:common-noun "rate")
                (:tree-family  quantity+kind
                :mapping ((quantity . quantity)
                          (base . units)
                          (np . :self)
                          (np-head . unit-of-rate-of-change)
                          (modifier . (number quantity))
                          (result-type . :self)))))



;;;---------------------
;;; parentheses handler
;;;---------------------

(define-interior-action  category::measurement  :parentheses
  'elevate-measurement-within-parens)

(defun elevate-measurement-within-parens (measurement ;; first-edge
                                          pos-before-open pos-after-close
                                          pos-after-open pos-before-close 
                                          layout )
  ;; Respan the parens with a copy of the measurement edge
  (declare (ignore layout ;; do-paired-punctuation-interior requires :single-span
                   pos-after-open pos-before-close))
  (make-chart-edge :category (edge-category measurement)
                   :form (edge-form measurement)
                   :referent (edge-referent measurement)
                   :starting-position pos-before-open
                   :ending-position pos-after-close
                   :left-daughter measurement
                   :right-daughter :single-term
                   :rule :elevate-measurement-within-parens))