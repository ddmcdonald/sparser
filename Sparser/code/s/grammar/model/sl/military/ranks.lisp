;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2012-2013  David D. McDonald  -- all rights reserved

;;;     File:  "ranks"
;;;   Module:  model/sl/military
;;;  version:  August 2013

;; Initiated 3/8/07. Added rules to compose the rank 3/22. Moved in to 
;; generic military and tweaked 11/24/12. Fixed abbreviations 11/30/12.
;; 8/16/13 Added composite ranks by analogy to treatment of titles.
;;  made the category take the title rule-label so the rules don't
;;  have to be multiplied

(in-package :sparser)

;; #1 Define the semantic category we're going to use for parsing
;;  By using the :rule-label we can let these behave (pattern) just
;;  like titles do, while retaining the distinction semantically. 

(define-category military-rank
  :instantiates :self
  :rule-label title
  :binds ((name :primitive word)
	  (abbreviations  :primitive list))
  :realization (:common-noun name))

;; #2 Write a form that will let us take strings for particular ranks
;;  and make semantic grammar rules for them.  E.g.
;;       (define-military-rank "Captain" :abbreviations '("cpt"))
;;
;; Things to notice about this form:
;;   a. The 'define-individual' call instantiates the category in
;;      #1. The 'realization' specification in the category will
;;      take the string in the name (e.g. "Captain") and create
;;      a word for it with the part of speech 'noun' and a rule
;;      for it. 
;;   b. We're doing the same thing explicitly for each of the
;;      abbreviations. Notice that the rule (via define-cfr) has
;;      been given the syntactic form 'determiner' (like "a" or "the"),
;;      and its referent (what "cpt" is take to mean) is given at
;;      the object that we created for this particular rank.
;;
(defun define-military-rank (name &key abbreviations)
  (let ((obj (define-individual 'military-rank
	        :name name)))
    ;; N.b. earlier version marked the explicit rules that it created
    ;; for the abbreviations as being determiners. Does that matter?
    (when abbreviations
      (dolist (string abbreviations)
        (define-abbreviation name string :name-prefix)))
    obj))


;; #3 This form is what arranges for the export. Whenever we see an instance
;; of a person at toplevel ("treetop level") in the parse we'll put it
;; on the queue for exporting back to Java
;;
(set-generic-treetop-action category::person
			    'export-bindings/recursively)


;; #4 This is how we recognize people given a segment with otherwise
;; unknown words preceeded by an instance of a rank. It's drawing
;; on the person-creating facilities in Sparser.
;;
(define-segment-heuristic infer-person-from-rank-prefix
  :test ((let ((edge (edge-over-segment-prefix)))
	   (when (and edge
		      (not (eq edge  :multiple-initial-edges)))
	     (eq (edge-category edge)
		 (category-named 'military-rank)))))
  :body 
    ((let ((words (words-in-segment-after-prefix))
	   name-words )
      (dolist (word words)
	(push (define-name-word word)
	      name-words))
      (let* ((name
	      (make-person-name-from-items (nreverse name-words)))
	     (person (define-individual 'person
			 :name name)))
	(let ((edge
	       (make-edge-over-long-span 
		(where-prefix-edge-ends)
		*right-segment-boundary*
		category::person
		:form category::np
		:rule :infer-person-from-rank-prefix
		:referent person)))
	  (parse-at-the-segment-level *right-segment-boundary*))))))


;; #5 What's the relationship between a rank and a person. If had explicitly
;; modeled the notion of "member of the armed services" as a specialization of
;; person then this variable would already be part of their category, and
;; we would recast the person that we've heuristically recognized as this
;; more specific sort of person (who has a pay grade, belongs to a particular
;; unit, ...). This is the same sort of technique as is used with DSN numbers
;; and such.
;;
(define-lambda-variable 'has-rank nil category::person)

;; #6 Compose them.
;;
(def-cfr person (military-rank person)
  :form np
  :referent (:head right-edge
             :bind (has-rank left-edge)))

;; Allow ranks to compose. Note that we need a new category to hold
;; the information. The template is modified-title.

(define-category modified-military-rank
  :specializes military-rank
  :instantiates military-rank
  :rule-label title
  :binds ((base-rank . military-rank)
          (modifier . military-rank)
          (status . title-status) ;; e.g. retired
          (country . country))
  :index (:permanent :sequential-keys base-rank modifier)
  :realization ((:tree-family premodifier-creates-type
                 :mapping ((type . :self)
                           (head-var . base-rank)
                           (modifier-var . modifier)
                           (np . title) ;; needed? Where does rule-label fire?
                           (np-head .  (military-rank title))
                           (modifier . military-rank)))
                (:tree-family premodifier-adds-property
                 :mapping ((property . country)
                           (modifier . country)
                           (np-head . (title military-rank
                                       modified-military-rank))))))

