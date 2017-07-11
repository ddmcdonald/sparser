;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "pos-analysis-operations"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  June 2017

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
    (loop for tt in treetops
          when (and (edge-p tt)
                    (category-p (edge-category tt))
                    (edge-referent tt)
                    ;; in "More detailed understanding of these various pathways will require careful analysis of BMMCs designed to be deficient in multiple adapters and signaling molecules."
                    ;; there is a NIL interpretation of "designed to be deficient"
                    (not
                     (member (cat-name (edge-category tt))
                             ;; we don't interpret such quoted strings
                             '(quotation parentheses dash  square-brackets semicolon comma))))
          do
            (interpret-in-context (edge-mention tt)))))

;;;_______________________________________________


(defgeneric interpret-in-context (item-to-be-interpreted)
  (:documentation
   "Interpret item-to-be-interpreted in the given context 
(structure of context still to be defined). 
1) If the item is a mention, recursively interpret the base-description of 
the mention, using the bindings in the dependencies field. Set the
contextual-description of the mention to the resulting interpretation. 
2) For non-mentions, we (temporarily) make the contextual interpretation
be the item itself.
Return the contextual interpretation of the item."))

(defmethod interpret-in-context (item)
  item)

(defmethod interpret-in-context ((c category))
  "This may get more complex, so that e.g. protein categories may be interpreted metonymically as complexes..."
  c)

(defmethod interpret-in-context ((i individual))
  "This may get more complex, so that e.g. protein individuals may be interpreted metonymically as complexes..."
  i)

(defmethod interpret-in-context ((s string))
    (declare (ignore variable containing-mentions))
  "This may get more complex, so that e.g. protein individuals may be interpreted metonymically as complexes..."
  s)

(defparameter **lambda-var** '*lambda-var*) ;; making it a constant doesn't seem to work
(defparameter *error-on-list-nil* nil)

(defmethod interpret-in-context ((items cons))
  "This may get more complex, so that e.g. protein individuals may be interpreted metonymically as complexes..."
  (loop for item in items collect (interpret-in-context item)))

(defmethod interpret-in-context ((mention discourse-mention))
  (declare (special mention))
  "Mentions now have a dependencies field, which contains a list of two-element
 lists (variable value) representing the binding of value as variable. 
 Where possible, the values are themselves mentions.
 First recursively interpret the bound values, then rebuild the interpretation
 of the individual in the base-description from those reinterpreted bindings."
  (if (slot-boundp mention 'ci)
      ;; mention was already contextually interpreted --
      ;;  this happens with conjunction distribution/expansion
      ;;  (MAY NO LONGER BE TRUE)
      (contextual-description mention)

      (let* ((base (base-description mention))
             (re-interpretation
              (cond
                ((or (itypep base 'hyphenated-pair)
                     (itypep base 'hyphenated-triple)
                     (itypep base 'two-part-label))
                 ;; not sure what to do for such things -- example ER-β is a hyphenated pair
                 base)
                ((is-basic-collection? base)
                 ;; distribute conjunctions
                 (reinterpret-collection-with-modifiers mention))
                ((is-pronoun? base)
                 (let ((interpretation (interpret-pronoun-in-context mention)))
                   (or (car interpretation) base)))
                (t
                 (reinterp-mention-using-bindings mention)))))
        (declare (special re-interpretation))
        (setf (contextual-description mention) re-interpretation)
        re-interpretation)))


(defparameter *work-on-di-pronouns* nil)

#| Pronoun examples to test (convert to regression tests when working)

(p "Ras is a membrane bound protein. When inactive, it is bound to the small molecule GDP.")

(p "The phosphorylated ERK protein then translocates to the nucleus
where it regulates gene expression.")
|#

(defun interpret-pronoun-in-context (mention)
  (declare (special category::be))
  (let* ((pronoun (base-description mention))
         (edge (mention-source mention))
         variable ;; not sure where this will come from
         )

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
                         (progn
                           (warn
                            "~&NIL restriction -- var: ~s~&"
                            variable)
                           nil)))))
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

(defun find-dependency (name dependencies)
  (loop for vv in dependencies when (eq (var-name (car vv)) name) do (return (second vv))))

(defun reinterpret-collection-with-modifiers (mention)
  (let ((bindings (dependencies mention)))
    (or
     (special-collection-interp mention)
     (when (not (is-basic-collection? (base-description mention)))
       (base-description mention))
     (reinterp-list-using-bindings
      (loop for item in (find-dependency 'items bindings)
            collect (if (typep item 'discourse-mention)
                        (reinterp-mention-using-bindings item)
                        item))
      bindings))))

(defun reinterp-mention-using-bindings (mention)
  (let ((interp (base-description mention)))
    (cond 
          ((and (individual-p interp)
                (itypep interp 'collection)
                (not (is-basic-collection? interp)))
           interp)
          ;; this allows for creation of new collections by distribution of internal collections
          (t (reinterp-list-using-bindings (list (dli-ref-cat interp))
                                           (dependencies mention))))))

(defun reinterp-list-using-bindings (interps bindings)
  (loop for (var val) in (reverse bindings)
        ;; the value of indiv-old-binds is created by PUSH operations -- it is in reverse order!
        do
          (let* ((ival (interpret-in-context val)))
            (declare (special ival))
            (setq interps
                  (loop for i in interps
                        when i
                        nconc
                          (cond ((eq (var-name var) 'family-members)
                                 (list (bind-dli-variable var ival i)))
                                ((is-basic-collection? ival)
                                 ;; This is the code that does a "distribution" of conjunctions
                                 (if (eq (var-name var) 'predication)
                                     ;; here the conjunction is taken as joint assertion
                                     (loop for c in (value-of 'items ival)
                                           when i
                                           do (setq i (bind-dli-variable var c i))
                                           finally (return (list i)))
                                     ;; below, the conjunction is treated as alternatives
                                     (loop for c in (value-of 'items ival)
                                           collect
                                             (let ((bound-val (bind-dli-variable var c i)))
                                               (when (null bound-val)
                                                 (error "bad conjunction distribution"))
                                               bound-val))))
                                (t (list (bind-dli-variable var ival i))))))))
  (if (cdr interps) ;; a collection
      (make-an-individual 'collection
                          :items interps
                          :number (length interps)
                          :type (itype-of (car interps)))
      (car interps)))


(defun is-basic-collection? (i)
  (and (individual-p i)
       (collection-p i)
       (not
        (itypep i `(:or ;;word-colon-word
                    ;; CHECK THIS OUT -- CAUSES PROBLEMS, BUT SHOULDN'T
                    hyphenated-pair
                    hyphenated-triple
                    slashed-sequence
                    two-part-label
                    )))))

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


(defparameter *special-collection-interp* t
  "Turns on the interpretaion of some protein collections as pathways or complexes. Should be massively generalized")

;;; THIS IS BIO-SPECIFIC CODE -- figure out how to segregate it appropriately
(defun special-collection-interp (mention)
  (let ((i (base-description mention)))
    (when (and *special-collection-interp*
               (or (itypep i 'protein) (itypep i 'protein-family))
               (search "/" (retrieve-surface-string i)))
      (interpret-as-pathway-or-complex mention))))

;; in principle, could be a pathway or a complex, and we should consult the biopax+ model, or something like that
;;  this is version -2
(defun interpret-as-pathway-or-complex (mention)
  (let* ((proteins (base-description mention))
         (pathway (make-an-individual
                   'pathway
                   :protein-sequence
                   (make-an-individual 'sequence
                                       :items (value-of 'items proteins)
                                       :number (value-of 'number proteins)
                                       :type (value-of 'type proteins))))
         (bindings
          (loop for b in (dependencies mention)
             unless (member (car b) '(items type number))
             collect b)))
    (reinterp-list-using-bindings (list pathway)
				  (dependencies mention))))

;;__________________ Create the dependency-tree from which re-interpretation is done

(defparameter *show-relevant-edge-warnings* nil)


(defun dli-parent (item)
  (when (individual-p item)
    (cdar (indiv-uplinks item))))

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


;;;-------------------------
;;; repair bad compositions
;;;-------------------------

(defun repair-bad-composition (sentence)
  ;; 1st experiment -- generalize when there's been a third.
  (let* ((edge (span-covered-by-one-edge?
                (starts-at-pos sentence)
                (ends-at-pos sentence)))
         (edge-to-repair
          (when edge
            (search-tree-for-type edge 'move-something-verb))))
    (when edge-to-repair
      (let ((i (edge-referent edge-to-repair)))
        (when (individual-p i)
          (unless (value-of 'location i)
            ;; (p/s "put the block near the other block")
            ;; The block has swallowed the location. We need
            ;; to retrieve it and rethread everything.
            (lift-location-out-of-theme i edge-to-repair)))))))


(defun lift-location-out-of-theme (i top-edge)
  "Move the location edge to the VP (as its ETF does, see transitive-loc-comp).
   Make a new version of the theme that leaves off the location.
   Have the whole region rescanned for its (now revised) mention structure."
  (assert (itypep i 'move-something-verb))
  (let* ((theme (value-of 'theme i))
         (location (when theme (value-of 'location theme))))
    (when location
      ;; now find the edge of the location below the edge for the theme
      (let ((loc-edge (search-tree-for-referent top-edge location)))
        (when loc-edge
          (let* ((last-var-bound (most-recent-binding theme))
                 ;; Most likely it's the location and we can be delicate.
                 ;; Otherwise we use a kudgle.
                 (revised-theme (if (eq (var-name last-var-bound)
                                        'location)
                                  (prior-individual theme)
                                  (copy-indiv-minus-variable
                                   theme 'location)))
                 (j (rebind-variable 'theme revised-theme i))
                 (k (bind-variable 'location location j))
                 (parent-of-loc (edge-used-in loc-edge)) ;; np: np+pp
                 (grandparent (edge-used-in parent-of-loc)) ;; vp
                 (side-of-granchild ;; which side do we replace
                  (if (eq (edge-right-daughter grandparent) parent-of-loc)
                    :right :left))
                 (obj-edge (edge-left-daughter parent-of-loc)))

            ;;/// convert to trace
            #+ignore(format t "~&Redefined ~a as ~a~%to elevate ~a~%"
                    i j location)

            ;; Detach loc-edge from its parent, and remove
            ;; it from their edge-vectors so we can reconstruct
            ;; the vectors again after the dust settles
            (detach-edge loc-edge)

            ;; Actually, just partially detach obj-edge
            ;; since it's ok in its local position vectors
            (setf (edge-used-in obj-edge) nil)

            ;; Reset the referent of the object to the revision
            ;; where the location has been removed
            (set-edge-referent obj-edge revised-theme)

            ;; remove their parent, which we're going to forget about
            (detach-edge parent-of-loc)            

            ;; Connect the obj edge as the right daughter
            ;; of the higher edge (the vp), removing the overly
            ;; long version of the obj that's presently there
            (if (eq side-of-granchild :right)
              (setf (edge-right-daughter grandparent) obj-edge)
              (setf (edge-left-daughter grandparent) obj-edge))
            
            ;; Change the boundary of the vp edge to same as obj
            (change-edge-end-position grandparent
                                      (edge-ends-at obj-edge))
            
            ;; Change the referent of the vp to be just vg+obj
            (set-edge-referent grandparent j)

            ;; Attach the location to a new VP above this one.
            ;; (Edge-creator needs the referent to get through complete)
            (let ((edge-above-grandparent (edge-used-in grandparent))
                  (chomsky-edge (chomsky-adjoin grandparent loc-edge k)))
              #+ignore(format t "~&edge-above = ~a~%chomsky = ~a~%"
                         edge-above-grandparent chomsky-edge)

              ;; It might just be a vp
              (when edge-above-grandparent
                ;; swap grandparent for new chomsky-adjunction
                (replace-daughter-edge edge-above-grandparent
                                       grandparent
                                       chomsky-edge)

                ;; The edge-above also needs the updated referent
                (setf (edge-referent edge-above-grandparent) k))

              ;; runs for side-effects, but this is good for tracing
              (values chomsky-edge k))))))))

