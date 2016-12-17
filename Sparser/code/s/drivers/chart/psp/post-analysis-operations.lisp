;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "pos-analysis-operations"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  April 2016

;; all code for post-processing of sentences 

(in-package :sparser)

;; noisy reporting of situations interesting to Rusty
(defparameter *report-on-multiple-edges-for-interp* nil)
(defparameter *show-contextual-replacements* nil)

;; breaks on situations interesting to Rusty
(defparameter *break-on-null-interp* nil)
(defparameter *break-on-null-edge* nil)
(defparameter *break-on-null-surface-strings* nil)


(defun interpret-treetops-in-context (treetops)
  (when *interpret-in-context*
    (loop for tt in treetops when (edge-p tt)
       when (and (category-p (edge-category tt))
                 (edge-referent tt)
                 ;; in "More detailed understanding of these various pathways will require careful analysis of BMMCs designed to be deficient in multiple adapters and signaling molecules."
                 ;; there is a NIL interpretation of "designed to be deficient"
		 (not
		  (member (cat-name (edge-category tt))
			  ;; we don't interpret such quoted strings
			  '(quotation parentheses dash  square-brackets semicolon comma))))
       do
	 (interpret-in-context (new-dt tt nil) nil nil))))

;;;_______________________________________________


(defgeneric contextual-interpretation (item)
  (:documentation
   "Return the currently available contextual interpretation of th object -- the base-description if no contextual interpretation has been made."))

;; This is the only version of this generic still called
(defmethod contextual-interpretation ((m discourse-mention))
  (if (and
       (slot-boundp m 'ci)
       (contextual-description m))
      (values (contextual-description m) t)
      (values (base-description m) nil)))

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

(defconstant **lambda-var** '*lambda-var*)

(defun interpret-atom-in-context (s variable containing-mentions)
  (declare (ignore variable containing-mentions))
  s)

(defun dt-mention (dt) (car dt))
(defun dt-bindings (dt) (cdr dt))

#| Pronoun examples to test (convert to regression tests when working)

(p "Ras is a membrane bound protein. When inactive, it is bound to the small molecule GDP.")

(p "The phosphorylated ERK protein then translocates to the nucleus
where it regulates gene expression.")
|#

(defparameter *error-on-list-nil* nil)

(defmethod interpret-in-context ((dt cons) var containing-mentions)
  (declare (special dt var containing-mentions))
  "For the moment, lists are of the form (<mention>
 ... bindings). First recursively interpret the bound elements in the
 bindings of the dt, then rebuild the interpretation of the dt from
 those reinterpreted bindings."
  (when (equal dt '(nil))
    (when *error-on-list-nil*
      (error "~&passed (NIL) to interpret-in-context~%   in sentence: ~s~%"
                   (sentence-string *sentence-in-core*)))
    (return-from interpret-in-context nil))
  (let* ((mention (dt-mention dt))
         (base (when mention (base-description mention)))
         (bindings (dt-bindings dt)))
    (declare (special mention base bindings))
    (when mention
    (typecase mention
      (discourse-mention       
       (cond
         ((slot-boundp mention 'ci)
          ;; dt was already contextually interpreted --
          ;;  this happens with conjunction distribution/expansion
          (contextual-interpretation mention))
         ((or (itypep base 'hyphenated-pair)
              (itypep base 'hyphenated-triple)
              (itypep base 'two-part-label))
          ;; not sure what to do for such things -- example ER-β is a hyphenated pair
          (setf (contextual-description mention) base)
          base)
         ((is-basic-collection? base)
          ;; distribute conjunctions
          (setf (contextual-description mention)
                (reinterpret-collection-with-modifiers dt var containing-mentions)))
         ((is-pronoun? base)
          (let ((interpretation
                 (interpret-pronoun-in-context dt var containing-mentions))) 
            (setf (contextual-description mention)
                  (if interpretation
                      (car interpretation)
                      (base-description mention)))))
         (t
          (setf (contextual-description mention) 
                (reinterp-item-using-bindings dt var containing-mentions))
          (expand-interpretation-in-context-if-needed dt var containing-mentions))))
      (t (break "~&***what sort of dt is ~s~&" dt))))))


(defparameter *work-on-di-pronouns* nil)

(defun interpret-pronoun-in-context (dt variable containing-mentions)
  (declare (special category::be))
  (push-debug `(,dt ,variable ,containing-mentions))
  (let* ((mention (dt-mention dt))
         (pronoun (base-description mention))
         (edge (mention-source mention)))

    (push-debug `(,edge ,pronoun))
    (tr :dt-dereference-pn pronoun edge)
    
    (unless (slot-boundp mention 'restriction)
      (tr :dt-no-restriction)
      (when *work-on-di-pronouns*
        (lsp-break "no restriction"))
      (return-from interpret-pronoun-in-context nil))
      
    (let* ((restriction (mention-restriction mention))
           ;; This goes with the check done in condition-anaphor-edge
           ;; to ignore personal pronouns. If we refactored the actual
           ;; check -- ignore-this-type-of-pronoun -- we could reframe
           ;; this in more direct forms and protect is against someone
           ;; changing the details of the class.
           (types (etypecase restriction
                    ((cons (eql :or)) (cdr restriction))
                    (category (list restriction))
                    (null
                     (if (and (or (eq variable 'subject)
                                   ;; comes from bad parse for "were it not for..."
                                  (eq variable 'predicate))
                              (itypep (base-description
                                       (car containing-mentions))
                                      'be))
                         nil
                         (progn
                           (warn
                            "~&NIL restriction -- var: ~s, ~
                           containing-mentions:~s~&"
                            variable containing-mentions)
                           nil))))))
      (tr :dt-restriction-on-pronoun types)
      (cond
        ((null types)
         (tr :dt-no-type-information)
         (when *work-on-di-pronouns*
           (lsp-break "no type information"))
         nil)
        (t (let ((ref (find-pronoun-in-lifo-instance types)))
             (when ref (tr :pronoun-resolved-to ref))
             (or ref
                 (when *work-on-di-pronouns*
                   (lsp-break "Need another technique")))))))))

		   


(defun find-pronoun-in-lifo-instance (types)
  (declare (special *lifo-instance-list))  
  (loop for type in types
     when (find-if #'(lambda (i) (itypep i type)) *lifo-instance-list*
                   :key #'car)
     return it))

(defun itypep-or (i type-list)
  (loop for type in type-list thereis (itypep i type)))


(defun reinterpret-collection-with-modifiers (dt var containing-mentions)
  (declare (special dt var containing-mentions))
  (let ((mention (dt-mention dt))
	(bindings (dt-bindings dt)))
    (or
     (special-collection-interp dt var containing-mentions)
     (when (not (is-basic-collection? (base-description mention)))
       (base-description mention))
     (reinterp-list-using-bindings
      (loop for m in (second (assoc 'items bindings))
	 nconc
	   (let* ((*m* m)
                  (*var* var)
                  (interp (interpret-item-in-context *m* *var* containing-mentions)))
	     (declare (special interp *m* *var*))
	     (cond ((and *break-on-null-interp* (null interp)) (lsp-break "null interp"))
		   ((is-basic-collection? interp)
		    (copy-list (value-of 'items interp)))
		   (t (list interp)))))
      var
      (loop for (var val) in bindings
	 unless (member var '(items type number))
	 collect
           (progn
             (when (and (equal val '(nil))
                        *error-on-list-nil*)
               (error "value of a collection item is (NIL) -- check what causes this,~% in ~s~%"
                      (sentence-string *sentence-in-core*)))
             (list var
                   (if (or (null val)(equal val '(nil)))
                       val ;; this is usually a bad parse error, but suppress it, e.g. "a type I"
                       (interpret-val-in-context var val containing-mentions)))))
      (cons mention containing-mentions)))))


(defun interpret-item-in-context (dt var containing-mentions)
  (when dt
    (typecase dt
      (symbol (interpret-atom-in-context dt var containing-mentions))
      (polyword (interpret-atom-in-context dt var containing-mentions))
      (word (interpret-atom-in-context dt var containing-mentions))
      (number (interpret-atom-in-context dt var containing-mentions))
      ;; get this with "metaplasia and hyperplasia" -- maybe want to do more here
      (cons
       (typecase (car dt)
	 (discourse-mention (interpret-in-context dt var containing-mentions))
	 (cons
	  (loop for ddt in dt collect (interpret-item-in-context ddt var containing-mentions)))
	 (null
	  (loop for ddt in dt collect (interpret-item-in-context ddt var containing-mentions)))
	 (referential-category (loop for ddt in dt collect (interpret-item-in-context ddt var containing-mentions)))
         (individual (warn "~%got an individual ~s during interpret-in-context on sentence ~%~s~%"
                             dt
                             (sentence-string *sentence-in-core*))
                     nil)
	 (t (warn "~%Strange value in interpret-item-in-context: ~s~%"
		    dt)
	    dt)))
      (t (interpret-in-context dt var containing-mentions)))))

(defun reinterp-item-using-bindings (dt var containing-mentions)
  (let* ((mention (dt-mention dt))
	 (interp (dli-ref-cat (base-description mention))))
    (if (and (individual-p interp)
	     (itypep interp 'hyphenated-number))
	;; hyphenated numbers are special, and broken...
	interp
	;; this allows for creation of new collections by distribution of internal collections
	(reinterp-list-using-bindings (list interp) var (dt-bindings dt) (cons mention containing-mentions)))))

(defun reinterp-list-using-bindings (initial-interps var bindings containing-mentions)
  (let ((interps initial-interps))
    (loop for (var val) in (reverse bindings) ;; the value of indiv-old-binds is created by PUSH operations -- it is in reverse order!
       do
	 (let* ((ival (interpret-val-in-context var val containing-mentions)))
	   (declare (special ival))
	   (setq interps
		 (loop for i in interps
                    when i
		    nconc
		      (if (is-basic-collection? ival)
			  ;; This is the code that does a "distribution" of conjunctions
			  (if (eq var 'predication) ;; here the conjunction is taken as joint assertion
			      (loop for c in (value-of 'items ival)
                                   when i
				 do
				   (setq i (bind-dli-variable var c i))
				 finally (return (list i)))
			      ;; below, the conjunction is treated as alternatives
			      (loop for c in (value-of 'items ival)
				 collect
				   (let ((bound-val (bind-dli-variable var c i)))
				     (when (null bound-val)
                                       (error "bad conjunction distribution"))
				     bound-val)))
			  (list (bind-dli-variable var ival i)))))))
    (cond ((cdr interps) ;; a collection
	   (when (is-maximal? (car containing-mentions))
	     ;; create new mentions for each of the expanded interpretations
	     ;; e.g " MAPK phosphorylation sites in ASPP1 and ASPP2" expands to
	     ;; "MAPK phosphorylation site in ASPP1" and "MAPK phosphorylation site in ASPP2"
	     (loop for interp in interps
                  when interp
		do
		  (setf (contextual-description
                         (make-mention interp (mention-source (car containing-mentions))))
			interp)))
	   (make-an-individual 'collection
			       :items interps
			       :number (length interps)
			       :type (itype-of (car interps))))
	  (t
	   (car interps)))))


(defun interpret-val-in-context (var val-dt containing-mentions)
  ;; recursively interpret the bound value in the current context
  (case var
    (middle val-dt)
    (t
     (cond ((symbolp val-dt)
            (interpret-atom-in-context val-dt var containing-mentions))
           ((equal val-dt '(nil))
            (when *error-on-list-nil*
              (error "value of a collection item is (NIL) -- check what causes this,~% in ~s~%"
                     (sentence-string *sentence-in-core*)))
            nil)
           (t
            (interpret-in-context val-dt var containing-mentions))))))

(defun is-basic-collection? (i)
  (and (individual-p i)
       (collection-p i)
       (not
        (itypep i `(:or ;;word-colon-word ;; CHECK THIS OUT -- CAUSES PROBLEMS, BUT SHOULDN'T
                        hyphenated-pair
                        hyphenated-triple
                        slashed-sequence
                        two-part-label
                        )))))


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

(defparameter *show-relevant-edge-warnings* nil)

(defun relevant-edges (parent-edges child-interp &optional allow-null-edge)
  (let* ((parent-edge (car parent-edges))
	 (poss-edges (poss-edges child-interp parent-edge)))
    ;; allow for the fact the items like "669" have two edges
    ;; spanning the same positions   
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
			   (not (itypep child-interp 'number))
                           (not (itypep child-interp 'point-mutation))
                           (not (loop for b in (indiv-old-binds child-interp)
                                     thereis (eq **lambda-var** (binding-value b)))))
                      (when *show-relevant-edge-warnings*
                        (warn "~&relevant-edges 1) no internal edge for ~s in ~s~~%   in sentence: ~S~%"
                            child-interp parent-edge
                            (sentence-string *sentence-in-core*)))
		      nil)
		    nil)))
	     (t		
	      (unless (or allow-null-edge
			  (not (individual-p child-interp))
			  (and child-interp ;; happens in a small number of cases -- just ignore them
			       (itypep child-interp 'number))
                          (loop for b in (indiv-old-binds child-interp)
                                     thereis (eq **lambda-var** (binding-value b))))
		;; happens for premodifying v+ing
		;; where the edge has a category edge-representation,
		;; not an individual
		(when *break-on-null-edge*                  
		  (warn "~&relevant-edges 1) no internal edge for ~s in ~s~~%   in sentence: ~S~%"
                        child-interp parent-edge
                        (sentence-string *sentence-in-core*))))
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

(defun poss-edges (child-interp parent-edge)
  (declare (special child-interp parent-edge))
  (if
   (deactivated? parent-edge) ;; don't know why we should have an inactive parent
   (lsp-break "inactive parent edge in poss-edges")
   (let (poss-edges)
     (loop for m in (mention-history child-interp)
	do
	  (when (contained-edge? parent-edge (mention-source m))
	      (unless (redundant-edge (mention-source m) poss-edges)
		(push (mention-source m) poss-edges))))
     (unless poss-edges
       (setq poss-edges (find-edges-inside-matching parent-edge child-interp)))
     poss-edges)))

(defun lambda-val? (i lv)
  (when lv
    (or (and (eq i lv) (list **lambda-var**))
	(lambda-val? i (dli-parent lv)))))


(defun dli-parent (item)
  (when (individual-p item)
    (cdar (hal (indiv-uplinks item)))))

(defun lambda-pred (interp)
  (and (individual-p interp)
       (consp (indiv-old-binds interp))
       (eq **lambda-var** (binding-value (car (indiv-old-binds interp))))))

(defun find-edges-inside-matching (edge interp)
  (when (edge-p edge)
    (cond ((eq interp (edge-referent edge)) (list edge))
	  ((and (category-p (edge-referent edge)) ;; "a possible strategy" -- possible is a predicate
		(eq (get-dli (edge-referent edge)) interp)
		(list edge)))	   
	  ((and
	    (lambda-pred interp)
	    (if
	     (category-p (edge-referent edge))
	     (when (itypep interp (edge-referent edge)) (list edge))
	     (when (eq (dli-parent interp) (edge-referent edge)) (list edge)))))
	  ((and (category-p (edge-referent edge))
		;; the purified phospho-specific antibody,
		(eq interp (get-dli (edge-referent edge))))
	   (list edge))
	  ((and
	    (edge-p (edge-left-daughter edge))
	    (find-edges-inside-matching (edge-left-daughter edge) interp)))
	  ((and
	    (edge-p (edge-right-daughter edge))
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
	      (cond ((and (eq (cat-name (edge-category m-edge)) 'number)
			  (eq (cat-name (edge-category (car ee)))'digit-sequence))
		     (setf (car ee) m-edge)
		     (return-from redundant-edge t))
		    ((and (eq (cat-name (edge-category m-edge)) 'digit-sequence)
			  (eq (cat-name (edge-category (car ee))) 'number))
		     (return-from redundant-edge t))
		    ((eq (cat-name (edge-category m-edge)) 'modifier)
		     (return-from redundant-edge t))
		    ((eq (cat-name (edge-category (car ee))) 'modifier)
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
  (declare (special category::hyphenated-triple))
  ;; these are case where the interpretation of the parent edge
  ;; contains some "computed" version of the interpretation of the
  ;; child edge -- e.g. the map from "T" to "threonine"
  (or (not (or (individual-p child-interp)
	       (category-p child-interp)))
      (itypep child-interp category::hyphenated-triple)
      (and (itypep child-interp 'amino-acid)
	   (individual-p (edge-referent parent-edge))
	   (or (itypep (edge-referent parent-edge) 'residue-on-protein)
	       (itypep (edge-referent parent-edge) 'point-mutation)
	       (itypep (edge-referent parent-edge) 'phosphorylated-amino-acid)))))

(defun contained-edge? (parent child?)
  (and (edge-p parent)
       (edge-starts-at parent)
       (edge-p child?)
       (edge-starts-at child?)
       (subsumes-interval
	(pos-token-index (start-pos parent))
	(pos-token-index (end-pos parent))
	(pos-token-index (start-pos child?))
	(pos-token-index (end-pos child?)))))

(defun new-dt (parent-edges &optional interp)
  (declare (special category::copular-predicate parent-edges))
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
			   (type (binding-value b))
			   (number (binding-value b))
			   (prep (binding-value b))
			   (items 
			    (loop for conjunct in (binding-value b)
			       collect
				 (let ((cc conjunct)
                                       (c-edge
					(car (relevant-edges parent-edges conjunct))))
                                   (declare (special cc c-edge))
                                   (unless c-edge
                                     (warn "can't find relevant edge for conjunct ~s in ~s. Sentence: ~s~%"
                                           conjunct parent-edges (sentence-string *sentence-in-core*)))
				   ;;(print (list conjunct c-edge))
				   (if c-edge
				       (new-dt (cons c-edge parent-edges))
				       (list conjunct)))))
			   (t 
			      (let* ((val (binding-value b))
				     (val-edge (car (relevant-edges parent-edges val))))
				(cond ((edge-p val-edge)
				       (new-dt (cons val-edge parent-edges) val))
				      ((eq category::copular-predicate (edge-category (car parent-edges)))
				       (new-dt parent-edges val))
				      (t val val))))))))))))

(defun align-dependency-and-edges (edge &optional bindings)
  (new-dt edge bindings))

;;; DELETED OBSOLETE AND CONFUSING CODE

;;; ------ Handle interpretations that are elliptical or incomplete (determinable only in context)
;;; If the base-description of an edge is more general (less completely specified) than some recent description
;;;  it is often (always?) the case in journal articles that it is being used as an eliptical co-reference to the prior description, and
;;;  should be replaced by that description

(defun predication? (desc)
  (loop for b in (indiv-bound-in desc)
     thereis (eq 'predication (var-name (binding-variable b)))))

(defun expand-interpretation-in-context-if-needed (dt var containing-mentions)
  (declare (special dt var containing-mentions))
  (let* ((mention (dt-mention dt))
	 (edge (mention-source mention))
	 (interp (contextual-interpretation mention))
	 (spec-mentions (spec-mentions interp mention containing-mentions)))
    (declare (special edge mention interp spec-mentions))
    (when (or
	   (cat-mention? mention 'preposition)
	   (not (individual-p interp))
	   ;;(not (is-maximal? mention))
	   )
      (return-from expand-interpretation-in-context-if-needed interp))
    (cond
      ((cdr spec-mentions)
       (when *show-contextual-replacements*
	 (format t 

"~%--- Suppressing contextual interpretation due to ambiguous interpretations of ~s in:~%~s~%"
		 (or (note-surface-string edge)
		     (sur-string interp))
		 (sentence-string *sentence-in-core*)))
       ;;(lsp-break "ambiguous")
       interp)
      (spec-mentions
       (when *break-on-null-surface-strings*
	 (when (null (note-surface-string edge)) (lsp-break "Null edge string")))
       (when *show-contextual-replacements*
	 (format t "~%(   ~s     ===>  ~s)~% in sentence:~%  ~s~%"
		 (nl->space (or (note-surface-string edge) (sur-string interp)))
		 (nl->space (or (when (edge-p (mention-source (car spec-mentions)))
				  (sur-string (mention-source (car spec-mentions))))
				(sur-string (base-description (car spec-mentions)))))
		 (nl->space (sentence-string *sentence-in-core*))))
       (setf (contextual-description (car dt))
	     (contextual-interpretation (car spec-mentions))))
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
  (declare (special c c-mention containing-mentions))
  (let ((specializations
	 (remove-if #'predication?
		    (all-mentioned-specializations c c-mention containing-mentions)))
	spec-mentions)
    (declare (special specializations spec-mentions))
    (loop for s in specializations
       unless (np-containing-mention? s c-mention)
       do (loop for m in (mention-history s)
	     ;;when (is-maximal? m)  we now only have maximal mentions in the list
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


;;; Code to integrate with Spire

(defgeneric expand-krisp (indiv)
  (:method-combination or)
  (:method or (indiv) (declare (ignore indiv))))
