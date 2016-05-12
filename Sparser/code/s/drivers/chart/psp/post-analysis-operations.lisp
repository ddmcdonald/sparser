;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "pos-analysis-operations"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  April 2016

;; all code for post-processing of sentences 

(in-package :sparser)

(defparameter *do-expansion-in-context* t)

;; show when interpretation of a phrase is changed by context
(defparameter *show-contextual-replacements* nil)


(defun interpret-treetops-in-context (treetops)
  (when *interpret-in-context*
    (loop for tt in treetops when (edge-p tt)
       when (and (category-p (edge-category tt))
		 (not
		  (member (cat-name (edge-category tt))
			  ;; we don't interpret such quoted strings
			  '(quotation parentheses dash  square-brackets semicolon))))
       do
	 (interpret-in-context (new-dt tt nil) nil nil))))

;;;_______________________________________________


(defgeneric contextual-interpretation (item)
  (:documentation
   "Return the currently available contextual interpretation of th object -- the base-description if no contextual interpretation has been made."))

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
  (if (and
       (slot-boundp m 'ci)
       (contextual-description m))
      (values (contextual-description m) t)
      (values (base-description m) nil)))

(defparameter *lambda-var* nil)

(defmethod contextual-interpretation ((s symbol))
  (values
   (case s
     (**lambda-var**
      ;; the marker for the argument of a predicate which is being applied to the predicated item
      *lambda-var*)
     (t s))
   t))

(defgeneric interpret-in-context (item-to-be-interpreted variable containing-mentions)
  (:documentation
   "Recursively interpret item-to-be-interpreted in the given context 
(structure of context still to be defined).
Bind the contextual-description of the associated mention (if any) to
the contextual interpretation of the item in the context."))

(defmethod interpret-in-context ((item word) variable containing-mentions)
  (declare (ignore variable containing-mentions))
  item)

(defmethod interpret-in-context ((item polyword) variable containing-mentions)
  (declare (ignore variable containing-mentions))
  item)

(defmethod interpret-in-context ((item number) variable containing-mentions)
  (declare (ignore variable containing-mentions))
  item)

(defmethod interpret-in-context ((c category) variable containing-mentions)
  (declare (ignore variable containing-mentions))
  "This may get more complex, so that e.g. protein categories may be interpreted metonymically as complexes..."
  c)

(defmethod interpret-in-context ((i individual) variable containing-mentions)
    (declare (ignore variable containing-mentions))
  "This may get more complex, so that e.g. protein individuals may be interpreted metonymically as complexes..."
  i)

(defmethod interpret-in-context ((s string) variable containing-mentions)
    (declare (ignore variable containing-mentions))
  "This may get more complex, so that e.g. protein individuals may be interpreted metonymically as complexes..."
  s)

(defun interpret-symbol-in-context (s variable containing-mentions)
    (declare (ignore variable containing-mentions))
  (case s
    (**LAMBDA-VAR** ;; the marker for the argument of a predicate which is being applied to the predicated item
     *lambda-var*)
    (t s)))

(defun dt-mention (dt) (car dt))
(defun dt-bindings (dt) (cdr dt))

#| Pronoun examples to test (convert to regression tests when working)

(p "Ras is a membrane bound protein. When inactive, it is bound to the small molecule GDP.")

(p "The phosphorylated ERK protein then translocates to the nucleus
where it regulates gene expression.")
|#

(defmethod interpret-in-context ((dt cons) var containing-mentions)
  (declare (special dt var containing-mentions))
  "For the moment, lists are of the form (<mention>
 ... bindings). First recursively interpret the bound elements in the
 bindings of the dt, then rebuild the interpretation of the dt from
 those reinterpreted bindings."
  (let* ((mention (dt-mention dt))
	 (base (base-description mention))
	 (bindings (dt-bindings dt)))
    (declare (special mention base bindings))
    (typecase mention
      (discourse-mention       
       (cond
	 ((slot-boundp mention 'ci)
	  ;; dt was already contextually interpreted --
	  ;;  this happens with conjunction distribution/expansion
	  (contextual-interpretation mention))
	 ((is-collection? base)
	  ;; distribute conjunctions
	  (setf (contextual-description mention)
		(reinterpret-collection-with-modifiers dt var containing-mentions)))
	 ((is-pronoun? base)
	  (setf (contextual-description mention)
		(interpret-pronoun-in-context dt var containing-mentions)))
	 (t
	  (setf (contextual-description mention) 
		(reinterp-item-using-bindings dt var containing-mentions))
	  (expand-interpretation-in-context-if-needed dt var containing-mentions))))
      (t (break "~&***what sort of dt is ~s~&" dt)))))

(defun find-pronoun-in-lifo-instance (types)
  (declare (special *lifo-instance-list))  
  (loop for type in types
     when (find-if #'(lambda (i) (itypep i type)) *lifo-instance-list*
                   :key #'car)
     return it))

(defun interpret-pronoun-in-context (dt variable containing-mentions)
  (let ((mention (dt-mention dt)))
    (when (slot-boundp mention 'restriction)
      ;; This goes with the check done in condition-anaphor-edge
      ;; to ignore personal pronouns. If we refactored the actual
      ;; check -- ignore-this-type-of-pronoun -- we could reframe
      ;; this in more direct forms and protect is against someone
      ;; changing the details of the class.
      (let* ((restriction (mention-restriction mention))
	     (types (etypecase restriction
		      ((cons (eql :or)) (cdr restriction))
		      (category (list restriction))
		      (null
		       (if (and (eq variable 'subject)
				(itypep (base-description containing-mentions) 'be))
			   nil
			   (lsp-break
			    "~&NIL restriction -- var: ~s, containing-mentions:~s~&"
			    variable containing-mentions)))))
	     (interpretation
	      (when types
		(or (find-pronoun-in-lifo-instance types)
		    #| apply some other technique |# ))))
	(if interpretation
	    (car interpretation)
	    ;; if interpretation is NIL then we have failed to find a pronominal referent
	    (base-description mention))))))

(defun itypep-or (i type-list)
  (loop for type in type-list thereis (itypep i type)))

(defparameter *break-on-null-interp* nil)

(defun reinterpret-collection-with-modifiers (dt var containing-mentions)
  (declare (special dt var containing-mentions))
  (let ((mention (dt-mention dt))
	(bindings (dt-bindings dt)))
    (or
     (special-collection-interp dt var containing-mentions)
     (when (itypep-or (base-description mention)
		      '(slashed-sequence hyphenated-pair two-part-label hyphenated-triple))
       (base-description mention))
     (reinterp-list-using-bindings
      (loop for m in (second (assoc 'items bindings))
	 nconc
	   (let* ((*m* m)
		 (*var* var)
		 (interp (interpret-item-in-context *m* *var* containing-mentions)))
	     (declare (special interp *m* *var*))
	     (cond ((and *break-on-null-interp* (null interp)) (lsp-break "null interp"))
		   ((is-collection? interp)
		    (copy-list (value-of 'items interp)))
		   (t (list interp)))))
      var
      (loop for (var val) in bindings
	 unless (member var '(items type number))
	 collect (list var (interpret-val-in-context var val containing-mentions)))
      containing-mentions))))


(defun interpret-item-in-context (dt var containing-mentions)
  #+ignore ;; remove soon - just here for debugging
  (when (and (eq (caar (dt-bindings dt)) 'object)
	     (itypep (base-description (car (second (car (dt-bindings dt)))))
		     'phosphorylate))
    (lsp-break "~&interpret-item ~s~&" dt))
  (if (symbolp dt)
      (interpret-symbol-in-context dt var containing-mentions)
      (interpret-in-context dt var containing-mentions)))

(defun reinterp-item-using-bindings (dt var containing-mentions)
  (let* ((mention (dt-mention dt))
	 (interp (dli-ref-cat (base-description mention))))
    (if (and (individual-p interp)
	     (itypep interp 'hyphenated-number))
	;; hyphenated numbers are special, and broken...
	interp
	;; this allows for creation of new collections by distribution of internal collections
	(reinterp-list-using-bindings (list interp) var (dt-bindings dt) (cons mention containing-mentions)))))

(defun reinterp-list-using-bindings (interps var bindings containing-mentions)
  (loop for (var val) in bindings
     do
       (let* ((ival (interpret-val-in-context var val containing-mentions)))
	 (declare (special ival))
	 (setq interps
	       (loop for i in interps
		  nconc
		    (if (is-collection? ival)
			;; This is the code that does a "distribution" of conjunctions
			(loop for c in (value-of 'items ival)
			   collect
			     (let ((bound-val (bind-dli-variable var c i)))
			       (when (null bound-val) (lsp-break "bad conjunction distribution"))
			       bound-val))
			(list (bind-dli-variable var ival i)))))))
  (if (cdr interps) ;; a collection
      (make-an-individual 'collection
			  :items interps
			  :number (length interps)
			  :type (itype-of (car interps)))
      (car interps)))

(defun interpret-val-in-context (var val-dt containing-mentions)
  ;; recursively interpret the bound value in the current context
  (if (eq var 'predication)
      (let ((*lambda-var* (car containing-mentions))) ;; HUH!!
	(declare (special *lambda-var*))
	(if (symbolp val-dt)
	    (interpret-symbol-in-context val-dt nil containing-mentions)
	    (interpret-in-context val-dt nil containing-mentions)))
      (if (symbolp val-dt)
	  (interpret-symbol-in-context val-dt nil containing-mentions)
	  (interpret-in-context val-dt var containing-mentions))))

(defun is-collection? (i)
  (and (individual-p i)
       (itypep i 'collection)
       (not (itypep-or i '(hyphenated-pair hyphenated-triple two-part-label)))))


(defparameter *special-collection-interp* t
  "Turns on the interpretaion of some protein collections as pathways or complexes. Should be massively generalized")

;;; THIS IS BIO-SPECIFIC CODE -- figure out how to segregate it appropriately
(defun special-collection-interp (dt var containing-mentions)
  (let ((i (base-description (dt-mention dt))))
    (when (and *special-collection-interp*
               (or (itypep i 'protein) (itypep i 'protein-family))
               (search "/" (retrieve-surface-string i)))
      (interpret-as-pathway-or-complex dt var containing-mentions))))

;; in principle, could be a pathway or a complex, and we should consult the biopax+ model, or something like that
;;  this is version -2
(defun interpret-as-pathway-or-complex (dt var containing-mentions)
  (let* ((proteins (base-description (dt-mention dt)))
         (pathway (make-an-individual
                   'pathway
                   :protein-sequence
                   (make-an-individual 'sequence
                                       :items (value-of 'items proteins)
                                       :number (value-of 'number proteins)
                                       :type (value-of 'type proteins))))
         (bindings
          (loop for m in (dt-bindings dt)
             unless (member (car m) '(items type number))
             collect m)))
    (reinterp-list-using-bindings (list pathway)
				  var
				  bindings
				  (cons (dt-mention dt) containing-mentions))))

;;__________________ Create the dependency-tree from which re-interpretation is done

(defparameter *lambda-val* nil)
(defparameter *break-on-null-edge* nil)
(defparameter *report-on-multiple-edges-for-interp* nil)
(defun relevant-edges (parent-edges child-interp &optional allow-null-edge)
  (let (poss-edges
	(parent-edge (car parent-edges)))
    ;; allow for the fact the items like "669" have two edges
    ;; spanning the same positions
    (loop for m in (mention-history child-interp)
       do
	 (let ((m-edge (mention-source m)))
	   (when (and (edge-p m-edge)	(contained-edge? parent-edge m-edge))
	     (unless (redundant-edge m-edge poss-edges)
	       (push m-edge poss-edges)))))
    (unless poss-edges
      (setq poss-edges (find-edges-inside-matching parent-edge child-interp)))
    (cond ((null poss-edges)
	   (cond
	     ((known-no-edge-pattern parent-edge child-interp)
	      nil)
	     ((cdr parent-edges)
	      (let ((edges (relevant-edges (cdr parent-edges) child-interp allow-null-edge)))
		(or edges
		    (find-edges-inside-matching parent-edge child-interp)
		    (when (and
			   (individual-p child-interp)
			   (not allow-null-edge)
			   child-interp
			   (not (itypep child-interp 'number)))
		      (lsp-break "~&1) no internal edge for ~s in ~s~&"
				 child-interp parent-edge)
		      nil)
		    nil)))
	     (*lambda-val* (lambda-val? child-interp *lambda-val*))
	     (t		
	      (unless (or allow-null-edge
			  (not (individual-p child-interp))
			  (and child-interp ;; happens in a small number of cases -- just ignore them
			       (itypep child-interp 'number)))
		;; happens for premodifying v+ing
		;; where the edge has a category edge-representation,
		;; not an individual
		(when *break-on-null-edge*
		  (lsp-break "~&no internal edge for ~s in ~s~&"
			     child-interp parent-edge)))
	      nil)))
	  ((cdr poss-edges)
	   ;; appositive cases like "endogenous C-RAF phosphorylation at S338, an event required for C-RAF activation, "
	   (when (and
		    *report-on-multiple-edges-for-interp*
		    (not (member (edge-rule parent-edge)
				 '(ATTACH-APPOSITIVE-NP-TO-NP KNIT-PARENS-INTO-NEIGHBOR))))
	     (format t "~&^^^^multiple internal edges for ~s in ~s~&   ~s~&"
			child-interp parent-edge poss-edges))
	   (list (car poss-edges)))
	  (t poss-edges))))

(defun lambda-val? (i lv)
  (when lv
    (or (and (eq i lv) (list '**lambda-var**))
	(lambda-val? i (dli-parent lv)))))

(defun find-edges-inside-matching (edge interp)
  (when (edge-p edge)
    (cond ((eq interp (edge-referent edge)) (list edge))
	  ((and (category-p (edge-referent edge))
		;; the purified phospho-specific antibody,
		(eq interp (get-dli (edge-referent edge))))
	   (list edge))
	  ((and
	    (edge-left-daughter edge)
	    (find-edges-inside-matching (edge-left-daughter edge) interp)))
	  ((and
	    (edge-right-daughter edge)
	    (find-edges-inside-matching (edge-right-daughter edge) interp)))
	  ((edge-constituents edge)
	   (loop for e in (edge-constituents edge)
	      when (edge-p e)
	      do (when
		     (setq edge (find-edges-inside-matching e interp))
		   (return-from find-edges-inside-matching edge)))))))

(defun redundant-edge (m-edge poss-edges)
  (loop for ee on poss-edges
     do
       (cond ((contained-edge? (car ee) m-edge)
	      (return-from redundant-edge t))
	     ((contained-edge? m-edge (car ee))
	      (setf (car ee) m-edge)
	      (return-from redundant-edge t))
	     ((and (eq (start-pos m-edge)(start-pos (car ee)))
		   (eq (end-pos m-edge)(end-pos (car ee))))
	      (cond ((and (eq (edge-category m-edge) (category-named 'number))
			  (eq (edge-category (car ee)) (category-named 'digit-sequence)))
		     (setf (car ee) m-edge)
		     (return-from redundant-edge t))
		    ((and (eq (edge-category m-edge)(category-named 'digit-sequence))
			  (eq (edge-category (car ee)) (category-named 'number)))
		     (return-from redundant-edge t))
		    ((eq (edge-category m-edge)(category-named 'modifier))
		     (return-from redundant-edge t))
		    ((eq (edge-category (car ee))(category-named 'modifier))
		     (setf (car ee) m-edge)
		     (return-from redundant-edge t))
		    (t
		     #+ignore (format t "~& ~s and ~s have the same span and interp"
				      (car ee) m-edge)
		     (setf (car ee) m-edge)
		    (return-from redundant-edge t))))))
  nil)

(defun relevant-mention (parent-edges child-interp)
  (let ((c-edge (car (relevant-edges parent-edges child-interp))))
    (when c-edge (edge-mention c-edge))))


(defun known-no-edge-pattern (parent-edge child-interp)
  ;; these are case where the interpretation of the parent edge
  ;; contains some "computed" version of the interpretation of the
  ;; child edge -- e.g. the map from "T" to "threonine"
  (or (not (or (individual-p child-interp)
	       (category-p child-interp)))
      (itypep child-interp 'tense/aspect-vector)
      (itypep child-interp 'hyphenated-triple)
      (and (itypep child-interp 'amino-acid)
	   (individual-p (edge-referent parent-edge))
	   (or (itypep (edge-referent parent-edge) 'residue-on-protein)
	       (itypep (edge-referent parent-edge) 'point-mutation)
	       (itypep (edge-referent parent-edge) 'phosphorylated-amino-acid)))))

(defun contained-edge? (parent child?)
  (subsumes-interval
   (pos-token-index (start-pos parent))
   (pos-token-index (end-pos parent))
   (pos-token-index (start-pos child?))
   (pos-token-index (end-pos child?))))

(defun new-dt (parent-edges &optional interp)
  ;; for convenience, to let new-dt be called with treetop
  (if (edge-p parent-edges) (setq parent-edges (list parent-edges)))  
  (let ((parent-edge (car parent-edges)))
    (when (edge-p parent-edge)
      (unless interp (setq interp (edge-referent parent-edge)))
      (cons (edge-mention parent-edge)
	    (when (individual-p interp)
	      (loop for b in (indiv-old-binds interp)
		 collect
		   (list (var-name (binding-variable b))
			 (case (var-name (binding-variable b))
			   ((predication predicate)
			    (let* ((pred (binding-value b))
				   (parent (dli-parent pred))
				   (p-edge 
				    (car (relevant-edges parent-edges parent t))))
			      (let ((*lambda-val* interp))
				(declare (special *lambda-val*))
				(if p-edge
				    (new-dt (cons p-edge parent-edges) pred)
				    (new-dt parent-edges pred)))))
			   (type (binding-value b))
			   (number (binding-value b))
			   (prep (binding-value b))
			   (items 
			    (loop for conjunct in (binding-value b)
			       collect
				 (let ((c-edge
					(car (relevant-edges parent-edges conjunct))))
				   (if c-edge
				       (new-dt (cons c-edge parent-edges))
				       (list conjunct)))))
			   (t
			    (let* ((val (binding-value b))
				   (val-edge (car (relevant-edges parent-edges val))))
			      (if (edge-p val-edge)
				  (new-dt (cons val-edge parent-edges) val)
				  val)))))))))))

(defun align-dependency-and-edges (edge &optional bindings)
  (new-dt edge bindings))

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
  (case (car binding)
    (predication
     (if (category-p ref)
      ;; as in "untreated cells" where the predicate has only one binding
      (eq ref (itype-of (second binding)))
      (eq ref (dli-parent (second binding))))) ;; (second binding)
    (t (eq ref (second binding)))))

(defun dli-parent (item)
  (when (individual-p item)
    (cdar (hal (indiv-uplinks item)))))

(defun dependency-tree-root (edge &optional
				    (bindings (expand-bindings (edge-referent edge))))
  (let* ((idaughters (important-edge-daughters edge))
         (daughters
          (when idaughters
            (merge-item-lists
             (dependency-tree-daughters
              idaughters
              bindings)))))
    `(,(edge-mention edge)
       ,@(append daughters
		 (loop for b in bindings
                    unless (member (car b) daughters :key #'car)
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
     when (and (edge-p d)
               (not (eq (cat-name (edge-form d)) 'det)))
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
  (when (consp tree)
    (if (symbolp (car tree))
	`((,(car tree)
	    ,(if (not (consp (second tree)))
		 (second tree)
		 (typecase (car (second tree))
		   (discourse-mention
		    (base-description (car (second tree))))
		   (t nil)))))
	(loop for tr in tree nconc (find-bindings tr)))))


;;; ------ Handle interpretations that are elliptical or incomplete (determinable only in context)
;;; If the base-description of an edge is more general (less completely specified) than some recent description
;;;  it is often (always?) the case in journal articles that it is being used as an eliptical co-reference to the prior description, and
;;;  should be replaced by that description

(defun predication? (desc)
  (loop for b in (indiv-bound-in desc)
     thereis (eq 'predication (var-name (binding-variable b)))))


(defparameter *catch-null-surface-strings* nil)

(defun expand-interpretation-in-context-if-needed (dt var containing-mentions)
  (declare (special dt var containing-mentions))
  (let* ((mention (dt-mention dt))
	 (edge (mention-source mention))
	 (interp (contextual-interpretation mention))
	 (spec-mentions (spec-mentions interp mention containing-mentions)))
    (declare (special edge mention interp spec-mentions))
    (when (or
	   (and (edge-p (mention-source (car dt)))
		(category-p (edge-form (mention-source (car dt))))
		(member (cat-name (edge-form (mention-source (car dt))))
			'(preposition)))
	   (not (individual-p interp))
	   (not (is-maximal? mention))
	   #+ignore ;; can't recall what this was intended to block
	   (and mention
		(car containing-mentions)
		(mention-source mention)
		(mention-source (car containing-mentions))))
      (return-from expand-interpretation-in-context-if-needed interp))
    (cond
      ((cdr spec-mentions)
       (when *show-contextual-replacements*
	 (format t "~%--- Suppressing contextual interpretation due to ambiguous interpretations of ~s in:~%~s~%"
		 (or (note-surface-string edge)
		     (sur-string interp))
		 (sentence-string *sentence-in-core*)))
       ;;(lsp-break "ambiguous")
       )
      (spec-mentions
       (when *catch-null-surface-strings*
	 (when (null (note-surface-string edge)) (lsp-break "Null edge string")))
       (when *show-contextual-replacements*
	 (format t "~%(   ~s     ===>  ~s)~% in sentence:~%  ~s~%"
		 (nl->space (or (note-surface-string edge) (sur-string interp)))
		 (nl->space (or (when (edge-p (mention-source (car spec-mentions)))
				  (sur-string (mention-source (car spec-mentions))))
				(sur-string (base-description (car spec-mentions)))))
		 (nl->space (sentence-string *sentence-in-core*))))
       (contextual-interpretation (car spec-mentions)))
      (t interp))))

(defun replace-all (string part replacement &key (test #'char=))
  "Returns a new string in which all the occurences of the part 
is replaced with replacement."
  (with-output-to-string (out)
    (loop with part-length = (length part)
          for old-pos = 0 then (+ pos part-length)
          for pos = (search part string
                            :start2 old-pos
                            :test test)
          do (write-string string out
                           :start old-pos
                           :end (or pos (length string)))
          when pos do (write-string replacement out)
       while pos)))

(defparameter *nl-str* "
")

(defun nl->space (str)
  (replace-all str *nl-str* " "))

(defun spec-mentions (c c-mention containing-mentions)
  (let ((specializations
	 (remove-if #'predication?
		    (all-mentioned-specializations c c-mention containing-mentions)))
	spec-mentions)
    (loop for s in specializations
       unless (np-containing-mention? s c-mention)
       do (loop for m in (mention-history s)
	     when (is-maximal? m)
	     do (push m  spec-mentions)))
    spec-mentions))

(defun np-containing-mention? (s mention)
  (loop for m in (mention-history s)
     thereis
       (np-containing-edge? (mention-source mention)
			    (mention-source m))))

(defun np-containing-edge? (edge np-edge)
  (or (eq edge np-edge)
      (and (edge-p np-edge)
	   (or
	    (np-containing-edge? edge (edge-left-daughter np-edge))
	    (np-containing-edge? edge (edge-right-daughter np-edge))))))

(defun np-head-edge? (edge np-edge)
  (or (eq edge np-edge)
      (and (edge-p np-edge)
	   (np-head-edge? edge (edge-right-daughter np-edge)))))
