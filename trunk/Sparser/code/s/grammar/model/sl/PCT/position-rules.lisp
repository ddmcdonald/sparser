;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "position rules"
;;;   Module:  "model;sl:pct:"
;;;  version:  0.2 June 1995

;; initiated 6/15/93 v2.3
;; 0.1 (12/29) Added capability to look ahead for complements that supply
;;      the title.
;; 0.2 (6/13/95) revised the way to check for plurals given that the ertatz
;;      subtyping has been turned off.

(in-package :sparser)

;;;-------------------------------
;;; defNP lookup -- special cased 
;;;-------------------------------

(defun dereference-Post (obj)
  (etypecase obj
    ;; There's a hack on the plurals that the [:subtype collection] action
    ;; is taken to an individual rather than to a specialized category
    ;; as it should be. Hence these two cases. 
    (individual (deref-plural-post obj))
    (referential-category (deref-post obj))))

(defun deref-post (cat)
  ;; We're called as a reference calculation, so we're down under Ref/function
  ;; and can use its globals to get access to the chart. We're also responsible
  ;; for returning the object that will be the referent of the edge.
  (let* ((top-edge *parent-edge-getting-reference*)
         (following-word (pos-terminal (pos-edge-ends-at top-edge))))
    (if (eq following-word word::|of|)
      cat  ;; should we specialize it to be definite ???????????

      (let ((head-edge (rightmost-daughter-edge top-edge)))
        (if (plural-head? head-edge)
          (deref-plural-post (edge-referent head-edge))
          (break "singluar, non-plural instance of the word \"post\""))))))



(defun deref-plural-post (obj)
  (etypecase obj
    (referential-category  ;; new 6/95
     ;; we know it's plural or we wouldn't be here, so we look for 
     ;; prior collections and then check whether they're titles
     (let ((prior-collections (discourse-entry (category-named 'collection))))
       (if (null prior-collections)
         (when *break-on-new-cases*
           ;; makes the referent 'nil' 
           (break "no collections in the discourse history"))

         (let ((collective-titles
                (collection-of-type/dh prior-collections
                                       (category-named 'title)
                                       (category-named 'qualified-title))))
           (if (null collective-titles)
             (when *break-on-new-cases*
               (break "None of the established collections are of titles.~
                       ~%   ~A~%" prior-collections))

             ;; take the most recent one
             (first collective-titles))))))

             
    ;; this is the 12/93 quick & dirty code
    (individual
     (let* ((types (indiv-type obj))
            ;; if there's a collection of titles it won't be appreciated
            ;; as a title since there's no dual categorization yet, so we
            ;; have to look for the possibility of collections by hand
            (lookup
             (if (member category::collection types)
               category::collection
               category::title)))

       (let ((entry (discourse-entry lookup)))
         (if (> (length entry) 1)
           (break "More than one title/collection antecedant.~
                   Extend the alg.")
           (let ((obj (car (first entry))))
             obj )))))))
        


;;;------
;;; head
;;;------

(def-cfr post ("post")
  :form np-head
  :referent (:head position-at-co))

(def-cfr post ("posts")
  :form np-head
  :referent (:head position-at-co
             :subtype collection ))


;;;-------
;;; defNP
;;;-------

(def-cfr post ("the" post)  ;;/// add dereferencing
  :form np
  :referent (:function dereference-post right-edge ))


;;;--------------
;;; prepositions
;;;--------------

(def-cfr in-post ("in" post)
  :form pp
  :referent (:daughter right-edge))

