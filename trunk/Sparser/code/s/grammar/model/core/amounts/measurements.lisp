;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2000 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "measurements"
;;;   module:  "model;core:amounts:"
;;;  Version:  December 2000

;; original version initiated 10/2/91
;; completely made over 9/18/93 in new semantics.  10/24 gave it rdata
;; 9/7/00 Added relative measurements. 12/22 tweaked realization.

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