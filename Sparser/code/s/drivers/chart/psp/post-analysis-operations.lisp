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


