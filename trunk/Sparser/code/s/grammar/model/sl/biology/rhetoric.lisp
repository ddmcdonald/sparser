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
      ((contains-new-fact-phrase sentence)
       (when *trace-relevance-judgements*
	 (format t "~&   Relevant (contains phrase): ~a~%" sentence))
       t)

      ((contains-motivation-phrase sentence)
       (when *trace-relevance-judgements*
	 (format t "~&   Not relevant (motivation): ~a~%" sentence))
       (record-irrelevant-sentence sentence :has-motivation-phrase)
       nil)

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

;;;--------------------------------------------
;;; Determine sentences' roles in the discourse
;;;--------------------------------------------

(defparameter *all-discourse-role-sents* nil)

(defparameter *no-discourse-role-sents* nil)

;;; These functions look at the content of a sentence
;;; and determine if the sentence can be classified as
;;; a type of discourse atom.

(defmethod known-result? ((c sentence-content))
  (or (includes-a-reference c)
      (contains-known-result-phrase c)))

(defmethod new-fact? ((c sentence-content))
  (contains-new-fact-phrase c))

(defmethod methodology? ((c sentence-content))
  (or (contains-methodology-phrase c)
      (past-tense c)))

(defmethod motivation? ((c sentence-content))
  (contains-motivation-phrase c))

(defmethod conjecture? ((c sentence-content))
  (or (contains-conjecture-phrase c)
      (contains-modal c)))

(defun determine-discourse-role (sentence)
  ;; Figure out what role the sentence is playing as an
  ;; atom of the discourse.
  (let ((contents (contents sentence)))
    (cond ((new-fact? contents)
	   (setf (discourse-role contents) 'new-fact)
	   (push `('new-fact ,(sentence-string sentence))
		 *all-discourse-role-sents*))
	  ((motivation? contents)
	   (setf (discourse-role contents) 'motivation)
	   (push `('motivation ,(sentence-string sentence))
		 *all-discourse-role-sents*))
	  ((methodology? contents)
	   (setf (discourse-role contents) 'methodology)
	   (push `('methodology ,(sentence-string sentence))
		 *all-discourse-role-sents*))
	  ((conjecture? contents)
	   (setf (discourse-role contents) 'conjecture)
	   (push `('conjecture ,(sentence-string sentence))
		 *all-discourse-role-sents*))
	  ((known-result? contents)
	   (setf (discourse-role contents) 'known-result)
	   (push `('known-result ,(sentence-string sentence))
		 *all-discourse-role-sents*))
	  (t
	   (pushnew
	    `(,(sentence-string sentence))
	    *no-discourse-role-sents*
	    :test #'string-equal :key #'car)))))
    
;;;--------------------------------------
;;; Establish shallow discourse relations
;;;--------------------------------------
#| The check-for-<relation> functions consider a two sentences
and determine if a discourse relation can hold between them.
The current possible relations are:
    - background-knowledge
    - evidence-for
    - same-role |#
;;;TODO experimental-result-of, result-of

(defparameter *collect-discourse-relations* nil)

(defparameter *all-discourse-relations* nil)

(defmethod note-discourse-relation (sent1 sent2 relation paragraph)
  ;; Add the relation to the appropriate slot in the paragraph
  ;; object.
  (push `(,sent1 ,sent2)
	 (slot-value (contents paragraph) relation))
  (when *collect-discourse-relations*
    (push `(,relation
	   (,(discourse-role (contents sent1)) ,(sentence-string sent1))
	   (,(discourse-role (contents sent2)) ,(sentence-string sent2)))
	   *all-discourse-relations*)))
	  
(defmethod check-for-background-knowledge ((contents1 sentence-content)
					   (contents2 sentence-content))
  ;; Checks to see if sent1 is background information
  ;; for sent2. Makes some restricting assumptions, namely,
  ;; only a known result can be background info, and only
  ;; methodology and motivation phrases can stand in the
  ;; background-knowledge relation to a known result.
  (and (eql (discourse-role contents1) 'known-result)
       (or (eql (discourse-role contents2) 'methodology)
	   (eql (discourse-role contents2) 'motivation))))

(defmethod check-for-evidence-for ((contents1 sentence-content)
				   (contents2 sentence-content))
  ;; Checks to see if sent1 is evidence for sent2. True if sent1
  ;; is methodology or motivation, and sent2 is conjecture or new fact.
  (and (or (eql (discourse-role contents1) 'methodology)
	   (eql (discourse-role contents1) 'motivation))
       (or (eql (discourse-role contents2) 'conjecture)
	   (eql (discourse-role contents2) 'new-fact))))

(defmethod check-for-same-role ((contents1 sentence-content)
				(contents2 sentence-content))
  ;; Checks to see if sent1 and sent2 have the same discourse
  ;; role (as determined by determine-discourse-role).
  (unless (null (discourse-role contents1))
    (eql (discourse-role contents1)
	 (discourse-role contents2))))

(defmethod check-for-result-of ((s sentence))
  ;; Domain-agnostic relation. Simply checks the first word
  ;; of the second sentence, and if it's one of the words known
  ;; to be a discourse marker of causality, the relation holds.
  (let ((first-word (first (split (sentence-string s)))))
    (or (string-equal first-word "hence")
	(string-equal first-word "thus")
	(string-equal first-word "therefore")
	(string-equal first-word "therefor")
	(string-equal first-word "consequently"))))

(defmethod check-for-contrast ((s sentence))
  ;; Domain-agnostic relation. Checks if the first word(s)
  ;; of the sentence are on eof the known markers for contrast.
  (let* ((sent-words (split (sentence-string s)))
	 (first-two-words
	  (concatenate 'string (first sent-words) " " (second sent-words))))
    (or (string-equal first-two-words "in contrast,")
	(string-equal first-two-words "in contrast"))))
				       
(defun establish-discourse-relations (sentence)
  ;; A pair of sentences may be eligible to stand in more
  ;; than one relation to each other. The ordering of the
  ;; cond clauses below determine which relation is actually
  ;; established in the paragraph content container.
  (declare (special *previous-sentence*))
  (let* ((paragraph (parent sentence))
	 (prev-sent (previous sentence))
	 (contents (contents sentence))
	 (prev-cont (when prev-sent (contents prev-sent))))
    (when prev-sent
      (determine-discourse-role sentence)
      (unless (discourse-role prev-cont)
	(determine-discourse-role prev-sent))
      (cond ((check-for-same-role contents prev-cont)
	    (note-discourse-relation sentence prev-sent
				     'same-role paragraph))
	   ((check-for-evidence-for contents prev-cont)
	    (note-discourse-relation sentence prev-sent
				     'evidence-for paragraph))
	   ;; parameter order is switched here - previous sentence
	   ;; will generally be background knowledge for current sentence
	   ((check-for-background-knowledge prev-cont contents)
	    (note-discourse-relation prev-sent sentence
				     'background-knowledge paragraph))
	   ((check-for-result-of sentence)
	    (note-discourse-relation sentence prev-sent
				     'result-of paragraph))
	   ((check-for-contrast sentence)
	    (note-discourse-relation sentence prev-sent
				     'contrast paragraph))
	   (t
	    t)))))
	   
;;;-------------------------------------------
;;; Convenience functions over status objects
;;;-------------------------------------------

(defmethod includes-a-reference ((s sentence))
  (includes-a-reference (contents s)))

(defmethod includes-a-reference ((c sentence-content))
  (explicit-reference c))

(defmethod contains-conjecture-phrase ((s sentence))
  (contains-conjecture-phrase (contents s)))

(defmethod contains-conjecture-phrase ((c sentence-content))
  (conjectures c))

(defmethod contains-known-result-phrase ((s sentence))
  (contains-known-result-phrase (contents s)))

(defmethod contains-known-result-phrase ((c sentence-content))
  (known-results c))

(defmethod contains-new-fact-phrase ((s sentence))
  (contains-new-fact-phrase (contents s)))

(defmethod contains-new-fact-phrase ((c sentence-content))
  (new-facts c))

(defmethod contains-methodology-phrase ((s sentence))
  (contains-methodology-phrase (contents s)))

(defmethod contains-methodology-phrase ((c sentence-content))
  (methodology c))

(defmethod contains-motivation-phrase ((s sentence))
  (contains-motivation-phrase (contents s)))

(defmethod contains-motivation-phrase ((c sentence-content))
  (motivation c))

(defmethod past-tense ((s sentence))
  (past-tense (contents s)))
  
(defmethod past-tense ((c sentence-content))
  (declare (ignore c)) nil )

(defmethod present-tense ((s sentence))
  (present-tense (contents s)))

(defmethod present-tense ((c sentence-content))
  (declare (ignore c)) nil )
  
(defmethod contains-modal ((s sentence))
  (contains-modal (contents s)))

(defmethod contains-modal ((c sentence-content))
  (declare (ignore c)) nil )

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

(conjecture-phrase "a possible explanation")
(conjecture-phrase "it is likely that")
(conjecture-phrase "it is possible that")
(conjecture-phrase "one could hypothesize that")

(known-result-phrase "emerging evidence suggests")
(known-result-phrase "has been shown")
(known-result-phrase "it has been proposed that")
(known-result-phrase "it has been unclear how")
(known-result-phrase "it is less clear how")
(known-result-phrase "it remains unclear why")
(known-result-phrase "it was established")
(known-result-phrase "it was shown")
(known-result-phrase "most commonly")
(known-result-phrase "most studied")
(known-result-phrase "previous")
(known-result-phrase "previously")
(known-result-phrase "recent data")
(known-result-phrase "recent evidence")
(known-result-phrase "recent investigations")
(known-result-phrase "recently")
(known-result-phrase "thus far identified")

;; Can we reduce this to just the verbs+present tense,
;; e.g., "reveal", "show", "demonstrate", etc.? 
;; Or give a list of words and say that a new-fact-phrase
;; is any polyword that is a (syntactically valid?)permutation
;; of those words. Or just if a sentence contains enough of
;; the words?
(new-fact-phrase "arguing that")
(new-fact-phrase "demonstrates that")
(new-fact-phrase "for the first time") 
(new-fact-phrase "hence")
(new-fact-phrase "here we show")
(new-fact-phrase "indicates that")
(new-fact-phrase "indicating")
(new-fact-phrase "our data provide evidence")
(new-fact-phrase "our data reveal")
(new-fact-phrase "our data suggest that")
(new-fact-phrase "provides a novel link between")
(new-fact-phrase "provides an explanation of how")
(new-fact-phrase "suggesting that")
(new-fact-phrase "the data also suggest")
(new-fact-phrase "the data suggest")
(new-fact-phrase "these data illustrate")
(new-fact-phrase "these data suggest")
(new-fact-phrase "these data support")
(new-fact-phrase "these findings reveal")
(new-fact-phrase "this modeling result suggests that")
(new-fact-phrase "this result indicates")
(new-fact-phrase "these results indicate")
(new-fact-phrase "these results show")
(new-fact-phrase "these results suggest")
(new-fact-phrase "this result shows")
(new-fact-phrase "this suggests that")
(new-fact-phrase "this indicates that")
(new-fact-phrase "this observation suggests")
(new-fact-phrase "we also show that")
(new-fact-phrase "we conclude that")
(new-fact-phrase "we demonstrate that")
(new-fact-phrase "we find that")
(new-fact-phrase "we further demonstrate that")
(new-fact-phrase "we report here")
(new-fact-phrase "we show here that")

(methodology-phrase "was performed")
(methodology-phrase "was tested")
(methodology-phrase "we analyzed")
(methodology-phrase "we carried out")
(methodology-phrase "we conducted")
(methodology-phrase "we employed")
(methodology-phrase "we examined")
(methodology-phrase "we first determined")
(methodology-phrase "we observed")
(methodology-phrase "we performed")
(methodology-phrase "were analysed")

#| we queried whether [the activity of ASPP2 is regulated
by the activation of a RAS-mediated signalling pathway." |#
(motivation-phrase "to assess whether")
(motivation-phrase "to determine whether")
(motivation-phrase "to test whether")
(motivation-phrase "we evaluated whether")
(motivation-phrase "we investigated whether")
(motivation-phrase "we queried whether")
(motivation-phrase "we tested whether")
(motivation-phrase "we therefore tested whether")
(motivation-phrase "we thus tested whether")

(evidence-of-reference "xref")
