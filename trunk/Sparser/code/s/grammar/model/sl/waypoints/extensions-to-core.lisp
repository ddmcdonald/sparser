;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 SIFT LLC.  -- all rights reserved
;;; This file is part of the SIFT CANTO project
;;;
;;;     File:  "extensions-to-core"
;;;            grammar/model/sl/waypoints/
;;;  version:  December 2013

;; Taken from waypoints as its own file 12/2/13. These should 
;; be folded back into the core when we cleanup. Using this file
;; to experiment with. 

(in-package :sparser)


;;--- rate of change measures

(define-category unit-of-rate-of-change
  :specializes unit-of-measure
  :binds ((distance-measure . unit-of-measure) ;; e.g. miles
          (time-measure . time-unit))  ;; e.g. hour
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
        (let ((*inihibit-constructing-plural* t))
          (declare (special *inihibit-constructing-plural*))
          (dolist (string abbreviations)
            (let ((word (define-word/expr string)))
              (make-cn-rules/aux 
               word (category-named 'unit-of-rate-of-change) unit)))))
      unit)))

(def-rate-of-change-unit "mile" "hour" ("mph"))


;;--- Instances of rates, actual values

(define-category rate
  :specializes measurement
  :binds ((units . unit-of-rate-of-change)
          (quantity . number)) ;;  :or quantity number)
  :index (:temporary :sequential-keys units quantity)
  :realization ((:common-noun "rate")
                (:tree-family  quantity+kind
                :mapping ((quantity . quantity)
                          (base . units)
                          (np . :self)
                          (np-head . unit-of-rate-of-change)
                          (modifier . (number quantity))
                          (result-type . :self)))))
