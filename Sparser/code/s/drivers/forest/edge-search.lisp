;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "edge-search"
;;;   Module:  "drivers/forest/"
;;;  version:  December 2020

;; Broken out of analyzers/forest/treetops/ 7/21/16. Has all of the
;; code that implements the "whack a rule" search that's driven from
;; whack-a-rule-cycle and similar forest-level operations.

(in-package :sparser)

;;;---------
;;; triples
;;;---------

;;/// seriously consider a resource of these
(defun triple-rule (triple) (car triple)) ;; first
(defun left-edge-of-triple (triple) (cadr triple)) ;; second
(defun right-edge-of-triple (triple) (caddr triple)) ;; third

(defun make-edge-triple (left-edge right-edge rule)
  (list rule left-edge right-edge))


(defun execute-triple (triple)
  ;; triple = rule, left-edge, right-edge
  (make-completed-binary-edge (left-edge-of-triple triple)
                              (right-edge-of-triple triple)
                              (triple-rule triple)))
;; This entry point only buys us dotted rules, which are OBE
;;  (execute-one-one-rule (car triple) (second triple) (third triple))

(defgeneric triple-p (item)
  (:documentation "Does this item represent a triple?")
  (:method ((item list))
    (and (= 3 (length item))
         (cfr-p (first item))
         (edge-p (second item))
         (edge-p (third item))))
  (:method ((ignore t)) nil))


;;--- these return strings since motivating cases is trace functions

(defun format-edge-pair (pair)
  (format nil "e~a+e~a"
          (edge-position-in-resource-array (car pair))
          (edge-position-in-resource-array (cadr pair))))

(defun format-triple (triple)
  (format nil "e~a+e~a  ~a"
          (edge-position-in-resource-array (left-edge-of-triple triple))
          (edge-position-in-resource-array (right-edge-of-triple triple))
          (triple-rule triple)))


;;;-----------------------
;;; "whack-a-rule" driver
;;;-----------------------

(defparameter *rules-for-pairs* (make-hash-table :test #'equal :size 200)
  "Cache for rule lookup")

(defparameter *executed-triples* (make-hash-table :test #'equal :size 200)
  "Used to avoid executing circular sets of rules")

(defvar *whack-a-rule-sentence* nil
  "Dynamically bound to provide the correct boundaries,
  usually within a particular sentence or chunk, without
  needing to pass down the sentence as a parameter")


;; (trace-whacking)

(defun whack-a-rule-cycle (sentence)
  "Major engine for post-chunk parsing. Called from run-island-checks
 initially, and later by new-pass2 in conjunction with invoking
 debris analysis rules.
   Across the entire sentence, it collects all of the pairs of
 adjacent edges where there is a rule that would compose them.
 From this set of 'triples' it heuristically selects the best
 one, applies it to create a new edge, and then repeats the process
 again on the revised forest. Terminates when there are no more
 triples to consider.
   N.b. Returning the edge indicates to the caller that there was
 something done in this instance of the cycle."
  (tr :entering-whack-cycle)
  (let ((*whack-a-rule-sentence* sentence))
    (declare (special *whack-a-rule-sentence*))
    (let ( triple  edge at-least-one-rule)
      (clrhash *rules-for-pairs*)
      (loop
         (setq triple (best-treetop-rule sentence))
         (when (null triple)
           (return-from whack-a-rule-cycle at-least-one-rule))
         (setq edge (execute-triple triple))
         (cond
           (edge
            (tr :whacking-triple triple edge)
            (setf (gethash triple *executed-triples*) edge)
            (setq at-least-one-rule edge))
           (t (return-from whack-a-rule-cycle at-least-one-rule)))))))


;;--------------------------------------------------------

   
(defun adjacent-tts (&optional (all-edges (all-tts)))
  "Loop over these treetop edges in order (which should be
   from left to right) and collect every pair of adjacent edges.
   The caller is responsible for the order of edges."
  (loop for edges on  all-edges 
    while (cdr edges) 
    when (and (edge-p (car edges)) 
              (edge-p (second edges))
              (adjacent-edges? (car edges) (second edges)))
    collect (list (car edges) (second edges))))


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

;; we were getting no parses when a sentence started with a position
;;  that had no edges like one starting with  � ,
;;  because adjacent-tt-pairs returned NIL in that case. We need to start from
;;  the first position that has an actual edge over it
;;
(defun first-position-with-edges (pos end)
  (cond ((ev-top-node (pos-starts-here pos))
         pos)
        ((eq pos end) end)
        ((eq end (chart-position-after pos)) nil)
        ((position-precedes (chart-position-after pos) end)
         (first-position-with-edges (chart-position-after pos) end))
        ((position/<= end pos) ;; can happen with sentence-final abbreviations
         nil)
        (t (error "somehow overshot end of sentence"))))
         


(defun adjacent-tt-pairs (sentence &aux (start-pos (first-position-with-edges
                                                    (starts-at-pos sentence)
                                                    (ends-at-pos sentence))))
  ;;(push-debug `(,sentence)) (break "tt")
  (when start-pos
    ;; sometimes over-run the sentence
    (let* ((start-ev (pos-starts-here start-pos))
           (start-edges (tt-edges-starting-at start-ev))
           (end-pos (ends-at-pos sentence)))
      (adjacent-tt-pairs1 start-edges end-pos))))

(defun adjacent-tt-pairs1 (edges-to-left end-pos)
  (declare (optimize debug))
  (when edges-to-left
    ;; can be nil sometimes -- may want to diagnose cases
    ;;  seems to happen when running over the edge of a sentence(d
    (let* ((random-left-edge (car edges-to-left))
	   (left-ev (edge-ends-at random-left-edge))
	   (left-end-position (ev-position left-ev)))
      (declare (special random-left-edge left-ev left-end-position))
      (unless (eq left-end-position end-pos)
	(let* ((next-ev (pos-starts-here left-end-position))
	       (edges-to-right (tt-edges-starting-at next-ev))
	       pairs )
	  (when (member nil edges-to-right)
	    (lsp-break "bad edge"))
	  (setq pairs (form-all-pairs edges-to-left
				      edges-to-right))
          ;;(lsp-break "pairs")
	  (let ((recursive-pairs
		 (if edges-to-right
                     (adjacent-tt-pairs1 edges-to-right end-pos)
                     (let* ((next-pos
                             (first-position-with-edges left-end-position end-pos))
                            (next-right-edges
                             (when next-pos
                               (tt-edges-starting-at (pos-starts-here next-pos)))))
                       (when next-right-edges
                         (adjacent-tt-pairs1 next-right-edges end-pos))))))
	    (let ((return-value
		   (if recursive-pairs
		       (nconc pairs recursive-pairs)
		       pairs)))
	      return-value)))))))


(defun form-all-pairs (left-list right-list)
  "Form all possibile pairs between these lists of adjacent edges.
   If the flag to ignore literals is up then omit edges whose labels are words."
  (flet ((illegal-literal? (edge)
           "Exceptions to the 'ignore literals' rule"
           (declare (special word::comma *ignore-literal-edges*))
           (and *ignore-literal-edges*
                (or (not (edge-p edge))
                    (and (edge-for-literal? edge)
                         (not (eq word::comma (edge-referent edge))))))))
    (let ( pairs )
      (loop for left in left-list
         unless (illegal-literal? left)
         do (loop for right in right-list
               unless (illegal-literal? right)
               do (push (list left right) pairs)))
      pairs)))


#+ignore(defun illegal-literal? (edge)
           "Exceptions to the 'ignore literals' rule"
           (declare (special word::comma *ignore-literal-edges*))
           (when *ignore-literal-edges*
             (or (not (edge-p edge))
                 (and (edge-for-literal? edge)
                      (not (eq word::comma (edge-referent edge)))))))


(defun best-treetop-rule (sentence)
  "Feeder routine in whack-a-rule-cycle that identifies
   all of the treetop edges that are pairwise adjacent
   by using adjacent-tts. Then winnows that list down using
   filter-rules-by-local-competition"
  (let ((pairs (adjacent-tt-pairs sentence))
        rule  triples grouped-triples)
    (tr :pairs-to-consider-whacking pairs)
    (loop for pair in pairs 
      when (setq rule (rule-for-edge-pair pair))
      do (push (cons rule pair) triples))
    (unless triples
      (let ((new-pairs
             (loop for pair in (adjacent-tt-pairs sentence)
                unless (member pair pairs :test #'equal)
	       collect pair)))
	(when new-pairs
	 ;; (format t "~&old set of pairs~s~&new set of pairs: ~s" pairs new-pairs)
	  (loop for pair in new-pairs 
	     when (setq rule (rule-for-edge-pair pair))
	     do (push (cons rule pair)
		      triples)))))
    #+ignore
    (setq triples
          (let ((original-triples (copy-list triples))) ;; for trace
            (push-debug `(,original-triples))
            (remove-surplus-literal-compositions triples)))
    ;; (break "triples")

    (setq triples (filter-for-already-executed triples))
    (when triples
      (let ((triple (filter-rules-by-local-competition triples)))
        (tr :filter-selected-triple triple)
        triple))))

(defun filter-for-already-executed (triples)
  (loop for triple in triples
     unless (gethash triple *executed-triples*)
     collect triple))

#+ignore
(defun remove-surplus-literal-compositions (triples)
  "Is there is pair involving an edge based on a literal
   and another pair, employing the same rule, that applies
   to a semantic label (e.g. 'to' and TO). Prefer the one
   with the regular label (the category). Happens with prepositional phrases."
  (if (cdr triples) ;; more than one
      (let ((edges-over-one-word
	     (collect-triples-with-edges-over-one-word triples)))
	(if edges-over-one-word               
	    (if (cdr edges-over-one-word) ;; more than one?
		(let ((triples-minus-redundant-literals
		      ;; (remove-redundant-literal-triples edges-over-one-word)
		        triples  ))
		  triples-minus-redundant-literals)          
		triples) ;; only one edge over a single word
	    triples))	 ;; none over just one word
      triples))		 ;; only one triple
#+ignore
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




;; (trace-whacking)

(defun rule-for-edge-pair (pair)
  "Called from best-treetop-rule to determine whether there is
   a rule that composes the two edges in the pair and, where it
   makes sense, we can determine that the the rule will be
   semantically valid."
  (declare (special *rules-for-pairs*))
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
                   (or *check-semantic-applicability* ;; semantic checks done in the multiply operation
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

;; (trace-subcat-rule)

(defun test-subcat-rule (pair rule)
  "This simulates the context above normal rule-driven calls to
   ref/function so that it's value can be used as test on
   whether there is a subcategorization relationship between
   two adjacent edges.
      These function are called the first time is via this
   function with the flag *subcat-test* dynamically bound to t.
   That pass should evaluate any criteria that must be true
   for the semantic restrictions on the rule to be satisfied,
   such as the head having a designated variable at which to
   attach the complement. Side-effects such as relabeling edges
   or binding variables should be restricted to the 2d pass."
  (declare (special *trace-test-subcat-rule*))
  (let* ((left-referent (edge-referent (car pair)))
         (right-referent (edge-referent (second pair)))
         (*rule-being-interpreted* rule)
         (*left-edge-into-reference* (car pair))
         (*right-edge-into-reference* (second pair)))
    (declare (special left-referent right-referent 
                      *rule-being-interpreted* 
                      *right-edge-into-reference*))
    (let ((*subcat-test* t))
      (declare (special *subcat-test*))
      (if *trace-test-subcat-rule*
        (let* ((referent (cfr-referent rule))
               (function (car (cdr referent))))
          (tr :subcat-rule-setup rule left-referent right-referent function)
          (let ((result (ref/function (cdr (cfr-referent rule)))))
            (if result
              (tr :subcat-text/yes)
              (tr :subcat-text/no))
            result))
        (ref/function (cdr (cfr-referent rule)))))))


;;--- select between overlapping triples

(defun filter-rules-by-local-competition (triples)
  "triples consist of pairs of adjacent edges, headed by a rule
   that is syntactically and semantically appropriate to the pair of edges.
   Triples are ordered right-to-left, with possible duplicating edge spans
   where the right edge of one triple is identical to the left edge of
   another.
   The default is to take the rightmost triple, unless there is some
   evidence that an edge on the left should be right-extended as part of a
   NP or a VP so that we create the largest possible constituents.
   Called from best-treetop-rule as the last step in the triple-selection
   process. The triple this returns is the one that
   is executed on that cycle. Note that if the left triple of an adjacent
   pair doesn't 'win' then we take the first of the remaining triples."
  (multiple-value-bind (right-group left-group)
      (first-two-groups triples)
    (or (left-winner? right-group left-group)
        (car right-group))))


(defparameter *losing-competitions* nil
  "Collect cases that lose the competition")

(defun left-winner? (right-group left-group)
  "Organizes the competition. Does a douple loop through the
   two groups of triples. Will cycle through all the triples
   unless we get a case where the left-side triple is preferred
   over the one on the right."
  (when left-group
    (loop for right-triple in right-group
       do (loop for left-triple in left-group
             when (losing-competition? left-triple right-triple)
             do
               (when *losing-competitions*
                 (push (list (triple-rule left-triple)
                             (triple-rule right-triple)
                             (current-string))
                       *losing-competitions*))
               (return-from left-winner? left-triple)))))


(defun first-two-groups (triples)
  "Called to prime the pump and group together edges with the same span"
  (multiple-value-bind (first-group rest)
      (group-triples-by-span triples)
    (values first-group
            (when rest
              (group-triples-by-span rest)))))

(defun group-triples-by-span (triples)
  "create a list of all initial triples which cover the same span -- only happens
   for ambiguous interpretations (presently just words)"
  (let ((group (if (consp (caar triples))
                   (break "Unusual triple structure")  ;; (car triples)
                   (list (car triples))))
        (rest (cdr triples)))
    (loop while (and
                 rest
                 (eq (edge-starting-position (left-edge-of-triple (car group)))
                     (edge-starting-position (left-edge-of-triple (car rest))))
                 (eq (edge-ending-position (right-edge-of-triple (car group)))
                     (edge-ending-position (right-edge-of-triple (car rest)))))
          do
            (setq group `(,.group ,(car rest))) ;; nconc
            (setq rest (cdr rest)))
    (values group rest)))



(defun losing-competition? (l-triple r-triple)
  (declare (special r-triple l-triple category::as
                    category::adjective *ng-head-categories*
                    *adjg-head-categories* *vg-head-categories*))
  "The goal here is to put off object attachment until the object 
   is as large as possible.
"
  ;; Don't do right-to-left activation for the subj+verb rules
  
  (when (and (eq (left-edge-of-triple r-triple) (right-edge-of-triple l-triple))
             (not (high-priority-postmod? r-triple)))
    ;; there is an edge which is being competed for


    (let* ((l-triple-rhs (cfr-rhs (triple-rule l-triple)))
           (l-triple-left (and (category-p l-triple-rhs) (cat-symbol (car l-triple-rhs))))
           (r-triple-3 (right-edge-of-triple r-triple)))
      (declare (special l-triple-rhs l-triple-left triple-1-rhs r-triple-3))
      ;;(lsp-break "compete")
      (or
       (member (cat-name (cfr-form (triple-rule l-triple)))
               '(syntactic-there)) ;; competing against a "there BE"
       (losing-to-leftwards-pp? l-triple r-triple)
       (and (eq (cat-name (cfr-form (triple-rule r-triple))) 's)
            (or  (member (edge-form-name (left-edge-of-triple l-triple))
                         '(possessive))
                 (and
                  (member (edge-form-name (right-edge-of-triple l-triple))
                          '(vp+ing vg+ing))
                  (not (member (edge-form-name (left-edge-of-triple l-triple))
                               '(subordinate-conjunction))))))
       (and (competition-against-clausal-object? l-triple-rhs)
            ;; special case for "matches MEK inhibits ERK" --
            ;;  where we want the embedded sentence created
            (let ((r-triple-rhs (cfr-rhs (triple-rule r-triple))))
              (and
               (not
                (and (member (cat-name (car r-triple-rhs)) '(np))
                     (member (cat-name (second r-triple-rhs)) '(vp))
                     (thatcomp-verb (second l-triple))))
               (not
                (and (member (cat-name (car r-triple-rhs)) '(np))
                     (member (cat-name (second r-triple-rhs)) '(adjp))))))
            (not (eq 'thatcomp (form-cat-name r-triple-3)))
        
            ;; likely competition against a relative clause or a main clause
            ;;  accept r-triple as a winner if if is a rightward extension of and NP
            ;; e.g. "...the molecular mechanisms that regulate ERK nuclear translocation are not fully understood."
            (not
             ;; the rule for NP + VP+ED (in case of "is serine phosphorylated by ERK")
             (and (consp (cfr-referent (triple-rule r-triple)))
                  (or (eq (second (cfr-referent (triple-rule r-triple))) 'interpret-premod-to-verb)
                      ;;(eq (second (cfr-referent (car r-triple))) 'assimilate-subject-to-vp-ed)
                      )))
            (not (and (member (edge-cat-name (left-edge-of-triple l-triple)) '(be have))
                      (member (form-cat-name r-triple-3) '(vp+ed vp+ing))))
                  
            (or
             (and (eq (form-cat-name r-triple-3) 'pp)
                  (member (edge-left-daughter (edge-left-daughter r-triple-3))
                          (get-tag :loc-pp-complement
                                   (itype-of (edge-referent (left-edge-of-triple l-triple)))))
                  (not (some-edge-satisfying? (edges-after r-triple-3) #'pp?)))
             (not (member (form-cat-name r-triple-3)
                          '(whycomp thatcomp
                            pp vg+ing ;;and prevent GTP loading"
                            ;; "To validate the use of an in vitro system to dissect the mechanism of Ras regulation.
                            to-comp where-relative-clause when-relative-clause
                            transitive-clause-without-object
                            pp-relative-clause
                            subject-relative-clause comma-separated-subject-relative-clause))))))
       
      )))

(defparameter *l-triple-tests* nil
  "Holds the list of category pairs that should have every vp-forming rules
   (syntactic) righthand side. Populated on first call to l-triple-tests")
#| This is roughtly what the list is -- but there's no guarentee
   that these categories will have values before runtime when everthing has loaded
            `((,category::vg  ,category::np)
              (,category::vg  ,category::n-bar)
              ;; have to allow for participles such as
              ;; "RAF1 proteins containing mutations persist"
              (,category::vg+ing  ,category::np)
              (,category::vg+ing  ,category::n-bar)
              ;; with the new "infinitive" edge for verbs
              ;; of form "to stimulate", we need to allow
              ;; them to compete for objects
              (,category::infinitive  ,category::np)
              (,category::infinitive  ,category::n-bar)))))
|#
(defun l-triple-tests ()
  (declare (special category::as category::infinitive
                    category::syntactic-there category::vg
                    category::vg+ing category::vg+ed category::np
                    category::adjective category::n-bar *n-bar-categories*))
  (or *l-triple-tests*
      (setq *l-triple-tests* ;; simple transitive VP-forming patterns
            (loop for v in '(category::vg category::vg+ing category::infinitive
                             category::vg+ed category::vg+ing)
                 append
                    (loop for n in (cons category::np *n-bar-categories*)
                          collect (list (eval v) (eval n)))))))

(defun competition-against-clausal-object? (l-triple-rhs)
  (member l-triple-rhs (l-triple-tests) :test #'equal))


(defun losing-to-leftwards-pp? (l-triple r-triple)
  "Continuation of losing-competition?"
  (declare (special category::adjective category::as))
  (let ((r-triple-rhs (cfr-rhs (triple-rule r-triple))))
    (push-debug `(,l-triple ,r-triple ,r-triple-rhs))
    (and
     (prep? (cat-name (car (cfr-rhs (triple-rule l-triple))))) ;;l-triple-left
     (not (subordinate-conjunction? (left-edge-of-triple l-triple)))
     (or (not (possible-spatio-temporal-prep? l-triple))
         (itypep (edge-referent (right-edge-of-triple l-triple)) 'process))
     ;; "until" is both a preposition and a subordinate conjunction
     ;; causes problems with "Does the amount of phosphorylated MAP2K1 remain low until phosphorylated BRAF reaches a high value?"
     (not (eq (edge-category (left-edge-of-triple l-triple)) category::as))
     ;; almost always a use of "as" as a subordinate conjunction
  
     (not
      (and (edge-p (edge-left-daughter (right-edge-of-triple r-triple)))
           (eq category::adjective 
               (edge-form (edge-left-daughter (right-edge-of-triple r-triple))))))
     (or
      (pp-relative-clause? r-triple)
      (and (category-p (second r-triple-rhs))
           (memq (cat-symbol (second r-triple-rhs))
                 '(category::vg category::vp category::vg+ed category::vp+ed
                   category::vp+past
                   category::vg+passive category::vp+passive
                   category::copular-pp
                   ;;category::comma-separated-subject-relative-clause
                   )))
      (memq (second (cfr-rhs-forms (triple-rule r-triple)))
            ;; this is needed because the schema based rules generate rules in terms of 
            ;;  semantics and not syntax, so we have phosphorylate+ed and not vp/+ed
            '(vg vp vg+ed vg+ed vp+ed vp+past vg+passive vp+passive
              vg/+ed vg/+ed vp/+ed vg/+passive vp/+passive
              ;;comma-separated-subject-relative-clause
              )))

     (pp-absorbing-edge? (edge-just-to-left-of (left-edge-of-triple l-triple))))))


(defun pp-absorbing-edge? (preceding-edge)
  "There must be a constituent which can absorb the result of
   the left competing rule"
  (declare (special *ng-head-categories* *vg-head-categories* *adjg-head-categories*))
  (let ((sym (safe-edge-form preceding-edge)))
    (or
     (member sym *ng-head-categories*)
     (member sym *vg-head-categories*)
     (member sym *adjg-head-categories*)
     (member sym 
             '(category::vp category::vg 
               category::vg+ed category::vp+ed category::vp+past 
               category::vg+ing category::vp+ing
               category::vg+passive category::vp+passive
               category::adverb)))))

(defun safe-edge-form (edge? &aux (ef (and (edge-p edge?)
                                           (edge-form edge?))))
  ;; got a case with COMMA as a literal edge
  (when ef (cat-symbol ef)))


(defun high-priority-postmod? (r-triple &aux (r-triple-rhs (cfr-rhs (triple-rule r-triple))))
  (and ;; need to generalize this for "high priority" NP post-modifiers
   (category-p (second r-triple-rhs))
   ;; this is for the case where an S can be formed on the right
   (or (member (cat-name (left-edge-of-triple r-triple-rhs)) '(in-vitro in-vivo))
       (eq (form-cat-name (right-edge-of-triple r-triple))
           'object-relative-clause))))

(defun pp-relative-clause? (r-triple &aux (r-triple-rhs (cfr-rhs (triple-rule r-triple))))
  ;; pp starting a relative clause -- "in which"
  (and 
   (memq (cat-symbol (car r-triple-rhs))
         '(category::which category::who category::whom category::where))
   (eq (cat-symbol (second r-triple-rhs)) 'category::s)))

(defun prep? (cat-name)
  (member cat-name '(preposition spatial-preposition spatio-temporal-preposition)))

(defun possible-spatio-temporal-prep? (l-triple)
  (declare (special category::spatio-temporal-preposition))
  (loop for e in (all-edges-at (left-edge-of-triple l-triple))
     thereis
       (eq (edge-form e) category::spatio-temporal-preposition)))


(defun subordinate-conjunction? (e)
  (declare (special category::subordinate-conjunction))
  (loop for e in (all-edges-at e)
     thereis
       (eq (edge-form e) category::subordinate-conjunction)))


;;; OBSOLETE CODE -- FOR REFERENCE AND LATER DELETION


(defun old-losing-competition? (l-triple r-triple)
  (declare (special r-triple l-triple
                    category::as category::adjective                    
                    *NG-HEAD-CATEGORIES* *ADJG-HEAD-CATEGORIES* *VG-HEAD-CATEGORIES*))
  ;; goal here is to put off subject attachment until the subject 
  ;; is as large as possible.
  ;; Don't do right-to-left activation for the subj+verb rules
  ;;(print `(dropping rule ,r-triple))
  ;;(print `(in *p-sent* ,*p-sent* dropping rule ,r-triple compared to ,l-triple))
  (when (eq (second r-triple) (third l-triple))	
    ;; there is an edge which is being competed for
    (let* ((l-triple-rhs (cfr-rhs (car l-triple)))
           (l-triple-left (cat-name (car l-triple-rhs)))
           (r-triple-rhs (cfr-rhs (car r-triple)))
           (r-triple-left (cat-symbol (car r-triple-rhs)))
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
                (or (member (cat-name (second r-triple-rhs)) '(in-vitro in-vivo))
                    (eq (form-cat-name r-triple-3) 'object-relative-clause))))
	(or
         
         ;;(eq 'category::infinitive l-triple-left)
         ;; this kills "To determine the effect of MAPK phosphorylation on endogenous ASPP2 activity
         ;; but makes ""the ability of PKCtheta to phosphorylate BAD is enhanced by the co-expression of Raf-1 and B-Raf." work
         

         (eq 'syntactic-there l-triple-left) ;; competing against a "there BE"
	 (and
	  (member l-triple-rhs (l-triple-tests) :test #'equal)
	  ;; likely competition against a relative clause or a main clause
	  ;;  accept r-triple as a winner if if is a rightward extension of and NP
	  ;; e.g. "...the molecular mechanisms that regulate ERK nuclear translocation are not fully understood."
          (or
           (and (eq (form-cat-name r-triple-3) 'pp)
                (member (edge-left-daughter (edge-left-daughter r-triple-3))
                        (get-tag :loc-pp-complement (itype-of (edge-referent (second l-triple)))))
                (not (some-edge-satisfying? (edges-after r-triple-3) #'pp?)))
           (not (member (form-cat-name r-triple-3)
                        '(pp
                          ;; "To validate the use of an in vitro system to dissect the mechanism of Ras regulation.
                          to-comp where-relative-clause when-relative-clause
                          subject-relative-clause comma-separated-subject-relative-clause)))))
	 (and
	  (prep? l-triple-left)
          (not (subordinate-conjunction? (second l-triple)))
          (or (not (possible-spatio-temporal-prep? l-triple))
              (itypep (edge-referent (third l-triple)) 'process))
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
                   category::vp+past
		   category::vg+passive category::vp+passive
                   category::copular-pp
		   ;;category::comma-separated-subject-relative-clause
		   ))
	   ;; this is needed because the schema based rules generate rules in terms of 
	   ;;  semantics and not syntax, so we have phosphorylate+ed and not vp/+ed
	   (memq (second (cfr-rhs-forms (car r-triple)))
		 '(vg vp vg+ed vg+ed vp+ed vp+past vg+passive vp+passive
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
		       category::vg+ed category::vp+ed category::vp+past 
		       category::vg+ing category::vp+ing
		       category::vg+passive category::vp+passive
		       category::adverb))))))))))
