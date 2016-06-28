;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "pronouns"
;;;   Module:  "objects;traces:"
;;;  Version:  June 2016

;; Initiated 9/1/13. Added DefNP cases 3/6/15. Added more for tracking
;; the progress of handling the pronoun through various cases 9/29/15

(in-package :sparser)

(defparameter *tracing-pronouns* nil
  "Gate for pronoun-related traces.")

(defun trace-pronouns ()
  (setq *tracing-pronouns* t))

(defun untrace-pronouns ()
  (setq *tracing-pronouns* nil))

;;--- pronouns at large (vs. via completion)

(deftrace :noticed-pronoun (edge)
  ;; called from sweep-sentence-treetops
  (when *tracing-pronouns*
    (trace-msg "e~a is a ~a pronoun"
               (edge-position-in-resource-array edge)
               (edge-category edge))))


;;--- Conditioning

(deftrace :conditioning-anaphor-edge (pn-edge)
  ;; called from condition-anaphor-edge 
  (when *tracing-pronouns*
    (trace-msg "Conditioning pronoun edge e~a"
               (edge-position-in-resource-array pn-edge))))

(deftrace :anaphor-conditioned-to (new-ref restriction relation-label)
  ;; called from condition-anaphor-edge 
  (when *tracing-pronouns*
    (trace-msg "  new referent: ~a~
              ~%  value restriction: ~a~
              ~%  grammatical relation: ~a"
               new-ref restriction relation-label)))


;;--- Decoding mentions -- interpret-pronoun-in-context

(deftrace :dt-dereference-pn (pronoun edge)
  (when *tracing-pronouns*
    (trace-msg "Pronoun: ~a on ~a" pronoun edge)))

(deftrace :dt-no-restriction ()
  (when *tracing-pronouns*
    (trace-msg "Can't deference -- no restriction recorded")))

(deftrace :dt-no-type-information ()
  (when *tracing-pronouns*
    (trace-msg "Can't deference -- no type information")))

(deftrace :dt-restriction-on-pronoun (types)
  (when *tracing-pronouns*
    (trace-msg "The type constraint is ~a" types)))
  

;;--- ref4 - doing the anaphora

(deftrace :anaphora-looking-at-edge (edge)
  ;; called from handle-any-anaphora, which is called from
  ;; post-analysis-operations when *do-anaphora* is up.
  (when *tracing-pronouns*
    (trace-msg "Doing anaphoric edge e~a"
                (edge-position-in-resource-array edge))))

(deftrace :ignoring-wh-pronoun ()
  ;; called from handle-any-anaphora
  (when *tracing-pronouns*
    (trace-msg "  Ignoring WH pronoun")))

(deftrace :ignoring-personal-pronouns ()
  ;; called from handle-any-anaphora
  (when *tracing-pronouns*
    (trace-msg "  Ignoring first or secnod person pronoun")))

(deftrace :ignoring-reflexive-pronoun ()
  ;; called from handle-any-anaphora
  (when *tracing-pronouns*
    (trace-msg "  Ignoring non-object relexive pronoun")))

(deftrace :resolving-pronoun/previous-subject (previous-subject)
  ;; called from handle-pronoun
  (when *tracing-pronouns*
    (trace-msg "  Resolved to the previous subject: ~a"
               previous-subject)))

(deftrace :pronoun-not-conditioned ()
  ;; called from handle-pronoun
  (when *tracing-pronouns*
    (trace-msg "  Edge wasn't conditioned. Returning nil")))

(deftrace :restriction-on-pronoun (type-restriction)
  ;; called from handle-pronoun
  (when *tracing-pronouns*
    (trace-msg "  Looking for a ~a" type-restriction)))

(deftrace :no-compatible-referent ()
  ;; called from handle-pronoun
  (when *tracing-pronouns*
    (trace-msg "    Nothing found")))

(deftrace :pronoun-resolved-to (i)
  ; called from handle-pronoun
  (when *tracing-pronouns*
    (trace-msg "    Found ~a" i)))

(deftrace :cannot-find-disjoint-value-restrictions ()
  ;; called from local-recorded-instances
  (when *tracing-pronouns*
    (trace-msg " Cannot do local-recorded-instances of an ':or' ~
               value restriction. Returning nil.")))


;;--- dereference-DefNP

(deftrace :decoding-definite-reference-to (head)
  ;; called from dereference-DefNP
  (when *tracing-pronouns*
    (trace-msg "[defNP] Looking for a ~a" head)))

(deftrace :defnp-category-has-entry ()
  ;; called from dereference-DefNP
  (when *tracing-pronouns*
    (trace-msg "[defNP]   It has an entry in the discourse history")))

(deftrace :defnp-no-entry ()
  ;; called from dereference-DefNP
  (when *tracing-pronouns*
    (trace-msg "[defNP]   No entry in the available discourse history")))

(deftrace :defnp-returning (ref)
  ;; called from dereference-DefNP
  (when *tracing-pronouns*
    (trace-msg "[defNP]   returning ~a" ref)))

(deftrace :defnp-made-new-individual (i)
  ;; called from dereference-DefNP
  (when *tracing-pronouns*
    (trace-msg "[defNP]   returning stand-in individual" i)))


;;--- completion actions

(deftrace :seek-person-for-pronoun (e)
  (when *tracing-pronouns*
    (trace-msg "Looking for a referent for ~s on e~a at p~a (~a)"
               (edge-left-daughter e) (edge-position-in-resource-array e)
               (pos-token-index (pos-edge-starts-at e))
               (pos-array-index (pos-edge-starts-at e)))))

(deftrace :no-discourse-entries-for-people ()
  (when *tracing-pronouns*
    (trace-msg "  No usable discourse entries for people")))

(deftrace :interpreting-ne-discourse-entry-as-person (ne)
  (when *tracing-pronouns*
    (trace-msg "  Interpreting named-object as person: ~a" ne)))

(deftrace :subverting-pn-edge (e caategory referent)
  (when *tracing-pronouns*
    (trace-msg "  Replacing the label of e~a with ~a~
             ~%    and its referent with ~a"
                (edge-position-in-resource-array e) caategory referent)))
