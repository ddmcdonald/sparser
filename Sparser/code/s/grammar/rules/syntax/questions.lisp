;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER) -*-
;;; copyright (c) 2011,2016-2019 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "questions"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  May 2019

;; Broken out from /grammar/model/sl/checkpoint/rules 6/17/09
;; Elaborated through 7/23/09. 9/28/11 removed spatial-orientation
;; and cleaned up. Completely redesigned 8/16.

(in-package :sparser)

(defparameter *alternative-wh-question-strategy* t
  "When this is T on, we don't use delimit-and-label-initial-wh-term 
   to find initial wh terms -- we just parse them. This should permit
   better handling of other forms of WH clauses and contructions
   such as embedded questions acting as clause participants
   ('I want to know where you are').")

;;;--------------------------------
;;; debugging / display parameters
;;;--------------------------------

;; (trace-questions)
;; or (trace-da-question) to also see application of DA hooks

(defparameter *debug-questions* nil
  "Should only be set when debugging. Signals an error so we can
   see what's going on. Usually paired with a warn.")

(defparameter *show-wh-problems* nil
  "Break about problems in creating WH question and other types.
   Usually in an if statement with a warn as the alternative.")

(defparameter *trace-wh-accumulation* nil
  "Controls whether we show the succession of positions covered
   when delimit-and-label-initial-wh-term runs.")

(defparameter *warn-when-can-not-formulate-question* nil
  "Turn on when debugging these. Otherwise it's presently noisy.")
;; (setq *warn-when-can-not-formulate-question* t)


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
            (initial-wh?)
            (preposed-of?)
            ;; make sure it hasn't already been parsed by a DA rule
            (cdr (all-tts))
            )
    (let* ((preposed? (preposed-aux?)) ;; make them into local flags
           (wh-initial? (initial-wh?))
           (start-pos (starts-at-pos sentence))
           (end-pos (ends-at-pos sentence))
           (edge (span-covered-by-one-edge? start-pos end-pos))
           (edges (all-tts start-pos end-pos)))

      (tr :wh-flag-status preposed? wh-initial? edges)

      (when (> (length edges) 5)
        ;; The patterns reachable from here are all shorter than that
        (return-from make-this-a-question-if-appropriate nil))

      (unless (every #'edge-p edges)
        ;; unhandled punctuation can slip through
        (return-from make-this-a-question-if-appropriate nil))

      (when *debug-questions* (push-debug `(,edges)))

      ;; Look for heuristic ways we could get a full sentence
      ;; from a partial parse. The detection is in this cond.
      ;; The construction is mostly in the subroutines in the
      ;; file q-patterns.lisp.
      ;; N.b. the multi-edge cases are usually easier to handle
      ;; through a pattern in a DA rule. See the question section in
      ;; grammmar/rules/DA/da-rules.lisp
      (cond
        ((edge-p edge)
         (cond
           ((and preposed? (null wh-initial?)
                 (itypep (edge-referent edge) 'there-exists))
            ;; The wh-initial? case doesn't need further handling
            ;; when the sentence is parsed completely.
            (make-polar-edge edge))
           
           ((preposed-of?)
            (dig-for-embedded-which edge))))

        ;; In most cases, the proposed aux will have been accommodated by
        ;; the operations in the post-vg-hook, though that's just for explicit
        ;; auxiliaries.         

        ((eq (edge-category (car edges)) category::there-exists)
         (sort-out-incompletely-parsed-there-is-q start-pos end-pos edges))

        ((and preposed? ;; "does MEK phosphorylate ERK?"
              (edge-p (first edges))
              (itypep (edge-referent (first edges)) 'do))
         (cond
           ((and (itypep (edge-form (second edges)) 's)
                 (= 2 (length edges)))
            (da/preposed+s (first edges) (second edges)))
           (t
            (when *debug-questions*
              (break "New case - make-question: do")))))

        ;; three-edge copular cases
        ((and (or (= 3 (length edges))
                  (and (> (length edges) 3)
                       (eq (cat-name (edge-form (fourth edges))) 'ifcomp)))
              (edge-p (first edges))
              (or (itypep (edge-referent (first edges)) 'be)
                  (itypep (edge-referent (first edges)) 'modality))) ;; "can"
         
         (cond ((member (cat-name (edge-form (third edges)))
                        '(adjp adjective comparative superlative
                          comparative-adjp superlative-adjp))
                ;; <is> <something> <adj>
                (make-polar-adjective-question start-pos end-pos edges))
               
               ((member (cat-name (edge-form (third edges)))
                        '(vp+ed vp+ing vg+ed vg+ing
                          vp+passive))
                ;; <is> <something> <x-ing>?
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
                  (lsp-break "unhandled 3 edge polar-copular question: ~s~% with edges ~a~%" (sentence-string sentence) edges)
                  (warn "unhandled 3 edge polar-copular question: ~s~% with edges ~a~%" (sentence-string sentence) edges)))))

        ;; Initial WH questions
        (wh-initial?
         ;; use assimilate-subject (subj vp) to refine the variable
         (cond
           ((and (= 3 (length edges))
                 (edge-p (second edges)))
            (unless (edge-used-in wh-initial?)
            ;; major dispatch point depending on what it finds
              (wh-initial-three-edges wh-initial? edges start-pos end-pos)))

           ((and (= 4 (length edges))
                 (itypep (edge-referent (second edges)) 'do))
            (when *debug-questions*
              (break "wh do - four edges")))
           
           ((and (= 4 (length edges))
                 (or (itypep (edge-referent (second edges)) 'be)
                     (itypep (edge-referent (second edges)) 'modality)))
            ;; "What genes is stat3 upstream from?"
            (wh-initial-four-edges/be wh-initial? edges start-pos end-pos))

           (t
            (if *show-wh-problems*
              (lsp-break "Could not resolve ~a edges into a WH question: ~a"
                         (length edges) edges)
              (when *warn-when-can-not-formulate-question*
                (warn "Could not resolve ~a edges into a WH question: ~a~% ~s"
                      (length edges) edges (current-string)))))))

        (preposed?
         (if *show-wh-problems*
           (lsp-break "~%Could not resolve edges into a polar question: ~s~%"
                      (current-string))
           (when *warn-when-can-not-formulate-question*
             (warn "Could not resolve edges into a polar question: ~a~%  ~s"
                   edges (current-string)))))

        (t
         (if *show-wh-problems*
           (lsp-break "Could not resolve edges into a question: ~a~
                     ~%   preposed-aux = ~a  initial-wh = ~a"
                      edges preposed? wh-initial?)
           (when *warn-when-can-not-formulate-question*
             (warn "Could not resolve edges into a question: ~a~
                  ~%   preposed-aux = ~a  initial-wh = ~a"
                   edges preposed? wh-initial?))))))))


;;;------------
;;; test suite
;;;------------

(defparameter *biology-test-questions*
  '("What is STAT3?"
    "What transcription factors are regulators of SMURF2 in liver?"
    "What are the targets of PLX-4720?"
    "What are the targets of Selumetinib?"
    "What is the target of Selumetinib?" ;; chunking problem on 'the'
    "How does KRAS activate MAPK3?"
    "How is stat3 involved in apoptotic regulation?"
    "How might a STAT3 mutation affect breast cancer?"
    "How many genes are in the MAPK signaling pathway?"
    "Where does stat3 regulate cfos"
    "What drug could I use?"
    "What apoptotic genes does stat3 regulate in the liver"
    "Tell me what you want to do now."
    "We don't know how to do that."
    "How important are Scc1 and SA2 phosphorylation in vivo?"
    "Can you show me genes regulated by ELK1"
    "are there any genes that are upstream of stat3?"
    "What genes is stat3 upstream of?"
    "What tissues can I ask about?" ;; doesn't take "about"    
    "What tissues is STAT3 expressed in?" ;; doesn't tuck
    "Are there any genes stat3 is upstream of?"
    "Can you find any apoptotic pathways that stat3 is involved in?" ;; polar / refactor
    "Which of them are regulated by elk1"

    ;; polar questions from Rusty 1/17/19
    "Is STAT3 involved in apoptosis?"
    "Is MAP2K1 bound to MAPK1 eventually high?"
    "Is MAPK1 bound to MAP2K1 transient?"
    "Is MAPK1-bound MAP2K1 sustained?"
    "Is STAT3 involved in apoptotic regulation?"
    "Is STAT3 involved in regulating apoptosis?"
    "Is STAT3 involved in regulating apoptosis?"
    "Is phosphorylated MAPK1 sustained?"
    "Is stat3 involved in any apoptotic pathways?"
    "Is stat3 involved in apoptotic regulation?"
    "Is stat3 involved in regulating apoptosis?"
    "Is stat3 involved in regulating apoptosis?"
    "Is the MAP2K1-MAPK1 complex formed?"
    "Is the amount of MAPK1 phosphorylated eventually high?"
    "Is the amount of phosphorylated MAPK1 sustained?"

    ))
#|
(p/s "Is STAT3 involved in apoptosis?")
(p/s "Is MAPK1-bound MAP2K1 sustained?")
(p/s "Is STAT3 involved in apoptotic regulation?")
(p/s "Is STAT3 involved in regulating apoptosis?")
(p/s "Is STAT3 involved in regulating apoptosis?")
(p/s "Is phosphorylated MAPK1 sustained?")
(p/s "Is stat3 involved in any apoptotic pathways?")
(p/s "Is stat3 involved in apoptotic regulation?")
(p/s "Is stat3 involved in regulating apoptosis?")
(p/s "Is the MAP2K1-MAPK1 complex formed?")
(p/s "Is the amount of phosphorylated MAPK1 sustained?")
  applying np-vg+ed to (#<edge15 2 bio-amount 8> #<edge10 8 sustained  9>)
  applying da/preposed+s to (#<edge2 1 be 2> #<edge16 2 sustained 9>)
(p/s "How does STAT3 affect c-fos")
(p/s "What does STAT3 regulate in the liver?")
(p/s "What does it regulate in the liver?")
(p/s "Where does STAT3 regulate the expression of c-fos?")
(p/s "what does stat regulate")
(p/s "How does MAPK1 affect BRAF?")
(p/s "How does MAPK1 affect JUND?")
(p/s "How does SETDB1 affect ADAM17?") ;; needs extended set of proteins
(p/s "How does KRAS affect MAPK3?")
(p/s "How does ITGAV affect ILK?")
(p/s "How does ITGAV affect ILK?")
(p "What apoptotic genes is stat3 upstream of?")
(p/s "What does ERBB regulate?")
(p/s "What does it regulate in liver")
(p/s "What does miR-20b-5p target")
(p/s "What does p53 regulate?")
(p/s "What does rb1 regulate")
(p/s "What does smad2 regulate")
(p/s "What does stat regulate")
(p/s "What drug could I use to target pancreatic cancer?")
(p.s "What genes is stat3 upstream from?")
(p/s "What genes is stat3 upstream of?")
(p/s "Where is STAT3 expressed?")
(p/s  "Which apoptotic genes is stat3 upstream of?")
(p/s "How does KRAS activate MAPK3?")
(p/s "How does STAT3 regulate the c-fos gene?")
(p/s "How does stat3 regulate apoptosis in the liver?")
(p/s "How does stat3 regulate apoptosis?")
(p/s "How does stat3 regulate apoptotic genes?")
(p/s "How is stat3 involved in apoptotic regulation?")
(p/s "How is stat3 involved in apoptotis regulation in the liver?")
(p/s "How is stat3 involved in regulating apoptosis?")
(p/s "How is stat3 used to regulate apoptosis?")
(p/s "How might a STAT3 mutation affect breast cancer?")
(p/s "What pathways involve SOARING?")
(p/s "Where does stat3 regulate cfos")
(p/s "What does MEK phosphorylate?")
|#


#|
(p "Consistent with the critical role of VEGF and VEGFR2 in BPD, 
  human infants who die of BPD have little or no VEGF in their 
  lung epithelium.")
Error: New type of wh-obj passed in: #<ref-category INFANT>

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

(defparameter *blocks-world-test-questions*
  '("What color is the block?"
    "Is the block on the table?"
    "Could we put on one more?"
    "Could we put on one more block?"
    "did we make a three block stack?"
    "How big is the stack?"
    "How many blocks did you add to the row?"
    "How many blocks are you adding to the row?"
    "How many blocks will you add to the row?"
    "I couldn't find a place to put the block."
    "Who should do it?"
    ))



;;;--------------
;;; WH questions
;;;--------------

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
  
  (when *alternative-wh-question-strategy*
    (record-initial-wh wh-edge)
    (return-from delimit-and-label-initial-wh-term nil))
  
  (tr :wh-walk "delimit-and-label-initial-wh-term")
  (let* ((wh-type (edge-referent wh-edge)) ;; the category 
         (next-pos (chart-position-after pos-before))
         (next-word (pos-terminal next-pos))
         (next-edge (highest-edge (pos-starts-here next-pos)))
         aux-edge
         attr-edge ;; attributes (color)
         value-edge  ;; attribute values (big)
         other-edges ;; everything else
         of? )

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
              ((eq (edge-form next-edge) category::det) ;; "where the ball is"
               ;;/// generalize to quantifiers, what else?
               (return))
              ((null (edge-referent next-edge)) ;; happens in cases like an edge over apostrophe-s
               (push next-edge other-edges))
              #+ignore
              ((wh-is-declarative-heuristics next-edge)
               ;; looking for a pronoun -- but that ok after 'of'
               ;; "Which of them are regulated by elk1"
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
           (when (edge-over-aux? aux-edge)
             (store-preposed-aux aux-edge))
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

