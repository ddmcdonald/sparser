;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "operations"
;;;   Module:  "model;core:titles:"
;;;  version:  1.0 December 1995

;; created 6/10/93 v2.3, first populated 1/6/94.  7/22 commented out
;; the autodef that don't make sense yet.  (9/12) tweeked the autodef.
;; 1.0 (12/9) redid most of the routined to accomodate compositional titles.
;;     (12/29) fixed a typo that made a fn undefined.

(in-package :sparser)


;;;----------
;;; printing
;;;----------

(defun princ-title (obj stream)
  (write-string (string/title obj) stream))

(define-special-printing-routine-for-category  title
  :short ((write-string "#<" stream)
          (princ-title obj stream)
          (write-string ">" stream))
  :full ((write-string "#<title " stream)
          (princ-title obj stream)
          (format stream " ~A,~A>" (indiv-id obj) (indiv-uid obj))))


(define-special-printing-routine-for-category  qualified-title
  :short ((let ((*print-short* t))
            (write-string "#<" stream)
            (princ-title (value-of 'title obj) stream)
            (write-string ", " stream)
            (princ-title-qualifier (value-of 'qualifier obj) stream)
            (write-string ">" stream)))
  :full ((write-string "#<qualified-title " stream)
         (princ-title (value-of 'title obj) stream)
         (write-string ", " stream)
         (princ-title-qualifier (value-of 'qualifier obj) stream)
         (write-string ">" stream)))


(define-special-printing-routine-for-category  title-base-word
  :short ((let ((*print-short* t))
            (write-string "#<" stream)
            (write-string (string/title-base-word obj) stream)
            (write-string ">" stream)))
  :full ((write-string "#<title " stream)
         (write-string (string/title-base-word obj) stream)
         (format stream " ~A,~A>" (indiv-id obj) (indiv-uid obj))))


(define-special-printing-routine-for-category  title-modifier
  :short ((let ((*print-short* t))
            (write-string "#<" stream)
            (write-string (string/title-modifier obj) stream)
            (write-string ">" stream)))
  :full ((write-string "#<title-modifier " stream)
         (write-string (string/title-modifier obj) stream)
         (format stream " ~A,~A>" (indiv-id obj) (indiv-uid obj))))


(define-special-printing-routine-for-category  single-word-title
  :short ((let ((*print-short* t))
            (write-string "#<" stream)
            (write-string (string/single-word-title obj) stream)
            (write-string ">" stream)))
  :full ((write-string "#<single-word-title " stream)
         (write-string (string/single-word-title obj) stream)
         (format stream " ~A,~A>" (indiv-id obj) (indiv-uid obj))))

;;;-------
;;; forms
;;;-------

(defun define-single-word-title (string)
  (define-individual 'single-word-title :name string))

(defun define-title-base-word (string)
  (define-individual 'title-base-word :name string))

(defun define-title-modifier (string)
  (define-individual 'title-modifier :name string))

(defun define-title-qualifier (string)
  (define-individual 'title-qualifier :name string))



;;;-----------------
;;; auto definition
;;;-----------------

(define-autodef-data 'title
  :module *titles*
  :display-string "Job titles"
  :not-instantiable t )


(define-autodef-data  'single-word-title
  :display-string "one word long"
  :form 'define-single-word-title
  :dossier "dossiers;title heads"
  :module *titles*
  :description "A title that is only one word (or polyword) long"
  :examples "\"president\", \"chairman\", \"commissioner\"" )

(define-autodef-data  'title-base-word
  :display-string "base"
  :form 'define-title-base-word
  :dossier "dossiers;title heads"
  :module *titles*
  :description "A word that can be the head of a title (its rightmost word), but that wouldn't count as a title just by itself without some modifier. cf. 'one word long'"
  :examples "\"officer\"" )

(define-autodef-data  'title-modifier
  :display-string "modifier"
  :form 'define-title-modifier
  :dossier "dossiers;title modifiers"
  :module *titles*
  :description "A word or polyword that can be added to a title to form a another title"
  :examples "\"assistant\", \"vice\", \"district\"" )

(define-autodef-data 'title-qualifier
  :display-string "status"
  :form 'define-title-qualifier
  :description "a word that modifies a title by describing how a person relates to it"
  :examples "\"acting\" \"former\""
  :module *title-qualifiers*
  :dossier "dossiers;title qualifiers")

