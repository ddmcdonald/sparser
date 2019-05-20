;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2016-2010  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "person-company"
;;;   Module:  "model;core:pronouns:"
;;;  version:  May 2019

;; Broken out of ref.lisp 10/4/16

(in-package :sparser)

;; N.b. loading of this file is gated on *incrementally-resolve-pronouns*

;;;-----------
;;; CA action
;;;-----------

(define-completion-action  category::pronoun/inanimate  ;; label
                           :pronoun                     ;; tag
                           'seek-company-for-pronoun)   ;; function

(define-completion-action  category::pronoun/female
                           :pronoun
                           'seek-person-for-pronoun)

(define-completion-action  category::pronoun/male
                           :pronoun
                           'seek-person-for-pronoun)


(define-completion-action  category::pronoun/plural   ;; "they", "them", "their"
                           :pronoun
                           'seek-collection-of-people-for-plural-pronoun )


;;;---------------------------------------
;;; masculine/feminine 3d person pronouns
;;;---------------------------------------

(defun seek-person-for-pronoun (pn-edge)
  (tr :seek-person-for-pronoun pn-edge)
  (respan-pn-with-most-recent-person-anaphor pn-edge))

(defparameter *safe-to-coerce-named-entities-to-people* nil
  "If we're in a sublanguage where we have good coverage of NE that
 aren't people -- mostly companies and the like -- then we can reasonably
 assume that if there's a personal pronoun that has to be spanned then
 we can coerce a close NE to a person.")

(defun respan-pn-with-most-recent-person-anaphor (pn-edge)
  (let ((person-entries (discourse-entry (category-named 'person))))
    (let ((person
           (if person-entries
             (if (cdr person-entries) ;; more than one?
               (most-recently-mentioned person-entries)
               (car person-entries))
             (else
               nil  ;; //could be clever here and put in a placeholder that
                    ;; could be noticed in the dh later.
                    ;; Alternatively we could look now for some uncategorized
                    ;; name and use that:
                    ;;    (respan-pn-with-most-recent-name-anaphor pn-edge)
                    ;; But that gets unduely hairy and is quite presumptive.
               ))))

      ;; /// Catch wacko case
      (when (and person (itypep person 'people))
        (when *debug-pronouns*
          (push-debug `(,pn-edge ,person))
          (break "Got people for the person")))

      (unless person
        (tr :no-discourse-entries-for-people)
        (when *safe-to-coerce-named-entities-to-people*
          (setq person (coerce-nearest-named-object-to-person pn-edge))
          (unless person
            (when *debug-pronouns*
              (push-debug `(,person-entries))
              (break "why couldn't it coerce and find a person?")))))

      (when person
        (tr :subverting-pn-edge pn-edge (category-named 'person) person)
        ;; we have the edge in our hand, we just change the category
        ;; and referent of this edge
        (unless (typep person 'discourse-mention)
          (break "Expected discourse references now to be mentions: ~a" person))
        (let ((person-ref (base-description person)))
          (setf (edge-category pn-edge) (category-named 'person))
          ;; keep the form, it could be 'possessive', which is useful
          (set-edge-referent pn-edge person-ref)))

      pn-edge)))


(defun coerce-nearest-named-object-to-person (pn-edge)
  ;;(declare (ignore pn-edge)) ;; for calculating distances
  (let ((named-object-entries
         (discourse-entry (category-named 'named-object))))
    (when named-object-entries
      ;; distance considerations go here
      ;; an entry looks like
      ;;  (#<named-object Ahmadi - Rowshan 2> 
      ;;     (#<position4 4 "ahmadi"> . #<position7 7 "and">))
      ;; They're ordered, so taking the first is fine
      (let ((ne (most-recently-mentioned named-object-entries)))
        ;;/////// Reindex the ne as a person
        (when (itypep ne 'people) 
          (when *debug-pronouns*
            (push-debug `(,pn-edge ,ne))
            (break "got ne as people")))
        (tr :interpreting-ne-discourse-entry-as-person ne)
        (interpret-name-as-person ne)))))



(defun respan-pn-with-most-recent-name-anaphor (pn-edge)
  (tr :respan-no-people-in-dn pn-edge)
  (let ((name-entries
         (discourse-entry (category-named 'name))))
    
      (let ( name  edge )

        (if (null (indiv-binds (first (first name-entries))))
          ;; it's that randomness with the temporary/perm. individuals
          ;; getting screwed up and titles or the like getting
          ;; names as their referents
          (dolist (name/dh name-entries
                   (error "Wierdness remains: none of the names in the ~
                           discourse~%history were real."))
            (when (indiv-binds (first name/dh))
              (setq name (first name/dh))
              (return)))
          (setq name (first (first name-entries))))

        ;;;//// redo as taking over the edge as with people
        (setq edge
              (make-new-edge-over-pronoun pn-edge
                                          (category-named 'name)
                                          (category-named 'np)
                                          name))
        edge )))



;;;---------------------------
;;; neuter 3d person pronouns
;;;---------------------------

(defun seek-company-for-pronoun (pn-edge)
  (unless (special-company-pn-pattern-applies? pn-edge)
    (respan-pn-with-most-recent-company-anaphor pn-edge)))


(defun respan-pn-with-most-recent-company-anaphor (pn-edge)
  (declare (special *background-companies*))
  (let ((company-entries
         (discourse-entry (category-named 'company)))
        (pronoun-form (edge-form pn-edge)))

    (let ((company
           (if (cdr company-entries) ;; more than one
             (if *background-companies*
               (most-recently-mentioned 
                (filter-out-background-companies/dh company-entries))
               (most-recently-mentioned company-entries))

             (if company-entries
               (let ((first-entry (first company-entries))) ;; recency
                 (etypecase first-entry
                   (discourse-mention
                    (base-description first-entry))))

               nil  ;; This will leave the pn un(re-)spanned, which will make
                    ;; it show up as a treetop we can tie a CA rule to  
                    ;; unless a form rule swallows it.
               ))))

      ;;/// take over the edge
      (when company
        (let ((edge
               (make-new-edge-over-pronoun
                pn-edge       ;; edge to respan
                (category-for-co-pn-respan pn-edge)   ;; new category
                pronoun-form  ;; form
                company       ;; referent
                )))

          edge )))))


(defun category-for-co-pn-respan (pn-edge)
  (if (eq (edge-form pn-edge)
          (category-named 'possessive))
    (category-named 'company-s)
    (category-named 'company)))



(defun special-company-pn-pattern-applies? (pn-edge)
  ;; called from Seek-company-for-pronoun as a check before the standard
  ;; discourse-history search is done. It's the predicate in an 'unless',
  ;; so if it returns nil the caller falls through to the standard search,
  ;; and it it returns non-nil it preempts that. 
  (let ((edge-to-the-left (left-multiword-treetop (pos-edge-starts-at pn-edge))))
    (when edge-to-the-left
      ;; will definitely be one if the pattern is "company says its",
      ;; otherwise this pattern can't apply
      (case (cat-symbol (edge-category edge-to-the-left))
        (category::someone-reports
         (respan-pn-with-agent-of-prior-report pn-edge edge-to-the-left))
        (otherwise nil)))))

;;/// take over the edge
(defun respan-pn-with-agent-of-prior-report (pn-edge report-edge)
  (let ((agent (value-of 'agent (edge-referent report-edge))))
    ;;?? does there have to be a sanity check??
    (let ((edge (make-new-edge-over-pronoun
                 pn-edge
                 (category-for-co-pn-respan pn-edge)
                 (category-named 'np)
                 agent )))
      edge )))


;;;-----------------------
;;; third-person pronouns
;;;-----------------------

(defun seek-collection-of-people-for-plural-pronoun (pn-edge)
  (respan-pn-with-most-recent-collection-of-people pn-edge))

(defun respan-pn-with-most-recent-collection-of-people (pn-edge)
  (let ((collections/dh (discourse-entry (category-named 'collection))))
    (when collections/dh
      (let ( type  collection  collections-of-people/dh  )
        (dolist (c/dh collections/dh)
          (if (typep c/dh 'discourse-mention) ;; new regime
            (setq collection (base-description c/dh)
                  type (itype-of collection))
            (else ;; original regime
              (break "discourse-entry returned ~a, which is a ~a"
                     c/dh (type-of c/dh))                            
              (setq collection (first c/dh)
                    type (value-of 'type collection))))
          (when (eq type (category-named 'person))
            (push c/dh collections-of-people/dh)))

        (when collections-of-people/dh
          (if (cdr collections-of-people/dh)
            (when *debug-pronouns*
              (break "Stub: more than one collection of people in the ~
                      discourse history.~%Add the code to take the most ~
                      recent one.~%~%"))

            ;;/// take over the edge
            (let ((most-recent-people (car (first collections-of-people/dh))))
              (let ((edge
                     (make-new-edge-over-pronoun
                      pn-edge
                      (category-named 'person)  ;; category label
                      (category-named 'np)      ;; form
                      most-recent-people        ;; referent
                      )))

                edge ))))))))
