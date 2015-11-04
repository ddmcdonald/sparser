;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993-1995,2011-2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "record"
;;;   Module:  "model;core:names:fsa:"
;;;  Version:  1.6 June 2013

;; initiated 5/15/93 v2.3, populated 6/7, added recording of single
;; word names 6/10. added *no-referent-calculations* option 1/6/94.
;; 0.1 (3/8) experimenting with only using the default name creators
;;      and none of the special cases.
;; 1.0 (4/1) completely rearranged as part of new classification design
;;     (10/6) small promulgation of effects to names
;; 1.1 (12/7) added subseq.ref. checks on uncategorized names
;; 1.2 (4/23/95) added quick check for new uncategorized names to avoid the
;;      lengthy subseq.ref. lookup.
;; 1.3 (5/2) added 'collection' case
;; 1.4 (8/14/11) added locations.  Added person-name/first-last and
;;      commented out hurricane to quiet the compiler.
;; 1.5 (2/14/13) Making named-object's for uncategorized-names.
;; 1.6 (6/6/13) Folded back in use of dereference-shortened-name
;;      rather than reflexively making a uncategorized named object.

(in-package :sparser)

;;;-------------------------------------------------
;;; standard case: multi-word, known-categorization
;;;-------------------------------------------------

(defun establish-referent-of-pn (category name)
  ;; called from Do-referent-and-edge to come up with the referent
  ;; to use with the name edge.
  (tr :establish-pn-referent category name)
  (let* ((existing-referent  ;; see if anything already has that name
          (case (cat-symbol category)
            (category::company-name
             (find/company-with-name name))

            ((or category::person-name
                 category::person-name/first-last)
             (find/person-with-name name))

            (category::name-of-location
             (find/location-with-name name))

;;            (category::hurricane
;;             (find/hurricane-with-name name))

            (category::uncategorized-name
             (find/named-object-with-name name))

            (category::collection
             (establish-referents-of-collection-of-names name))

            ;; 10/6/93 by some not-yet-identified change, we're getting
            ;; the objects at this point rather than their names
            (category::company name)
            (category::person name)
            (otherwise
             (push-debug `(,category ,name))
             (break "New category for a name: ~a" category)))))

    (if existing-referent
      (tr :found-existing-referent-for-pn existing-referent)
      (tr :no-existing-referent-for-pn))

    (if existing-referent
      (if (listp existing-referent)
        (if (null (cdr existing-referent))
          ;; the supplier of the candidates uses a list by
          ;; default, but there's really only one.
          (car existing-referent)
          (disambiguate-name-from-context existing-referent))
        existing-referent)

      (else
       ;; Fix this too for new cases
        (case (cat-symbol category)
          (category::company-name
           (make/company-with-name name))
          ((or category::person-name category::person-name/first-last)
           (make/person-with-name name))
          (category::name-of-location
           (make/location-with-name name))
;;        (category::hurricane (make/hurricane-with-name name))
          (category::uncategorized-name
           (make/named-object-with-name name))
          (otherwise
           (push-debug `(,category ,name))
           (error "New category: ~a" category)))))))


;; This is the earlier routine for sorting out uncategoried names
;; but looking for the possibility that they are part of some known
;; name. But I don't trust some-name-element-is-new?, which is ancient
;;///// We do need something like this
#+ignore
           (if (some-name-element-is-new? name)
             (make/named-object-with-name name)
             (let ( referent )
               (multiple-value-setq (referent category)
                 (dereference-shortened-name name))
               (if referent
                 (cons referent category)
                 (make/named-object-with-name name))))
         

           
        
   

 
(defun establish-referents-of-collection-of-names (collection)
  ;; form up a new collection where the names have been replaced
  ;; with people, companies, etc.

  (let ((list-of-names (value-of 'items collection))
        referent  referent-list )

    (dolist (name list-of-names)
      (setq referent
            (establish-referent-of-pn (itype-of name) name))
      (when (consp referent)
        ;; The cons was made by Establish-referent-of-PN to record
        ;; what category it established when it succeeded in dereferencing
        ;; an uncategorized-name
        (setq referent (car referent)))
      (push referent referent-list))

    (setq referent-list (nreverse referent-list))

    (let ((new-collection
           (if (equal referent-list list-of-names)
             ;; frequent case when dealing with uncategorized-names
             collection
             (define-individual 'collection
               :items referent-list
               :number (length referent-list)))))

      new-collection )))




(defun disambiguate-name-from-context (list-of-individuals)
  (break "Stub: name refers to more than one individual~
          ~%and has to be disambiguated from context:~
          ~%   ~A~
          ~%~
          ~%Write the code." list-of-individuals))

