;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990-1991  Content Technologies Inc.
;;; copyright (c) 1993-1997,2013-2016  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "complete HA"
;;;    Module:   "analyzers;psp:complete:"
;;;   Version:   July 2016

;; 1.1  (5/2 v1.8.4)  Modified Complete-edge to check the quiescent
;;      position of the forest-level parser
;; 1.2  (10/21 v2.0) Overhauled it to streamline/make-consistent the
;;      calling patterns & hooks.
;;      (11/1) put in *do-completion-actions* in place of *..action..*
;; 1.3 (7/14/92 v2.3) bumped version to 3 to go with changing the call
;;       for anaphor recording of edges.
;; 3.1 (5/3/93) added status setting to word completion routine
;; 3.2 (6/11) passed positions through to next stage
;; 3.3 (12/6) flushed the polyword case since it's subsumed by edges
;; 3.4 (6/6/94) added a optional subsumption test on edges
;; 3.5 (7/12) redefined the subsumption test as an alist to handle arbitrary depth
;;     (7/22) put a patch in it to get around a separate bug
;;     (10/13/97) put a model gate in Complete-edge/hugin.
;;     (2/5/07) converted e{type}case to use otherwise & break
;;     (7/14/08) Made "hugin" lowercase in anticipation of lower-casing
;;      all functions.
;;     (2/8/13) Fixed incorrect status setter
;;     (6/6/15) Added cache-local-edge-referent-pair to the edge case
;; 3.6 (6/8/15) Folded in polywords throughout.
;;      Diagnostics for edge-referents which are CONS cells --
;;        break is controlled by parameter *diagnose-consp-referents*
;;      Installed (note-surface-string edge) to provide information
;;        for cards.

(in-package :sparser)


;;;-----------
;;; the hook
;;;-----------

#| Hugin (??)
This is one of the oldest files in Sparser. When it was first written
there were three alternatives functions that could be run when an edge
or word was completed ("complete" comes from Earley's algorithm).
The other two were dropped from the load quite some time ago, leaving
this one, which was the 'smartest' of the three, mostly because of the
edge subsumption check and the use of the same algorithm in the
discourse update. 

Hugin ("HOO-gin") was one of the two ravens that aided Odin. The other
was Muninn. Hugin was the spirit of thought, Muninn of desire. 
They are often depicted as perching on Odin's shoulders.

See http://norse-mythology.org/gods-and-creatures/others/hugin-and-munin/
|#

(defun complete/hugin (obj
                       &optional position next-position)

  (when *do-completion-actions*
    (tr :completing obj position)
    (typecase obj
      (edge     (complete-edge/hugin obj))
      (word     (complete-word/hugin obj position next-position))
      (polyword (complete-word/hugin obj position next-position))
      (otherwise
       (break "Something other than an edge or a word passed ~
               to completion hook: ~a" obj)))))


;;;-------
;;; words
;;;-------

(defun complete-word/hugin (word
                            &optional position-before
                                      position-after)

  (check-for-completion-actions/word word
                                     position-before
                                     position-after)
  (when position-before
    (set-status :word-completed position-before))
  :complete )


;;;--------
;;; edges
;;;--------

(defun complete-edge/hugin (edge)
  (declare (special *do-anaphora*  ;; may be dynamically bound
                    *use-discourse-mentions*))

  (unless (subsumption-check/complete edge)
    ;;(push-debug `(,edge)) (lsp-break "~a passed the check" edge)
    (check-for-completion-actions/category (edge-category edge)
                                           edge))          

  (valid-referent? edge) ;; error if null

  (when (or *use-discourse-mentions*
	    (and *include-model-facilities*
	     *pronouns* ;; the module is loaded
	     *do-anaphora*)) ;; we've not deliberately turned it off
    (add-subsuming-object-to-discourse-history edge))

  ;; Update forest level indexes
  (check-impact-on-quiescence-pointer edge)

  (when *use-discourse-mentions*
    (update-mention-links edge))

  (note-surface-string edge)

  (when *use-discourse-mentions*
    (update-definite-determiner edge)) ;; recording function

  (maybe-check-semantic-completeness edge)
  
  (record-generation-information edge)

  ;; keep this on the stack
  :complete )


;;;----------------
;;; record keeping
;;;----------------

(defparameter *name-realizations* nil ;;(make-hash-table :size 1000)
)
(defparameter *null-name-realizations* nil)

(defun record-generation-information (edge)
  "A place to put code to capture information about the way that various
   NP semantics are typically expressed."
  (declare (special *name-realizations* *return-after-doing-forest-level*))
  (when (and *name-realizations*
             *return-after-doing-forest-level*
             (member (form-cat-name edge) '(np proper-noun)))
    (let* ((ref (edge-referent edge))
           (name (or (value-of 'name ref)
                     (cat-name (itype-of ref))))
           (pname (etypecase name (word (pname name)) (polyword (pname name)) (symbol name)))
           (realizations (gethash pname *name-realizations*))
           (head-edge (get-np-head-edge edge))
           (head-string (and head-edge
                             (trim-whitespace
                              (extract-string-spanned-by-edge head-edge))))
           (count (assoc head-string realizations :test #'equalp)))
      (cond (count (incf (second count)))
            (t (push (list head-string 1)
                     (gethash pname *name-realizations*)))))))

(defun get-np-head-edge (np-edge)
  (declare (special *chunks*))
  (let* ((np-chunk
          (loop for chunk in (reverse *chunks*)
             when (and (<= (pos-token-index (pos-edge-starts-at np-edge))
                           (pos-token-index (chunk-start-pos chunk)))
                       (>= (pos-token-index (pos-edge-ends-at np-edge))
                           (1- (pos-token-index (chunk-end-pos chunk)))))
             do (return chunk)))
         (head-edge
          (when np-chunk ;; have problems with hyphenated items like "GDP-bound"
          (find-np-type-edge (chunk-ev-list np-chunk)))))
           
    (declare (special np-chunk ev head-edge))
    (when (null head-edge)
      (let* ((ref (edge-referent np-edge))
             (name (or (value-of 'name ref)
                       (cat-name (itype-of ref))))
             (pname (etypecase name (word (pname name)) (polyword (pname name)) (symbol name)))
             (examples (assoc pname *null-name-realizations* :test #'equalp)))
        ;;(lsp-break "null head edge in get-np-head-edge")
        (if examples
            (push (current-string)
                  (cdr examples))
            (push (list pname (current-string))
                  *null-name-realizations*))))
    head-edge))


(defun find-np-type-edge (ev-list)
  (loop for np-span from 1 to 4
     do
       (loop for ev in ev-list
          do
            (loop for i from 0 to (1- (ev-number-of-edges ev))
               do
                 (let ((e (elt (ev-edge-vector ev) i)))
                   (when (edge-p e)
                     (cond
                       ((or
                         (member (form-cat-name e)
                                 '(common-noun common-noun/plural proper-noun))
                         (and (<= (pos-token-index (pos-edge-ends-at e))
                                  (+ np-span (pos-token-index (pos-edge-starts-at e)))) ;; catch "histone 2B"
                              (member (form-cat-name e) '(np))))
                        (return-from find-np-type-edge
                          (elt (ev-edge-vector ev) i)))
                       ((eq (edge-rule e) 'KNIT-PARENS-INTO-NEIGHBOR)
                        (return-from find-np-type-edge
                          (edge-left-daughter e))))))))))
 
;;;-------------------
;;; subsumption check
;;;-------------------

(defvar *instances-of-subsumption-relevant-edges* nil)

(define-per-run-init-form
  '(setq *instances-of-subsumption-relevant-edges* nil))


(defun subsumption-check/complete (edge)
  "It is convient occassionally to rewrite an edge as another edge
   over the identical span and with the same label. If that label
   has a completion action there is the potential for an infinite
   rewriting loop (but caught by the limit in edge-vectors). 
   This can be prevented by marking the label to inhibit the use
   of completion. This code checks for that. We let the first
   instance of one of these edges through, but block all later
   edges if the covers the same span."
  (let ((category (edge-category edge)))
    (when (get-tag :inhibit-completion-actions-of-subsumer category)
      (let ((entry
             (assoc category *instances-of-subsumption-relevant-edges*)))
        (if entry
          (let ((old-start (first (cdr entry)))
                (old-end   (second (cdr entry)))
                (new-start (pos-token-index (pos-edge-starts-at edge)))
                (new-end (pos-token-index (pos-edge-ends-at edge))))
            (let ((subsumes?
                   (unless (>= new-start old-end)
                     (and (<= new-start old-start)
                          (>= new-end old-end)))))
              (if subsumes?
	        (then
                  (rplacd entry `(,new-start ,new-end))
                  t )
                (else
                  (rplacd entry `(,new-start ,new-end))
                  nil ))))
          (else ;; no entry
            (push `(,category
                     . (,(pos-token-index (pos-edge-starts-at edge))
                         ,(pos-token-index (pos-edge-ends-at edge))))
                  *instances-of-subsumption-relevant-edges*)
            nil ))))))

(defun inhibit-completion-when-subsumes (label)
  ;; called from the grammar to setup the subsumption check
  ;; and inhibition on a specific label
  (setf (get-tag :inhibit-completion-actions-of-subsumer label) t)
  :done)




;;;-----------------------------
;;; various checks on referents
;;;-----------------------------

(defparameter *diagnose-consp-referents* nil)

(defun valid-referent? (edge)
  (declare (special *lefthand-side-CW-words*))
  "Trap cases where an edge that should have a referent doesn't.
   And for the posibility of the referent being a cons"
  (declare (special category::punctuation category::dash
                    category::unknown-verb
                    word::|is| word::|are| word::|am|
                    *sentence-in-core*))
  (when (null (edge-referent edge))
    ;; It doesn't have a referent. Is that ok?
    (unless (or (polyword-p (edge-category edge))
                (eq (edge-form edge) category::punctuation)
                (memq (edge-category edge) ;; for CS rules in be.lisp
                      *lefthand-side-CW-words*)
                (memq (edge-category edge)
                      `(,category::dash ,category::unknown-verb))
                (member (edge-rule edge)
                        '(:default-edge-over-paired-punctuation
                          :conjunction/identical-adjacent-labels
                          :stub-for-parse-number-sequence
                          ;; happened once, in "substrate like" and "regulatory"
                          :apostrophe-fsa)))
      (push-debug `(,edge))
      (warn-or-error "edge with null referent: ~a in ~% ~s~%"
            edge (sentence-string *sentence-in-core*))))
    
  (when (and *diagnose-consp-referents*
             (consp (edge-referent edge)))
    (break "referent is a CONS~ ~s" (edge-referent edge))))



(defparameter *check-semantic-completeness* nil)

(defun ignore-semantic-check? (rule)
  (declare (special *chunk* *ignored-semantic-check-rules*))
  (or (when (not (cfr-p rule))
        (cond
          ((polyword-p rule) t)
          ((eq rule 'sdm-span-segment)
           (format t "~&sdm-span-segment in complete-edge/hugin on ~s~&" *chunk*)
           t)
          ((member rule '(:number-fsa nospace-colon-specialist
			   make-hyphenated-pair 
                          :default-edge-over-paired-punctuation
                          knit-parens-into-neighbor
                          :conjunction/identical-adjacent-labels))
           t)))
      (null (cdr (cfr-rhs rule)))
      (loop for x in (cfr-rhs rule) thereis (not (category-p x)))
      (member (cat-name (car (cfr-rhs rule)))
	      '(that which syntactic-there be det))
      (member (mapcar #'cat-name (cfr-rhs rule))
	      *ignored-semantic-check-rules*
	      :test #'equal)))

(defparameter *ignored-semantic-check-rules*
  '((syntactic-there be)))

(defun maybe-check-semantic-completeness (edge)
  (declare (special category::pronoun))
  (when (and *check-semantic-completeness*
             (edge-rule edge)
             (not (ignore-semantic-check? (edge-rule edge))))
    (let ((left (edge-left-daughter edge))
          (right (edge-right-daughter edge)))
      (when (and (edge-p left)(edge-p right)
                 (individual-p (edge-referent left))
                 (individual-p (edge-referent right)))
        (let ((all-sem (semtree edge))
              (left-sem (norm-sem left))
              (right-sem (norm-sem right)))
          (cond
            ((not (contains-sem? all-sem left-sem))
             (if (and (consp left-sem)
                      (itypep (car left-sem) category::pronoun))
                 (format t "~&rule ~s loses semantics for pronoun ~s in ~a~&"
                         (edge-rule edge) left-sem
                         `(,(car all-sem) ,(second all-sem)  "..." ))
                 (lsp-break "check-semantic-completeness, all-sem does ~
                             not contain left-sem")))
            ((not (contains-sem? all-sem right-sem))
             (if (and (consp right-sem)
                      (itypep (car right-sem) category::pronoun))
                 (format t "~&rule ~s loses semantics for pronoun ~s in ~a~&"
                         (edge-rule edge) right-sem `(,(car all-sem) ,(second all-sem) "..." ) )
                 (lsp-break "check-semantic-completeness, all-sem does ~
                             not contain left-sem"))
             (lsp-break "check-semantic-completeness, all-sem does ~
                         not contain right-sem"))))))))

(defun norm-sem (i)
  (declare (special category::prepositional-phrase category::copular-pp
                    category::to-comp))
  (let ((sem (semtree i nil)))
    (cond
      ((not (consp sem)) sem) ;; e.g. 50, for the tree from #<number "50">
      ((itypep (car sem) '(:or prepositional-phrase copular-pp))
       (semtree (value-of 'pobj (car sem))))
      ((itypep (car sem) category::to-comp)
       (semtree (value-of 'comp (car sem))))
      (t sem))))

(defun contains-sem? (all part)
  (declare (special category::hyphenated-pair))
  (cond
    ((not (consp part))
     ;; assume that it has been included -- e.g. a number
     t)
    ((and
      (collection-p (car all))
      (not (itypep (car all) category::hyphenated-pair)))
     (or
      (as-specific?  (car all)(car part))
      (member (car part) (value-of 'items (car all)))
      (contains-sem-in-bindings? all part)))
    ((as-specific? (car all) (car part)))
    (t (contains-sem-in-bindings? all part))))

(defun contains-sem-in-bindings? (all part)
  (loop for sall in (cdr all)
     thereis
       (and (consp (second sall))
	    (individual-p (car (second sall)))
	    (contains-sem? (second sall) part))))

