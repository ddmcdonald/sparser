;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "gene/protein"
;;;   Module:  "model:sl:NIH:"
;;;  version:  September 1996

;; started 7/21/96. Fixed mistake in realization/primitive syntax in category
;; definition 8/4.  9/3 Remodularized the def-form to accomodate autodef, and
;; added that as well.

(in-package :sparser)

;;;-----------------------------
;;; object in the model/grammar
;;;-----------------------------

(define-category  gene/protein
  :instantiates self
  :specializes nil
  :binds ((long-name :primitive polyword)
          (name :primitive word))
  :index (:permanent :key name))



;;;------------------
;;; definition forms
;;;------------------

(defun define-gene/protein (&key short-form long-form)
  (let ( object short-word cfr )
    (when short-form
      (multiple-value-setq (object short-word cfr)
        (define-short-name-for-gene/protein short-form)))
  
    (when long-form
      (unless (stringp long-form)
        (error "The 'long-form' argument must be a string.~
                ~%~A is a ~A~%" long-form (type-of long-form))))

    (let ((long-word (when long-form (define-polyword/expr long-form)))
           (cfrs (when cfr (list cfr))))

      (unless object
        (setq object (define-individual 'gene/protein
                       :long-name long-word
                       :name short-word)))

      (when long-form
        (push (define-cfr (category-named 'gene/protein)
                (list  long-word  )
                :form category::proper-name
                :referent object)
              cfrs))

      (values object cfrs))))


(defun define-short-name-for-gene/protein (string)
  ;; We need this form for when we're defining a word as a gene/protein
  ;; -on the fly- off the workbench when we observe a new case that
  ;; we didn't already have in our full tables.  Since what we usually
  ;; see is the short form, that's the choice of the name on this function,
  ;; though it's just handling strings it could actually be any spelling
  ;; form that names a gene (protein).
  (unless (stringp string)
    (error "The 'short-form' argument must be a string.~
            ~%~A is a ~A~%" string (type-of string)))

  (let* ((short-word (define-word/expr string))
         (object
          (define-individual 'gene/protein
            :name short-word))
         (cfr
          (define-cfr (category-named 'gene/protein)
                      (list  short-word  )
            :form category::proper-name
            :referent object)))

    (values object short-word cfr)))




;;;----------------------
;;; auto-definition data
;;;----------------------

(define-autodef-data  'gene/protein
  :display-string "genes (proteins)"
  :form 'define-short-name-for-gene/protein
  :dossier "dossiers;genes/proteins"
  :module *nih*
  :description "The name (usually the abbreviation) of a gene or of its protein product"
  :examples "Shc, PDGF" )

