;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "city rules"
;;;   Module:  "model;dossiers:"
;;;  version:  April 1995

;; initiated 4/30/95

(in-package :sparser)


;;;-----------------------
;;; prepositional markers
;;;-----------------------

(def-cfr in-city ("in" city)
  :form pp
  :referent (:daughter right-edge))

(def-cfr of-location     ;;of-city
         ("of" city)
  :form pp
  :referent (:daughter right-edge))



;;;-------------------------------------------
;;; swallow appositives with larger locations
;;;-------------------------------------------

(def-cfr city (city comma-state)
  :form np
  :referent (:daughter left-edge
             :bind (state right-edge)))


;;;-------------------------------------------------------
;;;    taking a state as an appositive is evidence that 
;;;   a uncategoried name or capitalized word is a state
;;;-------------------------------------------------------

(define-completion-action (category-named 'US-state)
                          :early-search-for-city
                          'scan-from-US-state-for-comma-city)

(defun scan-from-US-state-for-comma-city (state-edge)
  (let ((prior-edge (preceded-by-comma-and-an-edge state-edge)))
    (when prior-edge
      (let ((label (edge-category prior-edge)))
        (when (or (eq label (category-named 'capitalized-word))
                  (eq label (category-named 'name)))

          (let ((city
                 (interpret-name-as-city (edge-referent prior-edge))))

            (scan-from-US-state-for-comma-city/aux
             city prior-edge state-edge)))))))


(defun scan-from-US-state-for-comma-city/aux
       (city prior-edge state-edge)

  (let ((city-edge
         (make-chart-edge
          :starting-position (pos-edge-starts-at prior-edge)
          :ending-position (pos-edge-ends-at prior-edge)
          :category  category::city
          :form (category-named 'proper-noun)
          :referent city
          :rule :Scan-from-US-state-for-comma-city)))

    (let ((combined-edge
           (make-chart-edge
            :starting-position (pos-edge-starts-at city-edge)  ;; :left-edge city-edge
            :ending-position (pos-edge-ends-at state-edge)     ;;  :right-edge state-edge
            :category category::city
            :form (category-named 'np)
            :referent city  ;; throws away state as I'm rushed just now
            :rule :Scan-from-US-state-for-comma-city)))

      ;; The comma was the left boundary of the ongoing
      ;; segment when the state-edge was completed.
      ;; We move it to incorporate the city
      (setq *left-segment-boundary*
            (pos-edge-starts-at prior-edge))

      combined-edge )))
