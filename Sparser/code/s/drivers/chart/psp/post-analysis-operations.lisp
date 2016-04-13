;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "pos-analysis-operations"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  1.0 March 2016

;; all code for post-processing of sentences 


(in-package :sparser)


;;;----------------------------------------------------
;;; operations after the regular analysis has finished
;;;----------------------------------------------------

(defun post-analysis-operations (sentence)
  (when *scan-for-unsaturated-individuals*
    (sweep-for-unsaturated-individuals sentence))
  (identify-salient-text-structure sentence)
  (when *do-anaphora*
    (handle-any-anaphora sentence))
  (when (and *readout-relations* *index-cards*)
    (push `(,(sentence-string sentence) 
            ,(all-individuals-in-tts sentence)
            ,*current-article*
            ,(assess-relevance sentence))
          *all-sentences*))

  (save-missing-subcats)

  ;; We always retrieve the entities and relations to store
  ;; with the sentence and accumulate at higher levels
  (multiple-value-bind (relations entities tt-count treetops)
      (identify-relations sentence)
    ;; (format t "sentence: ~a~%  ~a treetops" sentence tt-count)
    (set-entities sentence entities)
    (set-relations sentence relations)
    (set-tt-count sentence tt-count)
    (interpret-treetops-in-context treetops))

  (when *do-discourse-relations*
    (establish-discourse-relations sentence)))

(defparameter *interpret-in-context* t)

(defun interpret-treetops-in-context (treetops)
  (when *interpret-in-context*
    (loop for tt in treetops when (edge-p tt)
       do (interpret-in-context tt))))

;;;------------------------------------------------------------
;;; final operations on sentence before moving to the next one
;;;------------------------------------------------------------

(defun end-of-sentence-processing-cleanup (sentence)
  (declare (special sentence))
  (set-discourse-history sentence (cleanup-lifo-instance-list))
  (when *current-article*
    (save-article-sentence *current-article* sentence))
  ;;(lsp-break "end of sentence")
  ;; we could do a tts 
  #+ignore(when *readout-segments-inline-with-text* ;; be quiet when others are
    (format t "~&--------------------------~%~%")))




;;;_______________________________________________

#|
(defgeneric contextual-interpretation (item)
  (:documentation
   "Return the currently available contextual interpretation of th object -- the base-description if no contextual interpretation has been made."))
(defmethod contextual-interpretation ((c cons))
  (contextual-interpretation (car c)))


(defmethod contextual-interpretation ((p polyword))
  p)

(defmethod contextual-interpretation ((w word))
  w)

(defmethod contextual-interpretation ((n number))
  n)

(defmethod contextual-interpretation ((c category))
  c)

(defmethod contextual-interpretation ((i individual))
  "This seems to happen only for cases where the individual is created by a rule such as the one that parses T669 and produces 'threonine' from the T"
  (print i)
  i)

(defmethod contextual-interpretation ((m discourse-mention))
  (if (slot-boundp m 'ci)
      (values (contextual-description m) t)
      (values (base-description m) nil)))

(defmethod contextual-interpretation ((s symbol))
  (values
   (case s
     (**lambda-var** ;; the marker for the argument of a predicate which is being applied to the predicated item
      *lambda-var*)
     (t s))
   t))
|#


(defvar *lambda-var* nil)

(defgeneric interpret-in-context (item-to-be-interpreted)
  (:documentation
   "Recursively interpret item-to-be-interpreted in the given context (structure of context still to be defined).
Bind the contextual-description of the associated mention (if any) to the contextual interpretation of the item in the context."))

(defmethod interpret-in-context ((e edge))
    (if (and (category-p (edge-category e))
	     (member (cat-name (edge-category e))
		     '(quotation parentheses dash
		       square-brackets)))
      ;; we don't interpret such quoted strings
      nil
      (interpret-in-context (dependency-tree e nil))))

(defmethod interpret-in-context ((c category))
  "This may get more complex, so that e.g. protein categories may be interpreted metonymically as complexes..."
  c)

(defmethod interpret-in-context ((i individual))
  "This may get more complex, so that e.g. protein individuals may be interpreted metonymically as complexes..."
  i)

(defmethod interpret-in-context ((s string))
  "This may get more complex, so that e.g. protein individuals may be interpreted metonymically as complexes..."
  s)

(defmethod interpret-in-context ((s symbol))
  (case s
    (**LAMBDA-VAR** ;; the marker for the argument of a predicate which is being applied to the predicated item
     *lambda-var*)
    (t s)))

(defmethod interpret-in-context ((dt cons))
  "For the moment, lists are of the form (<mention> ... bindings). First recursively interpret the
 bound elements in the bindings of the dt, then rebuild the interpretation of the dt from those reinterpreted bindings."
  (typecase (car dt)
    (discourse-mention
     (cond
       ((and (individual-p (base-description (car dt)))
	      (itypep (base-description (car dt)) 'collection))
	(reinterpret-collection-with-modifiers dt))
       ((is-pronoun? (base-description (car dt)))
					;(lsp-break "pronoun")
	(setf (contextual-description (car dt))
	       (reinterp-item-using-bindings
		(dli-ref-cat (base-description (car dt)))
		(cdr dt)))
	)
       (t
	 (setf (contextual-description (car dt))
	       (reinterp-item-using-bindings
		(dli-ref-cat (base-description (car dt)))
		(cdr dt))))))
    (t (break "~&***what sort of dt is ~s~&" dt))))


(defun reinterp-item-using-bindings (interp bindings)
  (declare (special interp bindings category::collection))
  (let ((interps (list interp)))
    (loop for (var val) in bindings
	 ;; as *ival* ... (when done debugging)
       do
	 (let* ((*ival* ;; recursively interpret the bound value in the current context
		 (if (eq var 'predication)
		     (reinterp-predication val interp)
		     (interp-in-context val))))
	   (declare (special *ival*))
	   (setq interps
		 (loop for i in interps
		    nconc
		      (if (is-collection? *ival*)
			  ;; This is the code that does a "distribution" of conjunctions
			  (loop for c in (value-of 'items *ival*)
			     collect (bind-dli-variable var c i))
			  (list (bind-dli-variable var *ival* i)))))))
    (if (cdr interps) ;; a collection
	(make-an-individual 'collection
			    :items interps
			    :number (length interps)
			    :type (itype-of (car interps)))
	(car interps))))

(defun is-collection? (i)
  (and (individual-p i)
       (itypep i 'collection)
       (not (itypep i 'hyphenated-pair))
       (not (itypep i 'hyphenated-triple))
       (not (itypep i 'two-part-label))))

(defun reinterp-predication (pred *lambda-var*)
  (declare (special *lambda-var*))
  (interpret-in-context pred))

(defun interp-in-context (item)
  (cond
    ((or ;; these items do not need to be re-interpreted in context
      (word-p item)
      (polyword-p item)
      (numberp item))
     item)
    (t (interpret-in-context item))))

(defun reinterpret-collection-with-modifiers (collection-mention)
  (declare (special collection-mention))
  (or
   (special-collection-interp collection-mention)
   (when
       (or
	(itypep (base-description (car collection-mention)) 'slashed-sequence)
	(itypep (base-description (car collection-mention)) 'hyphenated-pair)
	(itypep (base-description (car collection-mention)) 'two-part-label)
	(itypep (base-description (car collection-mention)) 'hyphenated-triple))
     (base-description (car collection-mention)))
   (let*
       ((other-modifiers
	 (loop for m in (cdr collection-mention)
	    unless (member (car m) '(items type number))
	    collect m))
	(items (cdr (assoc 'items (cdr collection-mention))))
	(mod-items
	 (loop for m in items
	    nconc
	      (expand-collection-into-list-if-needed
	       (reinterp-item-using-bindings (interp-in-context m)
					     other-modifiers)))))
     (declare (special other-modifiers items mod-items))
     (if (null mod-items)
	 ;; happened in "(Figure 1B, left and middle panels)"
	 (base-description (car collection-mention))
	 (setf (contextual-description (car collection-mention))
	       (make-an-individual 'collection
				   :items mod-items
				   :number (length mod-items)
				   :type (itype-of (car mod-items))))))))

(defparameter *special-collection-interp* t
  "Turns on the interpretaion of some protein collections as pathways or complexes. Should be massively generalized")

;;; THIS IS BIO-SPECIFIC CODE -- figure out how to segregate it appropriately
(defun special-collection-interp (dt)
  (let
      ((i (base-description (car dt))))
    (when
	(and *special-collection-interp*
	     (or (itypep i 'protein) (itypep i 'protein-family))
	     (search "/" (retrieve-surface-string i)))
      (interpret-as-pathway-or-complex dt))))

;; in principle, could be a pathway or a complex, and we should consult the biopax+ model, or something like that
;;  this is version -2
(defun interpret-as-pathway-or-complex (dt)
  (let*
      ((proteins (base-description (car dt)))
       (pathway (make-an-individual
		 'pathway
		 :protein-sequence
		 (make-an-individual 'sequence
				     :items (value-of 'items proteins)
				     :number (value-of 'number proteins)
				     :type (value-of 'type proteins))))
       (other-modifiers
	(loop for m in (cdr dt)
	   unless (member (car m) '(items type number))
	   collect m)))
    (reinterp-item-using-bindings pathway
				  other-modifiers)))


(defun expand-collection-into-list-if-needed (interp)
  (if (itypep interp 'collection)
      (copy-list (value-of 'items interp))
      (list interp)))
		 

;;__________________ Create the dependency-tree from which re-interpretation is done

(defun align-dependency-and-edges (edge &optional bindings)
  (dependency-tree edge bindings))

(defmethod dependency-tree ((n number) &optional bindings)
  (dependency-tree (e# n) bindings))

(defmethod dependency-tree ((x t) &optional bindings)
  (cond
    ((eq x :long-span)
     (cerror "long-span" nil))
    ((null x) nil)
    (t nil)))

(defmethod dependency-tree ((e edge) &optional bindings &aux binding)
  (cond
    ((and (not (edge-p (edge-left-daughter e)))
	  (null (edge-constituents e))
	  (null (edge-mention e)))
     nil)
    ((null bindings)
     (dependency-tree-root e))
    ((setq binding (car (member (edge-referent e) bindings :test #'binding-match)))
     `((,(car binding)
	 ,(if (eq (car binding) 'predication)
	      (mark-lambda-binding
	       (dependency-tree-root e (expand-bindings (second binding))))
	      (dependency-tree-root e)))))
    (t
     ;; this edge does not contribute a dependency directly -- maybe its subtree does
     (let ((daughters (important-edge-daughters e)))
       (when daughters
	 (dependency-tree-daughters daughters bindings))))))


(defun binding-match (ref binding)
  (declare (special ref binding))
  (case (car binding)
    (predication
     (if
      (category-p ref)
      ;; as in "untreated cells" where the predicate has only one binding
      (eq ref (itype-of (second binding)))
      (eq ref (cdar (hal (indiv-uplinks (second binding))))))) ;; (second binding)
    (t (eq ref (second binding)))))

(defun dependency-tree-root (edge &optional
				    (bindings (expand-bindings (edge-referent edge))))
  (let* 
      ((idaughters (important-edge-daughters edge))
       (daughters
	(when idaughters
	  (merge-item-lists
	   (dependency-tree-daughters
	    idaughters
	    bindings)))))
    `(,(edge-mention edge)
       ,@(append daughters
		 (loop for b in bindings unless (member (car b) daughters :key #'car)
		    collect b)))))

(defun merge-item-lists (dbindings)
  (let ((items-bindings (loop for db in dbindings when (eq (car db) 'items)
			   collect db)))
    (cond
      (items-bindings
       `((items ,@(loop for i in items-bindings collect (second i)))
	 ,@(set-difference dbindings items-bindings)))
      (t dbindings))))

(defun dependency-tree-daughters (daughters bindings)
  (loop for edge in daughters
     nconc
       (let ((forest (dependency-tree (arg-edge edge) bindings)))
	 (setq bindings (set-difference bindings (find-bindings forest) :test #'equal))
	 (if (and (consp forest)
		  (not (consp (car forest))))
	     nil
	     forest))))

(defun mark-lambda-binding (dtr)
  `(,(car dtr)
     ,@(loop for binding in (cdr dtr)
	  collect
	    `(,(car binding)
	       ,(typecase (second binding)
			  ((cons discourse-mention) (second binding))
			  (t '**LAMBDA-VAR**))))))

(defmethod arg-edge ((e edge))
  (if (eq (cat-name (edge-form e)) 'pp)
      (edge-right-daughter e)
      e))
(defmethod arg-=edge ((x t))
  nil)

(defun important-edge-daughters (edge)
  (loop for d in
       (or (edge-constituents edge)
	   (list (edge-left-daughter edge)
		 (edge-right-daughter edge)))
     when (and (edge-p d) (not (eq (cat-name (edge-form d)) 'det)))
     collect
       (if (eq (cat-name (edge-form d)) 'pp)
	   (edge-right-daughter d)
	   d)))

(defmethod expand-bindings ((c category))
  nil)

(defmethod expand-bindings ((n null))
  nil)

(defmethod expand-bindings ((i individual))
  (loop for b in (indiv-binds i)
     nconc
       (let ((var (var-name (binding-variable b))))
	 (case var
	   (predication `((,var ,(binding-value b))))
	   (under-determined
	    `((,(getf (binding-value b) :variables) ,(getf (binding-value b) :value))))
	   (items ;; expand binding of items into on per element
	    (loop for item in (binding-value b)
	       collect
		 `(,var ,item)))
	   (t `((,var ,(binding-value b))))))))


(defmethod find-dependents ((x t))
  (declare (ignore x))
  nil)


(defun find-bindings (tree)
  (when
      (consp tree)
    (if (symbolp (car tree))
	`((,(car tree)
	    ,(if (not (consp (second tree)))
		 (second tree)
		 (typecase (car (second tree))
		   (discourse-mention
		    (base-description (car (second tree))))
		   (t nil)))))
	(loop for tr in tree nconc (find-bindings tr)))))



