;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "driver"
;;;    Module:   "analyzers;psp:word-spotting:"
;;;   Version:   May 2021

;; Initiated 5/18/21

(in-package :sparser)


(defvar *words-to-triggers* (make-hash-table)
  "Associates words or polywords with a spotter instance
   that is executed when the word is encountered.")

(defun add-word-to-spot (word spotter)
  (setf (gethash word *words-to-triggers*) spotter))

(defun remove-word-to-spot (word)
  (remhash word *words-to-triggers*))

(defgeneric target-word-to-spot (term)
  (:documentation "Accesses the table to see if there is an entry
     for this word/polyword. Returns the spotter instance or nil")
  (:method ((w word))
    (let ((entry (gethash w *words-to-triggers*)))
      entry))
  (:method ((pw polyword))
    (let ((entry (gethash pw *words-to-triggers*)))
      entry)))


(defgeneric spot-word (term)
  (:documentation "This function is seeded into the runtime
 code at a point where the chart only has words or polywords,
 which appears to be within scan-sentences-and-pws-to-eos which is
 the first operation in the standard multi-layers operation that
 is charged with demarcating sentences, which requires detecting
 and instantiating any polywords or abbreviations and thereby soak up
 the bulk of the no-sentence-delimiting periods.
 In the process it populates the chart with word or edges over the
 polywords. ")
  (:method ((p position))
    (let* ((word (pos-terminal p))
           (spotter (target-word-to-spot word)))
      (when spotter
        (handle-spotted-word spotter p (chart-position-after p))))))

(defgeneric spot-polyword (term)
  (:documentation "Same operations as spot word except that we have
    to retrieve the position from this position, which we know to be
    immediately after where the pw ended.
    If the pattern of edges over a polyword ever changes,
    this will need revising")
  (:method ((p position)) ))
  #+ignore ;; suppress breaks until fully debugged -- irish #6
    (let* ((e1 (edge-ending-at p))
           (left-daughter (edge-left-daughter e1)))
      (unless (edge-p left-daughter) (break "PW layout is unexpected"))
      (let* ((pw (edge-category left-daughter))
             (spotter (target-word-to-spot pw)))
        (when spotter
          (handle-spotted-word spotter (pos-edge-starts-at e1) p :edge e1))))

