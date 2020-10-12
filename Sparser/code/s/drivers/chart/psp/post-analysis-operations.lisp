;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "pos-analysis-operations"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  June 2017

;; all code for post-processing of sentences 

(in-package :sparser)


(defparameter *error-on-list-nil* nil)

(defparameter **lambda-var** '*lambda-var*) ;; making it a constant doesn't seem to work

(defun is-lambda-var (value)
  "Hide the identify of the symbol"
  (eq value **lambda-var**))


;; noisy reporting of situations interesting to Rusty
(defparameter *report-on-multiple-edges-for-interp* nil)

;; breaks on situations interesting to Rusty
(defparameter *break-on-null-interp* nil)
(defparameter *break-on-null-edge* nil)
(defparameter *break-on-null-surface-strings* nil)
(defparameter *contextual-interpretation* nil)

(defparameter *expand-interpretations-in-context* nil
  "Turned off because the majority of re-interpretations proposed currently are wrong...")
(defparameter *show-contextual-replacements* nil)

(defun do-contextual-interp ()
  (setq *contextual-interpretation* t)
  (setq *expand-interpretations-in-context* t)
  (setq *show-contextual-replacements* t))

(defparameter *reinterpreted-mentions* nil)

(defun interpret-treetops-in-context (treetops)
  "Called from sentence-processing-core after virtually every part of
   parsing analysis has been completed. 
   Call is conditioned on *interpret-in-context*
   The treetops are from the current sentence."
  (let ((*contextual-interpretation* t))
    (declare (special *contextual-interpretation*))
    (when *interpret-in-context* ;; for testing outside normal calling chain
      (loop for tt in treetops
         when (and (edge-p tt)
                   (category-p (edge-category tt))
                   (edge-referent tt) ;; #1
                   (not
                    (member (cat-name (edge-category tt))
                            ;; we don't interpret such quoted strings
                            '(quotation parentheses dash  square-brackets semicolon comma))))
            do
              (let ((*reinterpreted-mentions* nil))
                (interpret-in-context (edge-mention tt)))))))

#| #1  in "More detailed understanding of these various pathways will require careful analysis
 of BMMCs designed to be deficient in multiple adapters and signaling molecules."
  there had been a NIL interpretation of "designed to be deficient" |#

;;;_______________________________________________


(defgeneric interpret-in-context (item-to-be-interpreted)
  (:documentation
   "Interpret item-to-be-interpreted in the given context 
 (structure of context still to be defined). Return the contextual interpretation
 of the item.
   1) If the item is a mention, recursively interpret the base-description of 
 the mention, using the bindings in the dependencies field. Set the
 contextual-description of the mention to the resulting interpretation. 
   2) For non-mentions, we (temporarily) make the contextual interpretation
 nbe the item itself.
   "))

(defmethod interpret-in-context (item)
  item)

;; These may get more complex when we consider metonymic readings

(defmethod interpret-in-context ((c category)) c)

(defmethod interpret-in-context ((i individual)) i)

(defmethod interpret-in-context ((s string)) s)

(defmethod interpret-in-context ((items cons))
  (loop for item in items collect (interpret-in-context item)))

(defparameter *warn-circular-reinterpretation* nil)
(defmethod interpret-in-context ((mention discourse-mention))
  (declare (special mention category::hyphenated-pair category::hyphenated-triple
                    category::two-part-label))
  "Mentions now have a dependencies field, which contains a list of two-element
 lists (variable value) representing the binding of value as variable. 
 Where possible, the values are themselves mentions.
 First recursively interpret the bound values, then rebuild the interpretation
 of the individual in the base-description from those reinterpreted bindings."
  (cond ((member mention *reinterpreted-mentions*)
         (when *warn-circular-reinterpretation*
           (warn "~%CIRCULAR REINTERPRETATION of mention ~s~%"
               mention))
         (or (and (slot-boundp mention 'ci) (contextual-description mention))
             (base-description mention)))
        (t (push mention *reinterpreted-mentions*)
           (if (slot-boundp mention 'ci)
               ;; mention was already contextually interpreted --
               ;;  this happens with conjunction distribution/expansion
               ;;  (MAY NO LONGER BE TRUE)
               (contextual-description mention)

               (let* ((base (base-description mention))
                      (re-interpretation
                       (cond
                         ((itypep base '(:or hyphenated-pair hyphenated-triple two-part-label))
                          ;; not sure what to do for such things -- example ER-β is a hyphenated pair
                          base)
                         ((is-basic-collection? base)
                          ;; distribute conjunctions
                          (reinterpret-collection-with-modifiers mention))
                         ((is-pronoun? base)
                          (let ((interpretation (interpret-pronoun-in-context mention)))
                            (or interpretation base)))
                         (t
                          (reinterp-mention-using-bindings mention)))))
                 (when *expand-interpretations-in-context*
                   (expand-definite-references-in-context-if-needed mention))
                 (setf (contextual-description mention) re-interpretation)
                 re-interpretation)))))


;;--- Pronouns

(defparameter *work-on-di-pronouns* nil
  "Gates breaks for when new things happen in pronoun cases")

#| Pronoun examples to test (convert to regression tests when working)

(p "Ras is a membrane bound protein. When inactive, 
it is bound to the small molecule GDP.") ;; works

(p "The phosphorylated ERK protein then translocates to the nucleus
where it regulates gene expression.") ;; no restriction on the 'it'
|#

(defun interpret-pronoun-in-context (mention &aux ref)
  "Called by interpret-in-context which will interpret any non-nil
   return values and the contextual description (de-referencing) of
   the pronoun."
  (declare (special *sentence-in-core*) (optimize debug))
  (let* ((pronoun (base-description mention))
         (edge (mention-source mention)))
    (tr :dt-dereference-pn pronoun edge)
    
    (unless (slot-boundp mention 'restriction)
      (tr :dt-no-restriction)
      (when *work-on-di-pronouns* (lsp-break "no restriction"))
      (return-from interpret-pronoun-in-context nil))
      
    (let* ((restriction (mention-restriction mention))
           (types (etypecase restriction
                    ((cons (eql :or)) (cdr restriction))
                    (category (list restriction))))
           (sentence  *sentence-in-core*)
           (layout (base-layout (contents sentence))))
      (when *work-on-di-pronouns*
        (push-debug `(,mention ,layout)) (break "Interpret pronoun on ~a" edge))
      
      (cond
        ((null types)
         (tr :dt-no-type-information)
         (when *work-on-di-pronouns* (break "no type information"))
         nil)
        ((eq edge (subject layout))
         (let ((previous-subject (subject-of-previous-sentence sentence)))
           (if previous-subject
             (then
               (tr :resolving-pronoun/previous-subject previous-subject)
               previous-subject)
             (else
               (tr :pronoun-no-previous-subject)
               (when *work-on-di-pronouns* (error "no previous subject"))
               nil))))
        ((setq ref (find-pronoun-in-lifo-instance types edge))
         ;;(tr :pronoun-resolved-to ref)
         (tr :pronoun-lifo-compatible ref)
         ref)
        (t (tr ::no-compatible-referent)
           (when *work-on-di-pronouns*
             (lsp-break "Need another technique")))))))

(defun find-pronoun-in-lifo-instance (types pronoun-edge)
  "The referent has to be to the left of the position of the edge over the pn.
   The lifo list is a push list in of every object passed to record-instance-within-sequence
   by add-subsuming-object-to-discourse-history so it's in right-to-left order
   with respect to the sentence.
    1. Walk the list to the first edge that is to the left of the pn edge, 
    2. Select an object of compatible type from the remaining candidates."
  (declare (special *lifo-instance-list*))
  ;;(break "lifo = ~a" *lifo-instance-list*)
  (let* ((pn-end (pos-edge-ends-at pronoun-edge))
         (candidates (loop for pair in (reverse *lifo-instance-list*)
                        as edge = (cadr pair)
                        as edge-end-pos = (pos-edge-ends-at edge)
                        when (position-precedes edge-end-pos pn-end)
                        collect pair)))
    ;;(break "candidates = ~a" candidates)
    (let ((pair (loop for type in types
                   when (find-if #'(lambda (i) (itypep i type)) candidates :key #'car)
                   return it)))
      (when pair (car pair)))))





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
      (loop for b in bindings
            ;; ignore the bindings that are part of what makes a collection a collection
            ;;  only consider the 'actual' modifiers of the collection as a whole
            unless (member (var-name (car b)) ;; bindings are lists whose car is the variable
                           '(raw-text type number items family-members))
              collect b)))))

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

(defparameter *collective-variables*
  '((bio-insert between)
    (interact interactor)
    (bio-associate objects)
    (cycle path)
    (link linked-processes)
    (inter-regulate theme)
    (bio-complex component)
    (binding binding-set)
    (feedback-loop participant)
    (difference compared)
    (region-of-molecule bounds)))

(defun collective-variable? (interp var)
  "Is var a variable on the category of interp that expects a collection as a value, which should not be distributed"
  (loop for cv in *collective-variables*
        thereis
          (and (itypep interp (car cv))
               (eq (pname var) (second cv)))))

#| Non-individual warning is triggerd by
  "In the undirected model, contact was a function of within-state flows 
and both flows into and out of a state."  because 'interp' includes the
symbol 't' -- (t #<flow-endurant plural 98209>)   ddm 3/25/20|#
(defun reinterp-list-using-bindings (interps bindings)
  (loop for (var val) in (reverse bindings)
        ;; the value of indiv-old-binds is created by PUSH operations -- it is in reverse order!
        do
          (let* ((ival (interpret-in-context val)))
            (declare (special ival))
            (loop for i in interps when (not (or (individual-p i)(category-p i)))
               do (warn-or-error "non-individual among ~s in reinterp-list-using-bindings, in: ~s~%"
                                 interps (sentence-string *sentence-in-core*)))
            (setq interps
                  (loop for i in interps
                        when (individual-p i)
                        nconc
                          (cond ((eq (var-name var) 'family-members)
                                 (list (bind-dli-variable var ival i)))
                                ((and (is-basic-collection? ival)
                                      (not (collective-variable? (car interps) var)))
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
                          ;; strange case
                          ;; "At the conclusion of the telephone interview, all cases and controls were asked to provide a mouthwash rinse."
                          ;; with interps = (T <ask ...>)
                          :type  (loop for interp in interps
                                       when (individual-p interp)
                                       do (return
                                            (itype-of interp))))
      (car interps)))



(defgeneric contextual-interpretation (item)
  (:documentation
   "Return the currently available contextual interpretation of the object.
    The base-description if no contextual interpretation has been made.")
  (:method ((m discourse-mention))
    (if (and
         (slot-boundp m 'ci)
         (contextual-description m))
      (values (contextual-description m) t)
      (values (base-description m) nil))))


(defparameter *special-collection-interp* t
  "Turns on the interpretaion of some protein collections as pathways or complexes. Should be massively generalized")

;;; THIS IS BIO-SPECIFIC CODE -- figure out how to segregate it appropriately
(defun special-collection-interp (mention)
  (let ((i (base-description mention)))
    (when (and *special-collection-interp*
               (itypep i category::protein) ;; protein-family is included
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



(defun expand-definite-references-in-context-if-needed (mention) 
  "Contextual interpretation of underspecified descriptions"
  ;;(dt var containing-mentions)
  (declare (special *np-category-names*))
  (unless (or
           (cat-mention? mention 'preposition)
           (not (individual-p (contextual-interpretation mention))))
    (let* ((edge (mention-source mention))
           ;;(definite? (definite-np? mention))
           (interp (contextual-interpretation mention))
           (spec-interps (spec-interps mention)))
      (declare (special edge mention interp spec-interps))

      (cond
        ;;((not definite?) nil) ;; don't substitute for non-definite NPs
        ((indefinite-np? mention)
         nil)
        ((not (or
               (itypep interp 'endurant)
               (itypep interp 'process))) ;;"phosphorylation"
         nil)
        ((itypep interp 'point-mutated-protein)
         nil)
        ((not (and (member (form-cat-name edge) *np-category-names*)
                   (let ((spec-mention (car (mention-history (car spec-interps)))))
                     (or (not (typep spec-mention 'discourse-mention))
                         (not (category-p (mention-source-form-category spec-mention)))
                         (member (form-cat-name (mention-source spec-mention))
                                 *np-category-names*)))))
         nil)
        ((loop for b in (indiv-old-binds interp)
               always (member (pname (binding-variable b))
                              '(RAW-TEXT NAME UID IS-PLURAL FAMILY-MEMBERS COUNT)))
         nil)
        ((cdr spec-interps)
         (when (and *show-contextual-replacements* nil)
           (format t 
                   "~%--- Suppressing contextual interpretation due to ambiguous interpretations of ~s in:~%~s~%"
                   (or (note-surface-string edge)
                       (sur-string interp))
                   (sentence-string *sentence-in-core*)))
         ;;(lsp-break "ambiguous")
         interp)
        (spec-interps
         (when *break-on-null-surface-strings*
           (when (null (note-surface-string edge)) (lsp-break "Null edge string")))
         (when *show-contextual-replacements*
           (format t "~%(   ~s (~s)     ===>  ~s)~% in sentence:~%  ~s~%"
                   (nl->space (or (note-surface-string edge) (sur-string interp)))
                   (edge-form edge)
                   ;; because the 
                   (or (retrieve-surface-string (car spec-interps))
                       (semtree (car spec-interps)))
                   #+ignore
                   (nl->space (or (value-of 'raw-text (car spec-interps))
                                  (sur-string (car spec-interps))))
                   (nl->space (sentence-string *sentence-in-core*))))
         (setf (contextual-description mention)
               (car spec-interps)))
        (t interp)))))


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
  (when str (replace-all str *nl-str* " ")))

(defun spec-interps (mention &aux (c (contextual-interpretation mention)))
  (declare (special c mention))
  (let ((specializations
	 (remove-if #'predication?
		    (all-mentioned-specializations c mention))))
    (loop for s in specializations
          unless (np-containing-mention? s mention)
          collect s)))


;; NOT SURE WHAT THIS IS USED TO BLOCK
(defun predication? (desc)
  (loop for b in (indiv-bound-in desc)
     thereis (eq 'predication (var-name (binding-variable b)))))

(defun np-containing-mention? (s mention)
  (loop for m in (mention-history s)
     thereis
       (np-containing-edge? (mention-source mention)
			    (mention-source m))))

(defun np-containing-edge? (edge np-edge)
  (or (eq edge np-edge)
      (and (edge-p np-edge)
	   (or
	    (np-containing-edge? edge
                                 (edge-left-daughter np-edge))
	    (np-containing-edge? edge
                                 (edge-right-daughter np-edge))))))

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
  "1st case: subcategorized locations that were swallowed 
   as modifiers to preceding np. Generalize when there's been a third example."
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

