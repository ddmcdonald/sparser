;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2011  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "names"
;;;   Module:  "model;core:companies:"
;;;  version:  2.1 April 2011

;; initiated 5/22/93 v2.3, added indexing routines 6/7
;; 1.1 (10/30) simplified the indexing scheme
;;     (1/11/94) added the slot "the", analogous to an inc-term
;; 1.2 (3/8) starting to add more kinds of company names
;; 2.0 (4/1) drastically simplified the indexing
;;     (10/3) wrote reclaimer  10/6 finished find/company-name
;;     (4/12/95) removed printing code to [printing]
;; 2.0 (4/23) added Make-company-name-from-items as nexus for doing it right
;;     (5/22) fixed glitch in stubbed subroutine of that fn.
;;     (5/29) started the treatment of "The" in names.
;; 2.1 (2/11/05) Adapting to new sequence treatment.
;;     (8/12/08) Evicerated map-name-words-to-name because its parameter values
;;      and what it does don't make sense anymore. Perhaps it's a left over
;;      from the reworking of sequences.
;;     (1/18/11) Making render-name-as-company-name actually change the variable
;;      in the name because of changes to how variables are tied to categories.
;;     (2/15) Found another case that will require design. See render-name-
;;      as-company-name. And another in same place 4/7.

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  company-name
  :instantiates nil
      ;; the company is entered into the discourse model,
      ;; not the company's name
  :specializes name
  :index (:special-case :find find/company-name
                        :index index/company-name
                        :reclaim reclaim/company-name)

  :binds ((sequence . sequence)
          (first-word . name-word)
          (prefix . sequence)
          (rest . sequence)
          (inc-term . inc-term)
          (the  :primitive word)))


#| A name is ultimately identified as such by its context. That aside,
 we should view a name as consisting of just a sequence of items.
 These items, usually individual words but also polywords or abbreviations,
 may be 'pure names', like "Fred", where we don't understand anything
 about the word other than it is a name, or they may be independently
 meaningful as in "Northeast Airlines".  In this second case we populate
 the name sequence with the objects rather than with name-words, but
 in doing so we'll have to be careful to ensure that we are controlling
 the form of expression of the object when we do this, since we must
 reflect the _form_ of the name's elements as well as their identity. |#



;;;---------------
;;; non-terminals
;;;---------------

(define-category company-name-prefix)


;;;------------------------------------------
;;; construction routine called from Examine
;;;------------------------------------------

(defun make-company-name-from-items (items
                                     &key &-sign inc-term?
                                          of and the generic-co
                                          koc? ordinal )
  ;; Called from Categorize-and-form-name.
  ;; Gets the indicator variables that Examine-capitalized-sequence
  ;; found as its keywords.
  (declare (ignore &-sign inc-term? of generic-co koc? ordinal))
     ;; // should try and pull out the names of people, and
     ;; setup a richer set of name structures, the better to predict
     ;; subsequent references. 

  (let ((co-name
         (if and
           (make-company-name/check-for-parts-being-companies items and)
           (make-company-name-as-simple-sequence items))))

    (when the
      ;; /// strip the "The" from the name (assuming we've gone that route
      ;; and it is indeed part of the original scanned sequence of words.
      ;; Then hack the company-printer to be sensitive to the 'the' binding.
      (mark-company-name-as-taking-the co-name))

    co-name ))


(defun make-company-name-as-simple-sequence (items)
  (let ((sequence (define-sequence items category::company-name))
        name )
    (setq name (define-individual 'company-name
                 :sequence sequence))
    (let ((first-word (first-item-of-sequence sequence)))     
      (add-binding-to name 'first-word first-word)
      (map-name-words-to-name items name)
      name )))


(defun make-company-name/check-for-parts-being-companies (items and-index)
  (let* ((original-items (copy-list items))
         (2d-half (copy-list (nthcdr and-index items)))
         (1st-half (nreverse
                    (nthcdr (1+ (length 2d-half))
                            (nreverse items)))))

    (declare (ignore 1st-half))
    ;(if (or (name-of-company/items 1st-half)
    ;        (name-of-company/items 2d-half))
    ;  (break)

    (if (comma-just-before-position? *pnf-scan-starts-here*)
      (company/check-if-conjunction-is-a-list original-items)

      ;; /// placeholder
      (make-company-name-as-simple-sequence original-items))))



(defun map-name-words-to-name (items name)
  ;; 11/12/08 'name' is now a psi denoting the name, so this
  ;; call makes no sense anymore. Unclear what we'd want here without
  ;; reading the rest of this file
  ;(spread-sequence-across-ordinals name items)
  )



;;;-------------------------------
;;; operations over company-names
;;;-------------------------------

(defun mark-company-name-as-taking-the (co-name)
  (bind-variable 'the t co-name))


(defun mark-company-as-taking-the (company)
  ;; Used as a referent function, so it has to return the company
  ;; so that it can be the value of the edge.
  (when (itype company 'company)
    ;; /// "the Immigration and Naturalization Service" will get
    ;; here rendered as a collection of companies if there's no
    ;; appreciation of "service"

    (let ((name (value-of 'name company)))
      (mark-company-name-as-taking-the name)
      company )))




;;;-------------------------------------------------
;;; converting uncategorized names to company names
;;;-------------------------------------------------

(defun render-name-as-company-name (name)
  ;; called from define-alternate-names-for-company. Returns the
  ;; 'company-name' individual corresponding to this name individual
  (case (cat-symbol (itype-of name))
    (category::uncategorized-name
     (let ((sequence (value-of 'sequence name)))
       (setf (indiv-type name)  ;; retype the same object
             (list (category-named 'company-name)))
       (swap-variable-in-binding
        'name/s name :to 'sequence :in (category-named 'company-name))
       (index/company-name-from-sequence sequence)
       name ))
    ((or category::name-word category::generic-co-word)
     (push-debug `(,name))
     (break "The 'name' we're about to turn into a company name is ~
           ~%just the single word ~a.~
           ~%Need to do the thinking to determine whether we should create~
           ~%a sequence for this or what. The name is on pop-debug" name))
    ;(category::name-word
    ; (break "Stub: 1st case of a name-word to be converted to a ~
    ;         company name:~%   ~A~%" name))
    (category::company-name name)
    (otherwise
     (push-debug `(,name))
     (break "New case for render-name-as-company-name: ~a"
	    (cat-symbol (itype-of name))))))




;;;-------------------------------------------------------------------
;;; standard operations for defining individuals of type company name
;;;-------------------------------------------------------------------

(defun find/company-name (company-name-category binding-instructions)
  (let ((sequence (value-of-instr 'sequence binding-instructions))
        (instances (cat-instances company-name-category)))
    (when instances
      (when (member sequence instances :test #'eq)
        (let ((company-name
               (bound-in sequence :body-type 'company-name)))
          (when company-name
            (bound-in company-name :body-type 'company)))))))



(defun index/company-name (name company-name-category bindings)
  (declare (ignore name))
  (let* ((sequence (value-of/binding 'sequence bindings
                                     company-name-category)))
    (index/company-name-from-sequence sequence company-name-category)))


(defun index/company-name-from-sequence (sequence &optional category)
  ;; broken out for the convenience of routines that already have
  ;; the sequence in hand (vs. going through a binding spec.)
  (let* ((company-name-category (or category
                                    (category-named 'company-name)))
         (instances (cat-instances company-name-category)))
    (if instances
      (setf (cat-instances company-name-category)
            (kcons sequence instances))
      (setf (cat-instances company-name-category)
            (kcons sequence nil)))))



(defun reclaim/company-name (i index-field company-name-category)
  (let ((sequence (value-of 'sequence i)))
    (if (eq sequence (first index-field))
      (then
        (setf (cat-instances company-name-category) (cdr index-field))
        (deallocate-kons index-field)
        (zero-out-individual sequence category::sequence))
      (let ((prior-cell index-field)
            (next-cell (cdr index-field))
            (next-individual (cadr index-field)))
        (loop
          (when (null next-individual)
            (break "Could not find ~A~%in the company-name index list" i)
            (zero-out-individual sequence category::sequence)
            (return-from reclaim/company-name nil))
          (when (eq next-individual sequence)
            (rplacd prior-cell (cdr next-cell))
            (deallocate-kons next-cell)
            (return))
          (setq prior-cell next-cell
                next-cell (cdr next-cell)
                next-individual (car next-cell)))
        (zero-out-individual sequence category::sequence)))))



;;;--------------------------------
;;; variations on the find routine
;;;--------------------------------

(defun name-of-company/items (item/s)
  ;; Is there a company with this name, given here just as
  ;; a list of items. 
  (unless (consp item/s)
    (break "Assumption violation: expected the argument to be ~
            a list:~%  ~A~%" item/s))

  (if (null (cdr item/s))
    ;; Then we've got only one item
    ()

    (else
      (format t "~&~%Stub: Name-of-company/items -- not yet looking ~
                 for whether~%Company-name item sequences conjoined ~
                 with 'and' already name companies.~%Assuming that ~
                 this one doesn't:~%  ~A~%~%")
      nil )))
