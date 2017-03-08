;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2011,2016-2017 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "questions"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  March 2017

;; Broken out from /grammar/model/sl/checkpoint/rules 6/17/09
;; Elaborated through 7/23/09. 9/28/11 removed spatial-orientation
;; and cleaned up. Completely redesigned 8/16.

(in-package :sparser)

(define-category question-core
  :specializes phrase-interpretation ;;/// tentative - whole area needs thought
  :instantiates nil 
  :documentation "Common base for questions of all sorts.
 The 'statement' variable holds the proposition or event that
 is being questioned. Think of it as the question restated in
 declarative form.
   Specializations elaborate this according to the kind of question
 being asked. The basic split is between polar questions and the
 diverse kinds of WH questions."
  :binds ((statement top)))

#| In biology/verbs
(define-category question :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "question" ;; keyword: ENDS-IN-ED 
	   :noun "hypothesis"
	   :etf (svo-passive)))
|#

;;;------------------------------------
;;; call from post-analysis-operations
;;;------------------------------------

(defun make-this-a-question-if-appropriate (sentence)
  "Called from post-analysis-operations after all parsing and
   contextual interpretation is finished."
  (declare (special category::question))
  (when (or (preposed-aux?)
            (initial-wh?))
    ;; span-covered-by-one-edge? -- won't work until we do
    ;; something with the deliberately unparse-able initial
    ;; aux (at least not syntactically).
    (let* ((preposed? (preposed-aux?)) ;; make them local flags
           (wh-initial? (initial-wh?))
           (start-pos (starts-at-pos sentence))
           (end-pos (ends-at-pos sentence))
           (edge (span-covered-by-one-edge?
                  (if preposed? 
                    (chart-position-after start-pos) ;; hack, kinda
                    start-pos)
                  end-pos))
           (edges (all-tts)))
      (cond
        (edge
         (when preposed?
           ;; The wh-initial? case doesn't need further handling
           (let ((q (make-polar-question (edge-referent edge))))
             (let ((spanning-edge
                    (make-edge-over-long-span
                     start-pos end-pos
                     (edge-category edge)
                     :rule 'make-this-a-question-if-appropriate
                     :form category::question
                     :referent q)))
               spanning-edge))))     
        
        ((and (= 3 (length edges))
              (itypep (edge-referent (car edges)) 'be))              
         (cond ((member (cat-name (edge-form (third edges)))
                        '(adjp adjective comparative superlative
                          comparative-adjp superlative-adjp))
                ;; <is> <something> <adj>
                (make-polar-adjective-question start-pos end-pos edges))
               ((member (cat-name (edge-form (third edges)))
                        '(pp))
                ;; stray time phrase?
                (make-polar-pp-question edges))
               ((member (cat-name (edge-form (third edges)))
                        '(vp+ed vp+ing vg+ed vg+ing
                          vp+passive))
                ;; <is> <something> <x-ing?
                (make-polar-participle-question start-pos end-pos edges))
               ((eq (cat-name (edge-category (second edges)))
                    ;; "is there <something: a cat on the rug>?"
                    'syntactic-there)
                (make-polar-there-question start-pos end-pos edges))
               (t
                ;; don't break here -- just warn
                ;;  have gotten some cases in articles
                (warn "unhandled 3 edge question: ~a" edges))))

        ;; the next option is to assume that the subject is the consistuent
        ;; just after the aux, to 'move' it there somehow, and try to
        ;; reparse the sentence as though it were declarative
        (t
         (warn "Could not resolve edges into a question: ~a~
              ~%preposed-aux = ~a  initial-wh = ~a"
               edges preposed? wh-initial?))))))

;;;--------------------------
;;; polar questions (yes/no)
;;;--------------------------

(define-category polar-question
  :specializes question-core
  :instantiates :self 
  :index (:temorary :key statement))
  :documentation "This is a labeling category in that it does
 not add any refinements or extensions to question-core. It just
 labels the statement as a question: 'is it the case that <statement>'."

(defun make-polar-question (statement)
  "Abstracted constructor so it will done the same way every time."
  (find-or-make-individual
   'polar-question :statement statement))
                           
;;--- cases called from make-this-a-question-if-appropriate

(defun make-polar-there-question (start-pos end-pos edges)
  "We're asking about whether somthing exists"
  ;; caller knew the first edge was the aux and second 'there'
  (let* ((np (edge-referent (third edges)))  ;; drugs that ...
         (i (find-or-make-individual 'there-exists :value np))
         (q (make-polar-question i)))
    (let ((e (make-edge-over-long-span
              start-pos end-pos
              (itype-of i)
              :rule 'make-polar-there-question
              :form category::question
              :referent q
              :constituents edges)))
      ;; trace
      e)))

;; (p "are there drugs that treat pancreatic cancer?")
(defun make-polar-pp-question (edges)
  (push-debug edges)
  (warn "Polar PP questions are not implemented yet."))'
    

(defun make-polar-adjective-question (start-pos end-pos edges)
  (let* ((be (edge-referent (first edges)))  ;; is
         (np (edge-referent (second edges))) ;; the ball
         (adj (edge-referent (third edges))) ;; red
         (*left-edge-into-reference* (first edges))
         (copular-adj (make-copular-adjective be adj (car edges)))
         (copular-statement (when copular-adj
                              (assimilate-subject np copular-adj nil))))
    (declare (special *left-edge-into-reference*))
    ;; this is bound since make-copular-adjective needs to know the edge for the "BE"
    ;; to check if it is an infinitive
    (when copular-statement
      (let ((q (make-polar-question copular-statement)))
        (make-edge-over-long-span
         start-pos end-pos
         (itype-of copular-statement)
         :rule 'make-polar-adjective-question
         :form category::question
         :referent q)))))

(defun make-polar-participle-question (start-pos end-pos edges)
  (let* ((be (edge-referent (first edges)))  ;; is
         (np (edge-referent (second edges))) ;; the BRAF-NRAS complex
         (participle (edge-referent (third edges))) ;; sustained in time
         (*left-edge-into-reference* (first edges))
         (participle-vp (check-passive-and-add-tense/aspect be participle))
         (participle-statement
          (when participle-vp
            (assimilate-subject np participle-vp nil))))
    (declare (special *left-edge-into-reference*))
    ;; this is bound since make-copular-adjective needs to know the edge for the "BE"
    ;; to check if it is an infinitive
    (when participle-statement
      (let ((q (make-polar-question participle-statement)))
        (make-edge-over-long-span
         start-pos end-pos
         (itype-of participle-statement)
         :rule 'make-polar-participle-question
         :form category::question
         :referent q)))))

;;;--------------
;;; WH questions
;;;--------------

(define-category wh-question
  :specializes question-core
  :instantiates :self
  :binds ((wh :primitive category) ;; #<ref-category HOW>
          (attribute attriute-value) ;; #<tall>
          (var :primitive lambda-variable) ;; height, color
          ;;(focus ;; Trips variable for 'how <much> ..."
          #| the rest is the statement |# )
  ;;  :index (:temporary :sequential-keys wh attribute statement)
  :documentation "Draft that should be able to make enough of
 the content of the WH question explicit that we have the basis
 for computing an answer to it.")

#| (p "What color is the block?")
   (p/s "Is the block on the table?")
   (p "Could we put on one more?")
   (p/s "Could we put on one more block?")
   (p "did we make a three block stack?")
   (p "How big is the stack?")
   (p "How many blocks did you add to the row?")
   (p "How many blocks are you adding to the row?") ;; "going to add"
   (p "How many blocks will you add to the row?")

From :id "PMC1702556" :corpus :jun15eval
   This wh-np has no aux per se and blew out the looop
(p "Whether all EGFR ectodomain mutants share a common mechanism of 
oncogenic receptor conversion warrants further study.")
|#

(defun delimit-and-label-initial-wh-term (pos-before wh-edge)
  "WH questions always also include inverting subject
   and auxiliary, and the auxiliary will occur right after the
   possibly lengthy WH phrase has finished. E.g. 'How many
   people will be going to the party?'. So starting with the 
   WH word, scan forward until you reach an aux. How to best
   divide up the region between the two largly depends on the
   identity of the WH and what its asking for.
      When detect-early-information calls this we collect
   the WH information and populate the object while we're
   walking along the sentence prefix."
  ;; The trigger is that form of edge over the word at
  ;; this position is wh-pronoun.

  ;; "why" doesn't need to scan ahead. Ditto "who", "where" "when"

  ;; "how", "what", "which" do

  ;; "whom" is going to have a leading preposition

  (let* ((wh-type (edge-referent wh-edge)) ;; the category
         ;;(q (find-or-make-individual :wh wh-word))
         ;;  delay if how questions are different
         (next-pos (chart-position-after pos-before))
         (next-word (pos-terminal next-pos))
         (next-edge (highest-edge (pos-starts-here next-pos)))
         aux-edge  attr-edge  value-edge  other-edges)
    (loop
       (cond
         ((auxiliary-word? next-word)  ;; we've gone as far as we should
          (setq aux-edge next-edge)
          ;;/// if for some reason we get a WH without an aux
          ;; we'll never get out of this loop. What can we use
          ;; as a backstop?
          (return))
         ((null next-edge)
          ;; this happened in
          ;; "Whether ILK, TORC2 or another enzyme is the primary AKT hydrophobic-motif Ser473 kinase specifically downstream of β1 integrins has not been investigated, and this is therefore an important open question."
          (push next-edge other-edges))
         ((null (edge-referent next-edge))
          ;; happens in cases like an edge over apostrophe-s
          (push next-edge other-edges))
         ((itypep (edge-referent next-edge) 'attribute) ;; e.g. color
          (setq attr-edge next-edge))
         ((itypep (edge-referent next-edge) 'attribute-value)
          (setq value-edge next-edge))
         (t (push next-edge other-edges)))
       (setq next-pos (chart-position-after  next-pos)
             next-word (pos-terminal next-pos)
             next-edge (highest-edge (pos-starts-here next-pos)))
       (when (null next-edge) (return)))

    (push-debug `(,aux-edge ,attr-edge ,other-edges))

    (when aux-edge
      (let ((q (make-simple-individual
                category::wh-question `((wh ,wh-type)))))
        (flet ((stash-attribute (attr)
                 (setq q (bind-variable 'attribute attr q))
                 (let ((var (variable-for-attribute attr)))
                   (setq q (bind-variable 'var var q)))))

          (when attr-edge ;; "what color is ..."
            (stash-attribute (edge-referent attr-edge)))
        
          (when value-edge ;; "how big is the block?"
            (let* ((value-class (itype-of (edge-referent value-edge))) ;; size-value
                   (attr (when value-class (value-of 'attribute value-class))))
              (when attr (stash-attribute attr))))
               
          ;; now make a phrase over the whole span of WH edges
          ;; up to but not including the aux
          (let ((edge (make-edge-over-long-span
                       pos-before next-pos
                       (edge-category wh-edge)
                       :rule 'delimit-and-label-initial-wh-term
                       :form category::question-marker ;;/// needs more meliflous term
                       :referent q
                       :constituents (edges-between pos-before next-pos))))
            (record-initial-wh edge)
            edge))))))
  

(defun apply-question-marker (wh-edge vg-edge np-edge)
  "Called by DA rule, wh-be-thing, since parsing is going to be stymied by
   the aux/vg being in the wrong place. We take our cue from
   the verb and do it by hand, going directly to the interpretation"
  ;; meta-dot on compose-preposed-aux-into-predicate-adjp to get near
  ;; the right place in rules/DA/da-rules.lisp
  (declare (special category::copular-predicate category::s))
  (let ((vg (edge-referent vg-edge))
        (np (edge-referent np-edge))
        (wh (edge-referent wh-edge)))
     (cond ((itypep vg 'be)
           ;; we're asking about an attribute of the np
           ;; so we have to instantiate the copular-predication
           (let ((i (define-or-find-individual 'copular-predication
                        :predicate vg
                        :item np)))
             (let ((edge (make-binary-edge/explicit-rule-components
                          vg-edge ;; left
                          np-edge ;; right
                          :category category::copular-predicate
                          :form category::s  ;; vp? order is odd for a vp
                          :referent i)))
               edge)))
           (t
            (warn "Don't know how to formulate a wh question whose vg is ~a" vg)))))
             


(def-k-method compose ((wh category::wh-question) (i individual))
  ;; this is the second time around after we're assembled
  ;; the pieces of the question. We can now set it up.
  ;; The call to compose is in make-subordinate-clause
  ;;   (p/s "What color is the block?")
  (declare (special category::question))
  (let ((w (bind-variable 'statement i wh)))
    (revise-parent-edge :form category::question
                        :referent w)
    w))



#|
;;--- swallowing the inverted auxiliary into WH/be

(def-cfr WH/be (wh-pronoun be) ;; gets all the WH pronouns
  :form question-marker
  :referent (:daughter left-edge))

(def-cfr WH/be (wh-pronoun apostrophe-s) ;; gets all the WH pronouns
  :form question-marker
  :referent (:daughter left-edge))

(def-cfr WH/be (wh-pronoun do) ;; "where did you come from"
  :form question-marker
  :referent (:daughter left-edge))  |#

;(def-cfr WH/be (WH/be pronoun/second)
;  :form question-marker ;; unless we want to strand the "you" ??
;  :referent (:daughter left-edge
;	          :bind (participant . right-edge)))

;; "will"
; CATEGORY           #<mixin WILL>
; FORM               #<ref-category MODAL>
; REFERENT           #<mixin FUTURE>


;;--- Explicit cases motivated by the checkpoint domain
;;  This almost certainly has a clean generalization that can be cast
;; as a form rule, but I'm not certain yet what that would be. Need more
;; cases
#|
(def-cfr event (WH/be location)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
                    content right-edge)))

(def-cfr event (WH/be individual)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

(def-form-rule (WH/be verb+ing)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

;; I think these next two need to be scrapped (cfg 13 Jul 09)

(def-cfr event (WH/be "from")
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

(def-cfr event (WH/be with-np)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

;; This is a rather important one right here...

(def-cfr event (WH/be event)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))
|#
#|   Ignoring now (8/4/16) because it will likely succeed
     and distort things before they're done.
;; Handles commonly used (but not necessarily grammatical)
;; examples like "where you going" etc.

(def-form-rule (wh-pronoun verb+ing)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

;(def-cfr WH/be (wh-pronoun pronoun/second)
;  :form question-marker
;  :referent (:daughter left-edge
;	     :bind (participant . right-edge)))
|#


#|   Harvest for patterns
;; For "why are you out today" -- really smacks into the
;; sticky psi issue though...

(def-cfr WH/be/you (WH/be pronoun/second)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            participant right-edge)))

;; (def-cfr event (WH/be/you spatial-orientation) ;; flushed spatial-orientation
;;   :form s
;;   :referent (:head left-edge
;; 	     :bind (location . right-edge)))

(def-cfr event (WH/be/you deictic-location)
  :form s
  :referent (:head left-edge
	         :bind (location . right-edge)))

(def-cfr event (WH/be/you prep-location)
  :form s
  :referent (:head left-edge
	     :bind (location . right-edge)))

;; (def-cfr event (WH/be spatial-orientation) ;; flushed spatial-orientation 
;;   :form s
;;   :referent (:instantiate-individual question
;;              :with (type left-edge
;; 		    content right-edge)))

(def-cfr event (WH/be deictic-location)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		    content right-edge)))
|#

#|   These don't belong here

;; odds and ends...

;; (def-cfr event (event spatial-orientation) ;; flushed spatial-orientation
;;   :form s
;;   :referent (:head left-edge
;; 	     :bind (location . right-edge)))

(def-cfr event (event deictic-location)
  :form s
  :referent (:head left-edge
	     :bind (location . right-edge)))

(def-cfr event (wh-pronoun event)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
                         content right-edge)))
|#
