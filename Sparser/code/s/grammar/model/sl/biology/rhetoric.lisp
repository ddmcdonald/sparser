;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "rhetoric"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2015

;; Created 6/4/15 to hold all vocabulary that's rhetorical in nature
;; and any rules of any sort that observations about the retorical 
;; structure writ large of a molecular biology passage or article. 
;; See companion file with def forms and structure in objects/doc/
;; rhetoric.lisp

(in-package :sparser)

;;;----------
;;; assessor
;;;----------

(defun assess-relevance (sentence)
  ;; Called from post-analysis-operations just before we would
  ;; make a card. If it returns nil -- having determined that
  ;; the sentence is about established or conjectured facts and
  ;; consequently not relevant -- then no card will be made.
  (let ((paragraph (parent sentence))
        )
    (push-debug `(,paragraph))
    t))

#| At the point when this is called, all of the phrases (text strings)
that applied to this sentence will have been seen by complete and 
had their effect on the slots that the expistemic-status class added
to the contents instance that is in the contents slot of this sentence
that's been passed in as an argument  You can get to the paragraph object
that this sentence is part of by calling (parent sentence), and the slots
contributed by epistemic state will be on the object in its contents slot.
   I imagine that this is where you update the paragraph state give
what's happened for this sentence, and that to answer the question
of whether or not to declare this sentence to be relevant is a calculation
over both sentence and paragraph, deferring to the paragraph when there's
no evidence in the sentence.
|#


;;;-------
;;; rules
;;;-------
#|
(conjecture-phrase "could") ;; could also
(conjecture-phrase "it is possible that")
(conjecture-phrase "it is likely that")


(evidence-of-reference "xref")
|#