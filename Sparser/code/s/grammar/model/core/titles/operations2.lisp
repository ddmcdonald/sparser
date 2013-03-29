;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "operations"
;;;   Module:  "model;core:titles:"
;;;  version:  2.0 March 2013

;; created 6/10/93 v2.3, first populated 1/6/94.  7/22 commented out
;; the autodef that don't make sense yet.  (9/12) tweeked the autodef.
;; 1.0 (12/9) redid most of the routined to accomodate compositional titles.
;;     (12/29) fixed a typo that made a fn undefined.
;; 2.0 (3/18/13) Fan0out from the changes to the title design. Note
;;      that title-qualifiers are being ignored pending a more generic
;;      conceptualizatoin

(in-package :sparser)

;;;-------
;;; forms
;;;-------

(defun define-single-word-title (string)
  (define-individual 'title :name string))

(defun define-title-base-word (string)
  (define-individual 'title :name string))


(defun define-title-modifier (string)
  (define-individual 'title-modifier :name string))

(defun define-title-qualifier (string) string)
;; Dropping them on the floor -- see note in object2
;;  (define-individual 'title-qualifier :name string))


;;;----------
;;; printing
;;;----------

(defun string/title (title)
 (let ((w/pw (value-of 'name title)))
    (etypecase w/pw
      (word (word-pname w/pw))
      (polyword (pw-pname w/pw)))))

(defun string/title-modifier (title)
  (string/title title))
 
(defun string/modified-title (title)
  (let ((base (value-of 'base-title title))
        (modifier (value-of 'modifier title)))
    ;; unroll the words from modifier to base, where the base
    ;; is likely to itself be a title modifier
    (push-debug `(,base ,modifier)) (break "stub")))

#|  ;; Given those checks, it has to have modifiers, the question is
  ;; how many.  We accumulate them here, and then concatenate the
  ;; bunch when we've reached the base.
  (let ((remainder title)
        accumulator  head )
    (loop
      (if (value-of 'modifier remainder)
        ;; Then we're not at the head yet
        (then
          (push (value-of 'modifier remainder) accumulator)
          (setq remainder (value-of 'base-title remainder)))
        (else
          (setq head remainder)
          (return))))

    (let ((string ""))
      (dolist (modifier accumulator)
        (setq string
              (concatenate
               'string
               (format nil "~A" (string/title-modifier modifier))
               " " string)))

      (setq string
            (concatenate
               'string
               string
               (string/term-in-head-position-of-title head)))

      string )))
|#

(defun princ-title (obj stream)
  (write-string (string/title obj) stream))



(define-special-printing-routine-for-category  title
  :short ((write-string "#<" stream)
          (princ-title obj stream)
          (write-string ">" stream))
  :full ((write-string "#<title " stream)
          (princ-title obj stream)
          (format stream " ~A,~A>" (indiv-id obj) (indiv-uid obj))))


(define-special-printing-routine-for-category  title-modifier
  :short ((let ((*print-short* t))
            (write-string "#<" stream)
            (write-string (string/title-modifier obj) stream)
            (write-string ">" stream)))
  :full ((write-string "#<title-modifier " stream)
         (write-string (string/title-modifier obj) stream)
         (format stream " ~A,~A>" (indiv-id obj) (indiv-uid obj))))



;;;-----------------
;;; auto definition
;;;-----------------

(define-autodef-data 'title
  :module *titles*
  :display-string "Job titles"
  :not-instantiable t )

(define-autodef-data  'title-modifier
  :display-string "modifier"
  :form 'define-title-modifier
  :dossier "dossiers;title modifiers"
  :module *titles*
  :description "A word or polyword that can be added to a title to form a another title"
  :examples "\"assistant\", \"vice\", \"district\"" )

#+ignore
(define-autodef-data 'title-qualifier
  :display-string "status"
  :form 'define-title-qualifier
  :description "a word that modifies a title by describing how a person relates to it"
  :examples "\"acting\" \"former\""
  :module *title-qualifiers*
  :dossier "dossiers;title qualifiers")

