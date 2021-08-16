;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "driver"
;;;    Module:   "analyzers;psp:word-spotting:"
;;;   Version:   August 2021

;; Initiated 5/18/21

(in-package :sparser)

;;--- hookup

(defgeneric target-word-to-spot (term)
  (:documentation "Accesses the table to see if there is an entry
     for this word/polyword. Returns the spotter instance or nil")
  (:method ((w word))
    (let ((entry (gethash w *words-to-triggers*)))
      entry))
  (:method ((pw polyword))
    (let ((entry (gethash pw *words-to-triggers*)))
      entry)))


;;--- Recognizers

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
  (:documentation "Same operations as spot-word except that we have
    to retrieve the position from this position, which we know to be
    immediately after where the pw ended.
    If the pattern of edges over a polyword ever changes,
    this will need revising")
  (:method ((p position))
    (let* ((e1 (edge-ending-at p))
           (left-daughter (edge-left-daughter e1)))
      (let ((pw
             (typecase left-daughter
               (polyword left-daughter) ;; "in order to"
               (edge
                (edge-category left-daughter))
               (otherwise (break "polyword not where expected")))))
        (unless (polyword-p pw)
          (break "spot-polyword needs extension"))
        (let ((spotter (target-word-to-spot pw)))
          (when spotter
            (handle-spotted-word spotter (pos-edge-starts-at e1) p :edge e1)))))))


(defgeneric spot-motif-trigger (edge)
  (:documentation "Invoked from examine-capitalized-sequence because the motif
    word/pw has an associated rule created by setup-motifs-language-spec whose
    category label is noticed. The link to the spotter is through the trigger
    word, which is bound to a slot on the referent.")
  (:method ((e edge))
    (let* ((j (edge-referent e))
           (word (value-of 'spotter-index j)))
      (unless word
        (push-debug `(,j ,edge))
        (break "no spotter-index recorded on ~a" j))
      (let ((spotter (target-word-to-spot word)))
        (unless spotter (break "connection to spotter didn't work"))
        (handle-spotted-word spotter
                             (pos-edge-starts-at e)
                             (pos-edge-ends-at e)
                             :edge e)))))


