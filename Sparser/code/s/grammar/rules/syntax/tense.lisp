;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1998,2011-2019 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "tense"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  September 2019

;; moved from [syntax;aux verbs] 5/7/93 v2.3
;; 0.1 (5/15) giving it some real semantic content
;;     (1/10/94) added event.  1/11 added negative
;; 0.2 (6/14) defined 'anonymouse-agentive-action' as referent of do
;; 0.3 (7/12) added rule for infinitive.  7/14 for "don't"   7/26 rules
;;      for "does not {verb}"  8/8 made 'event' referential
;; 0.4 (1/3/98) Gave event a time variable.
;; 0.5 (5/20/09) Added additional bindings to event. Added modifier 6/9/09
;;     (7/14/09) Added participant binding to event. (4/7/11) Cleaning up.
;;     (7/31) moved event category model/core/kinds/object.
;; 0.6 (3/28/13) Removed indexing from anonymous-agentive-action as a stop-
;;      gap action in lieu of taking the time to rework the meaning of "do"
;;      properly -- the word by itself does not  have an agent linked to it.
;; 0.7 (1/14/15) Converting mixins to regular categories because they're
;;      somehow getting interpretations as psi, which is presently outlawed.
;; 1/14/2015 support for negation and other tense/aspect features
;; 4/26/15 gave negative a lemma
;; 9/22/15 Hooked up negative to quantifier, deleted the variable
;;  negative

(in-package :sparser)

;;;------------
;;; infinitive
;;;------------

(def-form-rule (to verb)
  :form infinitive
  :referent (:function make-infinitive left-edge right-edge))

;; We need this version of the rule because the
;; usual chunking is, e.g. to [ phosphorylate]
;; with the "to" stranded. ///But it blocks "want to do" because
;; it produces an infinitive over "to do" rather than the desired to-comp
#+ignore(def-form-rule (to vg)
  :form infinitive
  :referent (:function make-infinitive left-edge right-edge))

(defun make-infinitive (prep-or-pp verb-element)
  (declare (special prep-or-pp verb-element category::prepositional-phrase))
  (when (not (itypep prep-or-pp category::prepositional-phrase))
    verb-element))


;;;------------------------------------
;;;                do
;;;------------------------------------

(define-category  do
  :specializes process
  :instantiates self
  :mixins (with-agent takes-neg)
  :binds ((predicate top)) ; see note in be.lisp
  :realization (:etf (svo)
                :s agent
                :o predicate))
;; Has sort of an anaphoric feel sometimes, even as
;; an auxiliary. 

(def-cfr do ("do")
  :form verb
  :referent do)

(def-cfr do ("does")
  :form verb+present
  :referent do)

(def-cfr do ("did")
  :form verb+past
  :referent do)

(def-cfr do ("done")
  :form verb+ed
  :referent do)

(def-cfr do ("doing")
  :form verb+ing
  :referent do)


;;--- negatives

(def-cfr do (do not)
  :form verb
  :referent (:head do
             :bind (negation right-edge)))

(def-cfr do ("doesn" apostrophe-t)
  :form verb+present
  :referent (:head do
             :bind (negation right-edge)))

(def-cfr do ("don" apostrophe-t)
  :form verb+present
  :referent (:head do
             :bind (negation right-edge)))

(def-cfr do ("didn" apostrophe-t)
  :form verb+past
  :referent (:head do
             :bind (negation right-edge)))

;;--- intensifier

(def-form-rule (do verb)
  :form verb
  :referent (:function absorb-auxiliary left-edge right-edge))

;; for "does not <vg>"
(def-form-rule (do vg)
  :form vg
  :referent (:function absorb-auxiliary left-edge right-edge))


;;--- composing with demonstratives

(defun setup-do+demonstative-rules ()
  (let ((rules
         (loop for o in '(this that these those)
            collect (eval
                     `(def-cfr do (do ,o)
                        :form vp
                        :referent (:head left-edge
                                   :bind (predicate right-edge))) ))))
    (add-rules rules category::do)))
#| Can't use a form rule because the head is automatically the
form edge (i.e. demonstrative). Can't use syntactic rules because
they're over two form categories.|#
(setup-do+demonstative-rules)
