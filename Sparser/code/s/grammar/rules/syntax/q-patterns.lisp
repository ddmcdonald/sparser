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
  (let* ((be (edge-referent (first edges)))  ;; is
         (subj (edge-referent (second edges))) ;; Selumetinib
         (obj (edge-referent (third edges))) ;; an inhibitor of MEK1
         ;; run the core of assimilate-np-to-v-as-object. Result in an instance of 'be'
         (i (assimilate-object be obj)))
    (setq i (bind-variable 'subject subj i))
    (let ((q (make-polar-question i)))
      (make-edge-over-long-span
       start-pos end-pos
       (itype-of i)
       :rule 'make-polar-copular-question
       :form category::s ;;question
       :referent q))))
         

    
(defun make-polar-adjective-question (start-pos end-pos edges)
  (tr :wh-walk "make-polar-adjective-question")
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
    (when (> (length (all-tts start-pos end-pos)) 3)
      (setq end-pos (pos-edge-ends-at (third (all-tts start-pos end-pos)))))
    (when copular-statement
      (let ((q (make-polar-question copular-statement)))
        (make-edge-over-long-span
         start-pos end-pos
         (itype-of copular-statement)
         :rule 'make-polar-adjective-question
         :form category::s ;;question
         :referent q)))))

(defun make-polar-participle-question (start-pos end-pos edges)
  (tr :wh-walk "make-polar-participle-question")
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
         :form category::s ;;question
         :referent q)))))



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
  
  (let ((e2-form (cat-name (edge-form (second edges))))
        (e3-form (cat-name (edge-form (third edges))))
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


(defun wh-initial-four-edges/be (wh-edge edges start-pos end-pos)
  (tr :wh-walk "wh-initial-four-edges/be")
  (let ((e2-form (cat-name (edge-form (second edges))))
        (e3-form (cat-name (edge-form (third edges))))
        (e4-form (cat-name (edge-form (fourth edges)))))
    (cond
      ((and (eq e2-form 'preposed-auxiliary) ;; is
            (eq e3-form 's)                 ;; stat3 upstream
            (eq e4-form 'preposition))       ;; from
       (when *debug-questions*
         (wh-stranded-prep wh-edge (third edges) (fourth edges) start-pos end-pos)))
      (t
       (when *debug-questions*
         (break "new 4 edge wh case"))  ))))


(defun wh-stranded-prep (wh-edge main-edge prep-edge start-pos end-pos)
  "Intended for use with every case of reasonably short questions
   that end in a preposition. (Presumably not functioning as a particle
   though we don't check that these days - 8/18.)"
  (let* ((fringe-edges (right-fringe main-edge))
         (head (loop for edge in fringe-edges
                  when (takes-preposition? edge prep-edge)
                  return edge)))
    (when head
      (let* ((item (edge-referent wh-edge))
             (preposition (edge-left-daughter prep-edge))
             (variable (subcategorized-variable
                        (edge-referent head) preposition item)))
        (when variable ;; if not, should perhaps look for a lower head
          ;; Replace the prep with a proper pp which wh-edge as its
          ;; complement. Consider using the literal wh-edge.
          (let* ((pp-edge (move-np-to-stranded-prep prep-edge wh-edge))
                 (subsumed-edge head))
            (let ((rule (multiply-edges head pp-edge)))
              (when rule
                (let ((new-edge (make-completed-binary-edge
                                 head pp-edge rule)))
                  ;;/// Right now (8/12/18) this blows up the function
                  ;; extract-string-from-char-buffers as called from
                  ;; note-surface-string from complete because the
                  ;; obvious character indicies are nonesense unless
                  ;; we do something.
                  (tuck-new-edge-under-already-knit
                   subsumed-edge new-edge main-edge :right)
                  (break "pieces?")

                  ;; Attach the pp to the head, which will likely
                  ;; require a tuck.
                  ;; Formulate a question wrapper that incorporates the
                  ;; content of the wh-edge and uses the variable.
                  variable)))))))))





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

