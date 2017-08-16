;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER) -*-
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

;;;---------------------
;;; question categories
;;;---------------------

(defparameter *show-wh-problems* nil
  "complain about problems in creating WH questions -- there are strange things in articles...")


(define-category question
  :specializes linguistic
  :instantiates nil 
  :binds ((statement top))
  :documentation "Common base for questions of all sorts.
 The 'statement' variable holds the proposition or event that
 is being questioned. Think of it as the question restated in
 declarative form.
   Specializations elaborate this according to the kind of question
 being asked. The basic split is between polar questions and the
 diverse kinds of WH questions.")


(define-category polar-question
  :specializes question
  :instantiates :self 
  :index (:temporary :key statement))
  :documentation "This is a labeling category in that it does
 not add any refinements or extensions to question-core. It just
 labels the statement as a question: 'is it the case that <statement>'."


(define-category wh-question
  :specializes question
  :instantiates :self
  :binds ((wh :primitive category) ;; #<ref-category HOW>
          (var :primitive lambda-variable) ;; height, color
          ;;(focus ;; Trips variable for 'how <much> ..."
          #| the rest is the statement |# )
  ;;  :index (:temporary :sequential-keys wh attribute statement)
  :documentation "Draft that should be able to make enough of
 the content of the WH question explicit that we have the basis
 for computing an answer to it.")

(define-category wh-question/attribute
  :specializes wh-question
  :instantiates :self
  :binds ((attribute attribute-value)) ;; #<tall>, w/ var = height
  :documentation "")

;;--- constructors

(defun make-wh-object (wh &key variable statement attribute)
  (let* ((attribute-var
          (when attribute (variable-for-attribute attribute)))
         (var-to-use (or variable
                         attribute-var
                         (value-of 'variable wh))))
    (let ((q (define-an-individual
                 (if attribute 'wh-question/attribute 'wh-question)
                 :wh wh
                 :var var-to-use
                 :statement statement)))
      (when statement
        (setq q (add-category-to-individual q (itype-of statement))))
      (when attribute
        (setq q (bind-variable 'attribute attribute q)))
      q)))

(defun extend-wh-object (q &key variable statement attribute)
  (when variable
    (setq q (bind-variable 'var variable q)))
  (when attribute
    (assert (itypep q 'wh-question/attribute))
    (setq q (bind-variable 'attribute attribute q))
    (let ((attr-variable (variable-for-attribute attribute)))
      (when attr-variable ;; how do we sugar possible revision here?
        (setq q (bind-variable 'var attr-variable q)))))
  (when statement
    (setq q (bind-variable 'statement statement q))
    (setq q (add-category-to-individual q (itype-of statement))))
  q)


;;;------------------------------------
;;; call from post-analysis-operations
;;;------------------------------------

(defparameter *warn-when-can-not-formulate-question* nil
  "Turn on when debugging these. Otherwise it's presently noisy.")
;; (setq *warn-when-can-not-formulate-question* t)

(defun make-this-a-question-if-appropriate (sentence)
  "Called from post-analysis-operations after all parsing and
   contextual interpretation is finished."
  (declare (special category::question))
  (when (or (preposed-aux?)
            (initial-wh?))
    ;; span-covered-by-one-edge? -- won't work until we do
    ;; something with the deliberately unparse-able initial
    ;; aux (at least not syntactically parse-able).
    (let* ((preposed? (preposed-aux?)) ;; make them local flags
           (wh-initial? (initial-wh?))
           (start-pos (starts-at-pos sentence))
           (end-pos (ends-at-pos sentence))
           (edge (span-covered-by-one-edge?
                  (if preposed? 
                    (chart-position-after start-pos) ;; hack, kinda
                    start-pos)
                  end-pos))
           (edges (all-tts start-pos end-pos)))
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

        (wh-initial?
         (cond
           ((= 2 (length edges)) ;; take the second as the statement
            (wh-initial-two-edges wh-initial? edges start-pos end-pos))
           
           ((and (= 3 (length edges)) ;; "How many blocks did you add to the row?"
                 (edge-over-aux? (second edges)))
            (wh-initial-three-edges wh-initial? edges start-pos end-pos))
           
           (t
            (when *warn-when-can-not-formulate-question*
              (warn "Could not resolve edges into a WH question: ~a" edges)))))

        (preposed?
         (when *warn-when-can-not-formulate-question*
           (warn "Could not resolve edges into a polar question: ~a" edges)))

        (t
         (when *warn-when-can-not-formulate-question*
           (warn "Could not resolve edges into a question: ~a~
                ~%   preposed-aux = ~a  initial-wh = ~a"
                 edges preposed? wh-initial?)))))))


;;;--------------------------
;;; polar questions (yes/no)
;;;--------------------------

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
  (warn "Polar PP questions are not implemented yet."))
    
(defun make-polar-adjective-question (start-pos end-pos edges)
  (let* ((be (edge-referent (first edges)))  ;; is
         (np (edge-referent (second edges))) ;; the ball
         (adj (edge-referent (third edges))) ;; red
         (*left-edge-into-reference* (first edges))
         (copular-adj (make-copular-adjective be adj))
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


#| (p "What color is the block?")
   (p/s "Is the block on the table?")
   (p "Could we put on one more?")
   (p/s "Could we put on one more block?")
   (p "did we make a three block stack?")
   (p "How big is the stack?")
   (p "How many blocks did you add to the row?")
   (p "How many blocks are you adding to the row?") ;; "going to add"
   (p "How many blocks will you add to the row?")

;;-- embedded examples
(p/s "Tell me what you want to do now.")
(p "I couldn't find a place to put the block.") ;; purpose clause in wrong place
(p "Who should do it?")
(p "We don't know how to do that.") ;; bad infinitive


;;-- Bio examples

(p "How Important Are Scc1 and SA2 Phosphorylation In Vivo?.")
e11   HOW           1 "How Important " 3
e15   BE            3 "Are Scc1 and SA2 Phosphorylation In Vivo" 12

(p "Consistent with the critical role of VEGF and VEGFR2 in BPD, 
  human infants who die of BPD have little or no VEGF in their 
  lung epithelium.")
Error: New type of wh-obj passed in: #<ref-category INFANT>

(p "Until now, it has been unclear how RAS could affect ASPP2 to enhance 
p53 function") ;; dry-run $40
From :id "PMC1702556" :corpus :jun15eval
   This wh-np has no aux per se and blew out the looop
(p "Whether all EGFR ectodomain mutants share a common mechanism of 
oncogenic receptor conversion warrants further study.")
9th June article
"How does fibrinogen binding to αIIbβ3 lead to activation of Src?"
"How is the specificity of Sos-1 directed toward Ras or Rac?"
"What type of nuclear speckles is containing the IKKε protein?"
"Where these phosphorylated tyrosine residues are included 
in later comparative analyses they are clearly distinguished."
"What can one conclude from the observation that a known activator 
of PCP signaling, XDshΔDIX, also activates three effectors of Wnt–Ca 2+ signaling?"
"Active Ras (Ras-GTP) triggers a number of signaling cascades, among which is 
the one connecting Ras to Rac, a member of the Rho subfamily of small GTPases."
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
   walking along the sentence prefix. The we record the fact
   that we have the wh-edge in hand on the sentence context."
  
  (let* ((wh-type (edge-referent wh-edge)) ;; the category 
         (next-pos (chart-position-after pos-before))
         (next-word (pos-terminal next-pos))
         (next-edge (highest-edge (pos-starts-here next-pos)))
         aux-edge  attr-edge  value-edge  other-edges)

    (flet ((cover-wh (q end-pos)
             ;; Make a phrase over the whole span of WH edges
             ;; up to but not including the aux
             (let ((edge
                    (make-edge-over-long-span
                     pos-before end-pos
                     (edge-category wh-edge)
                     :rule 'delimit-and-label-initial-wh-term
                     :form category::question-marker ;;/// needs more meliflous term
                     :referent q
                     :constituents (edges-between pos-before next-pos))))
               (record-initial-wh edge)
               (tr :wh-initial-edge edge q)
               edge)))
      (cond
        ((memq (cat-symbol wh-type) '(who why where when))
         ;; These won't (??) have extended wh phrases like the others
         (cover-wh (make-wh-object wh-type) next-pos))
        (t
          (loop ;; search ahead for the aux/modal, then assess
           (cond
             ((or (auxiliary-word? next-word)  ;; we've gone as far as we should
                  (verb-category? next-edge))
              (setq aux-edge next-edge)
              (return))
             ((itypep (edge-referent next-edge) 'attribute) ;; e.g. color
              (setq attr-edge next-edge))
             ((itypep (edge-referent next-edge) 'attribute-value) ;; "big"
              (setq value-edge next-edge))
             ((null (edge-referent next-edge)) ;; happens in cases like an edge over apostrophe-s
              (push next-edge other-edges))
             ((wh-is-declarative-heuristics next-edge)
              (return))
             (t (push next-edge other-edges)))
             
           (setq next-pos (chart-position-after next-pos)
                 next-word (pos-terminal next-pos)
                 next-edge (highest-edge (pos-starts-here next-pos)))
           (when (null next-edge) (return)))

          ;;(push-debug `(,aux-edge ,attr-edge ,other-edges))
          ;; (lsp-break "wh-type = ~a" wh-type)
          (unless aux-edge
            (when *show-wh-problems*
              (warn "No aux-edge with ~a" wh-type)))
          
          (let ((attr
                 (cond
                   (attr-edge ;; "what color is ..."
                    (edge-referent attr-edge))
                   (value-edge ;; "how big is the block?"
                    (let ((value-class (itype-of (edge-referent value-edge)))) ;; size-value
                      (when value-class (value-of 'attribute value-class))))
                   (other-edges ;; "How important is ..."
                    (if (null (cdr other-edges))
                      (edge-referent (car other-edges))
                      (when *show-wh-problems*
                        (warn "Multiple 'other edges' in ~s: ~a" (current-string) other-edges)))))))
            (let ((q (if attr
                       (make-wh-object wh-type :attribute attr)
                       (make-wh-object wh-type))))
              (cover-wh q next-pos))))))))

(defun wh-is-declarative-heuristics (next-edge)
  "Called by delimit-and-label-initial-wh-term w/in its accumulation loop.
   Strictly speaking we should probably scan ahead to see if there's an
   aux before we get to a main verb, or something else that would
   signal that we're not in a question."
  (is-pronoun? next-edge)) 



;; (p/s "What color is the block?")
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
               (tr :wh-apply-question-marker edge)
               edge)))
           (t
            (warn "Don't know how to formulate a wh question whose vg is ~a" vg)))))
             



;; This is the second time around after we're assembled
;; the pieces of the question. We can now set it up.
;; The call to compose is in make-subordinate-clause
;;   (p/s "What color is the block?")

(def-k-method compose ((wh category::wh-question) (i individual))
  (add-statement-to-wh-question wh i))

(def-k-method compose ((wh category::wh-question/attribute) (i individual))
  (add-statement-to-wh-question wh i))

(defun add-statement-to-wh-question (wh stmt)
  (declare (special category::question))
  (let ((q (bind-variable 'statement stmt wh)))
    (setq q (add-category-to-individual q (itype-of stmt)))
    (revise-parent-edge :form category::question
                        :referent q)
    (tr :wh+individual-method q)
    q))



(defun wh-initial-two-edges (wh-initial? edges start-pos end-pos)
  (let* ((wh (edge-referent wh-initial?))
         (complement (edge-referent (second edges)))
         (q (compose wh complement)))
    (tr :make-this-a-question q)
    (unless q
      (error "WH compose didn't work or doesn't exist"))
    (make-edge-over-long-span
     start-pos end-pos
     (edge-category (second edges)) ;; ??
     :rule 'make-this-a-question-if-appropriate
     :form category::question
     :referent q)))

;; (p "where should I put the block?")
;;
(defun wh-initial-three-edges (wh-edge edges start-pos end-pos)
  "The second argument is an aux or a modal that has to be
   folded in to the statement (third edge) for its tense or
   aspect contribution. Not bothering to explicitly hook
   the aux edge into the tree."
  (let ((wh (edge-referent wh-edge))
        (aux (edge-referent (second edges)))
        (stmt (edge-referent (third edges))))
    (with-referent-edges (:l (second edges) :r (third edges))
      (setq stmt (add-tense/aspect-info-to-head aux stmt)))
    (let ((q (compose wh stmt)))
      (make-edge-over-long-span
       start-pos end-pos
       (edge-category (third edges)) ;; ??
       :rule 'make-this-a-question-if-appropriate
       :form category::question
       :referent q
       :constituents edges))))




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

