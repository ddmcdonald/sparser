;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "subseq ref"
;;;   Module:  "model;core:names:fsa:"
;;;  version:  0.3 September 2013

;; broken out from [names:fsa:record] 6/8/93 v2.3
;; (1/7/94) patched around earlier indexing bug in Item-in-a-known-name
;; 0.1 (4/3) adding preference for individuals mentioned in the current discourse.
;; 0.2 (10/5) given that the indexing of names switched to just the sequences,
;;      developing an alternative lookup scheme.
;;     (12/7) added another entry point for when the c is in hand
;; 0.3 (12/22) fixed bug in 10/5 work
;;     (2/2/05) switched Subsequent-reference-off-name-word to look at ordinal bindings
;;      rather than position-in-a-sequence
;;     (2/13/13) Added a routine to use machinery like this off a directly
;;      linked name-word. Adapting dereference-proper-noun as well
;;      Rebuild it (item-already-linked-to-entity) while tracking down an infinite loop
;;      on 2/22/13. Fixed basic case (name-of) for person 6/7/13
;;     (6/15/13) Fixed subsequent-reference-off-name-word
;;     (6/17/13) Generalized known-sequence beyond companies. 
;;     (8/26/13) Added another case to subsequent-reference-off-name-word but
;;      it's restricted to just finding companies.
;;     (9/6/13) refactored known-sequence to have pieces that can be used
;;      without envoking the throw when they're successful.

(in-package :sparser)

;;;--------------
;;; Entry points
;;;--------------

(defun dereference-proper-noun (edge)
  ;; called by sortout-single-edge-over-capitalized-word
  ;; The form label on this edge is proper-noun. This means it's
  ;; probably a single word reference to an individual we already
  ;; know. If we confirm that, we construct a new edge with the
  ;; appropriate labels. If we can't improve on the analysis we
  ;; return nil.
  (let ((referent (edge-referent edge)))
    (when (individual-p referent)
      (multiple-value-bind (category its-referent rule)
                           ;; checkout various subsequent reference patterns
                           (subseqent-reference-by-shortened-name
                              referent)
        (when category
          (let ((new-edge
                 (edge-over-proper-name
                  ;; this isn't the best fit for arguments, but
                  ;; it's tricky to argue that these variations should
                  ;; be endlessly promulgated
                  (pos-edge-starts-at edge)
                  (pos-edge-ends-at edge)
                  category
                  category::np
                  its-referent
                  rule
                  (list edge))))
            (tr :found-subsequent-reference 
                edge referent its-referent new-edge)
            new-edge))))))



(defun dereference-shortened-name (name)
  ;; called from establish-referent-of-pn 
  (unless (itype name 'uncategorized-name)
    (break "An individual other than an uncategorized name ~
            passed in:~%~A~%" name))
  (let ((name-words
         (value-of 'items (value-of 'name/s name))))
    (multiple-value-bind (category referent rule)
                         (subseqent-reference-by-shortened-name
                          (first name-words))
      (declare (ignore rule category)) 
      (when referent
        (if (eq referent name)
          ;; unless we break out the different parts of that routine
          ;; it will always find this case the first time the name
          ;; appears
          nil
          referent)))))
        


;;;----------------
;;; the workhorses
;;;----------------

(defun subseqent-reference-by-shortened-name (i)
  (case (cat-symbol (itype-of i))
    (category::name-word
     (subsequent-reference-off-name-word i))
    (otherwise nil)))

(defun subsequent-reference-off-name-word (nw)
  ;;/// As used now (6/13) this has to return a named entity, not a name
  ;; If  there are complications with companies, tune with index-company-name-to-company
  (push-debug `(:subseq-ref ,nw))
  (let ((pos-in-sequence-bindings
         (bound-in nw :super-category 'ordinal :all t))
        (direct-reference (value-of 'name-of nw))
        (first-word-of (bound-in-value-of 'first-word nw 'company-name)))
    (cond
     (direct-reference
      (let ((i direct-reference)) ;; for clarity
        (unless (individual-p i)
          (error "Expected the object linked to ~a to be an individual" nw))
        (values (itype-of i)
                i
                :linked-to-name-word)))

     (first-word-of ;;//// company-name -- needs uniformity, refactoring
      (let ((company (bound-in-value-of 'name first-word-of 'company)))
        (values category::company
                company
                :nw-linked-to-first-word-of)))

      (pos-in-sequence-bindings
       (let ( pos-in-sequence  sequence  person-name  co-name  name
              person  company )
        
         (dolist (b pos-in-sequence-bindings)
           (setq pos-in-sequence (binding-body b)
                 sequence (value-of 'sequence pos-in-sequence))
           (when sequence ;; check all the cases
             (setq person-name (bound-in sequence :body-type 'person-name)
                   co-name (bound-in sequence :body-type 'company-name)
                   name (bound-in sequence :body-type 'uncategorized-name))))

         (cond ((and person-name co-name)
                (break "Stub: name word is part of both a person and ~
                        a company:~%~A~%" nw))
               (person-name
                (setq person (bound-in person-name :body-type 'person))
                (when person
                  (values category::person person
                          :name-word-somewhere-in-person-name)))
               (co-name
                (setq company (bound-in co-name :body-type 'company))
                (when company
                  (values category::company company
                          :name-word-somewhere-in-company-name)))
               (name
                (values category::uncategorized-name name
                        :name-word-somewhere-in-name))))))))
            

    
#|  (if (cdr pos-in-sequence)
      (break "more than one")
      (setq pos-in-sequence
            (binding-body (car pos-in-sequence))))

    (when pos-in-sequence
      (let* ((sequence (value-of 'sequence pos-in-sequence))
             (person-name (bound-in sequence :body-type 'person-name))
             (co-name (bound-in sequence :body-type 'company-name))
             (name (bound-in sequence :body-type 'uncategorized-name))
             person  company )
 
        (cond
         (person-name
          (setq person (bound-in person-name :body-type 'person))
          (when person
            (values category::person person
                    :name-word-somewhere-in-person-name)))
         (co-name
          (setq company (bound-in co-name :body-type 'company))
          (when company
            (values category::company company
                    :name-word-somewhere-in-company-name)))
         (name
          (values category::name name
                  :name-word-somewhere-in-name))))) |#
        

#|  old version
(defun subseqent-reference-by-shortened-name (bindings)
  (let ( category  its-referent  rule )
    ;; /// what's a better control structure ??  This is an ordered
    ;; sequential search by category
    (multiple-value-setq (category its-referent rule)
      (first-word-of-a-company bindings))
    (if its-referent
      (values category its-referent rule)

      (else
        (multiple-value-setq (category its-referent rule)
          (last-name-of-a-person bindings))
        (if its-referent
          (values category its-referent rule)

          (else
            (multiple-value-setq (category its-referent rule)
              (item-in-a-known-name bindings))
            (if its-referent
              (values category its-referent rule)

              (values nil nil nil)))))))) |#

(defun item-in-a-known-name (bindings) ;; n.b. older style
  (let ((sequence-binding
         (find/binding-of-variable 'item bindings
                                   category::sequence)))
    (when (listp sequence-binding)
      ;; there's an earlier indexing bug. This just works
      ;; around it.
      (setq sequence-binding (first sequence-binding)))

    (when sequence-binding
      (let* ((sequence (binding-body sequence-binding))
             (seq-bound-in (indiv-bound-in sequence)))

        (when seq-bound-in
          (let ((name (binding-body
                       (find/binding-of-variable
                        'name/s seq-bound-in
                        category::uncategorized-name))))

            (values category::name
                    name
                    :item-anywhere-in-name )))))))

(defun last-name-of-a-person (bindings)
  ;; given a description of a person's name in these bindings,
  ;; go from the binding on the last name and find the person
  ;; or persons who have that last name. 
  (let ((person-entries (discourse-entry category::person)))
    (when person-entries
      (let ((last-name-binding
             ;; //// using "find" will get us only one instance
             ;; of a last-name binding -- we lose out on all the
             ;; other family members and distant relatives
             (find 'last-name bindings
                   :key #'(lambda (b)
                            (var-name (binding-variable b))))))
        (if last-name-binding
          (let ((full-name (binding-body last-name-binding))
                current-names  name )
            (dolist (entry person-entries)
              (push (value-of 'name (car entry)) current-names))
            (if (setq name
                      (member full-name current-names))
              (let ((person (find/person-with-name full-name)))
                (unless person
                  (break "Person name is known but not associated ~
                          with a person:~%  ~A" name))
                (values category::person
                        person
                        :last-name-of-a-person ))
              (values nil nil nil)))
          
          ;; the list of bindings didn't include one for a last name
          (values nil nil nil))))))

(defun first-word-of-a-company (bindings)
  (let ((company-entries (discourse-entry category::company)))
    (when company-entries
      (let ((first-name-binding
             (find 'first-word bindings
                   :key #'(lambda (b)
                            (var-name (binding-variable b))))))
        (when first-name-binding
          (let* ((full-name (binding-body first-name-binding))
                 current-names  name )
            (dolist (entry company-entries)
              (push (value-of 'name (car entry)) current-names))
            (break "check that name is current")
            (if (setq name
                      (member full-name current-names))
              (let ((company/ies (find-companies-with-name name)))
                (break "check lookup values")
                (if (cdr company/ies)
                  (break "More than one company has the name~%~A~
                          ~%~%Write the code to disambiguate them by ~
                          context~%" full-name)
                  (values category::company
                          (first company/ies)
                          :first-word-of-a-company))))))))))



(defun find-companies-with-name (name)
  (let ( indiv-bound-to companies )
    (dolist (b (indiv-bound-in name))
      (when (eq 'name (var-name (binding-variable b)))
        (setq indiv-bound-to (binding-body b))
        (when (member category::company (indiv-type indiv-bound-to))
          (push indiv-bound-to companies))))
    companies ))




;;;----------------------------
;;; directly linked name-words
;;;----------------------------

(defun item-already-linked-to-entity (items)
  ;; called from categorize-and-form-name to get the case where
  ;; we have an acronym or other sort of abbreviated form that
  ;; directly connects to the entity, short-circuiting the path
  ;; via its (usually full) name. Throws to classify-&-record-span
  ;;   This will be indicated by a name-word that's been linked
  ;; to the entity. 
  ;;   If there is more than one name word then presumably that's
  ;; not a case for us, though the question of partial names
  ;; remains, and it isn't clear (2/15/13) that that's being handled
  (when (null (cdr items))
    ;;/// To extend to multi-word fragments shorter than
    ;; the whole sequence (handled by known-sequence)
    ;; we will need more machinery.
    (let ((item (car items)))
      (when (itypep item 'name-word)
        ;;/// could certainly be something else, but this one
        ;; is certain. Need to coordinate with routines like
        ;; index-person-name-to-person
        (let ((entity (value-of 'name-of item)))
          ;;/// what about a name-word in multiple names?
          (throw :already-decoded-name entity))))))


(defun known-sequence (items)
  "Have we seen this sequence before. If so, what names are based
   on it, and what do they name. If this picks out a single entity
   we return it. Stubs for cases of multiple names or multiple named
   entities."
  ;; called from categorize-and-form-name
  ;; throws to classify-&-record-span
  (let ((sequence (find-sequence items)))
    (if sequence
      (let ((names (names-based-on-sequence sequence)))
        (unless names
          (push-debug `(,sequence ,items))
          (error "Expected at least one name to be associated ~
                  with this sequence:~%~a" sequence))

        (let ((entities (entities-with-names names)))
          (unless entities
            (push-debug `(,names ,sequence ,items))
            (error "No named entity associated with the name ~
                  ~%~a" names))
          (if (null (cdr entities))
            (throw :already-decoded-name (car entities))
            (ambiguous-name-stub names entities))))
      (else
       (tr :pnf-items-no-known-sequence items)
       nil))))


(defun ambiguous-name-stub (names entities)
  (push-debug `(,names ,entities))
  (break "More than one entity returned for the names~
        ~%  ~a~
        ~%Look at this and decide what to do." names))


(defun names-based-on-sequence (sequence)
  (or (let ((references (who-binds 'sequence sequence)))
        ;; (whole) sequences linked-to by names and by 
        ;; an ordinal for each item
        (when references
          (push-debug `(,references))
          (let ((name-refs (loop for ref in references
                             when (itypep ref 'name)
                             collect ref)))
            name-refs)))
      (list (name-based-on-sequence/uncategorized sequence))))

(defun entities-with-names (names)
  (loop for name in names
    append (who-binds 'name name)))



        
        


                                      

