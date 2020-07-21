;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2019-2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "da-rules-aux"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  June 2020

;; Initiated 1/15/19 to break out the predicates and work functions
;; from da-rules to make them both easier to read

(in-package :sparser)

;;--- looking through the tree

(defun get-subject-from-s-edge (s-edge)
  (declare (special s-edge))
  (let ((real-s-edge (find-base-np-vp-edge s-edge)))
    (when (and (edge-p real-s-edge)
               (edge-p (edge-left-daughter real-s-edge)))
      (edge-referent (edge-left-daughter real-s-edge)))))

(defun find-base-np-vp-edge (e)
  (declare (special *show-failed-find-base-np-vp-edge*))
  (cond ((member (form-cat-name (edge-left-daughter e))
                 '(np proper-noun proper-name
                   common-noun common-noun/plural
                   pronoun wh-pronoun
                   vg+ing vp+ing))
         e)
        ((or (member (form-cat-name e) '(subordinate-s subordinate-clause))
             (member (form-cat-name (edge-left-daughter e))
                     '(adverb pp to-comp
                       subordinate-clause)))
         (find-base-np-vp-edge
          (second (loop for ee in (edges-under e)
                     unless (or (not (edge-p ee))
                                (word-p (edge-left-daughter ee))
                                (word-p (edge-category ee)))
                        collect ee))))
        ((or (member (form-cat-name e)
                     '(vp vg vp+past vp+ed))
             (member (cat-name (edge-category (edge-left-daughter e)))
                     '(vp vg vp+past vp+ed there-exists)))
         nil)
        ((member (form-cat-name (edge-left-daughter e))
                 '(s subordinate-s)) ;; possible/likely conjunction
         (find-base-np-vp-edge (edge-left-daughter e)))
        
        (t (when *show-failed-find-base-np-vp-edge*
             (warn "find-base-np-vp-edge failed for ~s in ~s" e (current-string)))
           nil)))


;;--- predicates

(defun np-conjunction-edge? (e)
  (and (eq (form-cat-name e) 'np)
       (individual-p (edge-referent e))
       (is-basic-collection? (edge-referent e))))



;;--- Standard constructors

(defun create-event-relation (event-edge sub-clause-edge
                              &optional
                                (conj (value-of 'subordinate-conjunction
                                                (edge-referent sub-clause-edge))))
  (make-edge-spec
   :category category::event-relation
   :form category::s
   :referent (make-event-relation
              conj
              (edge-referent event-edge)
              (edge-referent sub-clause-edge)
              event-edge
              sub-clause-edge)))


(defun make-event-relation (conj event sub-event &optional event-edge sub-event-edge)
  (cond ((itypep event 'polar-question)
         (let ((event-relation
                (make-simple-individual
                 category::event-relation
                 `((relation ,conj)
                   (event ,(value-of 'statement event))
                   (subordinated-event ,sub-event)))))
           ;; create the edge needed to hold the mention for
           ;;  event-relation
           (make-edge-over-long-span
            (pos-edge-starts-at sub-event-edge)
            (pos-edge-ends-at sub-event-edge)
            category::event-relation
            :rule 'make-event-relation
            :form (edge-form sub-event-edge)
            :referent event-relation)
         (make-simple-individual
          category::polar-question
          `((statement , event-relation)))))
        (t
         (let ((event-relation
                (make-simple-individual
                 category::event-relation
                 `((relation ,conj) (event ,event) (subordinated-event ,sub-event)))))
           (make-edge-over-long-span
            (pos-edge-starts-at sub-event-edge)
            (pos-edge-ends-at sub-event-edge)
            category::event-relation
            :rule 'make-event-relation
            :form (edge-form sub-event-edge)
            :referent event-relation)
           event-relation))))
;;--- Common subroutines

(defun fix-da-ending-pos (da-end-pos)
  (if (or (eq (pos-terminal da-end-pos) *end-of-source*)
          (null (pos-terminal da-end-pos)))
    (chart-position-before da-end-pos)
    da-end-pos))

(defun update-edge-as-lambda-predicate (vp-edge np
                                        &optional (syntactic-label :subject)
                                        &aux (vp-indiv (edge-referent vp-edge)))
  ;; update-edge-as-lambda-predicate now returns NIL if there is
  ;;  no available binding for the variable (s-var or t-var) on srel-edge
  (declare (special category::wh-question))
  (cond ((null np)
         (lsp-break "null np in update-edge-as-lambda-predicate")
         (return-from update-edge-as-lambda-predicate nil))
        ((edge-p np) (setq np (edge-referent np))))
  (when (and (eq :subject syntactic-label)
             (member (form-cat-name vp-edge) '(vp+passive object-relative-clause)))
    ;; example "is mediated by caspase-3, which is also activated by GzmB"
    (setq syntactic-label :object))
  (cond ((itypep vp-indiv category::wh-question)
         (update-wh-question-as-lambda-predicate vp-edge np syntactic-label))
        ((is-basic-collection? vp-indiv)
         (update-conjunctive-edge-as-lambda-predicate vp-edge np syntactic-label))
        (t (let* ((svar (best-variable-for-syntactic-label vp-edge np syntactic-label)))
             (cond 
               ((null svar)
                ;;(break "update-edge-as-lambda-predicate fails~
                ;;to find a subject-variable for ~s~%" vp-edge)
                ;; (edge-referent vp-edge)
                nil)
               ((null (value-of svar (edge-referent vp-edge)))
                ;; now creates a new edge, so doesn't have to set
                ;; the referent separately
                (create-predication-and-edge-by-binding
                 svar np (edge-referent vp-edge) vp-edge)))))))
 
(defun ref-from-edge (ref)
  (if (edge-p ref) (edge-referent ref) ref))

(defun best-variable-for-syntactic-label (vp-item item syntactic-label)
  (let ((vp (ref-from-edge vp-item))
        (np (ref-from-edge item)))
    (if (and np vp) ;; can get null vp for cases like "which might be more impressive"
        (subcategorized-variable vp syntactic-label np)
        (subject-variable vp))))


(defun copular-predication-clause? (clause clause-referent)
  (or 
   (itypep clause-referent 'copular-predication)
   ;; we are no longer creating copular-predication
   ;;  for copular adjecives
   (adjective-phrase? (edge-right-daughter clause))))

(defun failed-pp-attachment (pp clause-referent)
  (declare (special *show-failed-fronted-pp-attachment*))
  (when *show-failed-fronted-pp-attachment*
    (format t "~&~&<<<<<<<>>>>>> attaching leading PP ~s to clause ~s without defined variable~&"
	    (retrieve-surface-string pp)
	    (retrieve-surface-string clause-referent)))
  nil)



(defun update-wh-question-as-lambda-predicate (vp-edge np syntactic-label)
  (let ((new-pred (update-edge-as-lambda-predicate
                   (edge-right-daughter vp-edge)
                   np
                   syntactic-label)))
    ;(set-edge-referent vp-edge new-pred)
    new-pred))

(defun update-conjunctive-edge-as-lambda-predicate (vp-edge np syntactic-label)
  (declare (special vp-edge))
  ;;  (lsp-break "vp-edge")
  (let ((conj-preds (value-of 'items (edge-referent vp-edge))))
    (unless (loop for cpred in conj-preds
                  always (best-variable-for-syntactic-label cpred np syntactic-label))
      ;; BAIL unless all conjunctive clauses can be predicates on the np
      (let* ((new-preds
              (loop for cpred in conj-preds
                    collect
                      (create-predication-by-binding
                       (best-variable-for-syntactic-label cpred np syntactic-label)
                       np cpred)))
             (new-conj (create-collection new-preds (itype-of (edge-referent vp-edge)))))
        (make-predication-edge vp-edge new-conj) ;; make one predication edge over all
        new-conj))))

(defun conjunction-glue (e)
  "conjunction or comma that glues a conjunction edge together"
  (or
   (eq (form-cat-name e) 'conjunction)
   (eq (edge-category e) word::comma)))

(defun find-target-satisfying (fringe pred)
  (loop for edge in fringe
     when (and (not (eq (edge-mention edge) t))
               ;; only want maximal projections
               ;; not subsumed by a larger projection on the fringe/head-line
               (funcall pred edge))
     return edge))

(defun right-fringe-of (edge)
  "Always used in conjunction with find-target-satisfying to supply
   the candidate right fringe of edges that is anticipated to include
   the target edge."
  (connected-fringe (pos-ends-here (pos-edge-ends-at edge))))

(defun np-target? (edge)
  (and
   (member (form-cat-name edge) '(proper-noun np))
   ;; test below is because of some strange cases where an item in the
   ;;  fringe in not in the tree
   (or (null (edge-used-in edge))
       (and
        ;; test below is to block finding of "FAK" below "phosphorylated FAK"
        (not (np-target? (edge-used-in edge)))
        (not (member (form-cat-name (edge-used-in edge))
                     '(n-bar np)))))))

(defun clause-target? (edge)
   (member (form-cat-name edge) '(thatcomp s)))



(defun adverb-at? (position)
  (loop for e in (all-edges-on (pos-starts-here position))
        thereis (and (edge-p e) (eq (form-cat-name e) 'adverb))))

(defun adjective-at? (position)
  (loop for e in (all-edges-on (pos-starts-here position))
        thereis (and (edge-p e) (member (form-cat-name e) '(adjective adjg)))))

(defun to-be-at? (position)
  (loop for e in (ev-top-edges (pos-ends-here position))
     thereis (and (edge-p e) (eq (edge-cat-name e) 'be))))

(defun respan-edge-around-one-word (word-edge left-term right-term)
  (let ((word-category (edge-category word-edge))
        (word-form (edge-form word-edge))
        (word-referent (edge-referent word-edge))
        (new-start-pos (chart-position-before (pos-edge-starts-at word-edge)))
        (new-end-pos (chart-position-after (pos-edge-ends-at word-edge))))
    (let ((edge (make-completed-unary-edge
                 ;; We're ignoring the commas in the edge structure
                 ;;/// this is usually an interjection, how could we
                 ;; indicate that
                 (pos-starts-here new-start-pos) ;; the edge vector
                 (pos-ends-here new-end-pos)
                 :respan-edge-around-one-word ;; rule
                 word-edge ;; daughter
                 word-category 
                 word-form
                 word-referent)))
      (setf (edge-constituents edge) `(,left-term ,word-edge ,right-term))
      ;; (push-debug `(,edge)) (break "look at edge")
      edge)))



;;--- Functions for attaching trailing participles

(defun attach-trailing-participle-to-clause-with-conjunction (s-edge conj vp-edge)
  ;; The participle (vp+ing) is presumably missing it's subject,
  ;; which we'll take to be the whole clause. 
  ;;//// motivated by second sentence in figure-7 where the participle
  ;; is a conjunction, as is the clause. Semantically that one reads
  ;; as the entire clause being the cause of (each of) the elements of
  ;; the participle. But this should be reconsidered if other cases
  ;; have a different relationship.
  (attach-trailing-participle-to-clause-or-object-with-comma s-edge vp-edge))

(defun attach-trailing-participle-to-clause-or-object (s-edge vp-edge)
  (let* ((s (edge-referent s-edge))
         (vp (edge-referent vp-edge))
         (target
          (find-target-satisfying
           (right-fringe-of s-edge)
           #'(lambda(x)
               (and (np-target? x)
                    (subcategorized-variable vp :subject (edge-referent x))))))
         ;; update-edge-as-lambda-predicate now returns NIL if there is
         ;;  no available binding for the variable (s-var or t-var) on vp-edge
         (t-pred (when target
                   (update-edge-as-lambda-predicate vp-edge target))))
    (cond (t-pred
           (make-edge-spec 
            :category (edge-category target)
            :form (edge-form target)
            :referent (bind-dli-variable :predication t-pred (edge-referent target))
            :target target
            :direction :right))
          ((let ((s-pred (update-edge-as-lambda-predicate vp-edge s)))
             (when s-pred
               (make-edge-spec 
                :category (edge-category s-edge)
                :form (edge-form s-edge)
                :referent (bind-dli-variable 'predication s-pred s)
                )))))))

(defun attach-trailing-participle-to-clause-or-object-with-comma (s-edge vp-edge)
  "the comma makes it more likely as a modifier of the s" ;;/// ????
  (let* ((s (edge-referent s-edge))
         (vp (edge-referent vp-edge))
         (s-pred
          ;; update-edge-as-lambda-predicate now returns NIL
          ;; if there is no available binding for the variable
          ;; (s-var or t-var) on vp-edge
          (update-edge-as-lambda-predicate vp-edge s)))
    (if s-pred
        (make-edge-spec 
         :category (edge-category s-edge)
         :form (edge-form s-edge)
         :referent (bind-dli-variable 'predication s-pred s))
        (let* ((target (find-target-satisfying
                        (right-fringe-of s-edge)
                        #'(lambda(x)
                            (and (np-target? x)
                                 (subcategorized-variable
                                  vp
                                  :subject (edge-referent x))))))
               (t-pred
                (when target
                  (update-edge-as-lambda-predicate vp-edge target))))
          (when t-pred
            (make-edge-spec 
             :category (edge-category target)
             :form (edge-form target)
             :referent (bind-dli-variable :predication t-pred (edge-referent target))
             :target target
             :direction :right))))))

