;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;;
;;; Mumble-05 >grammar>pronouns
;;;
;;; Copyright (C) 2005 David D. McDonald
;;; Copyright (C) 1985, 1986, 1987, 1988, 1995  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved

;; ChangeLog
;;  6/3/95 ddm - Added Select-personal-pronoun as a way to specify pronound directly
;;   rather than by decoding a bundle.  6/8 changed the possessive-np case of
;;  third-person-singular-feminine to be "her" rather than "hers" -- Q&G pg209 has a
;;  good table, and all this should be upgraded to fit it.
;;
;;  6/9/04 dkm - Changed second-person-plural to y'all in part to avoid singular/plural
;;  confusions in zoesis demo.  Could also use yins and plain old you for plural.
;;
;;  8/5/04 dkm - Switched "her" and "hers" back despite comment above, want to be consistent
;;  until any potential wholesale upgrade.
;;
;; 1/17/05 ddm - Started make-over to working with a model and microplanner.
;; 7/9/08 ddm - Fan-out from shift to loader-case/mlisp

(in-package :mumble)


;################################################################
;                     Personal pronouns
;################################################################

(define-pronoun first-person-singular
  person first
  number singular
  gender neuter
  cases  (make-pronoun-cases :nominative    "I"
			     :objective     "me"
			     :genitive      "my"
			     :reflexive     "myself"
			     :possessive-np "mine"))

(define-pronoun first-person-plural
  person first
  number plural
  gender neuter
  cases  (make-pronoun-cases :nominative    "we"
			     :objective     "us"
			     :genitive      "our"
			     :reflexive     "ourselves"
			     :possessive-np "ours"))

(define-pronoun second-person-singular
  person second
  number singular
  gender neuter
  cases  (make-pronoun-cases :nominative    "you"
			     :objective     "you"
			     :genitive      "your"
			     :reflexive     "yourself"
			     :possessive-np "yours"))

(define-pronoun second-person-plural
  person second
  number plural
  gender neuter
  cases  (make-pronoun-cases :nominative    "y'all"
			     :objective     "y'all"
			     :genitive      "y'all's"
			     :reflexive     "y'all's selves"
			     :possessive-np "y'all's"))

(define-pronoun third-person-singular-masculine
  person third
  number singular
  gender masculine
  cases  (make-pronoun-cases :nominative    "he"
			     :objective     "him"
			     :genitive      "his"
			     :reflexive     "himself"
			     :possessive-np "his"
                             ))

(define-pronoun third-person-singular-feminine
  person third
  number singular
  gender feminine
  cases  (make-pronoun-cases :nominative    "she"
			     :objective     "her"
			     :genitive      "her"
			     :reflexive     "herself"
			     :possessive-np "hers"
                             ))

(define-pronoun third-person-singular-neuter
  person third
  number singular
  gender neuter
  cases  (make-pronoun-cases :nominative    "it"
			     :objective     "it"
			     :genitive      "its"
			     :reflexive     "itself"
			     :possessive-np "its"
                             ))

(define-pronoun third-person-plural
  person third
  number plural
  gender neuter
  cases  (make-pronoun-cases :nominative    "they"
			     :objective     "them"
			     :genitive      "their"
			     :reflexive     "themselves"
			     :possessive-np "theirs"))


;################################################################
;              Relative/Interrogative pronouns
;################################################################

; N.b. the gender, person, and number are wrong pending revision
; of the code that postprocesses these things.

(define-pronoun who-whom
  person third
  gender neuter
  number singular
  cases (make-pronoun-cases :nominative "who"
			    :objective  "whom"))


(define-pronoun which
  person third
  gender neuter
  number singular
  cases  (make-pronoun-cases :nominative    "which"
			     :objective     "which"
			     :genitive      "which"
			     :reflexive     "which"
			     :possessive-np "which"))

(define-pronoun what
  person third
  gender neuter
  number singular
  cases  (make-pronoun-cases :nominative    "what"
			     :objective     "what"
			     :genitive      "what"
			     :reflexive     "what"
			     :possessive-np "what"))

(define-pronoun there
  person third
  gender neuter
  number singular
  cases  (make-pronoun-cases :nominative    "there"
			     :objective     "there"
			     :genitive      "there"
			     :reflexive     "there"
			     :possessive-np "there"))

(define-pronoun where
  person third
  gender neuter
  number singular
  cases  (make-pronoun-cases :nominative    "where"
			     :objective     "where"
			     :genitive      "where"
			     :reflexive     "where"
			     :possessive-np "where"))

(define-pronoun why
  person third
  gender neuter
  number singular
  cases  (make-pronoun-cases :nominative    "why"
			     :objective     "why"
			     :genitive      "why"
			     :reflexive     "why"
			     :possessive-np "why")) 

(define-pronoun when
  person third
  gender neuter
  number singular
  cases  (make-pronoun-cases :nominative    "when"
			     :objective     "when"
			     :genitive      "when"
			     :reflexive     "when"
			     :possessive-np "when") )

(define-pronoun how
  person third
  gender neuter
  number singular
  cases  (make-pronoun-cases :nominative    "how"
			     :objective     "how"
			     :genitive      "how"
			     :reflexive     "how"
			     :possessive-np "how"))


;;;-----
;;; one
;;;-----

;;-- 8/27 These are candidates for simplification as well (see above)
;;   but since I know they're being used, I have to handle their fan-out
;;   first.

(define-pronoun replacitive-one/singular  ;; GCE 4.126
  person third ;; ?? if it has to have a value this is it
  gender neuter ;; ditto
  number singular
  cases  (make-pronoun-cases :nominative    "one"
			     :objective     "one"
			     :genitive      "one"
			     :reflexive     "one"
			     :possessive-np "one"))

(define-pronoun replacitive-one/plural  ;; GCE 4.126
  person third
  gender neuter
  number plural
  cases  (make-pronoun-cases :nominative    "ones"
			     :objective     "ones"
			     :genitive      "ones"
			     :reflexive     "ones"
			     :possessive-np "ones"))
  


;################################################################
;                      Demonstratives
;################################################################


;;-- 8/27 -- ditto - see just above

(define-pronoun this
  person third
  gender neuter
  number singular
  cases  (make-pronoun-cases :nominative    "this"
			     :objective     "this"
			     :genitive      "this"
			     :reflexive     "this"
			     :possessive-np "this"))

(define-pronoun that
  person third
  gender neuter
  number singular
  cases  (make-pronoun-cases :nominative    "that"
			     :objective     "that"
			     :genitive      "that"
			     :reflexive     "that"
			     :possessive-np "that"))


(defun select-appropriate-pronoun (bundle reason-for-selection)
  (ecase  reason-for-selection
    (context-requires-a-relative-pronoun
      (select-appropriate-relative-pronoun bundle))
    (antecedent-precedes-and-is-within-this-clause
      (select-appropriate-personal-pronoun bundle))
    (text-structure-has-marked-reference-reducible
      (select-appropriate-personal-pronoun bundle))
    ))


(defun select-appropriate-personal-pronoun (bundle)
  (let ((number (name (get-accessory-value ':number bundle t)))
	(person (name (get-accessory-value ':person bundle t)))
	(gender (name (get-accessory-value ':gender bundle t))))
    (select-personal-pronoun number person gender)))

(defun select-personal-pronoun (number person gender)
  (let ((pronoun-name
         (cdr (assoc gender
		(cdr (assoc person
		        (cdr (assoc number
                                             
            '((singular . ((first  . ((masculine   . first-person-singular)
                                      (feminine . first-person-singular)))
                           (second .  ((masculine   . second-person-singular)
                                       (feminine . second-person-singular)))
                           (third  .  ((masculine   . third-person-singular-masculine)
                                       (feminine . third-person-singular-feminine)
                                       (neuter . third-person-singular-neuter) ))))
              (plural  . ((first  .  ((masculine   . first-person-plural)
                                      (feminine . first-person-plural)))
                          (second .  ((masculine   . second-person-plural)
                                      (feminine . second-person-plural)))
                          (third  .  ((masculine   . third-person-plural)
                                      (feminine . third-person-plural)
                                      (neuter . third-person-plural)) ))))
            ))))))))
    
    (if pronoun-name
      (pronoun-named pronoun-name)
      (mbug "No pronoun has been defined to have the features:~
             ~%    number = ~a~
             ~%    person = ~a~
             ~%    gender = ~a"
            number person gender))))



(defun select-appropriate-relative-pronoun  (bundle)
;
;  who / whom
;  which (that)
;  where
;  when
;  N.b. "ships" are neuter, individual ships (refered to by name)
;   are feminine and thus would be relative-ized as "who" except that
;   one never attaches relative clauses to NPs headed by proper names.
;
  (when (member (get-accessory-value :person bundle t)
		(list (accessory-value-named 'first)
		      (accessory-value-named 'second)))
    (mbug "Unexpectedly relativizing a first or second person reference"))

  (cond ((member (get-accessory-value :gender bundle t)
		 (list (accessory-value-named 'masculine)
		       (accessory-value-named 'feminine)))
	 (pronoun-named 'who-whom))
	((eq (get-accessory-value :gender bundle t)
	     (accessory-value-named 'neuter))
	 ;; WHICH is used for non restrictive relative clauses and THAT
	 ;; is used for restrictive relative clauses.  This should
	 ;; probably use THAT instead of WHICH. (Dawn)
	 (pronoun-named 'which #+ignore 'that))
	;; location & time go here
    (t (mbug "The accessories of the bundle ~A do not pick out any ~
                  anticipated relative pronoun" bundle))))




(defun select-appropriate-interrogative-pronoun  (bundle)
  (when (member (get-accessory-value :person bundle t)
                (list (accessory-value-named 'first)
                      (accessory-value-named 'second)))
    (mbug "Unexpected first or second person reference"))
  (let ((rfn (realization-function (head bundle))))
    (ecase (name rfn)
      (pronoun (ecase (name (car (arguments (head bundle))))
                 (specific-individual (select-appropriate-personal-pronoun bundle))
                 (location (pronoun-named 'where))
                 (person (pronoun-named 'who-whom))
                 (object (pronoun-named 'what))
                 (time (pronoun-named 'when))))
      (common-noun 	;;which book --deal with next
       ))))

#| this is the origninal version.  It assumed ignored  head of 
the bundle and gave who, whom or what depending on position 
and accessories.  

 (defun SELECT-APPROPRIATE-INTERROGATIVE-PRONOUN  (bundle)
  (when (member (get-accessory-value :person bundle t)
		(list (accessory-value-named 'first)
		      (accessory-value-named 'second)))
    (mbug "Unexpectedly relativizing a first or second person reference"))

  (cond ((member (get-accessory-value :gender bundle t)
		 (list (accessory-value-named 'masculine)
		       (accessory-value-named 'feminine)))
	 (pronoun-named 'who-whom))
	((eq (get-accessory-value :gender bundle t)
	     (accessory-value-named 'neuter))
	 (pronoun-named 'what))
	;; location & time go here
	(t (mbug "The accessories of the bundle ~A do not pick out any ~
                  anticipated interrogative pronoun" bundle))))   
|#