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
(defparameter *trace-relevance-judgements* nil)

(defparameter *all-irrelevant-sentences* nil)

(defun record-irrelevant-sentence (sentence reason)
  (push `(,reason
          ,(sentence-string sentence) 
          ,(all-individuals-in-tts sentence)
          ,@(when (and (boundp '*current-article*)
                       *current-article*)
              (list *current-article*
                    *universal-time-start*
                    *universal-time-end*)))
        *all-irrelevant-sentences*))


(defun assess-relevance (sentence)
  ;; Called from post-analysis-operations just before we would
  ;; make a card. If it returns nil -- having determined that
  ;; the sentence is about established or conjectured facts and
  ;; consequently not relevant -- then no card will be made.
  (declare (special *reading-section-title*))
  (let ((paragraph (parent sentence)))        
    (push-debug `(,paragraph))
    (cond
      ((includes-a-reference sentence)
       (when *trace-relevance-judgements*
	(format t "~&   Not relevant (reference): ~a~%" sentence))
       (record-irrelevant-sentence sentence :includes-reference)
       nil)

      ((title-of-currect-section-is "intro")
       (record-irrelevant-sentence sentence :in-intro)
       nil)

      (*reading-section-title* t)

      ((contains-conjecture-phrase sentence)
       (when *trace-relevance-judgements*
	 (format t "~&   Not relevant (conjecture): ~a~%" sentence))
       (record-irrelevant-sentence sentence :has-conjecture-phrase)
       nil)

      ((contains-known-result-phrase sentence)
       (when *trace-relevance-judgements*
	 (format t "~&   Not relevant (known result): ~a~%" sentence))
       (record-irrelevant-sentence sentence :has-known-result-phrase)
       nil)

      ((contains-methodology-phrase sentence)
       (when *trace-relevance-judgements*
	 (format t "~&   Not relevant (methodology): ~a~%" sentence))
       (record-irrelevant-sentence sentence :has-methodology-phrase)
       nil)

      ((past-tense sentence)
       (when *trace-relevance-judgements*
	 (format t "~&   Not relevant (past tense): ~a~%" sentence))
       (record-irrelevant-sentence sentence :past-tense)
       nil)

      ((future-tense sentence)
       (when *trace-relevance-judgements*
	 (format t "~&   Not relevant (future tense): ~a~%" sentence))
       (record-irrelevant-sentence sentence :future)
       nil)

      ((contains-modal sentence)
       (when *trace-relevance-judgements*
	 (format t "~&   Not relevant (modal): ~a~%" sentence))
       (record-irrelevant-sentence sentence :modal)
       nil)

      (t
       (when *trace-relevance-judgements*
	 (format t "~&   Relevant: ~a~%" sentence))
       t))))


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


;;;-------------------------------------------
;;; Convenience functions over status objects
;;;-------------------------------------------

(defmethod includes-a-reference ((s sentence))
  (explicit-reference (contents s)))

(defmethod contains-conjecture-phrase ((s sentence))
  (conjectures (contents s)))

(defmethod contains-known-result-phrase ((s sentence))
  (known-results (contents s)))

(defmethod contains-new-fact-phrase ((s sentence))
  (new-facts (contents s)))

(defmethod contains-methodology-phrase ((s sentence))
  (methodology (contents s)))

(defmethod past-tense ((s sentence))
  (declare (ignore s)) nil  )

(defmethod present-tense ((s sentence))
  (declare (ignore s)) nil  )

(defmethod future-tense ((s sentence))
  (declare (ignore s)) nil  )

(defmethod contains-modal ((s sentence))
  (declare (ignore s)) nil  )



;;;-------
;;; rules
;;;-------

;; Let's not mark modals or other elements of tense
;; and aspect during the feature-reading pass. The complete routine
;; complicates the regular function of "could" within the parsing
;; of the verb group. We can look for this sort of thing during
;; the relevance computation at which point we just (... a mear matter
;; of programming) look for them and judge accordingly. 
;;(conjecture-phrase "could") ;; could also


(conjecture-phrase "it is likely that")
(conjecture-phrase "it is possible that")
(conjecture-phrase "one could hypothesize that")
(conjecture-phrase "we evaluated whether")
(conjecture-phrase "we queried whether")
(conjecture-phrase "we tested whether")

(known-result-phrase "as previously demonstrated")
(known-result-phrase "emerging evidence suggests")
(known-result-phrase "has been shown")
(known-result-phrase "in a previous paper")
(known-result-phrase "it has been proposed that")
(known-result-phrase "it has been unclear how")
(known-result-phrase "it is less clear how")
(known-result-phrase "it remains unclear why")
(known-result-phrase "most commonly")
(known-result-phrase "previously")
(known-result-phrase "recent data")
(known-result-phrase "recent evidence")
(known-result-phrase "recently")
(known-result-phrase "thus far identified")

(new-fact-phrase "arguing that")
(new-fact-phrase "demonstrates that")
(new-fact-phrase "hence")
(new-fact-phrase "here we show")
(new-fact-phrase "indicates that")
(new-fact-phrase "our data provide evidence")
(new-fact-phrase "our data suggest that")
(new-fact-phrase "provides a novel link between")
(new-fact-phrase "provides an explanation of how")
(new-fact-phrase "suggesting that")
(new-fact-phrase "these data suggest")
(new-fact-phrase "these findings reveal")
(new-fact-phrase "these results show")
(new-fact-phrase "these results suggest")
(new-fact-phrase "this indicates that")
(new-fact-phrase "this observation suggests")
(new-fact-phrase "thus")
(new-fact-phrase "we also show that")
(new-fact-phrase "we conclude that")
(new-fact-phrase "we demonstrate that")
(new-fact-phrase "we find that")
(new-fact-phrase "we further demonstrate that")
(new-fact-phrase "we report here")
(new-fact-phrase "we show here that")

(methodology-phrase "to assess")
(methodology-phrase "to determine")
(methodology-phrase "we analyzed")
(methodology-phrase "we carried out")
(methodology-phrase "we examined")
(methodology-phrase "we investigated")
(methodology-phrase "we observed")
(methodology-phrase "we performed")

(evidence-of-reference "xref")
