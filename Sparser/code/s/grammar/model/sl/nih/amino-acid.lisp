;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "amino acid"
;;;   Module:  "model:sl:NIH:"
;;;  version:  August 1996

;; started 7/22/96. Fixed mistake in realization/primitive syntax in category
;; definition 8/4.

(in-package :sparser)


(define-category  amino-acid
  :instantiates self
  :specializes nil
  :binds ((name :primitive word)
          (abbreviation :primitive word))
  :index (:permanent :key name))


(defun define-amino-acid (&key word abbreviation)  ;; Can there be several
  (when word                                       ;; abbreviations ??
    (unless (stringp word)
      (error "The 'word' argument must be a string.~
              ~%~A is a ~A~%" word (type-of word))))
  (when abbreviation
    (unless (stringp abbreviation)
      (error "The 'abbreviation' argument must be a string.~
              ~%~A is a ~A~%" abbreviation (type-of abbreviation))))

  (let ((abbrev (when abbreviation (define-word/expr abbreviation)))
        (name (when word (define-word/expr word)))
        object  cfrs )

    (setq object (define-individual 'amino-acid
                   :abbreviation abbrev
                   :name name))

    (when abbreviation
      (push (define-cfr (category-named 'amino-acid)
                        (list  abbrev  )
              :form category::proper-name
              :referent object)
            cfrs))

    (when word
      (push (define-cfr (category-named 'amino-acid)
                        (list  name  )
              :form category::proper-name
              :referent object)
            cfrs))

    (values object cfrs)))




;;--- cases  (these belong in a dossier)

(define-amino-acid :word "tyrosine" :abbreviation "tyr")

(define-amino-acid :word "phenylalanine")

