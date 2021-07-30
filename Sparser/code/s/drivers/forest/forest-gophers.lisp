;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "forest-gophers"
;;;   Module:  "drivers;forest:"
;;;  Version:  March 2021

;; Initiated 8/30/14. To hold predicates and other little computations
;; done by the forest-level sweeping and island-driving. Also a good
;; place to put the local state variables.
;; RJB 12/21/2014 Updated there-are-loose-nps?
;; since we run the check for NP extension with OF before this method is called,
;;  the original set of loose NPs may have been extended and you have to use the extended NP
;; 1/30/15 Moved tt and prior-tt to be local

(in-package :sparser)

;;;-----------------
;;; state variables
;;;-----------------

(defvar subject-seen? nil)
(defvar main-verb-seen? nil)
(defvar waiting-for-non-verb nil
  "The treetop over a verb might be an edge-vector containing
   edges for different interpretations of the verb. That means
   that we can't set main-verb-seen? until we've looped around
   and encountered an edge that isn't a verb")
(defvar nps-seen nil
  "Initialized in clear-sweep-sentence-tt-state-vars, contains the edge
   for each np (each type of form listed in the sweep leading to
   the catalog NP call, particularly pronouns) along with the set of
   properties we can deduce about them.")
(defvar count-past-verb nil
  "draft way to see how many constituents past the verb
   the next tt is")

(defun clear-sweep-sentence-tt-state-vars ()
  (declare (special nps-seen)) ; in sweep.lisp
  (setq subject-seen? nil
        main-verb-seen? nil
        waiting-for-non-verb nil
        nps-seen nil
        count-past-verb nil))

;;;----------------------------------------
;;; setting and getting fields of a layout
;;;----------------------------------------

(defun set-subject (tt)
  (declare (special subject-seen?))
  (tr :setting-subject-to tt)
  (setf (subject (layout)) tt)
  (setq subject-seen? t))


(defun push-loose-clauses (tt)
  (push tt (clauses (layout))))

(defun there-are-loose-clauses ()
  (let ((original-list  (clauses (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun push-loose-subj+verb (tt)
  (push tt (subj+verb (layout))))

(defun there-are-subj+verbs ()
  (let ((original-list (subj+verb (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))

(defun set-main-verb (tt)
  (let ((pending-verbs (main-verb (layout))))
    (tr :setting-mvb-to tt)
    (setf (main-verb (layout))
          (cons tt pending-verbs))
    (tr :waiting-on-non-verb)
    (setq waiting-for-non-verb t)))

(defgeneric treetop-over-a-verb? (tt)
  (:documentation "Assuming this treetop dominates a verb,
   return the edge(s) for the it.")
  (:method ((edge edge))
    (when (or (vg-category? edge)
              (verb-category? edge))
      edge))
  (:method ((ev edge-vector))
    (loop for e in (all-edges-on ev)
       when (treetop-over-a-verb? e)
       collect e))
  
  (:method ((wd word)) ;; DAVID -- what causes this?
    nil)
  (:method ((empty null)) ; preposition is probably initial
    nil)
  )

(defun push-post-mvs-verbs (tt)
  (push tt (post-mvb-verbs (layout))))

(defun there-are-post-mvb-verbs? ()
  (let ((original-list (post-mvb-verbs (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))

(defun push-post-verb-tt (tt)
  (push tt (post-verb-tt (layout))))

(defun post-mvb-tt ()
  (post-verb-tt (layout)))

(defun push-verb-phrase (tt)
  (push tt (verb-phrases (layout))))

(defun there-are-verb-phrases ()
  (let ((original-list (verb-phrases (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun push-loose-np (tt)
  (push tt (loose-nps (layout))))

(defun there-are-loose-nps? ()
  (declare (special category::np))
  (let ((original-list (loose-nps (layout))))
    (loop for edge in original-list
      unless (and
              (edge-used-in edge)
              ;; since we run the check for NP extension with OF before this point,
              ;;  the original set of loose NPs may have edges that are 
              (not (eq category::np (edge-form (edge-used-in edge)))))
      collect 
      (or
       (edge-used-in edge)
       edge))))


(defun push-pronoun (tt)
  (push tt (included-pronouns (layout))))

(defun there-are-pronouns ()
  (included-pronouns (layout)))


(defun push-loose-adjective (tt)
  (push tt (loose-adjectives (layout))))

(defun there-are-loose-adjectives? ()
  (let ((original-list (loose-adjectives (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun push-loose-adverb (tt)
  (setf (loose-adverbs (layout)) tt))

(defun there-are-loose-adverbs ()
  (let ((original-list (loose-adverbs (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun push-preposition (tt prior-tt)
  "Check for whether we're adjacent to a verb and that this prep
   is bound to it. If that's the case, create the corresponding
   edge (see setup-bound-preposition). If we aren't, or if the verb
   doesn't bind this preposition, then push the prep-edge on the
   prepositions field of the layout."
  ;;(push-debug `(,tt ,prior-tt))
  (if (treetop-over-a-verb? prior-tt)
    (let ((verb-edges (ensure-list (treetop-over-a-verb? prior-tt))))
      (loop for v in verb-edges
         as rule = (multiply-edges v tt)
         when rule do
           (let ((edge (execute-one-one-rule rule v tt)))
             (tr :bound-prep-to-verb v tt edge))))    
    (push tt (prepositions (layout)))))

(defun there-are-prepositions? ()
  (let ((original-list (prepositions (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))

(defun find-preposition (edge)
  ;; usually the preposition is a literal, but the scare quotes
  ;; around 'off' in J6 complicate the matter. See cover-scare-quotes
  ;; and the scare-quote no-space pattern. 
  (cond
   ((one-word-long? edge)
    (edge-left-daughter edge))
   ((word-p (edge-left-daughter edge))
    (edge-left-daughter edge))
   ((eq (edge-rule edge) :respan-edge-around-one-word)
    ;; then we know what form it has
    (let ((prep-edge (edge-left-daughter edge)))
      (edge-left-daughter prep-edge)))
   ((edge-p (edge-left-daughter edge))
    ;; from a polyword. J10 has "such as" from words/conjunctions.lisp
    (edge-category (edge-left-daughter edge)))
   (t (push-debug `(,edge))
      (break "Don't know how to find the preposition in~a" edge))))
  


(defun push-of (tt)
  (push tt (of-mentions (layout))))

(defun there-are-of-mentions? ()
  (let ((original-list (of-mentions (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun starts-with-prep? ()
  (when (layout) ; nil during some phases
    (starts-with-prep (layout))))


(defun push-prepositional-phrase (tt)
  (push tt (prepositional-phrases (layout))))

(defun there-are-prepositional-phrases ()
  (let ((original-list (prepositional-phrases (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun push-conjunction (tt)
  (push tt (conjunctions (layout))))

(defun there-are-conjunctions? ()
  (let ((original-list (conjunctions (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))

(defun push-subordinate-conjunction (tt)
  (push tt (subord-conj (layout))))

(defun there-are-subordinate-conjunctions? ()
  (let ((original-list (subord-conj (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun push-parentheses (tt)
  (push tt (parentheses (layout))))

(defun there-are-parentheses? ()
  (parentheses (layout)))


(defun push-that (tt)
  (push tt (includes-that (layout))))

(defun there-is-a-that? ()
  (includes-that (layout)))


(defun push-subcat (tt)
  (push tt (known-subcat-pattern (layout))))

(defun there-are-known-subcat-patterns? ()
  (known-subcat-pattern (layout)))


;;;--------------
;;; tree walkers
;;;--------------

(defgeneric collect-edge-parents (base-edge)
  (:documentation "Make a list of the sequence of parent edges
    above the base. Edges are return in order from the lowest
    tp the highest.")
  (:method ((base edge))
    (let ((visited `(,base))
          (daughter base)
          parent  parents )
      (loop
         (push daughter visited)
         (setq parent (edge-used-in daughter))
         (when (null parent) ;; we're at the top
           (return))
         (if (memq parent visited) ;; we're about to loop
           (return)
           (push parent parents))
         (setq daughter parent))
      (nreverse parents))))

#| Original version that loops if the edges themselves are
   in a loop
    (let ((parent (edge-used-in base)))
      (when parent
        (cons parent (collect-edge-parents parent)))) |#

(defgeneric search-tree-for-referent (edge value)
  (:documentation "Gradually walk down the binary tree of
    edges starting at edge until you reach a daughter
    that satisfies the value. If the value is an individual
    then 'satisfies' means having that individual as
    its referent.")
  (:method ((edge edge) (i individual))
    (let ((test (lambda (edge)
                   (eq (edge-referent edge) i))))
      (search-edge-tree edge test))))
        
(defun search-edge-tree (edge test-fn)
  (etypecase edge
    (word) ;; terminal ignore
    (polyword) ;; ditto
    (symbol) ;; ditto
    (edge
     (if (funcall test-fn edge)
       edge ;; success
       (else
         (or (search-edge-tree
              (edge-left-daughter edge) test-fn)
             (search-edge-tree
              (edge-right-daughter edge) test-fn)))))))
           

(defgeneric search-tree-for-type (edge category)
  (:documentation "Walk through binary tree of edges until you
    encounter an edge referent of a designated category as judged 
    by itypep. Return that edge.")
  (:method ((edge edge) (cat-name symbol))
    (search-tree-for-type edge (category-named cat-name :error)))
  (:method ((edge edge) (c category))
    (let ((test (lambda (edge) (itypep (edge-referent edge) c))))
      (catch :type-search
        (research-edge-tree edge test)))))

(defun research-edge-tree (edge test-fn &optional visited)
  "Written with different search pattern than search-edge-tree
   as an experiment (which could merge now). Copes with problem
   of long spans where the right daughter has no information but
   there will likely be a recorded list of constituents."
  (when (memq edge visited) ;; we're looping
    ;;(break "edge is looping: ~a" edge)
    (throw :type-search nil))
  (etypecase edge
    (word nil) ;; terminal ignore
    (polyword nil) ;; ditto
    (symbol nil) ;; ditto
    (edge
     (when (funcall test-fn edge)
       (unless (eq (edge-cat-name edge) 'lambda-expression)
         ;; skip over predication edges
         (throw :type-search edge)))
     (setq visited (cons edge visited))
     (let ((left (edge-left-daughter edge))
           (right (edge-right-daughter edge))
           (consitituents (edge-constituents edge)))
       (cond
         (consitituents
          (loop for e in consitituents
             do (research-edge-tree e test-fn visited)))
         ((and (edge-p left) (edge-p right))
          (research-edge-tree left test-fn visited)
          (research-edge-tree right test-fn visited))
         ((edge-p left)
          (research-edge-tree left test-fn visited))
         ((edge-p right)
          (research-edge-tree right test-fn visited)))))))
 


(defun find-head-word (tt)
  "Walk down the head line (not so obvious) and return
   the word at the bottom, e.g. the verb."
  (let ((head (walk-down-right-headline tt)))
    ;; walk-down-right-headline can return a word
    (when head
      (if (word-p head)
          head
          (let ((left-daughter (edge-left-daughter head)))
            ;; There was a complaint here if the walk didn't
            ;; return an edge whose left-daughter was not a word.
            ;; Removed it 12/12/14 in favor or returning nil
            ;; in that case.
            (when (word-p left-daughter)
              left-daughter))))))


(defun find-word-under (edge)
  "We have an edge, and we want the word that led to it, which could
   be daughter edges removed. We walk down left-daughter's until
   we get to a word. Motivating case is abbreviations: 'Inc.'"
  (etypecase edge
    (word edge)
    (polyword edge)
    (edge (let ((daughter (edge-left-daughter edge)))
            (find-word-under daughter)))))
            


(defun walk-down-right-headline (edge)
  "Given an edge, presumed to be the result of a binary composition,
   walk down its right-daughter chain until you reach a edge that
   single term, which we return."
  (let ((daughter (edge-right-daughter edge)))
    (when daughter
      (cond
	((edge-p daughter)
	 (walk-down-right-headline daughter))
        ((word-p daughter)
         daughter)
	((symbolp daughter)
	 (case daughter
	   ((:digit-based-number :single-term :single-digit-sequence
	     :literal-in-a-rule :context-sensitive
             :morphology-based-edge :proper-name)
	    edge)
	   (:long-span
	    (let ((constituents (edge-constituents edge)))
	      (unless constituents (error "no constituents on long span ~a" edge))            
	      (let ((last-constituent (car (last constituents))))
		(etypecase last-constituent
		  (word nil)
		  (edge
		   (if (eq (edge-right-daughter last-constituent) :single-term)
		       last-constituent
		       (walk-down-right-headline last-constituent)))))))
	   (t (push-debug `(,edge ,daughter))
	      (error "Unexpected symbol in headline walk: ~s" daughter))))
	(t (push-debug `(,edge ,daughter))
	   (error "Unexpected case in headline walk: ~s" daughter))))))


(defun right-fringe (base)
  "Accumulate and return the edges that lie on the right fringe
   down from the input edge."
  (let ((daughter (edge-right-daughter base)))
    (etypecase daughter
      (null)
      (word (list base))
      (symbol (list base)) ;;/// extend for long edges
      (edge (cons base (right-fringe daughter))))))

(defgeneric left-fringe (base)
  (:method ((e edge))
    (let ((daughter (edge-left-daughter e)))
      (etypecase daughter
        (null)
        (word (list e))
        (edge (cons e (left-fringe daughter)))))))
   



(defun find-copular-vp (vp-edges)
  (loop for edge in vp-edges
    when (copular-vp edge)
    return edge))
  
(defun find-non-copular-vps (vp-edges)
  (loop for edge in vp-edges
    unless (copular-vp edge)
    collect edge))

(defun copular-vp (edge)
  ;; The main verb under this edge is a form of the verb
  ;; 'to be' or its equivalent (seems, appears, ...)
  (declare (special *the-category-to-be*))
  (let ((verb-edge (find-verb edge)))
    (when verb-edge
      (when (eq (edge-category verb-edge) *the-category-to-be*)
        verb-edge))))


(defun find-verb (edge)
  "Caller believes there ought to be an edge somewhere along the tree
   that's rooted on this edge. Walks down recursively until it either
   finds it or returns nil if it's heuristically sure there isn't one."
  (declare (special category::pp))
  (let ((form (edge-form edge)))
    (unless (or (vp-category? form)
                ;; this is for predication edges formed over vp+ing as
                ;; in "suggesting that terminally differentiated
                ;; myotube nuclei are competent "
                (eq (edge-form-name edge) 'lambda-form))
      (push-debug `(,edge))
      (error "Not a VP category: ~a in e~a"
             form (edge-position-in-resource-array edge)))
    (cond
      ((eq (edge-rule edge) 'add-adjunctive-pp)
       (find-verb (edge-left-daughter edge)))

      ((and (verb-category? (edge-form edge))
            (null (edge-left-daughter edge))) ;; e.g. have → "have"
       edge)

      ((and (vp-category? (edge-form edge))
            (or (word-p (edge-left-daughter edge))
                (polyword-p (edge-left-daughter edge))
                ;; "the drug up-regulates..."
                (polyword-p (edge-category (edge-left-daughter edge)))))
       edge)
      
      ((and (vp-category? (edge-form (edge-left-daughter edge)))
            (vp-category? (edge-form (edge-right-daughter edge))))
       ;; "won't be" -- switch to the right side
       (find-verb (edge-right-daughter edge)))
      
      ((eq (form-cat-name edge) 'subj+verb) ; 'there' construction
       (let ((right-daughter (edge-right-daughter edge)))
         (if (verb-category? right-daughter)
           right-daughter
           (find-verb right-daughter))))
      
      ((member (edge-rule edge) '(attach-to-comp-comma-to-s
                                  attach-trailing-participle-to-clause-with-comma))
       (find-verb (car (last (edge-constituents edge)))))
      
      (t
       (let* ((left (edge-left-daughter edge))
              (left-form (edge-form left))
              (right (edge-right-daughter edge))
              (right-form (when (edge-p right) ;; vs. a symbol
                            (edge-form right))))
         (cond
           ((eq (edge-cat-name edge) 'event-relation)
            nil)
           ((eq (edge-form-name left) 'pp)
            (let ((vp-edge (loop for e in (edge-constituents edge)
                                 when (vp-category? (edge-form e))
                                 do (return e))))
              (find-verb vp-edge)))
           ((vp-category? left-form)
            (find-verb left))
           ((and right-form (vp-category? right-form))
            (find-verb right))
           ((eq left-form (category-named 's))
            (find-verb left))
           ((eq left-form (category-named 'adjective)) ;; "responsible"
            left)
           ((verb-category? right) ;; "is activated"
            right)
           ((eq right :long-span) ;; it's hopeless -- parse was odd though
            ;; "the amount of MAPK1 phosphorylated "
            nil)

           (t (push-debug `(,left ,right ,left-form ,right-form))
              ;;(print `(can't find verb on edge ,edge)) 
              (break "find-verb: new case")
              nil)))))))



(defun rightmost-np-under-s (tt)
  ;; Assumes we're starting at s, so add a check
  (let ((right-daughter (edge-right-daughter tt)))
    (when right-daughter
      (typecase right-daughter
        (word nil)
        (symbol nil)
        (edge
         (if (eq (edge-form right-daughter) (category-named 'np))
           right-daughter
           (rightmost-np-under-s right-daughter)))
        (otherwise
         (push-debug `(,tt ,right-daughter))
         (error "Unexpected type of right daughter: ~a~%  ~a"
                (type-of right-daughter) right-daughter))))))


;;;-------
;;; tests
;;;-------

(defun expansion-boundary? (edge)
  ;; used by look-for-short-leftward-extension
  ;; This is the edge just to the left of one we're considering
  ;; extending leftwards, i.e. composing them. This lists cases
  ;; that should block attempting the composition
  (typecase edge
    (word
     (if (eq edge word::source-start)
       t
       (error "Unexpected word: ~a" edge)))
    (edge
     (or (edge-over-punctuation? edge)
         (edge-over-bounding-word? edge)))
    (otherwise
     (push-debug `(,edge))
     (error "expansion-boundary? -- unexpected type of treetop"))))
            
      
(defparameter *expansion-bounding-form-categories* nil
  "The form categories of edges that should block phrase extension.
   Set the first time it's accessed since the categories aren't
   available when this loads.")
(defun set-expansion-bounding-form-categories ()
  (setq *expansion-bounding-form-categories*
        `(,(category-named 'conjunction)
          ,(category-named 'preposition))))

(defun edge-over-bounding-word? (edge)
  (unless *expansion-bounding-form-categories*
    (set-expansion-bounding-form-categories))
  (memq (edge-form edge) *expansion-bounding-form-categories*))



(defun right-bounded-np? (np-edge)
  (let ((pos-after-np (pos-edge-ends-at np-edge)))
    (is-a-boundary? pos-after-np)))

(defmethod is-a-boundary? ((pos position))
  (is-a-boundary? (right-treetop-at/edge pos)))

(defmethod is-a-boundary? ((edge edge))         
  (or (expansion-boundary? edge)
      ;(eq (edge-form edge) category::vg)
      ;; more like copula or tensed
      ;(eq (edge-form edge) category::vp)
      ))

(defmethod is-a-boundary? ((word word))
  ;; pesumably punctuation, so lets say yes.
  t)




(defun np-over-that? (tt)
  ;;/// horrific hack that should be resolved by a better
  ;; treatment that reconciles determiner and subordinate
  ;; conjunction uses. It's a literal in some rules and
  ;; has an NP for form (which itself is weird) so it
  ;; ends up in the NP form case.
  (and (word-p (edge-left-daughter tt))
       (eq (edge-left-daughter tt) (word-named "that"))))

(defun includes-tt-over-comma (treetops)
  (declare (special *the-punctuation-comma*))
  (loop for tt in treetops
    when (eq (edge-category tt) *the-punctuation-comma*)
    return tt))


;;// move to utilities ??
(defun list-initial (item list)
  (eq item (car list)))

(defun list-final (item list)
  (eq item (car (last list))))


;;---- obviously needs to be generalized
(defun attached-reduced-relative-to-np-of-pp (parent-pp np reduced-relative)
  (push-debug `(,parent-pp ,np ,reduced-relative))
  ;; See note in syntactic-rules that letting np+vp loose
  ;; in the first pass is too greedy, so making the edge
  ;; ad-hoc. Also, the regular edge-making function
  ;; do their own knitting. 
  (let ((new-edge (compose-as-reduced-relative np reduced-relative)))
    ;;(break "before tucking")
    (tuck-new-edge-under-already-knit
     np ;; subsumed-edge
     new-edge
     parent-pp ;; dominating-edge
     :right) ;; direction
    ;;(break "tucked")
    parent-pp))

(defun compose-as-reduced-relative (np reduced-relative)
  (let* ((ref (referent-for-reduced-relative np reduced-relative))
         (new-edge
          (make-binary-edge/explicit-rule-components
           np reduced-relative
           :category (edge-category np)
           :form (edge-form np)
           :rule-name :attached-reduced-relative-to-np-of-pp
           :referent ref)))
    ;;/// trace
    new-edge))


(defun referent-for-reduced-relative (np reduced-relative)
  (let ((np-ref (edge-referent np))
        (rr-ref (edge-referent reduced-relative)))
    ;;/// J1: 'responsible' is weakly defined as just an adjective
    ;; so there's no way notion of a variable in it for 'what' is
    ;; responsible 'for' its complement. For that matter right now
    ;; (9/28/14) 'cancer' is just an np head
    (bind-dli-variable 'reduced-relative rr-ref np-ref)))


(defun ad-hoc-subj+copula-rule (subject copula)
  ;; goes in rules/syntax/be.lisp
  (declare (special *the-category-to-be*))
  (let* ((subj-ref (edge-referent subject))
         (cop-ref (edge-referent copula)) ;; #<be)
         ;; cheat -- knowing that the copula of J1 was built
         ;; from a particular syntactic rule we know what
         ;; to lift from it. ///duh -- make coherent
         (np-ref (value-of 'participant cop-ref)))
    (let ((i (find-or-make-individual *the-category-to-be*)))
      (setq i (bind-dli-variable 'theme subj-ref i))
      ;;/// for J1, the np-ref is more specific, so the roles
      ;; should be reversed, but how to do know that?
      ;; this order is what the rspec on be would have done
      (setq i (bind-dli-variable 'description np-ref i))
      (make-binary-edge/explicit-rule-components
       subject copula
       :category (edge-category copula) ;; right-headed
       :form (category-named 's)
       :rule-name :ad-hoc-subj+copula-rule
       :referent i))))



