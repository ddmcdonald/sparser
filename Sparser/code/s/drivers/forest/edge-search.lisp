;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "edge-search"
;;;   Module:  "drivers/forest/"
;;;  version:  July 2016

;; Broken out of analyzers/forest/treetops/ 7/21/16. Has all of the
;; code that implements the "whack a rule" search that's driven from
;; whack-a-rule-cycle and similar forest-level operations.

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

   
(defun adjacent-tts (&optional (all-edges (all-tts)))
  "Loop over these treetop edges in order (which should be
   from left to right) and collect every pair of adjacent edges.
   The caller is responsible for the order of edges."
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
	  (when (member nil edges-to-right)
	    (lsp-break "bad edge"))
	  (setq pairs (form-all-pairs edges-to-left
				      edges-to-right))
	  (when (member nil edges-to-right)
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

(defparameter *non-comma-literals-are-bad-edges* t)

(defun bad-edge? (edge)
  (declare (special word::comma))
  (or
   (not (edge-p edge)) ;; how can this happen?!@
   (when *non-comma-literals-are-bad-edges*
     (and
      (eq :literal-in-a-rule  (edge-right-daughter edge))
      (not (eq word::comma (edge-referent edge)))))))



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
      (let ((new-pairs
             (loop for pair in (adjacent-tt-pairs sentence)
                unless (or (member pair pairs :test #'equal)
                           (bad-edge? (first pair))
                           (bad-edge? (second pair)))
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
    ;; (break "triples")
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
		      ;; (remove-redundant-literal-triples edges-over-one-word)
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
  

;;#### Nothing calls this anymore. At one point, for make-prep-comp
;; we had:
;; Called from whack-a-rule-cycle => copula-rule?
;;       => test-subcat-rule => ref/function
;; Called from whack-a-rule-cycle => best-treetop-rule
;;       => rule-for-edge-pair => test-subcat-rule => ref/function
;; Called from whack-a-rule-cycle => execute-one-one-rule
;;       => form-rule-completion => referent-from-rule
;;            => dispatch-on-rule-fields => ref/function
(defun copula-rule? ()
  (declare (special category::be category::adjective))
  (let ( rule )
    (loop for pair in (adjacent-tts) 
      when (and
            (setq rule (rule-for-edge-pair pair))
            (and (eq (car (cfr-rhs rule)) category::be)
                 (eq (second (cfr-rhs rule)) category::adjective)))
      do
      (return (cons rule pair)))))




(defun rule-for-edge-pair (pair)
  "Called from best-treetop-rule to determine whether there is
   a rule that composes the two edges in the pair and, where it
   makes sense, we can determine that the the rule will be
   semantically valid."
  (tr :can-we-whack-pair pair)
  (multiple-value-bind (cached-rule pair-seen)
      (gethash pair *rules-for-pairs*)
    (let ((rule 
           (if pair-seen 
               cached-rule
               ;; don't recompute the rule for the pair, saves a lot of time,
               ;; particularly for pairs with no rules
               (setf (gethash pair *rules-for-pairs*) 
                     (multiply-edges (car pair) (second pair))))))
      (if rule
          (when (cond
                  ((not (consp (cfr-referent rule))))
                  ((eq :funcall (car (cfr-referent rule)))
                   (or *check-semantic-applicability* ;; we are running semantic checks in the multiply operation
                       (test-subcat-rule pair rule)))
                  (t ;; most rules have referent slots which are cons cells, 
                   ;; but which are not :funcalls, e.g.
                   ;; (#<PSR12615  select ->  select biological>
                   ;;   ((:head left-referent) 
                   ;;    (:binding (#<variable patient> . right-referent)))) 
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
  (declare (special r-triple l-triple
                    category::as category::syntactic-there
                    category::vg category::np category::adjective
                    ))
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
              (cat-symbol (second r-triple-rhs))))
           (r-triple-3 (third r-triple)))
      (declare (special l-triple-rhs l-triple-left triple-1-rhs
                        r-triple-left r-triple-right r-triple-3))
      ;;(lsp-break "compete")
      (when
	  (not (and ;; need to generalize this for "high priority" NP post-modifiers
		(category-p (second r-triple-rhs))
		(member (cat-name (second r-triple-rhs)) '(in-vitro in-vivo))))
	(or
	 (eq 'category::syntactic-there l-triple-left) ;; competing against a "there BE"
	 (and
	  (member l-triple-rhs `((,category::vg  ,category::np)
                                 (,category::vg  ,category::n-bar)
                                 ;; with the new "infinitive" edge for verbs
                                 ;; of form "to stimulate", we need to allow
                                 ;; them to compete for objects
                                 (,category::infinitive  ,category::np)
                                 (,category::infinitive  ,category::n-bar))
                  :test #'equal)
	  ;; likely competition against a relative clause or a main clause
	  ;;  accept r-triple as a winner if if is a rightward extension of and NP
	  ;; e.g. "...the molecular mechanisms that regulate ERK nuclear translocation are not fully understood."
          (or
           (and (eq (cat-name (edge-form r-triple-3)) 'pp)
                (member (edge-left-daughter (edge-left-daughter r-triple-3))
                        (get-tag :loc-pp-complement (itype-of (edge-referent (second l-triple)))))
                (not (some-edge-satisfying? (edges-after r-triple-3) #'pp?)))
           (not (member (cat-name (edge-form r-triple-3))
                        '(pp
                          ;; "To validate the use of an in vitro system to dissect the mechanism of Ras regulation.
                          to-comp where-relative-clause when-relative-clause
                          subject-relative-clause comma-separated-subject-relative-clause)))))
	 (and
	  (prep? l-triple-left)
          (not (subordinate-conjunction? l-triple))
          ;; "until" is both a preposition and a subordinate conjunction
          ;; causes problems with "Does the amount of phosphorylated MAP2K1 remain low until phosphorylated BRAF reaches a high value?"
	  (not (eq (edge-category (second l-triple)) category::as))
	  ;; almost always a use of "as" as a subordinate conjunction
	  (or
	   (and ;; pp starting a relative clause -- "in which"
	    (memq r-triple-left '(category::which category::who
                                  category::whom category::where))
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
        
	  ;; there must be a constituent which can absorb the result of
          ;; the left competing rule
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

(defun subordinate-conjunction? (l-triple)
  (declare (special category::subordinate-conjunction))
  (loop for e in (all-edges-at (second l-triple))
     thereis
       (eq (edge-form e) category::subordinate-conjunction)))


