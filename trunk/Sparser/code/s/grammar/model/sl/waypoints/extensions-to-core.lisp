;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 SIFT LLC.  -- all rights reserved
;;; This file is part of the SIFT CANTO project
;;;
;;;     File:  "extensions-to-core"
;;;            grammar/model/sl/waypoints/
;;;  version:  December 2013

;; Taken from waypoints as its own file 12/2/13. These should 
;; be folded back into the core when we cleanup. Using this file
;; to experiment with. 12/16/13 added "knot"

(in-package :sparser)

;;;-------------------------
;;; rate of change measures
;;;-------------------------

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

(def-rate-of-change-unit "mile" "hour" ("mph"))

(define-unit-of-measure "nautical mile")
;; Putting it in explicitly gets the job done in lieu of marking it. 
(def-rate-of-change-unit "nautical mile" "hour" ("knot" "knots"))


;;--- Instances of rates, actual values

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

;;;----------
;;; distance
;;;----------

#|
"What distance does he like to run?" "400 meters"
"What's the distance to New York City from here?
"How far is it to NYC?"

See QGLS 8.3 and many other places where it's classified 
as an adverbial. Specifically a spatial-measure.

The basic case is "the <measure-term> is <measurement>
and the word can stand by itself "that distance"
|#

(define-category named-measure
  ;; Provides a common supercategory. ///Easily replaced
  :specializes measurement)

;;(define-scalar-quality "distance" :super-category named-measure
;;   :value measurement)
