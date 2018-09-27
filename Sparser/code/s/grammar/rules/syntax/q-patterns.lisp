;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER) -*-
;;; copyright (c) 2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "q-patterns"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  August 2018

;; Broken out from questions.lisp 8/7/18 to have all the formulation
;; heuristics in one place irrespective of what invokes them.

(in-package :sparser)

;;;--------------------------
;;; polar questions (yes/no)
;;;--------------------------

(defun make-initial-there-is-edge (preposed-aux-edge)
  "Called by detect-early-information when there is a preposed auxillary
   followed by the word 'there'. We select the correct edge over the
   'there' and  form a there-exists constituent"
  (tr :wh-walk "make-initial-there-is-edge")
  (let* ((start-pos (pos-edge-starts-at preposed-aux-edge))
         (there-pos (pos-edge-ends-at preposed-aux-edge))
         (ev (pos-starts-here there-pos))
         (there-edge (loop for edge in (all-edges-on ev)
                        when (eq (edge-category edge) category::syntactic-there)
                        return edge)))
    (assert there-edge)
    (let ((rule (multiply-edges there-edge preposed-aux-edge)))
      ;; n.b. we switch the order of the edges to make the rule happy
      (assert rule)
      (let ((edge (make-completed-binary-edge preposed-aux-edge
                                               there-edge
                                               rule)))
        ;;(format t "~&there-is edge: ~a~%" edge)
        ;; add trace
        edge))))



(defun make-polar-question (statement)  
  "Abstracted constructor so it will done the same way every time."
  (tr :wh-walk "make-polar-question")
  (find-or-make-individual
   'polar-question :statement statement))


;;--- cases called from make-this-a-question-if-appropriate

(defun there-is-as-polar-question (edge)
  "We have a complete parse as a there-exists statement. Throw another
   edge over it as a question -- same as fully-spanned case, which we don't
   get because of the check for pre-posed."
  (tr :wh-walk "there-is-as-polar-question")
  (let* ((q (make-polar-question (edge-referent edge)))
         (respanning-edge
          (make-completed-unary-edge
           (edge-starts-at edge) ; starting-vector
           (edge-ends-at edge)   ; ending-vector
           'there-is-as-polar-question ; rule
           edge ; daughter
           (edge-category edge) ; category
           category::s ;; question ; form
           q))) ; referent
    respanning-edge))


;;/// need an exemplar
(defun sort-out-incompletely-parsed-there-is-q (start-pos end-pos edges)
  (if *debug-questions*
    (error "incomplete there-is question: ~a" edges)
    (warn "Incomplete there-is question: ~s"
          (string-of-words-between start-pos end-pos))))
   #+ignore (let ((e (make-edge-over-long-span
              start-pos end-pos
              (itype-of i)
              :rule 'make-polar-there-question
              :form category::s ;;question
              :referent q
              :constituents edges))) )

(defun da/preposed+s (aux-edge s-edge)
  ;;(break "aux = ~a, s = ~a" aux s)
  "Goes with DA rule for [preposed-auxiliary s ifcomp] except that
   we left off the ifcomp to be handled by separate rules."
  (tr :wh-walk "da/preposed+s")
  (let* ((s-ref (edge-referent s-edge))
         (q (make-polar-question s-ref))
         (start-pos (pos-edge-starts-at aux-edge))
         (end-pos (pos-edge-ends-at s-edge)))
    (mask-preposed-aux)
    (make-edge-over-long-span
     start-pos end-pos
     (itype-of s-ref)
     :rule 'da/preposed+s
     :form (edge-form s-edge) ;; category::question
     :referent q)))


(defun make-polar-copular-question (start-pos end-pos edges)
  "Construct an instance of 'be' by directly invoking the rules"
  ;; (is) (Selumetinib) (an inhibitor of MEK1)
  (tr :wh-walk "make-polar-copular-question")
  (let* ((be (edge-referent (first edges)))    ;; is
         (subj (edge-referent (second edges))) ;; Selumetinib
         (obj (edge-referent (third edges)))   ;; an inhibitor of MEK1
         (be+subj
          (let ((*right-edge-into-reference* (first edges))
                (*left-edge-into-reference* (second edges)))
            (assimilate-subject subj be)))
         ;;(push-debug `(,be ,subj ,obj ,be+subj)) (break "1")
         (subj-vg-edge
          (when be+subj
            ;; bad subj in "Is the first one a kinase"
            (make-binary-edge/explicit-rule-components
             (first edges) (second edges)
             :rule-name 'polar-copula-question-subject
             :form category::transitive-clause-without-object
             :category category::be
             :referent be+subj)))
         (copular-meaning
          (when subj-vg-edge
            (let ((*right-edge-into-reference* (third edges))
                  (*left-edge-into-reference* subj-vg-edge))
              (assimilate-object (edge-referent subj-vg-edge) obj))))
         (copula-edge
          (when (and subj-vg-edge copular-meaning)
            (make-binary-edge/explicit-rule-components
             subj-vg-edge (third edges)
             :rule-name 'polar-copula-question-object
             :form category::s
             :category category::be
             :referent copular-meaning))))
    ;;(push-debug `(,be ,subj ,obj ,subj-vg-edge ,copula-edge ,copular-meaning))
    (when copula-edge
      (make-polar-edge copula-edge))))
         
(defun make-polar-edge (statement-edge)
  (let* ((start-vec (edge-starts-at statement-edge))
         (end-vec (edge-ends-at statement-edge))
         (pred (edge-referent statement-edge))
         (edge
          (make-completed-unary-edge
           start-vec end-vec
           'make-polar-edge ;; rule
           statement-edge
           (itype-of (edge-referent statement-edge))
           category::s ;; form
           (make-polar-question (edge-referent statement-edge)))))
    edge))
    
(defun make-polar-adjective-question (start-pos end-pos edges)
  (tr :wh-walk "make-polar-adjective-question")
  (when (> (length (all-tts start-pos end-pos)) 3)
    (setq end-pos (pos-edge-ends-at (third (all-tts start-pos end-pos)))))
  (let* ((be (edge-referent (first edges)))  ;; is
         (np (edge-referent (second edges))) ;; the ball
         (adj (edge-referent (third edges))) ;; red
         (copular-adj
          (let ((*left-edge-into-reference* (first edges))
                (*right-edge-into-reference* (third edges)))
            (make-copular-adjective be adj)))
         (copular-adj-edge
          (when copular-adj
            (make-edge-over-long-span
             start-pos end-pos
             (itype-of copular-adj)
             :rule 'make-polar-adjective-question
             :form category::adjg ;;question
             :referent copular-adj)))
         (copular-pred
          (when copular-adj
            (let ((*left-edge-into-reference* (first edges))
                  (*right-edge-into-reference* copular-adj-edge))
              (assimilate-subject np copular-adj nil))))
         (copular-pred-edge
          (when copular-pred
            (make-edge-over-long-span
             start-pos end-pos
             (itype-of copular-pred)
             :rule 'make-polar-adjective-question-internal
             :form category::s
             :referent copular-pred))))
    ;; this is bound since make-copular-adjective needs to know the edge for the "BE"
    ;; to check if it is an infinitive
    (make-polar-edge copular-pred-edge)))

(defun make-polar-participle-question (start-pos end-pos edges)
  (tr :wh-walk "make-polar-participle-question")
  (let* ((be (edge-referent (first edges)))  ;; is
         (np (edge-referent (second edges))) ;; the BRAF-NRAS complex
         (participle (edge-referent (third edges))) ;; sustained in time
         ;; Code to ensure that all introduced semantic individuals have corresponding edges
         (participle-vp
          (let ((*left-edge-into-reference* (first edges)))
            (check-passive-and-add-tense/aspect be participle)))
         (participle-vp-edge
          (when participle-vp
            (make-edge-over-long-span
             start-pos end-pos
             (itype-of participle-vp)
             :rule 'make-polar-participle-question-2
             :form category::vp ;;question
             :referent participle-vp)))
         ;; Code to ensure that all introduced semantic individuals have corresponding edges
         (participle-statement
          (when participle-vp (assimilate-subject np participle-vp nil)))
         (participle-statement-edge
          (when participle-statement
            (make-edge-over-long-span
             start-pos end-pos
             (itype-of participle-statement)
             :rule 'make-polar-participle-question
             :form category::s ;;question
             :referent participle-statement))))

    (when participle-statement-edge
      (make-polar-edge participle-statement-edge))))



;;;-----------------------------------------------------------------
;;; wh-initial? dispatches from make-this-a-question-if-appropriate 
;;;-----------------------------------------------------------------

(defun wh-initial-two-edges (wh-initial? edges start-pos end-pos)
  "One edge after the WH edge. Take it to be the statement."
  (tr :wh-walk "wh-initial-two-edges")
  (let* ((wh (edge-referent wh-initial?))
         (complement (edge-referent (second edges)))
         (q (compose wh complement))) ;;//// do the fold manouver
    ;; "Which pathways use these" -- though that ex has problems
    (if (null q)
      (when *show-wh-problems*
        (error "Composition with ~a failed" complement))
      (make-edge-over-long-span
       start-pos end-pos
       (edge-category (second edges)) ;; ??
       :rule 'make-this-a-question-if-appropriate
       :form category::s ;;question
       :referent q))))


(defun wh-initial-three-edges (wh-edge edges start-pos end-pos)
  "Dispatch over DA patterns where there are two edges after the WH edge."
  (tr :wh-walk "wh-initial-three-edges")
  (when (not (every #'edge-p edges))
    (if *show-wh-problems*
      (lsp-break "something in 'edges' isn't an edge")
      (when *warn-when-can-not-formulate-question*
         (warn "something in 'edges' isn't an edge: ~a" edges)))
    (return-from wh-initial-three-edges nil))
  
  (let ((e2-form (form-cat-name (second edges)))
        (e3-form (form-cat-name (third edges)))
        (other (value-of 'other (edge-referent wh-edge))))
    ;;(lsp-break "check values")
    (cond
      ((and (eq e2-form 'vp) ;; stranded preposition
            (preposition-category? (third edges))
            other)
       ;; The question is who takes that preposition, which determines
       ;; what the corresponding declarative form would be.
       ;; It could be any of the heads along the right spine of VP
       ;; so it may well have been buried -- classic DA
       (if *show-wh-problems*
         (lsp-break "Figure out whether ~a needs reformulation" (second edges))
         (when *warn-when-can-not-formulate-question*
           (warn "Standed preposition wh question case needs more work"))))


      ;; Reduced relative: could consider a DA rule here, but to do the 
      ;; right thing we need to reach into the WH phrase
      ;;//// test on attributes, test on compound (multi-word) other's
      ((and other
            (eq e2-form 'vp+ed)
            (eq e3-form 'vp))
       (let* ((other-edge (find-edge-for-wh-other wh-edge other))
              (rule (multiply-edges other-edge (second edges))))
         (when rule
           (let ((new-edge (make-completed-binary-edge other-edge (second edges) rule))
                 (old-wh (edge-referent wh-edge)))
             ;; swap out the existing other-edge for this new one
             (rebuild-wh-other-edge wh-edge other-edge new-edge)
             ;; update the value of other
             (let* ((new-ref (edge-referent new-edge))
                    (new-wh-referent (bind-variable 'other new-ref old-wh)))
               (setf (edge-referent wh-edge) new-wh-referent)
               ;; at this point we have wh+vp so we dispatch to have it handled
               (wh-initial-two-edges wh-edge (list wh-edge (third edges))
                                     start-pos end-pos))))))
      
 
      ((edge-over-aux? (second edges)) ;; "How many blocks did you add to the row?"
       (wh-initial-followed-by-modal wh-edge edges start-pos end-pos))
      
      ;; (and (eq e2-form vg+passive)
      ;;      (and (eq e3-form pp)
      ;;           == prep is 'by'
      
      ((and (eq e2-form 'vg+passive)
            (eq e3-form 'vp))
       (wh-with-reduced-relative wh-edge edges start-pos end-pos))

      ((and (eq e2-form 'preposed-auxiliary)
            (eq e3-form 'np))
       ;; "Which pathways use these"
       (revert-preposed-aux))
      
      (t
       (if *show-wh-problems*
         (lsp-break "Could not resolve 3 edges into a WH question: ~a" edges)
         (when *warn-when-can-not-formulate-question*
           (warn "Could not resolve 3 edges into a WH question: ~a" edges)))))))


;; (p/s "What genes is stat3 upstream of?")
;; (p/s "What tissues is STAT3 expressed in?") <== doesn't tuck
;; 
(defun wh-initial-four-edges/be (wh-edge edges start-pos end-pos)
  (tr :wh-walk "wh-initial-four-edges/be")
  (let ((e2-form (form-cat-name (second edges)))
        (e3-form (form-cat-name (third edges)))
        (e4-form (form-cat-name (fourth edges))))
    (cond
      ((and (or (eq e2-form 'preposed-auxiliary) ;; is
                (eq e2-form 'verb+present))
            (eq e3-form 's)                  ;; stat3 upstream
            (or (eq e4-form 'preposition)           ;; from
                (eq e4-form 'spatial-preposition))) ;; in
       (wh-stranded-prep wh-edge (third edges) (fourth edges) start-pos end-pos))
      (t
       (when *debug-questions*
         (break "new 4 edge wh case"))  ))))


(defun wh-stranded-prep (wh-edge main-edge prep-edge start-pos end-pos)
  "Intended for use with every case of short questions
   that end in a preposition. (Presumably not functioning as a particle
   though we don't check that these days - 8/18.)"
  ;; We want to compose the moved 'item' with the preposition
  ;; whose complement it would have been in the declarative form
  ;; of the question. We can't use the obvious means of composing
  ;; the two edges because that scrambles the chart and messes up
  ;; the mapping between edges and the character-level source.
  ;; Instead we do the referent-level operation to get the
  ;; referent we would have had by composing the edges,
  ;; and make a new edge -- just over the preposition -- with
  ;; that referent.
  (let* ((fringe-edges (right-fringe main-edge))
         (head-edge (loop for edge in fringe-edges
                       when (takes-preposition? edge prep-edge)
                       return edge)))
    (when head-edge
      (let* ((item (edge-referent wh-edge))
             (preposition (edge-left-daughter prep-edge))
             (parent-of-head (edge-used-in head-edge))
             (variable (subcategorized-variable
                        (edge-referent head-edge) preposition item)))
        ;; If this is the correct head, the variable will have a value.
        ;; /// Else keep moving downward
        (when variable
          ;; make the edge over the prep+item
          (let ((pp-rule (multiply-edges prep-edge wh-edge)))
            (unless pp-rule (error "no rule for prep+np ??"))
            (let* ((rule-category (cfr-category pp-rule))
                   (category (etypecase rule-category
                               (category rule-category)
                               (symbol
                                (if (eq :syntactic-form rule-category) ;; form rule
                                  (cfr-form pp-rule)
                                  (error "Category of ~a is unrecognized symbol" pp-rule)))))                               
                   (pp-edge (make-chart-edge
                             :category category
                             :form (cfr-form pp-rule)
                             :rule pp-rule
                             :starting-position (pos-edge-starts-at prep-edge)
                             :ending-position (pos-edge-ends-at prep-edge)
                             :left-daughter prep-edge
                             :right-daughter wh-edge
                             :ignore-used-in t)))   
              (let ((rule (multiply-edges head-edge pp-edge)))
                ;; compose the head and the pp
                (unless rule (error "No rule for ~a + ~a" head-edge pp-edge))
                (let* ((extended-head-edge
                        (make-completed-binary-edge head-edge pp-edge rule))
                       (subsumed-edge head-edge) ;; rename to make tuck clearer
                       (new-edge extended-head-edge)
                       (dominating-edge parent-of-head))
                  (when parent-of-head
                    (tuck-new-edge-under-already-knit
                     subsumed-edge new-edge dominating-edge :right))
                  (if (= 3 (length (treetops-between start-pos end-pos)))
                    ;; All the treetops are used in part of the main edge
                    ;; but need an edge over it all
                    (make-chart-edge
                     :category (edge-category main-edge)
                     :form category::s
                     :rule 'wh-stranded-prep
                     :starting-position start-pos
                     :ending-position end-pos
                     :referent (edge-referent main-edge)
                     :constituents (treetops-between start-pos end-pos)
                     :ignore-used-in t)
                    (when *debug-questions*
                      (push-debug `(,new-edge ,head-edge))
                      (break "Wrong number of edges to cover"))))))))))))



;; (p "where should I put the block?")
;;
(defun wh-initial-followed-by-modal (wh-edge edges start-pos end-pos)
  "The second argument is an aux or a modal that has to be
   folded in to the statement (third edge) for its tense or
   aspect contribution. Not bothering to explicitly hook
   the aux edge into the tree."
  (tr :wh-walk "wh-initial-followed-by-modal")
  (let ((wh (edge-referent wh-edge))
        (aux (edge-referent (second edges)))
        (stmt (edge-referent (third edges))))
    (with-referent-edges (:l (second edges) :r (third edges))
      (setq stmt (add-tense/aspect-info-to-head aux stmt)))
    (let ((q (fold-wh-into-statement wh stmt wh-edge (third edges))))
      (when q
        (make-edge-over-long-span
         start-pos end-pos
         (edge-category (third edges)) ;; ??
         :rule 'wh-initial-followed-by-modal
         :form category::s ;;question
         :referent q
         :constituents edges)))))
 

;; "Which genes regulated by stat3 are kinases?"
;;
(defun wh-with-reduced-relative (wh-edge edges start-pos end-pos)
  "The second edge is a reduced relative, so the wh-edge had better have
   something to attach it to."
  (tr :wh-walk "wh-with-reduced-relative")
  (let* ((wh-object (edge-referent wh-edge))
         (head-np (value-of 'other wh-object))
         (reduced-edge (second edges))
         (main-verb-edge (third edges)))
    (unless head-np (lsp-error "no 'other' in ~a" wh-object))
    ;; compose the head & relative
    ;; and compose that with the vp
    (if *show-wh-problems*
      (lsp-break "DA should do this")
      (when *warn-when-can-not-formulate-question*
        (warn "DA should do question with reduced relative")))))


;;;-------------------------
;;; from other entry points
;;;-------------------------

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
  (tr :wh-walk "apply-question-marker")
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
           
           ((itypep vg 'do)
            ;; (p/s "What proteins does PLX-4720 target?")
            (if *debug-questions*
              (break "DA do -- two edges: ~a, ~a" vg-edge np-edge)))

           (t
            (if *debug-questions*
              (lsp-break "Don't know how to formulate a wh question whose vg is ~a" vg)
              (warn "Don't know how to formulate a wh question whose vg is ~a" vg))))))


;; "What genes does lung cancer target?"
(defun apply-question-displaced-vg (wh-edge vg1-edge np-edge vg2-edge)
  "Goes with DA pattern [question-marker vg np vg] which is one consituent
   longer than the pattern for apply-question-marker. The first vg
   is very likely an inverted auxiliary, which should be applied to
   the second vg that is the main verb.
     To get this to parse we have to elevate the second vg to be a vp
   for which there is a rule (no rule for ng+vg). We want this to get
   handled by assimilate-subject, and there probably via the checks in
   transitive-vp-missing-object?"
  (declare (special category::vp))
  (tr :wh-walk "apply-question-displaced-vg")
  (cond
    ((itypep (edge-referent vg1-edge) 'do)
     ;;(break "stranded vg do - ~a" vg2-edge)
     ;; These cases don't set the preposed aux, so the vg segment-finished
     ;; action will have taken up the tense from the do, but not connected the edge.
     (let ((vg2-tweaked (compose-discontiuous-aux vg1-edge vg2-edge)))
       ;; promote the edge to VP
       (setf (edge-form vg2-tweaked) category::vp)
       vg2-tweaked))
    (t
     (when *debug-questions*
       (break "The 1st vg is of type ~a" (itype-of (edge-referent vg1-edge)))))))



;; This is the second time around after we're assembled
;; the pieces of the question. We can now set it up.
;; The call to compose is in make-subordinate-clause
;;   (p/s "What color is the block?")

(def-k-method compose ((wh category::wh-question) (i individual))
  (tr :wh-walk "compose wh-question + individual")
  (add-statement-to-wh-question wh i))

(def-k-method compose ((wh category::wh-question/attribute) (i individual))
  (tr :wh-walk "compose wh-question/attribute + individual")
  (add-statement-to-wh-question wh i))

(defun add-statement-to-wh-question (wh stmt)
  (declare (special category::question))
  (let ((q (extend-wh-object wh :statement stmt)))
    (revise-parent-edge :form category::question
                        :referent q)
    (tr :wh+individual-method q)
    q))


;;;-----------------------
;;; preposed-of questions
;;;-----------------------

(defun dig-for-embedded-which (spanning-edge)
  "This depends on just what the rules that formed the edge have done.
 Any change to the attach-leading-pp-to-clause DA function or to
 compose-wh-with-vp that fends off the relative clause interpretation
 could effect the heuristic walk done here."
  (when (eq (edge-rule spanning-edge) 'attach-leading-pp-to-clause)
    (let ((top-edges (edge-constituents spanning-edge)))
      (when (= 3 (length top-edges))
        (let* ((main-edge (third top-edges))
               (wh-edge (edge-left-daughter main-edge)))
          (when (eq (edge-form wh-edge) category::wh-pronoun)
            ;; respan the edge, having moved the parts back together
            (let* ((pp-edge (first top-edges))
                   (p-obj-edge (edge-right-daughter pp-edge))
                   (vp-edge (edge-right-daughter main-edge))
                   (vp (edge-referent vp-edge))
                   (open-var (open-core-variable vp))
                   (rule (multiply-edges p-obj-edge vp-edge)))
              ;; Open-core-variable returns the first 'subject' option
              ;; that it encounters in the list, which happens to be
              ;; wrong for "regulate"
              (when rule
                (let* ((edge (make-completed-binary-edge 
                              p-obj-edge vp-edge rule))
                       (i (edge-referent wh-edge))
                       (new-subj-edge (edge-left-daughter edge))
                       (j (edge-referent new-subj-edge)))
                  ;; fold-in WH-element
                  (let ((k (bind-variable 'has-determiner i j))
                        (s (edge-referent edge)))
                    (set-edge-referent new-subj-edge k)
                    ;; k is the new value for the subject

                    (let ((modified-s (rebind-value j k s)))
                      (set-edge-referent edge modified-s)

                      ;; We have stranded the initial 'of' and the
                      ;; interior ',' but to make the downstream
                      ;; per-sentence operations, often based on
                      ;; all-tts, the start of the new edge has
                      ;; to be the same as the start of the original
                      ;; spanning-edge.
                      (stipulate-edge-position (pos-edge-starts-at spanning-edge)
                                               (pos-edge-ends-at edge)
                                               edge)
                      edge)))))))))))
          

