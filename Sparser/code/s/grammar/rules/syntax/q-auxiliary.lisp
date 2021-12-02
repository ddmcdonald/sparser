;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER) -*-
;;; copyright (c) 2018-2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "q-auxiliary"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  September 2021

;; Broken out of questions.lisp for ease of development

(in-package :sparser)

;;;--------------------
;;; WH nominal clauses
;;;--------------------

;; (p/s "Tell me what proteins are phosphorylated by MEK")

(define-completion-action (category-named 's) :track-wh-information
  'track-clause-wh-information)

(defun track-clause-wh-information (edge)
  "If this clause starts with a wh-pronoun, ///and?
   Identify the wh-element it is part of and specialize 
   the referent of the edge to be a wh-nominal and
   introduce path and wh variables."

  (flet ((left-daughter-is-wh-nominal (edge)
           (let ((daughter (edge-left-daughter edge)))
             (when (edge-p daughter) ; vs. :long-span
               (let ((ref (edge-referent daughter)))
                 (itypep ref 'wh-nominal))))))

    ;; 2do: suppose there's a leading pp on this clause
    
    (if (and (not (sentence-initial? edge))
             (starts-with-wh-pronoun? edge)
             (not (memq (form-cat-name edge)
                        '(when-relative-clause))))

      (let ((bottom-edge (lowest-edge (pos-starts-here (pos-edge-starts-at edge)))))
        (unless (is-wh-pronoun? bottom-edge)
          ;; This pre-checks the test in trace-out-path-to-wh-element.
          ;; In Acumen motif #27 the subject-relative "who" is replaced with
          ;; the upstairs np, leaving no indication there had been a WH there
          (return-from track-clause-wh-information nil))
        (when (left-daughter-is-wh-nominal edge)
          (return-from track-clause-wh-information nil))
 
        (tr :wh-nominal-processing edge)
        ;; find the path between the head and the wh-element
        (multiple-value-bind (head path element)
            (trace-out-path-to-wh-element edge)
          (when (and head ;; could have been failed during the search
                     path) ;; ditto
            (let ((i (specialize-object head (category-named 'wh-nominal :error))))
              (let ((k (bind-variable 'wh-element
                                      element
                                      (bind-variable 'wh-path path i))))
                (tr :wh-nominal-interpretation k)
                (set-edge-referent edge k) ;; the key side-effect so ref. changes
                (values edge k)))))) ;; for when we trace this function
      ;;/// revise given more complex enabling conditions
      nil  ;;(tr :clause-without-wh-element edge)
      )))

(defun trace-out-path-to-wh-element (edge)
  "Given a clause ('s') edge that is known to start with a wh-pronoun,
   Confirm our starting conditions then trace up the bound-in bindings
   back to the head, accumulating the variables for the path.
   Returns the head, the path, and the wh-element individual."
  (let* ((head (edge-referent edge))
         (start-pos (pos-edge-starts-at edge))
         (ev (pos-starts-here start-pos))
         (ev-edges (all-edges-on ev))
         (bottom-edge (car ev-edges)) ;;(lowest-edge ev))
         (bottom-ref (edge-referent bottom-edge))
         (remaining-parents (cdr ev-edges)))
    (when bottom-ref
      ;; "what if" is a polyword in mid-level/discourse.lisp and needs fixing
      (assert (is-wh-pronoun? bottom-ref))
      (let* ((parent (car remaining-parents))
             (grandparent (cadr remaining-parents))
             (parent-ref (edge-referent parent))
             (det-binding (or (binds-variable parent-ref 'quantifier)
                              (binds-variable parent-ref 'has-determiner))))
        (when det-binding
          ;; in (p "Can you tell me what is in the model?")
          ;;    there's no phrase binding the wh, 
          (when (and grandparent
                     (eq (edge-category parent) (edge-category grandparent)))
            ;; When there's Chomsky-adjunction on the wh-element's edge
            ;; for some reason (///) the bound-in bindings move up with
            ;; the addition of the binding of the adjunct
            (setq parent-ref (edge-referent grandparent)))
          (let ((path (walk-up-bound-in-to-indiv parent-ref head)))
            (values head path parent-ref)))))))

(defun walk-up-bound-in-to-indiv (i-start i-end)
  ;; Walk up the bound-in links until we hit the top
  ;; accumulating variables as we go
  (declare (special *debug-questions*))
  (assert (every #'individual-p `(,i-start ,i-end)))
  (let* ((i i-start)
         (variables))
    (loop
       (let* ((bound-in (indiv-bound-in i))
              (b (car bound-in)))
         (unless bound-in
           ;; "OHIP sent me an ugly green application for temporary premium assistance, which I returned, asking again for an application for premium assistance."
           ;; This 'which' is a relative clause marker. Error is no bound-in on "I"
           #+ignore(if  *debug-questions*
             (cerror "keep going" "Null bound-in field on ~a" i)
             (warn-or-error "Null bound-in field on ~a" i))
           (return))
         (let ((var (binding-variable b))
               (j (binding-body b)))
           (tr :walking-up-binding var j)
           (push var variables)
           (when (eq j i-end) (return))
           (setq i j)
           ;;(break "WH-nominal: looping ok?: i = ~a  j = ~a" i j)
           (return-from walk-up-bound-in-to-indiv nil))))
    (nreverse variables)))

(defgeneric starts-with-wh-pronoun? (place)
  (:documentation "Is this starting location in the chart
    contain a wh-pronoun?")
  (:method ((e edge))
    (let ((p (pos-edge-starts-at e)))      
      (is-wh-pronoun? (pos-terminal p)))))


(defun lift-wh-element-from-nominal (predicate)
  "Identify and return the wh-element. Additionally add a binding
   to the wh-element linking it back to the predicate. Invoked by
   assimilate-thatcomp given a suitable operator."
  (assert (or (itypep predicate 'wh-nominal)
               (itypep predicate 'wh-question)))
  (let* ((wh (if (itypep predicate 'wh-nominal)
                 (value-of 'wh-element predicate)
                 (if (category-p (value-of 'wh predicate))
                     (find-or-make-lattice-description-for-ref-category
                      (value-of 'wh predicate))
                     (value-of 'wh predicate)))))

    (tr :lifting-wh-element wh)
    (let ((j (bind-variable 'predication  predicate wh)))
      (tr :lifting-wh-element-returns j)
      j)))


;;;---------------------------------------
;;; helper for incorporating displace aux
;;;---------------------------------------

(defun incorporate-displaced-aux-into-predicate (aux-edge predicate-edge
                                                &key ((:left left-edge))
                                                     ((:right right-edge)))
  "Adds the tense information to the predicate.
   The routine that does the work -- add-tense/aspect-info-to-head -- assumes
   that it's in a regular rule evaluation context so we need to emulate it
   by binding the left and right edges into the reference by using the
   with-referent-edge macro. These are the aux and verb-head edges.
   Returns the predicate with its additional binding."
  (with-referent-edges  (:l left-edge :r right-edge)
    (let ((aux (etypecase aux-edge
                 (edge (edge-referent aux-edge))
                 (individual aux-edge)))
          (predicate
           (etypecase predicate-edge
             (edge (edge-referent predicate-edge))
             (individual predicate-edge))))
      (if (eq (form-cat-name aux-edge) 'preposed-auxiliary)
        (if (plausibly-too-early-to-take-preposed-aux aux-edge predicate-edge)
          predicate                                 
          (add-tense/aspect aux predicate))
        (add-tense/aspect aux predicate)))))


;;;-----------------------------------------------------
;;; abstraction for looking up rules and building edges
;;;-----------------------------------------------------

(defun rule-to-edge (left-edge right-edge)
  "Packages a frequent set of actions in the q-pattern code.
   1. Determine whether there is a rule to compose the two edges,
   then 2. Make the corresponding edge.
   Returns nil if there is no rule, otherwise it returns the edge."
  (let ((rule (multiply-edges left-edge right-edge)))
    (when rule
      (make-completed-binary-edge left-edge right-edge rule))))

(defun extend-to-boundaries (head start-pos end-pos)
  "If we moved an edge out of initial position, such as a preposed-
   auxiliary, and integrated it into the chart elsewhere,
   then the tree down from the head will leave that initial position
   vacant (e.g. as seen by tts, or anything else that looks for
   edges starting at the first position in the chart.
   We paper over that problem by modifying the recorded
   position of this edge. We do -not- also modify the tree,
   just its start/end positions and their edge-vectors."
  (let ((start-ev (pos-starts-here start-pos))
        (end-ev (pos-ends-here end-pos)))
    (setf (edge-starts-at head) start-ev)
    (knit-edge-into-position head start-ev)
    (setf (edge-ends-at head) end-ev)
    (knit-edge-into-position head end-ev)
    head))
     

;;;-------------------------------
;;; auxiliaries for WH delimiting
;;;-------------------------------

;; (p/s "How important are Scc1 and SA2 phosphorylation in vivo?")
;;
(defun wrap-in-whq-attribute (wh attribute statement)
  "Make an instance of wh-question/attribute, including the statement."
  (make-wh-object wh :attribute attribute :statement statement))



(defun handle-wh-of (wh-edge wh-type of-edge other-edges)
  (declare (special *sentence-in-core*))
  ;; e.g. (p "Which of those are regulated by elk1")
  (when (> (length other-edges) 1)
    (when *debug-questions*
      (break "other-edges needs to be parsed: ~a" other-edges)))
  (let* ((q (define-or-find-individual 'wh-question/select
                :wh wh-type)))
    (if (and (edge-p (car other-edges))
               (edge-referent (car other-edges)))
      (setq q (bind-variable 'set (edge-referent (car other-edges)) q))
      (when *debug-questions*
        (push-debug `(,other-edges))
        (break "could no bind of attribute")))      
    ;; should we also make the edge?
    q))


(defun has-wh-determiner? (i)
  "Does this individual include a wh determiner, e.g. because
   is was the result of parsing 'what proteins' as an NP.
   Called from make-question-and-edge, because the np was initial
   and DA triggered question processing"
  (or
   (let ((j (or (value-of 'quantifier i)
                (value-of 'has-determiner i))))
     (itypep j 'wh-pronoun))
   (let ((quant (value-of 'quantifier i)))
     (itypep quant 'wh-pronoun))))

(defun repackage-wh-determiner (i wh-edge)
  "This call is keyed by has-wh-determiner? so can feel safe in
   rebuilding this as a wh-question individual using its 'other' slot."
  (let ((wh (or (value-of 'has-determiner i)
                ;; the next is for "which of these" etc.
                (value-of 'quantifier i)))
        (left (edge-left-daughter wh-edge)))
    (cond
      ((eq wh (edge-referent left))
       (let ((other (edge-referent (edge-right-daughter wh-edge))))
         (make-wh-object wh :other i)))
      ((let ((left-left (edge-left-daughter left)))
         ;;"what genes in the liver"
         (when left-left
           (eq wh (edge-referent left-left))))
       (let ((other (edge-referent (edge-right-daughter wh-edge))))
         (make-wh-object wh :other i)))
      (t (break "New situation. wh-edge = ~a" wh-edge)))))


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
  (declare (special *wh+n-bar*))
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
         (when *debug-questions*
           (break "More than two 'other' edges"))
         (let ((start-pos (pos-edge-starts-at (first edges))))
           (multiple-value-bind (layout edge)
               (parse-between-boundaries start-pos end-pos)
             (make-full-np wh-edge edge))))))))

(defparameter *wh+n-bar*
  (def-syntax-rule/expr '(wh-pronoun n-bar)
      :head :right-edge
      :form 'np
      :referent '(:function determiner-noun left-edge right-edge)))

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

(defun wh-is-declarative-heuristics (next-edge)
  "Called by delimit-and-label-initial-wh-term w/in its accumulation loop.
   Strictly speaking we should probably scan ahead to see if there's an
   aux before we get to a main verb, or something else that would
   signal that we're not in a question."
  (is-pronoun? next-edge)) 

;;;-----------------------------------
;;; subroutines for forming questions
;;;-----------------------------------

(defun fold-wh-into-statement (wh stmt wh-edge aux-edge stmt-edge)
  "Used by wh-initial-followed-by-modal and any others that want to
   incorporate the referent of the wh-edge ('wh') as a regular
   bound participant of the statement ('stmt')."
  (let ((stmt-form (cat-name (edge-form stmt-edge))))
    (tr :wh-fold-form stmt stmt-form)
    (case stmt-form
      (transitive-clause-without-object
       (let ((obj-var (find-subcat-var wh :object stmt)))
         (when obj-var
           (bind-variable obj-var wh stmt))))
      (vp+passive
       ;; these (always?) have a by-phrase, so their agent is bound.
       (let ((obj-var (find-subcat-var wh :object stmt)))
         (when obj-var
           (bind-variable obj-var wh stmt))))
      (vp
       ;; "Which genes are involved in apoptosis?"
       (let ((subj-var (find-subcat-var wh :subject stmt)))
         (when subj-var
           (bind-variable subj-var wh stmt))))
      ((np proper-noun)
       ;; "Which of these are kinases"
       ;; Statement isn't a predicate so we have to make it here
       (make-copular-predication wh-edge aux-edge stmt-edge))

      (s ;; "How does KRAS activate MAPK3?"
       (let ((wh-pronoun? (itypep wh 'wh-pronoun))
             (wh-category (wh-edge? wh-edge)))
         (cond
           ((and wh-pronoun?
                 (memq (cat-symbol (itype-of wh))
                       '(category::how category::why
                         category::where category::when
                         category::what))) ;; "What does it do?"
            (bind-wh-to-stmt-variable wh wh-edge stmt))
           
           (wh-category ;; "what drug" wh is a determiner
            (let ((embedded-wh (or (value-of 'quantifier wh)
                                   (value-of 'has-determiner wh))))
              ;; value is a wh-pronoun category
              (bind-wh-to-stmt-variable embedded-wh wh-edge stmt)))
           
           ((not wh-pronoun?)
            (when *debug-questions*
              (break "WH is not a wh-pronoun: ~a" wh)))
           (t (when *debug-questions*
                (break "New 's' case  WH: ~a" wh))))))
      
      (otherwise
       (when *debug-questions*
         (push-debug `(,wh ,stmt ,wh-edge ,stmt-edge))
         (break "new folding configuration: ~a" stmt-form))
       nil))))

(defun bind-wh-to-stmt-variable (wh wh-edge stmt)
  "Lookup the variable associated with this WH pronoun
   and bind the referent of the wh-edge to that variable
   on the statement, which is expected to be a perdurant."
  (unless wh (error "WH argument is nil"))
  (unless (itypep stmt 'perdurant)
    (error "stmt is not a perdurant: ~a is a ~a"
           stmt (itype-of stmt)))
  (unless (or (typep wh 'individual)
              (and (typep wh 'category) (itypep wh 'wh-pronoun)))
    (push-debug `(,wh ,wh-edge ,stmt))
    (break "WH argument isn't an individual: ~a" wh))
  (let* ((wh-pronoun (etypecase wh
                       (individual (itype-of wh))
                       (category wh)))
         (variable (value-of 'variable wh-pronoun)))
    (unless variable
      (error "No variable binding on ~a" wh-pronoun))
    (let ((r (edge-referent wh-edge)))
      (setq stmt (bind-variable variable r stmt))
      stmt)))


(defun move-np-to-stranded-prep (prep-edge np-edge)
  (when (edge-used-in prep-edge)
    (error "preposition not independent"))
  (when (edge-used-in np-edge)
    (error "np not independent"))
  (let ((rule (multiply-edges prep-edge np-edge)))
    (unless rule (error "no rule for prep+np ??"))
    (make-completed-binary-edge prep-edge np-edge rule)))



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

(defgeneric wh-edge? (edge)
  (:documentation "Does this edge reflect the use of a WH question term?")
  (:method ((e edge))
    (wh-edge? (edge-referent e)))
  (:method ((i individual))
    (cond
      ((itypep i 'wh-pronoun) i) ;; "What ..."
      (t
       (let ((value (or (value-of 'quantifier i)
                        (value-of 'has-determiner i) ;; "What genes ..."
                        ))) ;; "Which of these"
         (when value
           (cond
             ((itypep value 'wh-pronoun) t)
             ((itypep value 'demonstrative) nil) ;; "these"
             ((car (memq value `(,category::what)))
              t)
             (t
              (when *debug-questions*
                (push-debug `(,value ,i))
                (break "New determiner value: ~a" value))))))))))

