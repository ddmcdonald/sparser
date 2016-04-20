;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1996,2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "treetops"
;;;    Module:   "analyzers;forest:"
;;;   Version:   1.5 May 2015

;; 1.1  (2/8/91 v1.8.1) added Final-tt/category
;; 1.2  (2/13 v1.8.1) Modified ...-treetop-at to both return words if there
;;      isn't a top edge.
;; 1.3  (3/19 v1.8.1)  Wrote Treetop? predicate
;; 1.4  (4/26 v1.8.4)  Added Next-treetop/rightward
;;      (7/25/94 v2.3) added Number-of-treetops-between
;;      (7/27) added {Right,Left}-treetop-at/edge variation
;; 1.5  (9/28) fixed bug in left-treetop-at/edge. (10/26) added doc.
;;      (12/1) added Treetops-between
;;      (1/2/96) added a variation that only returns edges
;;      (9/8/14) Converted a few functions to methods taking edges.
;;      (10/7/14) reorderd and notice redundancies to flush at some point
;;      (1/2/2015) key component of whack-a-rule control structure -- find
;;        all applicable rules across adjacent treetops called repeatedly,
;;        getting different rules each time as the tretops change by
;;        application of rules
;; 1/4/2015 add flag and bind the special *left-edge-into-reference* in
;;  ossible-treetop-=rules so that ref/function can work as a predicate
;; 1/6/2015 new mechanism in whack-a-rule to prioritize PP creation and
;;  attachemnt above subject+verb binding
;; 1/8/2015 refactor possible-treetop-rules to make it easier to trace and understand
;; 1/8/2015 rename to best-treetop-rule and make it return one rule only
;; 1/14/2015 revise losing-competition? to account for more general form of
;;  subject rule, looking at cfr-rule-forms
;; 1/18/2015 fix typo in test-subcat-rule
;; 2/10/15 cleaned up / reformatted a bit so I could figure out what's
;;  going on in the code that supports whack-a-rule
;; 3/4/2015 correct spelling of *use-broader-set-of-tts*, and replace
;;  "wack" with "whack" cache rules discovered for pairs of edges so that we
;;  do not keep calling multiply-edges unnecessarily
;; 5/1/2015 minor tweak on losing-competition?  to do better on leftwards
;;  extension of NPs which may be SUBJECTs
;; 5/12/2015 fixes to losing-competition? to better handle leftwards
;; extension of NP subjects before they are used as subjects
;; 5/15/15 Moved out literal-edge? to the edge object code.
;; 5/25/2015 add on check on competition for pp-wh-pronoun as part of pp-relative-clause
;; 5/30/2015 handle new cases of vp_passive in rule competition
;; 6/2/2015 major cleanup in losing-competition?, which led to the
;;  discoverhy of some omitted cases in the final check this allowed it to
;;  work in the case of the Chen/Sorger sentences...
;; 6/5/2015 fix all-tts to take into account the sentence being processed
;;  by whack-a-rule, and to get the start and end positions from there
;;  previously this looked across the whole chart, and that caused errors
;;  and apparently damaged some core structures, leading to future errors
;;  had to adjust adjacent-tts to take into account that all edges returned
;;  by (all-tts) are valid (as against having a bogus first edge)
;; 6/9/15) Modified all-tts to be able to take its sentence from context
;;  rather than presume that *whack-a-rule-sentence* is bound. Needed to
;;  run sem-test.


(in-package :sparser)

(defvar CATEGORY::BE)
(defvar CATEGORY::ADJECTIVE)
(defvar *RULES-FOR-PAIRS*)
(defvar CATEGORY::SYNTACTIC-THERE)
(defvar CATEGORY::PREPOSITION)
(defvar CATEGORY::VG)
(defvar CATEGORY::NP)
(defvar CATEGORY::SPATIAL-PREPOSITION)
(defvar *NG-HEAD-CATEGORIES*)
(defvar *ADJG-HEAD-CATEGORIES*)
(defvar *VG-HEAD-CATEGORIES*)

;;;--------------------------------
;;; basic navigation over treetops
;;;--------------------------------

(defun right-treetop-at (position)
  (let ((vector (pos-starts-here position)))
    (or (ev-top-node vector)
        (pos-terminal position))))

(defun left-treetop-at (position)
  "From this position, look leftwards. If there are edges
   return the topmost one, other return the word just to
   the left of this position."
  (let ((vector (pos-ends-here position)))
    (or (ev-top-node vector)
        (pos-terminal (chart-position-before position)))))



;;;-------- still another variant that takes the highest edge when there
;;;         are multiples

(defmethod right-treetop-at/edge ((e edge))
  (right-treetop-at/edge (pos-edge-ends-at e)))

(defmethod right-treetop-at/edge ((position position))
  (let* ((ev (pos-starts-here position))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           (elt (ev-edge-vector ev)
                (1- (ev-number-of-edges ev))))
          (top-node top-node)
          (t (pos-terminal position)))))

;;//// these are redundant with the ones just below
;;  grep for them and change one or the other

(defmethod left-treetop-at/edge ((e edge))
  (left-treetop-at/edge (pos-edge-starts-at e)))

(defmethod left-treetop-at/edge ((position position))
  (let* ((ev (pos-ends-here position))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           (elt (ev-edge-vector ev)
                (1- (ev-number-of-edges ev))))
          (top-node top-node)
          (t (pos-terminal (chart-position-before position))))))



;;;--- variants that handle multiple-initial-edges for you
(defmethod right-treetop-at/only-edges ((e edge))
  (right-treetop-at/only-edges (pos-edge-ends-at e)))

(defmethod right-treetop-at/only-edges ((p position))
  (let* ((ev (pos-starts-here p))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           (elt (ev-edge-vector ev)
                (1- (ev-number-of-edges ev))))
          (top-node top-node)
          (t nil))))

(defmethod left-treetop-at/only-edges ((e edge))
  (left-treetop-at/only-edges (pos-edge-starts-at e)))

(defmethod left-treetop-at/only-edges ((p position))
  (let* ((ev (pos-ends-here p))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           (elt (ev-edge-vector ev)
                (1- (ev-number-of-edges ev))))
          (top-node top-node)
          (t nil))))



;;;--- variants on those with different return values

(defmethod next-treetop/rightward ((e edge))
  (next-treetop/rightward (pos-edge-ends-at e)))

(defmethod next-treetop/rightward ((p position))
  ;; Used by Do-treetop-triggers to scan successive treetops.
  ;; Returns as many as three values: (1) the treetop that starts
  ;; at the position (either an edge or a word), (2) the position
  ;; just after that where the treetop scan should resume, and
  ;; (3) a boolean to indicate whether the treetop being returned
  ;; is a word with multiple interpretations.
  (let ((topnode-field (ev-top-node (pos-starts-here p))))

    (cond ((eq topnode-field :multiple-initial-edges)
           ;; presumes only terminals could have multiple edges
           (values (pos-starts-here p)
                   (chart-position-after p)
                   t))

          (topnode-field   ;; it's an edge 
           (values topnode-field
                   (pos-edge-ends-at topnode-field)))
          (t
           (values (pos-terminal p)
                   (chart-position-after p))))))


(defmethod next-treetop/leftward ((e edge))
  (next-treetop/leftward (pos-edge-starts-at e)))

(defmethod next-treetop/leftward ((p position))
  ;; analogous routine for a leftward walk
  (let* ((vector (pos-ends-here p))
         (topnode-field (ev-top-node vector))
         (next-position (chart-position-before p)))

    (cond ((eq topnode-field :multiple-initial-edges)
           ;; presumes only terminals could have multiple edges
           (values vector
                   next-position
                   t))

          (topnode-field   ;; it's an edge 
           (values topnode-field
                   (pos-edge-starts-at topnode-field)))
          (t
           (values (pos-terminal next-position)
                   next-position)))))




;;;---- and another that only reacts to edges

(defun right-multiword-treetop (position)
  (let* ((ev (pos-starts-here position))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           nil )
          (top-node
           (when (> (number-of-terminals-between
                     position
                     (pos-edge-ends-at top-node))
                    1)
             top-node))
          (t nil))))


(defun left-multiword-treetop (position)
  (let* ((ev (pos-ends-here position))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           nil )
          (top-node
           (when (> (number-of-terminals-between
                     (pos-edge-starts-at top-node)
                     position)
                    1)
             top-node))
          (t nil))))


;;;------------
;;; predicates
;;;------------

(defun treetop? (edge)
  (null (edge-used-in edge)))

(defun treetop-does-not-end-the-chart (tt)
  (let* ((ends-at (ev-position (edge-ends-at tt)))
         (terminal (pos-terminal ends-at)))
    (not (eq terminal word::end-of-source))))

(defun final-tt/category (list-of-tts category)
  ;; checks wheter the last edge in the list has the indicated category
  (eq (edge-category (car (last list-of-tts)))
      category))


;;;------------
;;; collectors
;;;------------

(defun treetop-between (start end)
  (let ((treetop-at-start (right-treetop-at/edge start))
        (treetop-at-end   (left-treetop-at/edge  end)))

    (when (eq treetop-at-start treetop-at-end)
      treetop-at-start )))

(defun number-of-treetops-between (start end)
  (let ((next-pos start)
        (count 0)
        tt )
    (loop
      (when (eq next-pos end)
        (return))
      (incf count)
      (multiple-value-setq (tt next-pos)
        (next-treetop/rightward next-pos))
      tt ) ;; quiet the compiler
    count ))

(defun treetops-between (start end)
  (unless (eq start end)
    (let ((next-pos start)
          tt  tts )
      (loop
        (when (eq next-pos end)
          (return))
        (multiple-value-setq (tt next-pos)
          (next-treetop/rightward next-pos))
        ;; could define a variant of next-treetop/rightward
        ;; but so far this is a one-off.
        (when (edge-vector-p tt)
          (setq tt (elt (ev-edge-vector tt)
                        (1- (ev-number-of-edges tt)))))
        (push tt tts))
      (nreverse tts))))
    

;;;---------------------------
;;; machinery for whack-a-rule
;;;---------------------------
      
(defun adjacent-tts (&optional (all-edges (all-tts)))
  (loop for edges on  all-edges 
    ;; the set of edges no longer includes a dummy starting edge
    while (cdr edges) 
    when (and 
          (edge-p (car edges)) 
          (edge-p (second edges))
          (adjacent-edges? (car edges) (second edges)))
    collect
    (list (car edges) (second edges))))

(defvar *whack-a-rule-sentence* nil
  "Dynamically bound to provide the correct boundaries,
  usually within a particular sentence or chunk, without
  needing to pass down the sentence as a parameter")

(defun all-tts (&optional starting-position stop-pos)
  ;; This was originally designed to operate on single 
  ;; sentences starting at position zero. However, since
  ;; it is central to the whack-a-rule algorithm, and
  ;; because it is the basis of tt-semantics which we
  ;; can want to use -after- the parsing is finished,
  ;; we supply it with a sentence to work from. 
  (declare (special *sentence-in-core* ;;/// bad name
                    *whack-a-rule-sentence*))
  (unless starting-position
    (let ((sentence (or *whack-a-rule-sentence*
                        *sentence-in-core*)))
      (unless sentence
        (error "No sentence in scope. Cannot calculate all-tts"))
      (setq starting-position (starts-at-pos sentence)
            stop-pos (ends-at-pos sentence))))
  (let* ((tt (right-treetop-edge-at starting-position))
         (ending-position
          (where-tt-ends tt starting-position)))
    (cons tt
          (unless (or (eq ending-position stop-pos)
                      (eq (pos-terminal ending-position)
                          word::end-of-source)
                      (null (pos-terminal ending-position)))
            (all-tts ending-position stop-pos)))))

(defun right-treetop-edge-at (position)
  (let* ((vector (pos-starts-here position))
         (top-node (ev-top-node vector)))
    (cond
     (top-node
      (if (eq top-node :multiple-initial-edges)
       (highest-edge vector)
       top-node))
     (t
      (pos-terminal position)))))

(defun adjacent-tt-pairs (sentence)
  ;;(push-debug `(,sentence)) (break "tt")
  (let* ((start-pos (starts-at-pos sentence))
         (start-ev (pos-starts-here start-pos))
         (start-edges (tt-edges-starting-at start-ev))
         (end-pos (ends-at-pos sentence)))
    (adjacent-tt-pairs1 start-edges
                        end-pos)))

(defun adjacent-tt-pairs1 (edges-to-left end-pos)
  (when edges-to-left
    ;; can be nil sometimes -- may want to diagnose cases
    ;;  seems to happen when running over the edge of a sentence
    (let* ((random-left-edge (car edges-to-left))
	   (left-ev (edge-ends-at random-left-edge))
	   (left-end-position (ev-position left-ev)))
      (declare (special random-left-edge left-ev left-end-position))
      (unless (eq left-end-position end-pos)
	(let* ((next-ev (pos-starts-here left-end-position))
	       (edges-to-right (tt-edges-starting-at next-ev))
	       pairs )
	  (declare (special next-ev edges-to-right))
	  (when
	      (member nil edges-to-right)
	    (lsp-break "bad edge"))
	  (setq pairs (form-all-pairs edges-to-left
				      edges-to-right))
	  (when
	      (member nil edges-to-right)
	    (lsp-break "bad edge"))
	  (let ((recursive-pairs
		 (when edges-to-right
		   (adjacent-tt-pairs1 edges-to-right end-pos))))
	    (let ((return-value
		   (if recursive-pairs
		       (nconc pairs recursive-pairs)
		       pairs)))
	      return-value)))))))

(defun form-all-pairs (left-list right-list)
  (let ( pairs )
    (loop for left in left-list
       unless (bad-edge? left)
       do (loop for right in right-list
	     unless (bad-edge? right)
	     do (push (list left right) pairs)))
    pairs))

(defun bad-edge? (edge)
  (declare (special word::comma))
  (or
   (not (edge-p edge)) ;; how can this happen?!@
   (and
    (eq :literal-in-a-rule  (edge-right-daughter edge))
    (not (eq word::comma (edge-referent edge))))))

(defparameter *use-broader-set-of-tts* t)

(defun best-treetop-rule (sentence)
  ;; feeder routine in whack-a-rule-cycle that identifies
  ;; all of the treetop edges that are pairwise adjacent
  ;; using adjacent-tts and winnows that list down using
  ;; filter-rules-by-local-competition
  (let ((pairs (if *use-broader-set-of-tts*
                 (adjacent-tt-pairs sentence)
                 (adjacent-tts)))
        rule  triples )
    ;;(push-debug `(,pairs))
    (tr :pairs-to-consider-whacking pairs)
    (loop for pair in pairs 
      when (setq rule (rule-for-edge-pair pair))
      do (push (cons rule pair)
               triples))
    (unless triples
      (let
	  ((new-pairs
	    (loop for pair in (adjacent-tt-pairs sentence)
	       unless
		 (or
		  (member pair pairs :test #'equal)
		  (eq :literal-in-a-rule (edge-right-daughter (first pair)))
		  (eq :literal-in-a-rule (edge-right-daughter (second pair))))
	       collect pair)))
	(when new-pairs
	  (format t "~&old set of pairs~s~&new set of pairs: ~s" pairs new-pairs)
	  (loop for pair in new-pairs 
	     when (setq rule (rule-for-edge-pair pair))
	     do (push (cons rule pair)
		      triples)))))
    (setq triples
          (if *use-broader-set-of-tts*
            (let ((original-triples (copy-list triples))) ;; for trace
              (push-debug `(,original-triples))
              (remove-surplus-literal-compositions triples))
            triples))
    ;;(break "triples")
    (let ((triple (filter-rules-by-local-competition triples)))
      (tr :filter-selected-triple triple)
      triple)))

;;/// seriously consider a resource of these
(defun triple-rule (triple) (car triple))
(defun left-edge-of-triple (triple) (cadr triple))
(defun right-edge-of-triple (triple) (caddr triple))

(defun remove-surplus-literal-compositions (triples)
  ;; Is there is pair involving an edge based on a literal
  ;; and another pair, employing the same rule, that applies
  ;; to a semantic label (e.g. "to" and TO), prefer the one
  ;; with the regular label. Happens with prepositional phrases.
  (if (cdr triples) ;; more than one
      (let ((edges-over-one-word
	     (collect-triples-with-edges-over-one-word triples)))
	(push-debug `(,edges-over-one-word))
	(if edges-over-one-word               
	    (if (cdr edges-over-one-word) ;; more than one?
		(let ((triples-minus-redundant-literals
		       ;;(remove-redundant-literal-triples edges-over-one-word)
		       triples  ))
		  triples-minus-redundant-literals)          
		triples) ;; only one edge over a single word
	    triples))	 ;; none over just one word
      triples))		 ;; only one triple

(defun remove-redundant-literal-triples (records)
  (declare (special records))
  (push-debug `(,records))
  (let ( edge  word  words  word+records  )
    ;; over the same word?            
    (dolist (record records)
      (setq edge (second record))
      (setq word (edge-left-daughter edge))
      (if (memq word words) ;; already seen?
        (let ((w+r (assq word word+records)))
          (unless w+r 
            (push-debug `(,word+records ,word ,words))
            ;; (setq word+records (car *) word (cadr *) words (caddr *))
            (break "where's the record for ~s?"
                   (word-pname word)))
          (rplacd w+r (cons record (cdr w+r))))
        (else ;; it's new
          (setq word+records `((,word ,record)))
          (push word words))))
    (when (cdr words)
      (push-debug `(,words ,word+records)) 
      (break "stub in surplus literals: more than one word"))
    ;; The word+records at this point all have a unary
    ;; edge that spans the same word. We're discounting
    ;; the possibility that this word is duplicated at
    ;; several places in the text. 
    (loop for record in (cdr (car word+records))
      as edge = (ecase (car record)
                  (:left (left-edge-of-triple (third record)))
                  (:right (right-edge-of-triple (third record))))
      unless (literal-edge? edge)
      collect edge)))

(defun collect-triples-with-edges-over-one-word (triples)
  (loop for triple in triples
    as left-edge = (left-edge-of-triple triple)
    as right-edge = (right-edge-of-triple triple)
    when (= 1 (edge-length left-edge))
    collect `(:left ,left-edge ,triple) ;; these are 'records'
    when (= 1 (edge-length right-edge))
    collect `(:right ,right-edge ,triple)))
  


(defun copula-rule? ()
  (let ( rule )
    (loop for pair in (adjacent-tts) 
      when (and
            (setq rule (rule-for-edge-pair pair))
            (and (eq (car (cfr-rhs rule)) category::be)
                 (eq (second (cfr-rhs rule)) category::adjective)))
      do
      (return (cons rule pair)))))




(defparameter *david-says-ok* t
  "This use of ref/function is unorthodox to say the least.
   It's seriously messing up my tests on short function-based rules.")

(defun rule-for-edge-pair (pair)
  (tr :can-we-whack-pair pair)
  (multiple-value-bind (cached-rule pair-seen)
                       (gethash pair *rules-for-pairs*)
    (let ((rule 
           (if pair-seen 
            cached-rule ;; don't recompute the rule for the pair, saves a lot of time, particularly for pairs with no rules
            (setf (gethash pair *rules-for-pairs*) 
                  (multiply-edges (car pair) (second pair))))))
      (if rule
        (when (cond
               ((not (consp (cfr-referent rule))))
               ((eq :funcall (car (cfr-referent rule)))
                ;; Really? Look at the identity of the function before
                ;; you do this -- ddm
                (if *david-says-ok*
                    (test-subcat-rule pair rule)
                    t))
               (t ;; most rules have referent slots which are cons cells, 
                ;; but which are not :funcalls, e.g.
                ;; (#<PSR12615  select ->  select biological>
                ;;   ((:HEAD LEFT-REFERENT) 
                ;;    (:BINDING (#<variable PATIENT> . RIGHT-REFERENT)))) 
               t ))
          (tr :whack-pair-with-rule rule)
          rule)
        (else
          (tr :no-rule-to-whack-pair)
          nil)))))

(defun test-subcat-rule (pair rule)
  ;; This simulates the context above normal rule-driven calls to
  ;; ref/function so that it's value can be used as test on
  ;; whether there is a subcategorization relationship between
  ;; two adjacent edges. 
  (let* ((left-referent (edge-referent (car pair)))
         (right-referent (edge-referent (second pair)))
         (*rule-being-interpreted* rule)
         (*left-edge-into-reference* (car pair))
         (*right-edge-into-reference* (second pair)))
    (declare (special left-referent right-referent 
                      *rule-being-interpreted* 
                      *right-edge-into-reference*))
    (let ((*subcat-test* t) 
          applicable )
      (declare (special *subcat-test* applicable))
      ;; use ref/function as a predicate!!
      (ref/function (cdr (cfr-referent rule))))))

(defun filter-rules-by-local-competition (triples)
  (loop for tail on triples
    ;; Go through every pair of triples. Establish whether
    ;; they are competing over an edges that they have
    ;; in common, and apply heuristics to determine
    ;; which one to permit to win.
    unless (and (cadr tail)
                (losing-competition?  (cadr tail) (car tail)))
    do (return (car tail))))

(defun losing-competition? (l-triple r-triple)
  (declare (special r-triple l-triple))
  ;; goal here is to put off subject attachment until the subject 
  ;; is as large as possible.
  ;; Don't do right-to-left activation for the subj+verb rules
  ;;(print `(dropping rule ,r-triple))
  ;;(print `(in *p-sent* ,*p-sent* dropping rule ,r-triple compared to ,l-triple))
  (when (eq (second r-triple) (third l-triple))	
    ;; there is an edge which is being competed for
    (let* ((l-triple-rhs (cfr-rhs (car l-triple)))
           (l-triple-left (if (category-p (car l-triple-rhs))
			      (cat-symbol (car l-triple-rhs))
			      (car l-triple-rhs)))
           (r-triple-rhs (cfr-rhs (car r-triple)))
           (r-triple-left (if (category-p (car r-triple-rhs))
			      (cat-symbol (car r-triple-rhs))
			      (car r-triple-rhs)))
           (r-triple-right 
            (when (category-p (second r-triple-rhs))
              (cat-symbol (second r-triple-rhs)))))
      (declare (special l-triple-rhs l-triple-left triple-1-rhs r-triple-left r-triple-right))
      ;;(lsp-break "compete")
      (when
	  (not (and ;; need to generalize this for "high priority" NP post-modifiers
		(category-p (second r-triple-rhs))
		(member (cat-name (second r-triple-rhs)) '(in-vitro in-vivo))))
	(or
	 (eq category::syntactic-there l-triple-left) ;; competing against a "there BE"
	 (and
	  (equal l-triple-rhs (list category::vg category::np))
	  ;; likely competition against a relative clause or a main clause
	  ;;  accept r-triple as a winner if if is a rightward extension of and NP
	  ;; e.g. "...the molecular mechanisms that regulate ERK nuclear translocation are not fully understood."
	  (not (and (edge-form (third r-triple))
		    (member (cat-symbol (edge-form (third r-triple)))
			    '(category::pp
			      ;; "To validate the use of an in vitro system to dissect the mechanism of Ras regulation.
			      category::to-comp
			      category::relative-clause
			      category::subject-relative-clause
			      category::comma-separated-subject-relative-clause)))))
       
       
	 (and
	  (prep? l-triple-left)
	  (or
	   (and ;; pp starting a relative clause -- "in which"
	    (memq r-triple-left '(category::which category::who category::whom category::where))
	    (or (eq r-triple-right 'category::s)
		(eq (second (cfr-rhs-forms (car r-triple))) 's)))
	   (memq r-triple-right
		 '(category::vg category::vp category::vg+ed category::vp+ed
		   category::vg+passive category::vp+passive
		   ;;category::comma-separated-subject-relative-clause
		   ))
	   ;; this is needed because the schema based rules generate rules in terms of 
	   ;;  semantics and not syntax, so we have phosphorylate+ed and not vp/+ed
	   (memq (second (cfr-rhs-forms (car r-triple)))
		 '(vg vp vg+ed vg+ed vp+ed vg+passive vp+passive
		   vg/+ed vg/+ed vp/+ed vg/+passive vp/+passive
		   ;;comma-separated-subject-relative-clause
		   )))
	  (not
	   (and (edge-p (edge-left-daughter (third r-triple)))
		(eq category::adjective 
		    (edge-form (edge-left-daughter (third r-triple))))))
        
	  ;; there must be a constituent which can absorb the result of the left competing rule
	  (let* ((preceding-edge (edge-just-to-left-of (second l-triple)))
		 (sym (and
		       preceding-edge
		       (edge-form preceding-edge) ;; got a case with COMMA as a literal edge
		       (cat-symbol (edge-form preceding-edge)))))
	    (declare (special preceding-edge sym))
	    (or
	     (member sym *ng-head-categories*)
	     (member sym *vg-head-categories*)
	     (member sym *adjg-head-categories*)
	     (member sym 
		     '(category::vp category::vg 
		       category::vg+ed category::vp+ed 
		       category::vg+ing category::vp+ing
		       category::vg+passive category::vp+passive
		       category::adverb))))))))))

(defun prep? (cat)
  (memq cat '(category::preposition category::spatial-preposition)))


