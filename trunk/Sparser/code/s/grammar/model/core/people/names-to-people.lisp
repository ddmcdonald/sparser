;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "names to people"
;;;   Module:  "model;core:people:"
;;;  version:  0.2.March 2005

;; copied over material from [random and hacks] 4/12/95
;; 0.1 (4/25) redid Interpret-name-as-person as a dispatch on itype to handle
;;  collections.  Tweeked .. 5/3
;;  (12/18) started moving the individual cs rules here to centralize them
;; 0.2 (3/16/05) Elaborated Interpret-name-as-person/aux along the same lines
;;  as done with companies.

(in-package :sparser)

;;;--------------------------
;;; interpretation functions
;;;--------------------------

;;--- single words

(defun interpret-cap-word-as-person (word)
  ;; make a name for the word and then have it interpreted as
  ;; a person
  (let ((name-word (define-individual 'name-word :name word)))
    (interpret-name-word-as-person name-word)))

(defun interpret-name-word-as-person (name-word)
  ;; can't already be known or we would be getting to the person
  ;; by a subseq. ref.  route.
  (let ((name-of-person
         (define-individual 'person-name :last-name name-word)))
    (define-individual 'person
      :name name-of-person)))



;;--- multiple words

(defun interpret-name-as-person (name)
  ;; reconstrue this name as that of a person and then make 
  ;; a person with that name.
  (if (category-p name) ;; "name/unknown-pattern"
    *default-person*
    (interpret-name-as-person/aux name)))

(defun interpret-name-as-person/aux (name) (break "interpret/aux")
  (etypecase name
    (individual
     (ecase (cat-symbol (itype-of name))
       (category::uncategorized-name
        (let* ((sequence (value-of 'name/s name)))
          (unless sequence
            (break "Name is not based on a sequence:~%  ~A" name))
          (let ((person-name (make-person-name-from-items1 
                              (value-of 'items sequence)
                              :sequence sequence)))
            (or (find/person-with-name person-name)
                (make/person-with-name person-name)))))
       
       ((or category::sequence category::collection)
        (let ((items (value-of 'items name))
              people )
          (dolist (item items)
            (push (interpret-name-as-person/aux item)
                  people))
          (define-individual 'collection
            :items (nreverse people)
            :number (length people)
            :type (category-named 'person))))

       (category::name-word
        (let ((person-name
               (or (name-word-to-person? name)
                   (define-individual 'person-name
                     :sequence (define-sequence (list name)
                                 category::name-word)))))
          (or (find/person-with-name person-name)
              (make/person-with-name person-name))))))
    (word
     (let* ((nw (define-individual 'name-word :name name))
            (person-name (define-individual 'person-name
                           :sequence (define-sequence (list nw)
                                       category::name-word))))
       (or (find/person-with-name person-name)
           (make/person-with-name person-name))))))


(defun name-word-to-person? (nw)
  (dolist (b (indiv-bound-in nw) nil)
    (when (eq (category-of (binding-body b)) category::person-name)
      (return (binding-body b)))
    ;(when (eq (category-of (binding-body b)) category::position-in-a-sequence)
    ;  (let ((sequence (value-of 'sequence (binding-body b))
    ))





;;;-----------------
;;; rule of context
;;;-----------------

;;--- age

(def-csr name person
  :right-context comma-age
  :form np
  :referent (:function interpret-name-as-person left-edge))



;;--- age rewriting rules when the age is given as just a bare number

(def-csr comma-number comma-age
  :left-context person
  :form appositive-prefix
  :referent (:function interpret-number-as-years-of-age right-edge))

(def-csr comma-number comma-age
  :left-context name
  :form appositive-prefix
  :referent (:function interpret-number-as-years-of-age right-edge))



