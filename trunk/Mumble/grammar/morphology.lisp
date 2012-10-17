;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; Default-character-style: (:FIX :ROMAN :NORMAL); -*-
;;; $Id: morphology.lisp 100 2007-07-04 14:31:27Z dmcdonal $
;;;
;;; Mumble-05:  grammar; morphology
;;;
;;; Copyright (C) 2005 David D. McDonald
;;; Copyright (C) 1985, 1986, 1987, 1988, 1995  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

;; ChangeLog
;;  6/8/95 ddm - changed Determine-case-from-labels to put pronouns in  possessive slots
;;   in the possessive-np case.
;;  1/17/05 Started make-over to lemmas, etc.

(in-package :mumble)

(defun morphologically-specialize-&-say-it (item labels)
  (unless (word-stream-itemp item)
    (break "Something other than a word was passed through: ~a" item))
  (etypecase item
    (word
     (cond  
      ((and (part-of-speech 'verb item)
            (gerund-position labels))
       (ing-form item))
      ((and (part-of-speech 'verb item)
            (verb-position labels))
       (verb-morphology item (name (car labels))))
      
      ;;not sure of the generality of this
      ((and (part-of-speech 'verb item)
            (comp-of-be-position labels))
       (predicate-adjective item))
      
      ((and (or
             (part-of-speech 'noun item)
             (part-of-speech 'proper-noun item))
            (noun-position labels))
       (noun-morphology-plural item))
      
      (t (send-to-output-stream (pname item) item) )))
    (tense-marker (process-tense item))
    (pronoun  (pronoun-morphology item labels))
    (ttrace  (process-trace item (name (car labels))))))


(defun part-of-speech (category word)
  (member (word-label-named category) (word-labels word)))


;; the functions which use these variables (verb-position and 
;;  noun-position) initialize them the first time the functions
;;  are called.  They can't be initialized in the definitions
;;  as this code is not postprocessed.

(defparameter *verb-labels* nil)

(defparameter *noun-labels* nil)

;; these functions are used to distintuish ambiguous words
;; (i.e. attack as a noun and a verb).  They check the 
;; labels on the current position to see if its more likely
;; it takes a noun or verb (no other clashes have presented
;; a problem as yet.  [mwm 11-3-87]

(defun verb-position (labels)
  (when (null *verb-labels*)
	(setq *verb-labels*
	      (list (slot-label-named 'verb)
		    (slot-label-named 'tense-modal)
		    (slot-label-named 'have+en)
		    (slot-label-named 'be+ing)
		    (slot-label-named 'be+en)
		    ;;others?
		    )))
  (intersection labels *verb-labels*))

(defun noun-position (labels)
  (when (null *noun-labels*)
	(setq *noun-labels*
	      (list (slot-label-named 'np-head)
		    (slot-label-named 'compound-noun-head)
		    ;;others?
		    )))
  (intersection labels  *noun-labels*))

(defun comp-of-be-position (labels)
  (member (slot-label-named 'complement-of-be)
	  labels))
  
(defun gerund-position (labels)
  (member (slot-label-named 'gerund)
	  labels))



;#################################################################
;  VERB GROUP MORPHOLOGY
;#################################################################

(defun set-tense-state (the-tense-marker)
  (ecase (name the-tense-marker)
    (past    (set-aux-state 'past-tense))
    (present  (set-aux-state 'present-tense))))
  
(defun process-tense (tense-marker)
  (ecase  (aux-state)
    (initial
     (set-tense-state tense-marker))
    (prepose-aux
     (set-tense-state tense-marker)
     (let ((auxiliary-that-will-carry-the-tense
	     (the word (select-auxiliary-to-induce)))
	   (position-of-the-tense-marker
	     (cdr (assoc 'tense-marker
                         (position-table *current-phrasal-root*)))))
       (set-contents position-of-the-tense-marker
		     auxiliary-that-will-carry-the-tense)
       (ecase (aux-state)
	 ;; n.b. these routines do the sending to the output stream
	 (past-tense    (past-tense-form    auxiliary-that-will-carry-the-tense))
	 (present-tense (present-tense-form auxiliary-that-will-carry-the-tense)))
       (set-aux-state 'unmarked)))
    (unmarked)))


(defun verb-morphology (contents slot-name)
  (ecase slot-name 
    (tense-modal (process-modal contents))
    (have+en     (process-past-participle contents))
    (be+ing      (process-present-participle contents))
    (be+en       (process-passive contents))
    (verb        (process-verb contents))))

(defun process-modal (modal)
  (ecase  (aux-state)
    (initial (send-to-output-stream (pname modal) modal)
	     (set-aux-state 'unmarked))))


(defun process-past-participle (verb)
  (ecase (aux-state)
    (past-tense (past-tense-form verb))
    (present-tense (present-tense-form verb))
    (unmarked (send-to-output-stream (pname verb) verb)))
  (set-aux-state 'past-participle))

(defun process-present-participle (verb)
  (ecase (aux-state)
    (past-tense (past-tense-form verb))
    (present-tense (present-tense-form verb))
    (unmarked (send-to-output-stream (pname verb) verb))
    (past-participle (en-form verb)))
  (set-aux-state 'present-participle))

(defun process-passive (verb)
  (ecase (aux-state)
    (past-tense (past-tense-form verb))
    (present-tense (present-tense-form verb))
    (unmarked (send-to-output-stream (pname verb) verb))
    (past-participle (en-form verb))
    (present-participle (ing-form verb))
    (initial (send-to-output-stream "to")
	     (send-to-output-stream (pname verb) verb)))
  (set-aux-state 'passive))


(defun process-verb (verb)
  (ecase (aux-state)
    (past-tense         (past-tense-form verb))
    (present-tense      (present-tense-form verb))
    (unmarked           (send-to-output-stream (pname verb) verb))
    (past-participle    (en-form verb))
    (present-participle (ing-form verb))
    (passive            (en-form verb))
    (initial            (send-to-output-stream "to")
			(send-to-output-stream (pname verb) verb)))
  (set-aux-state 'initial))

(defun present-tense-form (verb)
  (check-type verb word)
  (let* ((number  (number-of-current-subject))
	 (person  (person-of-current-subject))
	 (number-and-person-irregular-form
	   (ecase number
	     (singular (ecase person
			 (first  'present-1st-singular)
			 (second 'present-plural)
			 (third  'present-3rd-singular)))
	     (plural   'present-plural)))
	 (irregular (irregular-form number-and-person-irregular-form verb)))
    (send-to-output-stream
      (or irregular
	  (ecase number
	    (singular (ecase person
			(first  (pname verb))
			(second (pname verb))
			(third  (append-suffix verb "s" '("y" "ies")))))
	    (plural   (pname verb))))
      verb)))

(defun past-tense-form (verb)
  (let ((number-and-person-irregular-form
         (ecase (number-of-current-subject)
           (singular (ecase (person-of-current-subject)
                       (first  'past-1st-singular)
                       (second 'past-plural)
                       (third  'past-3rd-singular)))
           (plural 'past-plural))))
    (send-to-output-stream
      (or (irregular-form number-and-person-irregular-form verb)
	  (irregular-form 'ed-form verb)
	  (append-suffix verb "ed" '("e" "ed") '("y" "ied")))
      verb)))

(defun en-form (verb)
  (send-to-output-stream
    (or (irregular-form 'en-form  verb)
	(append-suffix verb "ed" '("e" "ed") '("y" "ied")))
    verb))

(defun ing-form (verb)
  (send-to-output-stream
    (or (irregular-form 'ing-form  verb)
	(append-suffix verb "ing" '("ee" "eing") '("e" "ing")))
    verb))


(defun irregular-form (form word)
  (check-type form symbol)
  (check-type word word)
  (getf (irregularities word) form))

(defun select-auxiliary-to-induce ()
  (let* ((position-table (position-table *current-phrasal-root*))
	 (passive-aux    (cdr (assoc 'be+en position-table)))
	 (verb           (cdr (assoc 'verb  position-table)))
	 (word-be (word-named 'be)))

    (cond (passive-aux
	   (prog1 (contents passive-aux)
		  (set-contents passive-aux
				(trace-named 'aux-trace))))
	  ((eq (contents verb) word-be)
	   (prog1 (contents verb)
		  (set-contents verb
				(trace-named 'aux-trace))))
	  (t (word-for-string "do")))))

(defun aux-state  ()
  (state-value :aux-state (state *current-phrasal-root*)))

(defun set-aux-state (new-state)
  (set-state *current-phrasal-root*
	     (change-state :aux-state new-state (state *current-phrasal-root*))))


(defmacro double-final-letter-p (word)
   "test whether final letter of word should be doubled before adding suffix
    in some cases"
   `(member 'double (irregularities ,word)))

(defun append-suffix (word normal-suffix &rest exceptions)
   "Adds a suffix to WORD, doubling the final letter [normally a consonant] if
    necessary.  The suffix is NORMAL-SUFFIX, unless the ending of WORD matches a 
    template in one of the EXCEPTIONS.
    Each exception is a pair of strings: (<template> <suffix>), e.g.:
	(append-suffix \"fry\" \"ed\" '(\"e\" \"ed\") '(\"y\" \"ied\"))
		=> \"fried\"
	(append-suffix \"kiss\" \"ed\" '(\"e\" \"ed\") '(\"y\" \"ied\"))
		=> \"kissed\"
	(append-suffix \"model\" \"ed\")
		=> \"modelled\"
    The exceptions are optional."
   
   (let* ((pname (etypecase word
                   (string word)
                   (word (pname word))))
          (length (length (the string pname))))
     (if (double-final-letter-p word)
         (setq pname (string-append pname (last-letter pname))))
     (dolist (oddcase exceptions (string-append pname normal-suffix))
       (dbind (template suffix) oddcase
	  (let ((root-length (- length (length template))))
	    (when (string-equal pname template :start1 root-length)
	      (return (string-append (subseq pname 0 root-length)
				     suffix))))))))

(defun last-letter (word)
  (char word (sub1 (length word))))


(defsubst current-subject ()
  (let* ((positions (position-table *current-phrasal-root*))
	 (subject-position (cdr (assoc 'subject positions)))
	 (subject-contents (contents subject-position)))
    (etypecase subject-contents
      (specification subject-contents)
      (word-stream-item subject-contents)
      (node subject-contents)
      (slot (if (eq (name (next subject-contents))
		    'clause)
		(next subject-contents)
		(mbug "unknown subject contents")))
      )))

(defun number-of-current-subject ()
  "Returns the NUMBER (singular or plural) of the current subject, as specified
by the *current-phrasal-root*.  Default is SINGULAR."
  (let ((subj (current-subject)))
    (the (member singular plural)
	 (or (etypecase  subj
	       (specification
                (let ((acc (get-accessory-value ':number subj)))
                  (when acc
                    (name acc))))
	       (node
		 (let ((phrase-type (name subj)))
		   (case phrase-type
		     (np
		       (or (state-value :number (state (context-object subj)))
			   'singular))
		     (conjunction
		       (or (state-value :number (state (context-object subj)))
			   'singular))
		     (clause 'singular))))
	       (ttrace
                (let ((orig (original-specification subj)))
                  (etypecase orig
                    (bundle-specification
                     (let ((acc (get-accessory-value ':number orig )))
                       (when acc
                         (name acc))))
                    (pronoun              (number orig)))))
	       (pronoun   (number subj)))
	     'singular))))


(defun person-of-current-subject ()
  "Returns the PERSON (first, second or third) of the current subject, as 
specified by the *current-phrasal-root*.  Default is THIRD."
  (let ((subj  (current-subject)))
    (the (member first second third)
	 (or (etypecase subj
	       (bundle-specification
		 (let ((acc (get-accessory-value ':person subj)))
		   (when acc
		     (name acc))))
	       (node
		 (let ((phrase-type
			 (name subj)))
		   (case phrase-type
		     (np (state-value
			   :person
			   (state (context-object subj))))
		     (clause 'third))
		   ))

	       (ttrace    (let ((orig (original-specification subj)))
			   (etypecase orig
			     (bundle-specification
			       (let ((acc (get-accessory-value ':person orig)))
				 (when acc
				   (name acc))))
			     (pronoun (person orig)))))
	       (pronoun  (person subj)))
	     'third))))






(defun process-trace (item slot-name)
  (if (pname item)
      (SEND-TO-OUTPUT-STREAM (pname item) item)
      ;;check to see if this is a verb group slot
      ;;and any state changes are required
      (case slot-name 
	(tense-modal (set-aux-state 'unmarked))
	(have+en     (set-aux-state 'past-participle))
	(be+ing      (set-aux-state 'present-participle))
	(be+en       (set-aux-state 'passive))
	(verb        (set-aux-state 'initial) ))
      ))

;#################################################################
;   PREDICATE ADJECTIVE MORPHOLOGY
;#################################################################

(defun predicate-adjective (verb)
  (en-form verb))


(defun gerund-form (verb)
  (ing-form verb))


;#################################################################
;   NOUN MORPHOLOGY
;#################################################################


(defun noun-morphology-plural  (word)
  (let* ((root (cdr (assoc 'np (position-table *current-phrasal-root*))))
	 (state-list (state (context-object root))))
    (case (state-value :number state-list)
      (singular (send-to-output-stream (pname word) word))
      (plural (plural-form word))
      (otherwise (send-to-output-stream (pname word) word)))))

(defun plural-form (noun)
  (send-to-output-stream
    (or (irregular-form 'plural noun)
	(append-suffix noun "s" '("y" "ies")))
    noun))


;#################################################################
;   CAPITALIZATION
;#################################################################

(defun capitalize (pname)
  "returns a new string with its first letter in upper case"
  (let ((new-string (subseq pname 0)))
    (setf (char new-string 0) (char-upcase (char new-string 0)))
    new-string))


;################################################################
;                PRONOUN MORPHOLOGY
;################################################################

(defun pronoun-morphology (pronoun local-labels)
  ;;nominitive is the default case
  (let* ((desired-case   (determine-case-from-labels local-labels))
	 (cases           (cases pronoun))
         (actual-pronoun
	   (if (stringp cases) ;;the pn is unaffected by case
	     (then cases)
	     (else
                (case desired-case
		  (nominative     (nominative    cases))
		  (objective      (objective     cases))
		  (genitive       (genitive      cases))
		  (reflexive      (reflexive     cases))
		 
		  (possessive-np  (possessive-np cases))
		  (otherwise     (nominative    cases) ))))))

    (send-to-output-stream (the string actual-pronoun) pronoun)))


(defun determine-case-from-labels (slot-labels)
  (let* ((case-label (case-governing-label slot-labels))
	(slot-name (when case-label (name case-label))))
    (if (member (label-named 'reflexive) slot-labels)
	'reflexive
	(when slot-name
	  (case slot-name
	    ((subject nominative) 'nominative)
	    (possessive
             ;; ddm 6/8/95 Q&G pg 209 says it's the determiner function
             ;; of the possessive -- originally here it was 'genitive
             'possessive-np)
	    ((pred-nom object objective direct-object
		       prep-obj)   'objective)
	    (otherwise
	      (mbug "Never expected a pronoun in a slot labeled ~s~%~
                         Consider extending DETERMINE-CASE-FROM-LABELS."
		    slot-name)))))))	   

(defparameter *the-case-governing-labels* nil)


(defun case-governing-label (the-label-list-on-a-slot)
  (when (null *the-case-governing-labels*)
    ;;have to initialize the list by hand given we
    ;;don't postprocess code
    (setq *the-case-governing-labels*
	  (list (label-named 'nominative)
		(label-named 'objective)
		(label-named 'genitive)
		(label-named 'possessive-np)
		(label-named 'possessive))))
  (let ((governing-label
	  (or (car (intersection
		     *the-case-governing-labels*
		     the-label-list-on-a-slot))
	      (look-for-case-on-slot-above-phrase
		*current-phrasal-root*))))
    (when (null governing-label)
      #+ignore
      (mbug
	"Current position - ~A - is not marked for case"
	*current-position))
    governing-label))


(defun look-for-case-on-slot-above-phrase (root)
  (let ((dominating-slot (previous (node root))))
    (car (intersection *the-case-governing-labels*
		       (labels dominating-slot)))))

