;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER) -*-
;;; copyright (c) 2011,2016-2018 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "questions"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  July 2018

;; Broken out from /grammar/model/sl/checkpoint/rules 6/17/09
;; Elaborated through 7/23/09. 9/28/11 removed spatial-orientation
;; and cleaned up. Completely redesigned 8/16.

(in-package :sparser)

;;;--------------------------------
;;; debugging / display parameters
;;;--------------------------------

(defparameter *debug-questions* nil
  "Should only be set when debugging. Signals an error so we can
   see what's going on. Usually paired with a warn.")

(defparameter *show-wh-problems* nil
  "Break about problems in creating WH question and other types.
   Usually in an if statement with a warn as the alternative.")

(defparameter *trace-wh-accumulation* nil
  "Controls whether we show the succession of positions covered
   when delimit-and-label-initial-wh-term runs.")


;;;---------------------
;;; question categories
;;;---------------------

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
  :binds ((wh :primitive category) ;; e.g. #<ref-category HOW>
          (var :primitive lambda-variable) ;; height, color
          ;;(focus ;; Trips variable for 'how <much> ..."
          #| the rest is the statement |# )
  ;;  :index (:temporary :sequential-keys wh attribute statement)
  :documentation "The primary aim of the var(iable) is to provide
 the information to answer the question: where would we find it
 in an individual. For a simple wh-question ('where is the ball?')
 that's assumed to be the variable associated with the WH.
   N.b. used to use add-category-to-individual to incorporate the
 type of the statement into the type of the whole interpretation
 but the k-method dispatch is going the second, statement category
 which confuses the realization process. Now only including the
 statement category when we're not a toplevel question.")

(define-category wh-question/attribute
  :specializes wh-question
  :instantiates :self
  :binds ((attribute attribute-value) ;; #<tall>, w/ var = height
          (other)) ;; "which pathways utilize SRF?"
  :documentation "We are asking about a particular, possibly arbitrary
 thematic argument of the statement. If it is a known type of
 attribute we take advantage of that to refine the choice of
 variable. For arbitrary, 'other', cases we have to dig around
 after we've finished the full parse.")

(define-category wh-question/select
  :specializes wh-question
  :instantiates :self
  :binds ((set))
  :documentation "For formulations like 'which of <set>' or
 'how many of <set>'. Not clear as yet what generalization (v/r)
  we can make about the set variable, but semantically we're directed
  to make a selection from that set")

;;--- constructors

(defun make-wh-object (wh &key variable statement attribute other embedded)
  (declare (optimize debug))
  (push-debug `(,variable ,statement ,attribute ,other))
  (let* ((attribute-var
          (when attribute (variable-for-attribute attribute)))
         (var-to-use (or variable
                         attribute-var
                         (value-of 'variable wh))))
    (let ((q (define-an-individual
                 (if (or attribute other)
                   'wh-question/attribute 'wh-question)
                 :wh wh
                 :var var-to-use
                 :statement statement)))
      (when embedded
        ;; If we are an interior wh-clause, then we are going to 
        ;; compose with something, and it will be important to expose
        ;; the category of the statement as part of this individual.
        (when statement
          (setq q (add-category-to-individual q (itype-of statement)))))
      (when attribute
        (setq q (bind-variable 'attribute attribute q)))
      (when other
        (setq q (bind-variable 'other other q)))
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
    #|(setq q (add-category-to-individual q (itype-of statement)))|# )
  q)


;;;------------------------------------
;;; call from post-analysis-operations
;;;------------------------------------

(defparameter *warn-when-can-not-formulate-question* nil
  "Turn on when debugging these. Otherwise it's presently noisy.")
;; (setq *warn-when-can-not-formulate-question* t)

(defun make-this-a-question-if-appropriate (sentence)
  "Called from post-analysis-operations after all parsing and
   contextual interpretation is finished. This is a generic
   check in that we don't already know that this sentence is
   supposed to be a question. We establish that within this call.
     The early pass by detect-early-information will have
   sorted its results (if any) on the sentence data structure
   which we access here via preposed-aux? and/or initial-wh?.
     If one of these holds we try to formulate a question
   from the sentence, which can be complicated depending on
   how well we've parsed it.
     Runs for side-effects."
  (declare (special category::question *show-wh-problems*))
  (tr :wh-walk "make-this-a-question-if-appropriate")
  (when (or (preposed-aux?)
            (initial-wh?))
    (let* ((preposed? (preposed-aux?)) ;; make them into local flags
           (wh-initial? (initial-wh?))
           (start-pos (starts-at-pos sentence))
           (end-pos (ends-at-pos sentence))
           (edge (span-covered-by-one-edge?
                  (cond ((and preposed? wh-initial?) start-pos)
                        (preposed? (chart-position-after start-pos))
                        (t start-pos))
                  end-pos))
           (edges (all-tts start-pos end-pos)))

      (tr :wh-flag-status preposed? wh-initial? edges)

      ;; Look for heuristic ways we could get a full sentence
      ;; from a partial parse. The detection is in this cond.
      ;; The construction is mostly in the subroutines just below.
      (cond
        ((edge-p edge)
         (when (and preposed? (null wh-initial?))
           ;; The wh-initial? case doesn't need further handling
           ;; when the sentence parsed completely.
           (let ((q (make-polar-question (edge-referent edge))))
             (let ((spanning-edge
                    (make-edge-over-long-span
                     start-pos end-pos
                     (edge-category edge)
                     :rule 'make-this-a-question-if-appropriate
                     :form category::s
                     :referent q)))
               spanning-edge))))
        ;; In most cases, the proposed aux will have been accommodated by
        ;; the operations in the post-vg-hook, though that's just for explicit
        ;; auxiliaries.

        ((and (edge-p edge) wh-initial?)) ;;/// Mark it? Wrap it?

        ((and (= 1 (length edges))
              (eq (edge-category (car edges)) category::there-exists))
         (there-is-as-polar-question (car edges)))

        ((eq (edge-category (car edges)) category::there-exists)
         (sort-out-incompletely-parsed-there-is-q start-pos end-pos edges))

        ((and preposed? ;; "does MEK phosphorylate ERK?"
              (edge-p (first edges))
              (itypep (edge-referent (first edges)) 'do))
         (when *debug-questions*
           (break "make-question: do")))

        ;; three-edge copular cases
        ((and (or (= 3 (length edges))
                  (and (> (length edges) 3)
                       (eq (cat-name (edge-form (fourth edges))) 'ifcomp)))
              (edge-p (first edges))
              (itypep (edge-referent (first edges))
                      'be))
         (cond ((member (cat-name (edge-form (third edges)))
                        '(adjp adjective comparative superlative
                          comparative-adjp superlative-adjp))
                ;; <is> <something> <adj>
                (make-polar-adjective-question start-pos end-pos edges))
               
               ((member (cat-name (edge-form (third edges)))
                        '(vp+ed vp+ing vg+ed vg+ing
                          vp+passive))
                ;; <is> <something> <x-ing?
                (make-polar-participle-question start-pos end-pos edges))

               ((and (or (noun-category? (second edges))
                         (eq (cat-name (edge-form (second edges)))
                             'pronoun))
                     (noun-category? (third edges)))
                ;; "Is Selumetinib an inhibitor of MEK1?"
                (make-polar-copular-question start-pos end-pos edges))

               ((and (noun-category? (second edges))
                     (member (cat-name (edge-form (third edges)))
                             '(vg+passive)))
                ;; "Is MAPK1-bound MAP2K1 sustained?"
                (make-polar-copular-question start-pos end-pos edges))
               
               (t
                (if *show-wh-problems*
                  (lsp-break "unhandled 3 edge polar-copular question: ~a" edges)
                  (warn "unhandled 3 edge polar-copular question: ~a" edges)))))

        (wh-initial? ;; use assimilate-subject (subj vp) to refine the variable
         (cond
           ((= 2 (length edges)) ;; take the second as the statement
            (wh-initial-two-edges wh-initial? edges start-pos end-pos))
           
           ((and (and (= 3 (length edges))
                      (edge-p (second edges))))
            (wh-initial-three-edges wh-initial? edges start-pos end-pos))

           ((and (= 4 (length edges))
                 (itypep (edge-referent (second edges)) 'do))
            (when *debug-questions*
              (break "wh do")))
           
           ((and (= 4 (length edges))
                 (itypep (edge-referent (second edges)) 'be))
            ;; "What genes is stat3 upstream from?"
            (wh-initial-four-edges/be wh-initial? edges start-pos end-pos))

           (t
            (if *show-wh-problems*
              (lsp-break "Could not resolve ~a edges into a WH question: ~a"
                         (length edges) edges)
              (when *warn-when-can-not-formulate-question*
                (warn "Could not resolve ~a edges into a WH question: ~a"
                      (length edges) edges))))))

        (preposed?
         (if *show-wh-problems*
           (lsp-break "Could not resolve edges into a polar question: ~a" edges)
           (when *warn-when-can-not-formulate-question*
             (warn "Could not resolve edges into a polar question: ~a" edges))))

        (t
         (if *show-wh-problems*
           (lsp-break "Could not resolve edges into a question: ~a~
                     ~%   preposed-aux = ~a  initial-wh = ~a"
                      edges preposed? wh-initial?)
           (when *warn-when-can-not-formulate-question*
             (warn "Could not resolve edges into a question: ~a~
                  ~%   preposed-aux = ~a  initial-wh = ~a"
                   edges preposed? wh-initial?))))))))


;;;--------------
;;; WH questions
;;;--------------

;; (p "What drug could I use?")
;; (p "What apoptotic genes does stat3 regulate in the liver")


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

(p "Is the ibogaine congener 18-Methoxycoronaridine safer than ibogaine?.")
;; was throwing an error because (third edges) was a word  #<word QUESTION-MARK>
;; no replicable 10/17

(p "Until now, it has been unclear how RAS could affect ASPP2 to enhance 
p53 function") ;; dry-run $40
From :id "PMC1702556" :corpus :jun15eval
   This wh-np has no aux per se and blew out the loop
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
   and auxiliary, where the auxiliary will occur right after the
   possibly lengthy WH phrase has finished. E.g. 'How many
   people will be going to the party?'. Starting with the 
   WH word, scan forward until you reach an aux. How to best
   divide up the region between the two largly depends on the
   identity of the WH and what its asking for.
      When detect-early-information calls this we collect
   the WH information and populate the object while we're
   walking along the sentence prefix. Then we record the fact
   that we have the wh-edge in hand on the sentence context."
  (tr :wh-walk "delimit-and-label-initial-wh-term")
  (let* ((wh-type (edge-referent wh-edge)) ;; the category 
         (next-pos (chart-position-after pos-before))
         (next-word (pos-terminal next-pos))
         (next-edge (highest-edge (pos-starts-here next-pos)))
         aux-edge
         attr-edge ;; attributes (color)
         value-edge  ;; attribute values (big)
         other-edges ;; everything else
         of?
         )

    (flet ((cover-wh (q end-pos)
             "Make a phrase over the whole span of WH edges
              up to but not including the aux"
             (when (null q)
               (when *debug-questions*
                 (break "q is nil")))
             (when q
               (let ((edge
                      (or (edge-between pos-before end-pos)
                          (make-edge-over-long-span
                           pos-before end-pos
                           (edge-category wh-edge)
                           :rule 'delimit-and-label-initial-wh-term
                           :form category::np ;; qnp ;; question-marker
                           :referent q
                           :constituents (edges-between pos-before next-pos)))))
                 (record-initial-wh edge)
                 (tr :wh-initial-edge edge q)
                 edge))))
      (cond
        ((memq (cat-symbol wh-type) '(who why where when))
         ;; These won't (??) have extended wh phrases like the others.
         ;; But they could very well be followed by inverted auxiliaries
         ;; that have to be tracked so they can be properly
         ;; handled
         (when (auxiliary-word? next-word) ;; includes modals (and  'not')
           ;; Compare what detect-early-information does.
           ;; Wants a generalizing abstraction.
           (store-preposed-aux next-edge))           
         (cover-wh (make-wh-object wh-type) next-pos))
        (t
         (loop ;; search ahead for the aux/modal, then assess
            (when *trace-wh-accumulation*
              (format t "~&~a word = ~a, edge = ~a~%" next-pos next-word next-edge))
            (when (null next-edge) (return))
            (cond
              ((or (auxiliary-word? next-word) ;; We've gone as far as we should.
                   (verb-category? next-edge)) ;; Probably no explicit aux.
               (setq aux-edge next-edge)
               (return))
              ((eq next-word (word-named "of"))
               (setq of? next-edge))
              ((itypep (edge-referent next-edge) 'attribute) ;; e.g. color
               (setq attr-edge next-edge))
              ((itypep (edge-referent next-edge) 'attribute-value) ;; "big"
               (setq value-edge next-edge))
              ((null (edge-referent next-edge)) ;; happens in cases like an edge over apostrophe-s
               (push next-edge other-edges))
              ((wh-is-declarative-heuristics next-edge)
               (return))
              (t (push next-edge other-edges)))
            ;;(lsp-break "old next-pos = ~a" next-pos)
            (setq next-pos (if next-edge                  
                             (rightmost (chart-position-after next-pos)
                                        (pos-edge-ends-at next-edge))
                             (chart-position-after next-edge))
                  next-word (pos-terminal next-pos)
                  next-edge (highest-edge (pos-starts-here next-pos))))

 
         (if aux-edge
           (store-preposed-aux aux-edge)
           (if *debug-questions*
             (error "No aux-edge with ~a" wh-type)
             (when *show-wh-problems*
               (warn "No aux-edge with ~a" wh-type))))
          
         (multiple-value-bind (attr other?)
             (cond
               (attr-edge ;; "what color is ..."
                (edge-referent attr-edge))
               (value-edge ;; "how big is the block?"
                (let ((value-class (itype-of (edge-referent value-edge)))) ;; size-value
                  (when value-class (value-of 'attribute value-class))))
               (other-edges ;; "How important is ..."
                (values (edge-referent (car other-edges)) t)))

           (let ((q (cond
                      (of? (handle-wh-of wh-edge wh-type of? other-edges))
                      (attr
                       (if other?
                         (handle-wh-other wh-type other-edges next-pos wh-edge)
                         (make-wh-object wh-type :attribute attr)))
                      (t                      
                       (make-wh-object wh-type)))))
             
             (cover-wh q next-pos))))))))


(defun handle-wh-of (wh-edge wh-type of-edge other-edges)
  (declare (special *sentence-in-core*))
  ;; e.g. (p "Which of those are regulated by elk1")
  (when (> (length other-edges) 1)
    (when *debug-questions*
      (break "other-edges needs to be parsed")))
  (let* ((q (define-an-individual 'wh-question/attribute
                :wh wh-type)))
    (when (and (edge-p (car other-edges))
               (edge-referent (car other-edges)))
      (setq q (bind-variable 'set (edge-referent (car other-edges)) q)))
    ;; should we also make the edge?
    q))
               


(defparameter *wh+n-bar*
  (def-syntax-rule/expr '(wh-pronoun n-bar)
      :head :right-edge
      :form 'np
      :referent '(:function determiner-noun left-edge right-edge)))

;; (p/s "What genes are regulated by FOS")
;; (p/s "What apoptotic genes are regulated by FOS")
;; (p/s "What three apoptotic genes are regulated by FOS")

(defun handle-wh-other (wh-type other-edges end-pos wh-edge)
  "There is an 'other' in the region the wh-phrase is going to span.
   It could be one word, or it could include several prenominals
   that are semantically part of the whole WH NP and should be parsed
   if we can. Our job is to do that parsing and return the referent
   to be the basis of the edge-referent ('q'). The edge that we're 
   going to create is a side-effect sort of, that has to be appreciated
   by the cover-wh that is going to use the q if we don't.
   For 'what' and 'which' questions the simplest thing is to treat them
   as though they were determiners."
  (push-debug `(,wh-type ,other-edges ,end-pos ,wh-edge))
  (flet ((make-full-np (wh-edge other-phrase)
           (let ((edge (make-completed-binary-edge
                        wh-edge other-phrase *wh+n-bar*)))
             (tr :wh-other-np edge)
             (edge-referent edge))))
    (let ((edge-count (length other-edges))
          (edges (reverse other-edges))) ;; shift to left-to-right order
      (case edge-count
        (1 (make-full-np wh-edge (car edges)))
        (2 (let ((rule (multiply-edges (first edges) (second edges))))
             (if rule
               (let ((edge (make-completed-binary-edge (first edges) (second edges) rule)))
                 (make-full-np wh-edge edge))
               (when *debug-questions*
                 ;;(break "no rule") -- but return something
                 (edge-referent (second edges))))))
        (otherwise
         (let ((start-pos (pos-edge-starts-at (first edges))))
           (multiple-value-bind (layout edge)
               (parse-between-boundaries start-pos end-pos)
             (make-full-np wh-edge edge))))))))


;;;----

(defun fold-wh-into-statement (wh stmt wh-edge stmt-edge)
  (let ((stmt-form (cat-name (edge-form stmt-edge))))
    (case stmt-form
      (transitive-clause-without-object
       (let ((subj-var (subject-variable stmt)))
         (bind-variable subj-var wh stmt)))
      (vp+passive
       ;; these (always?) have a by-phrase, so their agent is bound.
       (let ((obj-var (object-variable stmt)))
         (bind-variable obj-var wh stmt)))
      (vp
       ;; "Which genes are involved in apoptosis?"
       (let ((subj-var (subject-variable stmt)))
         (bind-variable subj-var wh stmt)))
      (np
       ;; "Which of these are kinases"
       stmt)
      (otherwise
       (push-debug `(,wh ,stmt ,wh-edge ,stmt-edge))
       (when *debug-questions*
         (break "new folding confiburation: ~a" stmt-form))))))




;;;-------------------
;;; context predicate
;;;-------------------

(defun top-level-wh-question? (&aux (left-edge (left-edge-for-referent)))
  "Called from compose-wh-with-vp where we might be forming 
   a question or this might be a relative clause. Of course there are
   also embedded questions which function as if they were NPs where the
   distinction turn on whether there is aux-inversion.
      For now just a trivial test based on sentence position."
  (= 1 (pos-token-index (pos-edge-starts-at left-edge))))


;;;---------
;;; go-fers1
;;;---------
(defun find-edge-for-wh-other (wh-edge i-other)
  "The WH edge is a long-span if it includes an 'other' or
   an 'attribute' in it. So we have to grovel around to find
   the desired edge -- see cover-wh flet in delimit-and-label-initial-wh-term"
  (let* ((edge-list (edge-constituents wh-edge))
         (final-edge (car (last edge-list))))
    (if (eq (edge-referent final-edge) i-other)
      final-edge
      (break "Assumptions about 'other' and wh-edge are bad"))))
    
(defun rebuild-wh-other-edge (wh-edge old-other-edge new-other-edge)
  "We just composed the other-edge with a constituent just to its right.
   Exemplar is restricted relatives. So we have to rebuild the wh-edge
   to now use this new edge."
  ;; span the WH over it
  (setf (edge-ends-at wh-edge) (edge-ends-at new-other-edge))
  ;; update daughter & constituents info
  (setf (edge-right-daughter wh-edge) new-other-edge)
  (let ((constituents (edge-constituents wh-edge)))
    (setf (edge-constituents wh-edge)
          (reverse (cons new-other-edge (cdr (reverse constituents)))))
    wh-edge))

;;;-------------------------------------------
;;; fragment of the 2009 version of this file
;;;-------------------------------------------

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

