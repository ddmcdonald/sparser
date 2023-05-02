;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Package:MUMBLE; -*-
;;;
;;; Mumble-05:  grammar; morphology
;;;
;;; Copyright (C) 2005,2013,2016-2017 David D. McDonald
;;; Copyright (C) 1985, 1986, 1987, 1988, 1995  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

;; ChangeLog
;;  6/8/95 ddm - changed Determine-case-from-labels to put pronouns in  possessive slots
;;   in the possessive-np case.
;;  1/17/05 Started make-over to lemmas, etc.
;;  12/28/13 Code wanted to pluralize every noun. Dropped that since it
;;   appears that there's no way to do plural on demand. MWM may have hacked
;;   a short-cut. 
;;  3/30/16 afp - Restored plural processing code.

(in-package :mumble)

(defvar *verb-labels* '(verb tense-modal have+en be+ing be+en))
(defvar *noun-labels* '(np-head compound-noun-head of-complement))
(defvar *case-labels* '(nominative objective genitive
                        possessive-np possessive direct-object))

(defun label-intersection (slot-labels label-names)
  (intersection slot-labels (mapcar #'slot-label-named label-names)))

(defun verb-labels (slot-labels)
  (label-intersection slot-labels *verb-labels*))

(defun noun-labels (slot-labels)
  (label-intersection slot-labels *noun-labels*))

(defun adjective-labels (slot-labels)
  (label-intersection slot-labels '(adjective)))

(defun comp-of-be-labels (slot-labels)
  (label-intersection slot-labels '(complement-of-be)))
  
(defun gerund-labels (slot-labels)
  (label-intersection slot-labels '(gerund)))

(defun case-from-labels (slot-labels)
  "Called from pronoun-morphology to return one of its"
  (or (and (find (label-named 'reflexive) slot-labels) 'reflexive)
      (let ((governing (case-governing-labels slot-labels)))
        (if governing
          (ecase (name (first governing))
            ((nil))
            (possessive 'possessive-np) ;; Q&G pg 209
            ((pred-nom object objective direct-object prep-obj) 'objective)
            ((subject nominative) 'nominative))
          (else
            ;; 11/12/19 a pronoun is showing up in an adjp-head slot,
            ;; which isn't integrated into the governing case machinery.
            ;; Situation is pathalogical (pronominalizing an adjective),
            ;; so punting to a default
            ;; Fixed 4/26/23 by adding adjp-head to the never-proz. list
            'nominative)))))

(defun case-governing-labels (slot-labels)
  (or (label-intersection slot-labels *case-labels*)
      (label-intersection (labels (previous (node *current-phrasal-root*)))
                          *case-labels*)))

(defun part-of-speech (category word)
  (find (word-label-named category) (word-labels word)))

(defun morphologically-specialize-&-say-it (item labels)
  (etypecase item
    (pronoun (pronoun-morphology item labels))
    (tense-marker (process-tense item))
    (ttrace (process-trace item (name (car labels))))
    (word (cond ((and (part-of-speech 'verb item)
                      (gerund-labels labels))
                 (ing-form item))
                ((and (part-of-speech 'verb item)
                      (comp-of-be-labels labels))
                 (en-form item))
                ((and (part-of-speech 'verb item)
                      (adjective-labels labels))
                 (past-tense-form item))
                ((and (part-of-speech 'verb item)
                      (verb-labels labels))
                 (verb-morphology item (name (car labels))))
                ((and (or (part-of-speech 'noun item)
                          (part-of-speech 'proper-noun item))
                      (noun-labels labels))
                 (noun-morphology item))
                (t (send-to-output-stream (pname item) item))))))

;#################################################################
;  VERB GROUP MORPHOLOGY
;#################################################################

(defun set-tense-state (the-tense-marker)

  (ecase (name the-tense-marker)
    (past    (set-aux-state 'past-tense))
    (present (set-aux-state 'present-tense))))
  
(defun process-tense (tense-marker)
  (ecase (aux-state)
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
  (ecase (aux-state)
    ((initial unmarked)
     (send-to-output-stream (pname modal) modal)
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
	 (verb           (cdr (assoc 'verb  position-table))))
    (cond (passive-aux
	   (prog1 (contents passive-aux)
		  (set-contents passive-aux
				(ttrace-named 'aux-trace))))
	  ((eq (contents verb) (word-for-string "be" 'verb))
	   (prog1 (contents verb)
		  (set-contents verb
				(ttrace-named 'aux-trace))))
	  (t (word-for-string "do" 'verb)))))

(defun aux-state  ()
  (state-value :aux-state (state *current-phrasal-root*)))

(defun set-aux-state (new-state)
  (set-state *current-phrasal-root*
	     (change-state :aux-state new-state (state *current-phrasal-root*))))

(defun append-suffix (word normal-suffix &rest exceptions)
  "Adds a suffix to WORD, doubling the final letter [normally a consonant]
if necessary. The suffix is NORMAL-SUFFIX, unless the ending of WORD matches
a template in one of the EXCEPTIONS.

Each exception is a pair of strings: (<template> <suffix>), e.g.:
  (append-suffix \"fry\" \"ed\" '(\"e\" \"ed\") '(\"y\" \"ied\")) => \"fried\"
  (append-suffix \"kiss\" \"ed\" '(\"e\" \"ed\") '(\"y\" \"ied\")) => \"kissed\"
  (append-suffix \"model\" \"ed\") => \"modelled\"
The exceptions are optional."
   (let* ((pname (etypecase word
                   (string word)
                   (word (pname word))))
          (length (length (the string pname))))
     (when (irregular-form 'double word)
       (setq pname (string-append pname (char pname (1- length)))))
     (dolist (oddcase exceptions (string-append pname normal-suffix))
       (dbind (template suffix) oddcase
	  (let ((root-length (- length (length template))))
	    (when (string-equal pname template :start1 root-length)
	      (return (string-append (subseq pname 0 root-length)
				     suffix))))))))

(defun current-subject ()
  (let* ((positions (position-table *current-phrasal-root*))
	 (subject-position (cdr (assoc 'subject positions)))
	 (subject-contents (and subject-position (contents subject-position))))
    (when (and subject-contents
               (eq subject-contents (find-word "there" 'pronoun)))
      ;; Take the number, etc. from the complement
      (let* ((comp-position (cdr (assoc 'complement-of-be positions)))
             (comp-contents (and comp-position (contents comp-position))))
        (when comp-contents
          (setq subject-contents comp-contents))))
    (typecase subject-contents
      (slot (if (eq (name (next subject-contents)) 'clause)
              (next subject-contents)
              (mbug "unknown subject contents")))
      (t subject-contents))))

(defun number-of-current-subject ()
  "Return the NUMBER (singular or plural) of the current subject,
as specified by the *CURRENT-PHRASAL-ROOT*. Default is SINGULAR."
  (grammatical-number (current-subject)))

(defun person-of-current-subject ()
  "Return the PERSON (first, second or third) of the current subject,
as specified by the *CURRENT-PHRASAL-ROOT*. Default is THIRD."
  (grammatical-person (current-subject)))

(defun process-trace (item slot-name)
  (if (pname item)
      (send-to-output-stream (pname item) item)
      ;;check to see if this is a verb group slot
      ;;and any state changes are required
      (case slot-name 
	(tense-modal (set-aux-state 'unmarked))
	(have+en     (set-aux-state 'past-participle))
	(be+ing      (set-aux-state 'present-participle))
	(be+en       (set-aux-state 'passive))
	(verb        (set-aux-state 'initial)))))

;#################################################################
;   NOUN MORPHOLOGY
;#################################################################

(defun noun-morphology (word)
  "Maybe pluralize a noun."
  (let ((root (cdr (assoc 'np (position-table *current-phrasal-root*)))))
    (case (state-value :number (state (context-object root)))
      (plural (send-to-output-stream (or (irregular-form 'plural word)
                                         (pluralize-ending-in-y word)
                                         (append-suffix word "s"))
                                     word))
      (otherwise (send-to-output-stream (pname word) word)))))

(defun pluralize-ending-in-y (word)
  "If the noun ends in 'y' we look at the previous letter to decide
   whether to just add 's' (y after a vowel) or change the y to i and
   add es (after a consonant -- not a vowel)."
  (let* ((pname (etypecase word (string word) (word (pname word))))
         (length (length pname)))
    (when (eql #\y (elt pname (1- length)))
      (let ((char-before-y (elt pname (- length 2))))
        (if (memq char-before-y '(#\a #\e #\i #\o #\u))
          (string-append pname "s")
          (string-append (subseq pname 0 (1- length)) "ies"))))))


;################################################################
;                PRONOUN MORPHOLOGY
;################################################################

(defun pronoun-morphology (pronoun local-labels)
  "Nominative is the default case for pronouns."
  (let ((cases (cases pronoun)))
    (send-to-output-stream
      (if (stringp cases) ;; the pn is unaffected by case
          cases
          (case (case-from-labels local-labels)
            (nominative     (nominative    cases))
            (objective      (objective     cases))
            (genitive       (genitive      cases))
            (reflexive      (reflexive     cases))
            (possessive-np  (possessive-np cases))
            (otherwise      (nominative    cases))))
      pronoun)))
