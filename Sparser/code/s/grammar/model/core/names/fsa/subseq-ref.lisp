;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "subseq ref"
;;;   Module:  "model;core:names:fsa:"
;;;  version:  0.3 February 2005

;; broken out from [names:fsa:record] 6/8/93 v2.3
;; (1/7/94) patched around earlier indexing bug in Item-in-a-known-name
;; 0.1 (4/3) adding preference for individuals mentioned in the current discourse.
;; 0.2 (10/5) given that the indexing of names switched to just the sequences,
;;      developing an alternative lookup scheme.
;;     (12/7) added another entry point for when the c is in hand
;; 0.3 (12/22) fixed bug in 10/5 work
;;     (2/2/05) switched Subsequent-reference-off-name-word to look at ordinal bindings
;;      rather than position-in-a-sequence

(in-package :sparser)

;;;--------------
;;; Entry points
;;;--------------

(defun dereference-proper-noun (edge)
  ;; called from Sortout-edges-over-single-cap-word
  ;; The form label on this edge is proper-noun. This means it's
  ;; probably a single word reference to an individual we already
  ;; know. If we confirm that, we construct a new edge with the
  ;; appropriate labels. If we can't improve on the analysis we
  ;; return nil.
  (let ((referent (edge-referent edge)))
    (when (individual-p referent)
      (let ((bindings (indiv-bound-in referent)))

        (multiple-value-bind (category its-referent rule)
                             ;; checkout various subsequent reference
                             ;; patterns
                             (subseqent-reference-by-shortened-name
                              referent ;;bindings
                              )
          (when category
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
             (list edge))))))))



(defun dereference-shortened-name (name)
  ;; called from Establish-referent-of-PN
  (unless (itype name 'uncategorized-name)
    (break "An individual other than an uncategorized name ~
            passed in:~%~A~%" name))
  (let ((name-words
         (value-of 'items (value-of 'name/s name))))
    (multiple-value-bind (category referent rule)
                         (subseqent-reference-by-shortened-name
                          (first name-words))

      (when referent
        (if (eq referent name)
          ;; unless we break out the different parts of that routine
          ;; it will always find this case the first time the name
          ;; appears
          nil
          (values referent category))))))
        


;;;----------------
;;; the workhorses
;;;----------------

(defun subseqent-reference-by-shortened-name (i)  ;;bindings)
  (case (cat-symbol (itype-of i))
    (category::name-word
     (subsequent-reference-off-name-word i))
    (otherwise nil)))


(defun subsequent-reference-off-name-word (nw)
  (let ((pos-in-sequence-bindings
         (bound-in nw :super-category 'ordinal
                   :all t)))

    (when pos-in-sequence-bindings
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
                       :name-word-somewhere-in-name)))))))
            

    


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



(defun item-in-a-known-name (bindings)
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
