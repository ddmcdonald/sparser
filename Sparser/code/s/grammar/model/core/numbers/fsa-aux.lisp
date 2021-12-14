;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020-2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "fsa-aux"
;;;   Module:  "model;core:numbers:"
;;;  Version:  December 2021

;; Broken out of fsa-words 12/8/20

(in-package :sparser)

;;;-----------------------------
;;; test cases, patterns to try
;;;-----------------------------
#| 
(p/s "two hundred and seventy-nine")

(p "As a part of a larger project, 
two hundred and seventy-nine Amazon’s Mechanical Turk (MTurk) participants 
completed a battery of items")

 (p "One hundred sixteen") ; note initial word capitalized -- value is 100

"two hundred"

"twenty three"
"Twenty-three"

"Six-hundred twenty-four" 

"Four hundred thirty"
"One hundred forty one"
"One hundred thirty three"

"one hundred million"

"Twenty thousand two hundred and one (20,201)"

social security numbers: 123-45-6789

|#

;;;--------------------
;;; trace number words
;;;--------------------

;; (setq *debug-numbers* t)

(defparameter *trace-number-word-fsa* nil)
(defun trace-number-words ()
  (setq *trace-number-word-fsa* t))
(defun untrace-number-words ()
  (setq *trace-number-word-fsa* nil))

(deftrace :nw-starting-with (e)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] triggered by ~a" e)))

(deftrace :nw-scanned (word)
  ;; called in scan-for-more-number-words
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] scanned ~s" (pname word))))

(deftrace :nw-fsa-hit-and (pos)
  ;; called in scan-for-more-number-words
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] encounters 'and' at p~a"
               (pos-token-index pos))))

(deftrace :nw-terminating-at (pos)
  ;; called in package-number-edges
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] terminating at p~a"
               (pos-token-index pos))))

(deftrace :nw-is-one ()
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] the sole number word is 'one', not respanning")))

(deftrace :nw-fsa-hit-a-comma (pos)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] encountered a comma at p~a"
               (pos-token-index pos))))

(deftrace :nw-installing-edge (word cfr)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] installing edge over ~s using ~a"
               (pname word) cfr)))

(deftrace :nw-not-number-word (word)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] ~s does not have an number word rule"
               (pname word))))

(deftrace :nw-ended-with (preceding-num-edge)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] Calulating value. ~a preceded the number words"
               (if (null preceding-num-edge)
                 "nothing"
                 (format nil "~a" preceding-num-edge)))))

(deftrace :nw-compute-value (edges)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] compute value over ~a edges" (length edges))))

(deftrace :nw-number-number-word (integer mult-value)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] multiplying ~a * ~a" integer mult-value)))

(deftrace :nw-made-edge (edge value)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] Made edge e~a over ~a"
               (edge-position-in-resource-array edge) value)))

;;;--------------
;;; trace digits
;;;--------------

(defparameter *trace-digits-fsa* nil)
(defun trace-digits-fsa ()
  (setq *trace-digits-fsa* t))
(defun untrace-digits-fsa ()
  (setq *trace-digits-fsa* nil))

(deftrace :digit-fsa-scanned (word function)
  (when *trace-digits-fsa*
    (trace-msg "[digits] scanned ~s in ~a" (word-pname word) function)))

(deftrace :digit-fsa-returned-to-start (end-pos number-of-segments)
  (when *trace-digits-fsa*
    (trace-msg "[digits] Returned to make edge over ~a segements ~
                ending at p~a" number-of-segments (pos-token-index end-pos))))

(deftrace :digit-fsa-returning (reason function)
  (when *trace-digits-fsa*
    (trace-msg "[digits] returning from ~a~
              ~%    because ~a"
               function reason)))

(deftrace :too-few-digits (digit-word next-position)
  (when *trace-digits-fsa*
    (trace-msg "[digits] too few digits in ~s at p~a"
               (pname digit-word) (pos-token-index next-position))))


;;;------------------------------------------------
;;; standard function for hyphenated number pairs
;;;------------------------------------------------

(defun make-hyphenated-number (left-edge right-edge)
  "Called from one-hyphen-ns-patterns intended to label the pattern
   (:digits :hyphen :digits). However there are several alternative
   interpretations depending on what the edge actually denote
   Also called from compose-number-around-hyphen for hyphenated number
   words, and digit-FSA for hyphenated digits."
  (declare (special category::hyphenated-number category::number))
  (cond
    ((and (eq (edge-cat-name left-edge) 'year) ; "2019-20"
          (or (eq (edge-cat-name right-edge) 'year)
              (eq (edge-cat-name right-edge) 'number)))
     (look-for-year-expression left-edge right-edge))

    ((and (edge-over-number-word? left-edge) ; "twenty-three"
          (edge-over-number-word? right-edge)
          (not (and (eq :ones (numeric-label left-edge)) ; "one-two punch"
                    (eq :ones (numeric-label right-edge)))))
     (multiple-value-bind (value edge)
         (two-edge-number left-edge right-edge)
       edge))

    (t (let* ((i (find-or-make-individual
                  'hyphenated-number
                  :left (find-or-make-number (edge-referent left-edge))
                  :right (find-or-make-number (edge-referent right-edge))))
              (edge
               (make-chart-edge
                :starting-position (pos-edge-starts-at left-edge)
                :ending-position (pos-edge-ends-at right-edge)
                :left-daughter left-edge
                :right-daughter right-edge
                :category category::hyphenated-number
                :form category::number
                :referent  i
                :rule 'make-hyphenated-number))) 
         edge ))))

