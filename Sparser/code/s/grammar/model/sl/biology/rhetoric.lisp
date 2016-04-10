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
(defparameter *filter-phrases* t
  "Filter out sentences with recognized phrases that indicate the sentence
contains irrelevant information.")

;; turned off by default since figures and citations are indistinguishable
(defparameter *filter-refs* nil
  "Filter out sentences with references.")

(defparameter *filter-intro* t
  "Filter out sentences in the intro.")

(defparameter *all-irrelevant-sentences* nil)

(defun record-irrelevant-sentence (sentence reason)
  (pushnew `(,reason
	     ,(sentence-string sentence)
	     ,(all-individuals-in-tts sentence)
	     ,*current-article*)
	   *all-irrelevant-sentences*
	   :key #'second))

(defun assess-relevance (sentence)
  ;; Called from post-analysis-operations just before we would
  ;; make a card. If it returns nil -- having determined that
  ;; the sentence is about established or conjectured facts and
  ;; consequently not relevant -- then no card will be made.
  (let ((paragraph (parent sentence)))
    (push-debug `(,paragraph))
    (or (and *filter-phrases* (contains-new-fact-phrase sentence) t)
        (and
         (if *filter-intro* (assess-relevance-intro sentence) t)
         (if *filter-phrases* (assess-relevance-phrases sentence) t)
         (if *filter-refs* (assess-relevance-ref sentence) t) 
         ))))
    
;;; return true if sentence is relevant because of phrasing
(defun assess-relevance-phrases (sentence)
  (cond
    ((contains-motivation-phrase sentence)
     (record-irrelevant-sentence sentence :has-motivation-phrase)
     nil)
    ((contains-conjecture-phrase sentence)
     (record-irrelevant-sentence sentence :has-conjecture-phrase)
     nil)
    ((contains-known-result-phrase sentence)
     (record-irrelevant-sentence sentence :has-known-result-phrase)
     nil)
    ((contains-methodology-phrase sentence)
     (record-irrelevant-sentence sentence :has-methodology-phrase)
     nil)
    ((contains-exp-result-phrase sentence)
     (record-irrelevant-sentence sentence :has-exp-result-phrase)
     nil)
    (t
     t)))

;;; return true if sentence is relevant because it doesnt cite someone else (original material test)
(defun assess-relevance-ref (sentence)
  (cond
    ((includes-a-reference sentence)
     (record-irrelevant-sentence sentence :includes-reference)
     nil)
    (t
     t)))

;;; return true if not in the introduction
(defun assess-relevance-intro (sentence)
  (let ((*reading-section-title* t))
    (declare (special *reading-section-title*))
    (cond
      ((exact-title-of-current-section-is "Introduction")
       (record-irrelevant-sentence sentence :in-intro)
       nil)
      (t
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
;;; Discourse roles and relations
;;;--------------------------------------------

(defparameter *all-discourse-relations* nil
  "Stores all discourse relations found by establish-discourse-relations.")

(defparameter *collect-discourse-relations* nil
  "Flag to control whether or not discourse relations are pushed to 
*all-discourse-relations*.")

(defparameter *all-discourse-role-sents* nil
  "Stores all of the sentences that have been classified with a discourse role.")

(defparameter *no-discourse-role-sents* nil
  "Stores all of the sentences that have not been given a discourse role.")

(defun reset-and-do-discourse ()
  (setf *all-discourse-relations* nil
	*collect-discourse-relations* t
	*all-discourse-role-sents* nil
	*no-discourse-role-sents* nil
	*do-discourse-relations* t))

;;;--------------------------------------------
;;; Determine sentences' roles in the discourse
;;;--------------------------------------------

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

(defmethod experimental-result? ((c sentence-content))
  (contains-exp-result-phrase c))

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
	  ((experimental-result? contents)
	   (setf (discourse-role contents) 'experimental-result)
	   (push `('experimental-result ,(sentence-string sentence))
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
The current possible relations are split into two types, bio
and structural. The former are computed using the sentences'
discourse roles, while the latter only look for specific lexical
triggers. 

bio-discourse-relations:
    - background-knowledge
    - evidence-for
    - same-role 
structural-discourse-relations:
    - contrast
    - result-of

The relations are 'shallow' because the semantic content of
the sentences is not considered. |#

;;; Bio discourse relations

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
	   (eql (discourse-role contents2) 'motivation)
	   (eql (discourse-role contents2) 'experimental-result))))

(defmethod check-for-evidence-for ((contents1 sentence-content)
				   (contents2 sentence-content))
  ;; Checks to see if sent1 is evidence for sent2. True if sent1
  ;; is methodology or motivation, and sent2 is conjecture or new fact.
  (and (or (eql (discourse-role contents1) 'methodology)
	   (eql (discourse-role contents1) 'motivation)
	   (eql (discourse-role contents1) 'experimental-result))
       (or (eql (discourse-role contents2) 'conjecture)
	   (eql (discourse-role contents2) 'new-fact))))

(defmethod check-for-experimental-result-of ((contents1 sentence-content)
					     (contents2 sentence-content))
  ;; Is sent1 the result of some experiment described by sent2?
  ;; This will overgenerate, since all sentences without discourse
  ;; roles are contender participants in the relation.
  (and (or (not (discourse-role contents1))
	   (eql (discourse-role contents1) 'experimental-result))
       (or (eql (discourse-role contents2) 'methodology)
	   (eql (discourse-role contents2) 'motivation))))

(defmethod check-for-same-role ((contents1 sentence-content)
				(contents2 sentence-content))
  ;; Checks to see if sent1 and sent2 have the same discourse
  ;; role (as determined by determine-discourse-role).
  (unless (null (discourse-role contents1))
    (eql (discourse-role contents1)
	 (discourse-role contents2))))

;;; Structural discourse relations

(defun match-first-word (sent-words match-words)
  ;; If one of the supplied match-words matches the
  ;; first of a list of words, return that word. Else,
  ;; return nil.
  (let ((first-word (first sent-words)))
    (loop for word in match-words
       if (string-equal first-word word)
       return first-word)))

(defun match-second-word (sent-words match-words)
  ;; If one of the supplied match-words matches the
  ;; second of a list of words, return that word. Else,
  ;; return nil.
  (let ((second-word (second sent-words)))
    (loop for word in match-words
       if (string-equal second-word word)
       return second-word))) 

(defmethod check-for-result-of ((s sentence))
  ;; Domain-agnostic relation. Simply checks the first and second
  ;; words of the sentence, and if one of them is one of the words
  ;; known to be a discourse marker of causality, the relation holds.
  (let ((sent-words (split (sentence-string s)))
	(match-words '("hence" "thus" "therefore" "therefor"
		       "consequently")))
    (or (match-first-word sent-words match-words)
	(match-second-word sent-words match-words))))
    
(defmethod check-for-contrast ((s sentence))
  ;; Domain-agnostic relation. Checks if the first word(s)
  ;; of the sentence are on eof the known markers for contrast.
  (let ((sent-words (split (sentence-string s))))
    (and (match-first-word sent-words '("in"))
	 (or (match-second-word sent-words '("contrast"))
	     (match-second-word sent-words '("contrast,"))))))
    
(defun establish-structural-discourse-relations (sentence prev-sent
						 paragraph)
  ;; Relations triggered by explicit discourse markers.
  ;; Don't take the discourse roles of the sentences into account.
  (cond ((check-for-result-of sentence)
	 (note-discourse-relation sentence prev-sent
				  'result-of paragraph))
	((check-for-contrast sentence)
	 (note-discourse-relation sentence prev-sent
				  'contrast paragraph))
	(t
	 t)))

(defun establish-bio-discourse-relations (sentence prev-sent paragraph
					  contents prev-cont)
  ;; Relations that are determined by the discourse roles
  ;; of the sentences being considered.
  (cond ((check-for-same-role contents prev-cont)
	 (note-discourse-relation sentence prev-sent
				  'same-role paragraph))
	;; parameter order is switched here - previous sentence
	;; will generally be background knowledge for current sentence
	((check-for-evidence-for prev-cont contents)
	 (note-discourse-relation prev-sent sentence
				  'evidence-for paragraph))
	;; same order here as check-for-evidence-for
	((check-for-background-knowledge prev-cont contents)
	 (note-discourse-relation prev-sent sentence
				  'background-knowledge paragraph))
	((check-for-experimental-result-of contents prev-cont)
	 (note-discourse-relation sentence prev-sent
				  'experimental-result-of paragraph))
	(t
	 t)))

(defun establish-discourse-relations (sentence)
  ;; Two types of discourse relations can hold of a pair
  ;; of sentences: biological (i.e., a relation that is
  ;; computed using the discourse roles of each sentence),
  ;; and structural (i.e., a relation that is triggered
  ;; solely by the presence of an explicit discourse marker.
  (declare (special *previous-sentence*))
  (let* ((paragraph (parent sentence))
	 (prev-sent (previous sentence))
	 (contents (contents sentence))
	 (prev-cont (when prev-sent (contents prev-sent))))
    (when prev-sent
      (determine-discourse-role sentence)
      (unless (discourse-role prev-cont)
	(determine-discourse-role prev-sent))
      (establish-bio-discourse-relations sentence prev-sent paragraph
					 contents prev-cont)
      (establish-structural-discourse-relations sentence prev-sent
						paragraph))))

(defun write-discourse-to-file (filename)
  ;; Writes a list of all identified discourse elements
  ;; (relations and roles) to file specified by filename,
  ;; as well as all sentences not given a discourse role.
  (unless *all-discourse-relations*
    (error "No stored discourse relations."))
  (with-open-file (out filename
		       :direction :output
		       :if-exists :supersede)
    (format out "NUMBER OF SENTENCES WITH ROLES: ~a~%"
	    (length *all-discourse-role-sents*))
    (format out "NUMBER OF SENTENCES WITHOUT ROLES: ~a~%"
	    (length *no-discourse-role-sents*))
    (format out "NUMBER OF ESTABLISHED RELATIONS: ~a~%~%"
	    (length *all-discourse-relations*))
    (princ "----------DISCOURSE ROLES----------" out)
    (format out "~%")
    (dolist (role (reverse *all-discourse-role-sents*))
      (format out "~a ~a~%~%" (car role) (cadr role)))
    (format out "~%~%~%")
    (princ "----------NO DISCOURSE ROLES----------" out)
    (format out "~%")
    (dolist (sent (reverse *no-discourse-role-sents*))
      (format out "~a~%~%" (car sent)))
    (format out "~%~%~%")
    (princ "----------DISCOURSE RELATIONS----------" out)
    (format out "~%")
    (dolist (dr (reverse *all-discourse-relations*))
      (format out "~a~%    ~a~%    ~a~%~%" (first dr)
	                                   (second dr)
	                                   (third dr)))))
  
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

(defmethod contains-exp-result-phrase ((s sentence))
  (contains-exp-result-phrase (contents s)))

(defmethod contains-exp-result-phrase ((c sentence-content))
  (experimental-results c))

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

(conjecture-phrase "a possible explanation")
(conjecture-phrase "it is likely that")
(conjecture-phrase "it is possible that")
(conjecture-phrase "one could hypothesize that")
(conjecture-phrase "we speculate that")

(experimental-result-phrase "we found")
(experimental-result-phrase "we also observed")
(experimental-result-phrase "we observed")

(known-result-phrase "emerging evidence suggests")
(known-result-phrase "has been shown")
(known-result-phrase "in previous studies")
(known-result-phrase "it has been proposed that")
(known-result-phrase "it has been unclear how")
(known-result-phrase "it is less clear how")
(known-result-phrase "it remains unclear why")
(known-result-phrase "it was established")
(known-result-phrase "it was shown")
(known-result-phrase "most commonly")
(known-result-phrase "most studied")
(known-result-phrase "previous studies have shown")
(known-result-phrase "previous studies predicted")
(known-result-phrase "previous computational studies predicated")
(known-result-phrase "recent data")
(known-result-phrase "recent evidence indicates")
(known-result-phrase "recent investigations")
(known-result-phrase "recently")
(known-result-phrase "thus far identified")
(known-result-phrase "we previously showed")

(new-fact-phrase "arguing that")
(new-fact-phrase "demonstrates that")
(new-fact-phrase "for the first time") 
(new-fact-phrase "hence")
(new-fact-phrase "here we show")
(new-fact-phrase "indicates that")
(new-fact-phrase "indicating")
(new-fact-phrase "it is evident that")
(new-fact-phrase "our data provide evidence")
(new-fact-phrase "our data reveal")
(new-fact-phrase "our data suggest that")
(new-fact-phrase "out findings reveal")
(new-fact-phrase "provides a novel link between")
(new-fact-phrase "provides an explanation of how")
(new-fact-phrase "suggesting that")
(new-fact-phrase "the data also suggest")
(new-fact-phrase "the data suggest")
(new-fact-phrase "these data illustrate")
(new-fact-phrase "these data indicate")
(new-fact-phrase "these data suggest")
(new-fact-phrase "these data support")
(new-fact-phrase "these findings reveal")
(new-fact-phrase "these findings suggest")
(new-fact-phrase "this modeling result suggests that")
(new-fact-phrase "this result indicates")
(new-fact-phrase "these results indicate")
(new-fact-phrase "these results indicated")
(new-fact-phrase "these results show")
(new-fact-phrase "these results suggest")
(new-fact-phrase "this result shows")
(new-fact-phrase "this result suggests")
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
(new-fact-phrase "we show that")

(methodology-phrase "in our approach")
(methodology-phrase "to test this prediction")
(methodology-phrase "was compared")
(methodology-phrase "was performed")
(methodology-phrase "was tested")
(methodology-phrase "we analyzed")
(methodology-phrase "we built computational models")
(methodology-phrase "we carried out")
(methodology-phrase "we chemically ligated")
(methodology-phrase "we conducted")
(methodology-phrase "we employed")
(methodology-phrase "we equilibrated")
(methodology-phrase "we examined")
(methodology-phrase "we generated")
(methodology-phrase "we immunopreciated")
(methodology-phrase "we measured")
(methodology-phrase "we modified")
(methodology-phrase "we mutated")
(methodology-phrase "we performed")
(methodology-phrase "we placed")
(methodology-phrase "we replaced")
(methodology-phrase "we used")
(methodology-phrase "were analysed")

#| we queried whether [the activity of ASPP2 is regulated
by the activation of a RAS-mediated signalling pathway]." |#
(motivation-phrase "to assess the effect")
(motivation-phrase "to assess whether")
(motivation-phrase "to determine if")
(motivation-phrase "to determine the effect")
(motivation-phrase "to determine the mechanism")
(motivation-phrase "to determine whether")
(motivation-phrase "to elucidate the mechanism")
(motivation-phrase "to establish whether")
(motivation-phrase "to further establish that")
(motivation-phrase "to test whether")
(motivation-phrase "to validate")
(motivation-phrase "to verify that")
(motivation-phrase "we considered whether")
(motivation-phrase "we evaluated whether")
(motivation-phrase "we first determined if")
(motivation-phrase "we investigated whether")
(motivation-phrase "we next considered")
(motivation-phrase "we queried whether")
(motivation-phrase "we set out to identify")
(motivation-phrase "we tested whether")
(motivation-phrase "we therefore tested whether")
(motivation-phrase "we thus tested whether")

(evidence-of-reference "xref")
