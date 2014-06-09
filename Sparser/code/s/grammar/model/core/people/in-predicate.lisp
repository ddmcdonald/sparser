;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "in-predicate"
;;;   Module:  "model;core:people:"
;;;  version:  June 2014

;;this deals with a small set of words preceded by "in" and followed usually by "of"
;;e.g. "in charge of", "in place of", "instead of"
;;unsure if this is a completely closed set
;;these so called in-predicates behave similarly to verbs
;;this shows because the transitive tree family works perfectly for them
;;previously these were parsed as relative-locations (a common overgeneration by the grammar)
;;unsure however where to exactly put this category
;;for now it will be placed in model;core:people:
;; 6/9/14 Fanout from short-cut rationalizations

;;;------------
;;; the object
;;;------------

(define-category in-predicate
  :specializes event
  :instantiates self)

;;an attempt at a more general way of defining in-predicate
;;based on the code from shortcuts and define-function-word
(defun define-in-predicate (string)
  (let* ((name (name-to-use-for-category
                (concatenate 'string "IN-" (string-upcase (subseq string 3)))))
	 (form
	  `(define-category ,name
             :specializes in-predicate
             :instantiates self
             ;;:rule-label in-predicate
             :binds ((head :primitive word)
                     (who)
                     (of-what)
                     (np-item))
             :index (:key of-what)
             :realization ((:adjective ,string)
                           (:tree-family transitive/passive
                           :mapping ((agent . who)
                                     (patient . of-what)
                                     (s . :self)
                                     (vp . :self)
                                     (vg . :self)
                                     (np/subject . person)
                                     (np/object . NP)))
                           ;;this rule was not joinng with BE because it recasts it to an NP
                           (:tree-family empty-head-of-complement ;;does not include agent
                            :mapping ((result-type . :self)
                              (of-item . of-what)
                              (base-np . :self)
                              (complement . person)
                              (np . :self)))))))
    (eval form))
  string)

;;;------
;;; form
;;;------


#|(defun define-in-predicate (string)
  (let ((head (define-or-find-individual
                    'in-predicate :head string)))
        head))|#

;;;------------
;;; the instances
;;;------------


;;these ones are very predicate like
;;and can be thought to be equivalent to their verbal forms
;;He is in command of = He commands, She is in control of = She controls
;;though there are subtle semantic and pragmatic differences
(define-in-predicate "in charge")

(define-in-predicate "in command")

(define-in-predicate "in control")

;;this one is an outlier, but it patterns similarly to the above
;;e.g. "the country's progress in the field of civilian nuclear technology"
(define-in-predicate "in the field of")

;;these last three are less predicate like than the following
;;and should probably be made into a different category altogether
;;this is apparent because their head words are closer to prepositions
;;and have little semantic meaning--much of which is open to interpretation
;;it may not suffice to call them predicates, as they are very discourse like too
;;the subjects are not necessarily persons either--they can be pretty much anything
(define-in-predicate "in place")

(define-in-predicate "in lieu")

;;this one is less obvious, and probably requires more attention to detail
;;the problem is "instead" can be used without an overt object
;;e.g. "Instead, the government decided to pull the troops."
;;where the 'object' of "instead" would be someother sentence in the previous discourse
;;this feature is absent from all the above, *"In place of, the government..."
;;(define-in-predicate "instead")

;;;------------
;;; cfrs
;;;------------

;;cfr to absorb the copula
;;it does carry tense/aspectual information
;;absence of the copula will indicate an adjunct like left or right dislocation
;;e.g. "In command of the army, General Patton..."
;;versus "General Patton is in command of the army."
#|(def-cfr in-predicate (be in-predicate)
  :form adjective
  :referent (:head right-edge))|#
