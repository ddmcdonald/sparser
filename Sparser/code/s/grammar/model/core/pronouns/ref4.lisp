;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-2005,2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ref"
;;;   Module:  "model;core:pronouns:"
;;;  version:  4.3 August 2013

;; 3.0 (7/11/94) completely redone from scratch
;; 4.0 (5/8/95) in progress ..5/22
;; 4.1 (6/22) extended person alg. to use most-recently-mentioned
;;     (7/5) put in the comparable thing for companies
;;     (11/13) put in routine to take "they" etc. to collections of people, left stub
;; 4.2 (11/17) added special-pattern check for "<co> said it"  (12/4) fixed glich
;;      in it.  (1/16/96) added a filter against background companies. 
;;      (3/11/05) Tweaked Respan-pn-with-most-recent-company-anaphor to use the 
;;      form of the pronoun - addresses case of "its".
;; 4.3 (7/30/13) Rewrote respan-pn-with-most-recent-person-anaphor to change
;;      the edge that's passed in rather than make a new one. The new one was
;;      getting lost. (8/22/13) Added the *debug-pronouns* to guard breaks where
;;      the result was unexpected.
;; 4.4 (8/28/13) Extended respan with person to look for named-objects. 

(in-package :sparser)

(defparameter *debug-pronouns* nil
  "Guards breaks like the one in seek-person-for-pronoun where the search
   was expected to return an entity but didn't.")


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

(defun respan-pn-with-most-recent-person-anaphor (pn-edge)
  (let ((person-entries (discourse-entry (category-named 'person))))
    (let ((person
           (if (cdr person-entries) ;; more than one?
             (most-recently-mentioned person-entries)

             (if person-entries  ;; only one
               (first (first person-entries))

               nil  ;; //could be clever here and put in a placeholder that
                    ;; could be noticed in the dh later.
                    ;; Alternatively we could look now for some uncategorized
                    ;; name and use that:
                    ;;    (respan-pn-with-most-recent-name-anaphor pn-edge)
                    ;; But that gets unduely hairy and is quite presumptive.
               ))))

      ;; /// Catch wacko case
      (when (and person (itypep person 'people))
        (push-debug `(,pn-edge ,person))
        (break "Got people for the person"))

      (unless person
        (tr :no-discourse-entries-for-people)
        (setq person (coerce-nearest-named-object-to-person pn-edge)))

      (unless person
        (when *debug-pronouns*
          (push-debug `(,person-entries))
          ;; (setq person-entries (car *))
          (break "why couldn't it find a person?")))

      (when person
        (tr :subverting-pn-edge pn-edge (category-named 'person) person)
        ;; we have the edge in our hand, we just change the category
        ;; and referent
        (setf (edge-category pn-edge) (category-named 'person))
        ;; keep the form, it could be 'possessive', which is useful
        (setf (edge-referent pn-edge) person))

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
          (push-debug `(,pn-edge ,ne))
          (break "go ne as people"))
        (tr :interpreting-ne-discourse-entry-as-person ne)
        (interpret-name-as-person ne)))))
  


(defun respan-pn-with-most-recent-name-anaphor (pn-edge)
  (format t "~&~%No 'people' in the discourse history.~%Looking for names ~
             and taking the most recent.~%~%")
  (let ((name-entries
         (discourse-entry (category-named 'name))))
    
      (let ( name  edge )

        (if (null (indiv-binds (first (first name-entries))))
          ;; it's that randomness with the temporary/perm. individuals
          ;; getting screwed up and titles or the like getting
          ;; names as their referents
          (dolist (name/dh name-entries
                   (break "Wierdness remains: none of the names in the ~
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
               (first (first company-entries))

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
          (setq collection (first c/dh)
                type (value-of 'type collection))
          (when (eq type (category-named 'person))
            (push c/dh collections-of-people/dh)))

        (when collections-of-people/dh
          (if (cdr collections-of-people/dh)
            (break "Stub: more than one collection of people in the ~
                    discourse history.~%Add the code to take the most ~
                    recent one.~%~%")

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
