;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1996,2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "treetops"
;;;    Module:   "analyzers;forest:"
;;;   Version:   1.5 December 2015

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
;;      (1/2/2015) key component of whack-a-rule control structure -- find all applicable rules across adjacent treetops
;;       called repeatedly, getting different rules each time as the tretops change by application of rules
;; 1/4/2015 add flag and bind the special *left-edge-into-reference* in possible-treetop-=rules so that ref/function can work as a predicate
;; 1/6/2015 new mechanism in whack-a-rule to prioritize PP creation and attachemnt above subject+verb binding
;; 1/8/2015 refactor possible-treetop-rules to make it easier to trace and understand
;; 1/8/2015 rename to best-treetop-rule and make it return one rule only
;; 1/14/2015 revise losing-competition? to account for more general form of subject rule, looking at cfr-rule-forms
;; 1/18/2015 fix typo in test-subcat-rule
;; 2/10/15 cleaned up / reformatted a bit so I could figure out what's
;;  going on in the code that supports wack-a-rule

(in-package :sparser)

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

(defun right-treetop-at/only-edges (position)
  (let* ((ev (pos-starts-here position))
         (top-node (ev-top-node ev)))
    (cond ((eq top-node :multiple-initial-edges)
           (elt (ev-edge-vector ev)
                (1- (ev-number-of-edges ev))))
          (top-node top-node)
          (t nil))))


(defun left-treetop-at/only-edges (position)
  (let* ((ev (pos-ends-here position))
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
        (push tt tts))
      (nreverse tts))))
    

;;;---------------------------
;;; machinery for wack-a-rule
;;;---------------------------
      
(defun adjacent-tts (&optional (all-edges (all-tts)))
  (loop for edges on (cdr all-edges) 
    while (cdr edges) 
    when (and 
          (edge-p (car edges)) 
          (edge-p (second edges))
          (adjacent-edges? (car edges) (second edges)))
    collect
    (list (car edges) (second edges))))

(defun all-tts (&optional 
                (starting-position
                 (if (still-in-the-chart 0)
                   (chart-position 0)
                   (chart-position (+ 2 *first-chart-position*))))
                stop-pos)
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
  (let* ((random-left-edge (car edges-to-left))
         (left-ev (edge-ends-at random-left-edge))
         (left-end-position (ev-position left-ev)))
    (unless (eq left-end-position end-pos)
      (let* ((next-ev (pos-starts-here left-end-position))
             (edges-to-right (tt-edges-starting-at next-ev))
             pairs )
        (setq pairs (form-all-pairs edges-to-left
                                    edges-to-right))
        (let ((recursive-pairs 
               (adjacent-tt-pairs1 edges-to-right end-pos)))
          (let ((retun-value
                 (if recursive-pairs
                   (nconc pairs recursive-pairs)
                   pairs)))
            retun-value))))))

(defun form-all-pairs (left-list right-list)
  (let ( pairs )
    (loop for left in left-list
      do (loop for right in right-list
           do (push (list left right) pairs)))
    pairs))
     
         
(defparameter *use-boader-set-of-tts* nil)

(defun best-treetop-rule (sentence)
  ;; feeder routine in whack-a-rule-cycle that identifies
  ;; all of the treetop edges that are pairwise adjacent
  ;; using adjacent-tts and winnows that list down using
  ;; filter-rules-by-local-competition
  (let ((pairs (if *use-boader-set-of-tts*
                 (adjacent-tt-pairs sentence)
                 (adjacent-tts)))
        rule  triples )
    (push-debug `(,pairs))
    (tr :pairs-to-consider-wacking pairs)
    (loop for pair in pairs 
      when (setq rule (rule-for-edge-pair pair))
      do (push (cons rule pair)
               triples))
    (setq triples ; 
          (if *use-boader-set-of-tts*
            (let ((original-triples (copy-list triples))) ;; for trace
              (push-debug `(,original-triples))
              (remove-surplus-literal-compositions triples))
            triples))

    (let ((triple (filter-rules-by-local-competition triples)))
      (tr :filter-selected-triple triple)
      triple)))

;; seriously consider a resource of thse
(defun triple-rule (triple) (car triple))
(defun left-edge-of-triple (triple) (cadr triple))
(defun right-edge-of-triple (triple) (caddr triple))

;;/// move
(defun literal-edge? (edge) ;;/// not the best name
  (word-p (edge-category edge)))

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
                 (remove-redundant-literal-triples edges-over-one-word)))
            triples-minus-redundant-literals)          
          triples) ;; only one edge over a single word
        triples)) ;; none over just one word
    triples)) ;; only one triple

(defun remove-redundant-literal-triples (records)
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
  (tr :can-we-wack-pair pair)
  (let ((rule (multiply-edges (car pair) (second pair))))
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
              t))
        (tr :wack-pair-with-rule rule)
        rule)
      (else
       (tr :no-rule-to-wack-pair)
       nil))))

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

(defun filter-rules-by-local-competition (tiples)
  (loop for tail on tiples
    ;; Go through every pair of triples. Establish whether
    ;; they are competing over an edges that they have
    ;; in common, and apply heuristics to determine
    ;; which one to permit to win.
    unless (losing-competition? (car tail) (cadr tail))
    do (return (car tail))))

(defun losing-competition? (tiple1 triple2)
  (declare (special tiple1 rule2))
  (cond
   ((and 
     (eq (second tiple1) (third triple2))
     ;; there is an edge which is being competed for

     (or ;; competing against a "there BE"
      (eq category::syntactic-there (car (cfr-rhs (car triple2))))
      (and
       (or (eq category::preposition (car (cfr-rhs (car triple2))))
           (eq category::spatial-preposition (car (cfr-rhs (car triple2)))))
       (or
        (equal '(NP/SUBJECT VP) (cfr-rhs-forms (car tiple1)))
        (equal '(NP/PATIENT VP/+ED) (cfr-rhs-forms (car tiple1)))
        (memq (cat-symbol (second (cfr-rhs (car tiple1))))
              '(category::vg category::vp)))

       ;; there must be a competing rule
       (let ((preceding-edge (edge-just-to-left-of (second triple2))))
         (and
          preceding-edge
          (edge-form preceding-edge) ;; got a case with COMMA as a literal edge
          (or
           (member (cat-symbol (edge-form preceding-edge)) *ng-head-categories*)
           (member (cat-symbol (edge-form preceding-edge)) *vg-head-categories*)
           (eq (cat-symbol (edge-form preceding-edge)) 'category::vg)))))))
    ;; goal here is to put off subject attachment until the subject 
    ;; is as large as possible.
    ;; Don't do right-to-left activation for the subj+verb rules
    ;(break "competing")
    ;;(print `(dropping rule ,tiple1))
    t)
   (t nil)))


