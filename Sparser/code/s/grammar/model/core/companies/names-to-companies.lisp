;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2005  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "names to companies"
;;;   Module:  "model;core:companies:"
;;;  version:  March 2005

;; initiated 4/12/95.  Tweeked 5/3.  5/9 Added case of a word for when it's a
;; capitalized-word that's being converted.  5/29 added an anouncement when it's
;; converting name collections.  1/2/96 added name-word case.  3/11/05 Added a
;; variant to the name-word case that first checks for a company-name that
;; incorporates the name-word before makeing a new one. Added subroutine to
;; to the check: name-word-to-name?, which knows about person and company
;; names. Tweaking through 3/16.

(in-package :sparser)

;;;-------------------------------------------------------
;;; standard routine for converting a name into a company
;;;-------------------------------------------------------

(defun interpret-name-as-company (name)
  ;; standard call to use in cs rules
  (if (category-p name) ;; "name/unknown-pattern"
    *default-company*
    (interpret-name-as-company/aux name)))

(defun interpret-name-as-company/aux (name)
  (etypecase name
    (individual
     (ecase (cat-symbol (itype-of name))
       (category::uncategorized-name
        (let* ((sequence (value-of 'name/s name)))
          (unless sequence
            (break "Assumption violated: name is not based on ~
                    a sequence:~%  ~A" name))
          
          (let ((company-name (define-individual 'company-name
                                :sequence sequence)))

            (or (find/company-with-name company-name)
                (make/company-with-name company-name)))))
       
       ((or category::sequence category::collection)
        (format t "~&~%--------------------------------------~
                   ~%Interpreting the conjunction of names~
                   ~%  ~A~
                   ~%as a conjunction of companies because of the rule~
                   ~%  ~A~
                   ~%--------------------------------------~%"
                name *rule-being-interpreted*)
        (let ((items (value-of 'items name))
              companies )
          (dolist (item items)
            (push (interpret-name-as-company item)
                  companies))
          
          (define-individual 'collection
            :items (nreverse companies)
            :number (length companies)
            :type (category-named 'company))))

       (category::name-word
        (let ((company-name
               (or (name-word-to-company? name)
                   (define-individual 'company-name
                     :sequence (define-sequence (list name)
                                 category::name-word)))))
          (or (find/company-with-name company-name)
              (make/company-with-name company-name))))))
    (word
     (let* ((nw (define-individual 'name-word
                  :name name))
            (company-name (define-individual 'company-name
                            :sequence
                                (define-sequence (list nw)
                                  category::name-word))))
       (or (find/company-with-name company-name)
           (make/company-with-name company-name))))))


(defun name-word-to-company? (nw)
  (dolist (b (indiv-bound-in nw) nil)
    (when (eq (category-of (binding-body b)) category::company-name)
      (return (binding-body b)))))
      
