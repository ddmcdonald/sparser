;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2010-2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model/core/companies/"
;;;  version:  1.3 August 2013

;; initiated 5/22/93 v2.3; changed index, added print routine 6/7. Broke that out
;; as its own file 11/23/94.  5/3/95 added Define-company. 5/22 tweeked
;; find/company to be sensitive to the type of the name individual.
;; 0.1 (1/7/96) reorganized Define-company so that the alternatives wouldn't be
;;      defined as permanent individuals.  1/8 extended it again to make a table
;;      of strings to companies.  3/13 Added 'description' slot to the object
;; 1.0 (3/18/00) Started make-over to lattice point design.
;; 1.1 (2/11/05) Decide that lp don't make sense for names (they're not relations),
;;  so reverting to the older scheme. Handling fanout from sequences & psi.
;;  (2/14/05) Define-company wasn't cleaning up the chart after its runs.
;;  (12/14/10) Fixed capitalization problem (mlisp)
;;  (1/17/11) Debugging sequence-from-company-name and friends. 1/18 Fixing how
;;   an initially uncategorized name gets converted to a company name. 4/7 put
;;   name-word in as case in define-company-given-name.
;;  (2/13/13) Made company specialize named-object (see core/names/object)
;; 1.2 (3/21/13) Rebuilt define-company because existing version blew up on
;;   "United Nations" and looked overly complex in any event. 
;; 1.3 (8/16/13) Make company permanent in the category definition

(in-package :sparser)

;;;--------
;;; object
;;;--------


(define-category  company
  :instantiates self
  :specializes named-object
  :binds ((name . company-name)
          (aliases :primitive list) ;; of company-name's
          (description)
          (location))
  :index (:permanent
          :special-case :find find/company
                        :index index/company
                        :reclaim reclaim/company))


(define-autodef-data 'company
  :display-string "Company"
  :not-instantiable t )



;;;--------------------------------------------
;;; finding/making companies with a given name
;;;--------------------------------------------

(defun define-company (name-string &key aliases takes-the)
  ;; Convert the words to strings. Find or make name-words for each of them
  ;; as is (no lemmatization). Create the sequence, then the name,
  ;; then the company. 
  (flet ((do-company-name (name-string)
           (let* ((words (name-string-to-words name-string))
                  (name-words
                   ;; Add all the other sorts of categorized things
                   ;; that can appear in company names, e.g. inc-term's
                   (name-words-for-words words)))

             ;; Since we're explicitly defining this company, we can
             ;; be reasonably certain that we don't need to search
             ;; for this sequence already existing
             (make-company-name-as-simple-sequence name-words))))

    (let* ((name (do-company-name name-string))
           (company (make/company-with-name name)))
      (when takes-the
        (mark-company-name-as-taking-the name))
      (index-company-name-to-company name company)
      (when aliases
        ;; The examplar in "U.N.", which the resolve step will
        ;; convert to a polyword, which is just fine.
        (loop for alias in aliases
          as co-name = (do-company-name alias)
          do (link-alias-to-company alias co-name company)))

      company)))




;; This is from the old version that ran the parser and used the usual
;; PNF machinery to do the work.  Keeping it around "for parts"
#+ignore
(defun define-company-given-name (name)
  (cond
   ((itype name 'company)
    ;; the referent will already be a company if the full name
    ;; included terms like 'inc'
    name )

   ((itype name 'person)
    (define-company-given-name (value-of 'name name)))

   ((itype name 'name-word)
    ;; Unlikely to already be registered as a company
    (make/company-with-name name))
             
   ;; I don't get this call. (ddm 4/7/11) Looks like it would
   ;; only work on names that have internal evidence.
   ((category-for-edge-given-name-type (itype-of name) name)
    ;; This is the routine used in [names;fsa:do transitions]
    ;; to arrive at the category to label the edge with.
    ;; It does an ecase on the valid set of categories so we
    ;; know that whatever sort of name this is, it's a
    ;; reasonable one.
    (let ((co-name (render-name-as-company-name name)))
      (or (find/company-with-name co-name)
	  (make/company-with-name co-name))))
   (t
    (push-debug `(,name))
    (break "The analysis of the string full name did not lead to ~
            an object of type name:~%   ~A~%" name))))

    


;;;---------------------------------------------------
;;; find and make -- used by Establish-referent-of-PN
;;;---------------------------------------------------

(defun make/company-with-name (name)
  ;; called from name code
  (when (itype name 'collection)
    ;; The name was built by make-uncategorized-name-from-items which
    ;; has dropped the 'and'. We have to put it back.
    (setq name (convert-collection-of-names-to-single-name name)))

  (unless (itype name 'company-name)
    (setq name (render-name-as-company-name name)))

  (let ((new-company (define-individual 'company
                       :name name)))
    new-company ))


(defun find/company-with-name (name)
  ;; call from name code
  (let ((type-of-name (cat-symbol (category-of  name))))

    (declare (ignore type-of-name))
    ;; /// later check that the type has a first-word variable
    (let ((first-word (value-of 'first-word name)))
      (when first-word
        (find-company-given-first-name
         first-word (cat-instances category::company) name)))))



;;--- cross-ref. against full-string

(defparameter *string-to-companies* (make-hash-table :test #'equal))

;; Called from define-company
;;
(defun record-string-against-company (string company)
  (setf (gethash string *string-to-companies*)
        company))

(defun company-named (string)
  (gethash string *string-to-companies*))

(defun recover-list-of-companies-from-their-names (list-of-strings)
  (let ( companies  company )
    (dolist (s list-of-strings)
      (setq company (company-named s))
      (if company
        (push company companies)
        (format t "~&~%There is no company named ~S~%" s)))
    (nreverse companies)))




;;;-------------------------------------
;;; standard define-individual routines
;;;-------------------------------------

(defun find/company (company-category binding-instructions)
  (let* ((name (value-of-instr 'name binding-instructions))
         (sequence (sequence-from-company-name name))
         (dummy (unless sequence
                  (break "Bug in find/Company's dispatch for ~
                          identifying the sequence.")))
         (first-item (first (value-of 'items sequence)))
         (alist (cat-instances company-category)))
    (declare (ignore dummy))
    (find-company-given-first-name first-item alist name)))

(defun find-company-given-first-name (item1 alist name)
  (let ((entry (cdr (assoc item1 alist))))
    (when entry
      (if (cdr entry)
        (break "Stub: several companies with the first word ~A~
                ~%If they're discriminated by the rest of ~
                the name,~%  ~A~%Then write that code."
               item1 name)
        (first entry) ))))

(defun sequence-from-company-name (name)
  (let ((sequence (ecase (cat-symbol (itype-of name))
                    (category::company-name
                     (or (value-of 'sequence name)
                         (value-of 'name/s name)))
                    (category::uncategorized-name 
                     (value-of 'name/s name)))))
    (unless sequence
      (push-debug `(,name))
      (break "Inadequate set of cases for finding the sequence in the~
            ~%company name: ~A~%" name))
    sequence ))



(defun index/company (company company-category bindings)
  (let* ((name (value-of/binding 'name bindings company-category))
         (sequence (sequence-from-company-name name))
         (first-item (first (value-of 'items sequence)))
         (alist (cat-instances company-category))
         (entry (assoc first-item alist)))

    (if entry
      (rplacd entry
              (cons company (cdr entry)))
      (setf (cat-instances company-category)
            `( (,first-item ,company)
               ,@alist )))))



(defun reclaim/company (c alist company-category)
  (declare (ignore company-category))
  (let* ((name (value-of 'name c))
         (sequence (sequence-from-company-name name))
         (first-item (first (value-of 'items sequence)))
         (entry (assoc first-item alist)))
    (when entry
      (if (eq c (cadr entry)) ;; it's the first one
        (rplacd entry (cddr entry))
        (let ((last-cell (cdr entry))
              (next-cell (cddr entry))
              (next-item (caddr entry)))
          (loop
            (when (null next-cell)
              (break "No instance of ~A~
                      ~%in the company index under the first item ~
                      in its name:~%  ~A" c first-item)
              (return-from reclaim/Company))
            (when (eq next-item c)
              (rplacd last-cell (cdr next-cell)))
            (setq last-cell next-cell
                  next-cell (cdr next-cell)
                  next-item (car next-cell))))))))


    



