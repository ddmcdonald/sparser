;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2012-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "names"
;;;   Module:  "model;core:people:"
;;;  version:  1.5 August 2013

;; initiated 6/8/93 v2.3, added indexes 6/15.
;; 1.1 (1/7/94) Beginning to simplify the indexing.  Tweeked that 10/3.
;;     (2/24/95) moved in the name maker from [names:fsa:examine].
;;     (3/4) a little work on versions
;;     (5/12) extended find/person-name a little but it isn't done yet
;; 1.2 (7/7) redid Make-person-name-from-items a bit to do versions right
;; 1.3 (10/30) put in a treatment for collections and tweeked versions
;; 1.4 (12/5) fixed glitches in the treatment of versions.
;;     (11/25/12) Blocked stub breaks for the interior of long names
;;      or the presence of 'version' in make-person-name-from-items.
;;     (3/6/13) Got an initial in first-name position. 3/7 revived version.
;;     (6/14/13) Refactored to let the real person-name builder have the
;;      cleaner name.
;; 1.5 (8/16/13) Made the name categorie permanent

(in-package :sparser)

;;;--------
;;; object
;;;--------

;;/// define-person allows for nicknames and aliases

(define-category  person-name  ;; specialize the name ??
  :instantiates self
  :specializes name
  :index (:permanent
          :special-case :find find/person-name
                        :index index/person-name
                        :reclaim reclaim/person-name)

  :binds ((sequence . sequence)
          (last-name . name-word)))

;; N.b.each category that specializes person-name
;; needs it's own string-for setup. See string/person-name
;; for an example. 

(define-category  person-name/first-last
  :instantiates self
  :specializes person-name
  ;; "W. Ed Tyler"
  ;; Flag the initial specifically ?
  :index (:permanent :key first-name)
  :binds ((first-name . (:or name-word initial))
          (standard-prefix . person-prefix)
          (version . person-version)))


;;;------------
;;; operations
;;;------------

(note-permanence-of-categorys-individuals
 (category-named 'person))

;;--- cross-indexing

(defun index-person-name-to-person (name person)
  ;; called from make/person-with-name
  (let ((last-name (value-of 'last-name name)))
    (unless last-name
      (push-debug `(,name ,person))
      (error "The name of this person, ~a,~%does not have ~
              a last-name variable.~%Something upstream used ~
              something other than make-person-name-from-items."
             person))
    (bind-variable 'name-of person last-name)))

;;--- make

(defun make-person-name-from-items (items &key version sequence)
  ;; Called from Categorize-and-form-name
  ;; The 'version' argument is an index into the list of items.
  (let ((sequence (or sequence
                      (define-sequence items)))
        (last-name (if version ;; "Jr." for now just pressume it's last
                     (cadr (reverse items))
                     (car (last items))))
        (first-name (when (> (length items) 1)
                      (first items))))
    (let ((name
           (cond ((null first-name) 
                  (define-individual 'person-name
                    :sequence sequence
                    :last-name last-name))
                 (first-name ;; check for initials, multiple terms
                  (define-individual 'person-name/first-last
                    :sequence sequence
                    :last-name last-name
                    :first-name first-name
                    :version version))
                 (t
                  (push-debug `(,items))
                  (break "Fell through cases in person-name - new one?")))))
      name )))


(defun make-a-collection-of-person-names (items and version-cons)
  ;; Called from categorize-and-form-name
  ;; Split the items at the position of the 'and', make person names
  ;; out of them both, then stash them into a collection.
  (let ((first-items (subseq items 0 (1- and)))
        (second-items (subseq items and))
        (version-index (car version-cons))
        (version-object (cdr version-cons))
        first  second  collection )

    (if version-index
      ;; two different sets of calls depending on how the version
      ;; distributes across the names.
      (if (> version-index and)
        ;; Then it goes with the second name.
        (setq first (make-person-name-from-items first-items)
              second (make-person-name-from-items
                      second-items
                      :version version-object))
        (setq first (make-person-name-from-items
                     first-items
                     :version version-object)
              second (make-person-name-from-items second-items)))

      (setq first (make-person-name-from-items first-items)
            second (make-person-name-from-items second-items)))

    (setq collection (define-or-find-individual 'collection
                       :items (list first second)
                       :type (category-named 'person-name)
                       :number 2))
    collection ))




;;--- find

(defun find/person-name (person-name-category binding-instructions)
  (let ((sequence (value-of-instr 'sequence binding-instructions))
        (instances (cat-instances person-name-category)))
    (when instances
      ;; this is serial search, but it saves writing code and
      ;; provides hooks for being creative about name mergers
      (when (member sequence instances :test #'eq)
        ;; now we look up what name this sequence is associated with
        (let ((name
               (name-based-on-sequence/uncategorized sequence)))
          (when name
            (person-who-has-name name)))))))
;;/// refactor these two
(defun find/person-name/sequence (sequence)
  ;; called from interpret-name-as-person when we have the sequence
  ;; in hand from an uncategorized-name.
  (push-debug `(,sequence))
  (let ((instances (cat-instances category::person-name)))
    (when instances
      (car (memq sequence instances)))))


(defun person-who-has-name (name)
  (let ((bindings (indiv-bound-in name)))
    (when bindings
      (break "Stub: finish writing the routine"))))

(defun all-people-based-on-names (list-of-names)
  (let ( person  people )
    (dolist (name list-of-names)
      (setq person
            (person-who-has-name name))
      (when person
        (push person people)))
    (nreverse people)))


      

;;--- index

(defun index/person-name (name person-name-category bindings)
  (declare (ignore name))
  (let ((sequence (value-of/binding 'sequence bindings
                                    person-name-category))
        (instances (cat-instances person-name-category)))
    (setf (cat-instances person-name-category)
          (if instances
            (kcons sequence instances)
            (kcons sequence nil)))))

(defun reclaim/person-name (i index-field person-category)
  (let ((sequence (value-of 'sequence i)))
    (if (eq sequence (first index-field))
      (then
        (setf (cat-instances person-category) (cdr index-field))
        (deallocate-kons index-field))
      (let ((prior-cell index-field)
            (next-cell (cdr index-field))
            (next-individual (cadr index-field)))
        (loop
          (when (null next-individual)
            (break "Could not find ~A~%in the person-name index list" i)
            (return-from reclaim/person-name nil))
          (when (eq next-individual sequence)
            (rplacd prior-cell (cdr next-cell))
            (deallocate-kons next-cell)
            (return))
          (setq prior-cell next-cell
                next-cell (cdr next-cell)
                next-individual (car next-cell)))))))
