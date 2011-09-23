;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "abbreviations"
;;;   Module:  "grammar;model:core:names:"
;;;  Version:  0.0 November 1992

;; initiated 11/9/92 v2.3

(in-package :sparser)


;;;--------------
;;; the category
;;;--------------

(define-category  abbreviation
  :instantiates self
  :specializes  name
  :binds ((word :primitive word))  ;; /////// should inherit !!!!
  :index (:key word :permanent))


;;;----------
;;; def form
;;;----------

(defun define-abbreviation (string)

  ;; Create the object and create a single-term rule that yields
  ;; it given that string.
  ;;    The string has to be a single word -- the period is not
  ;; included since it's noticed by an fsa (assuming that the
  ;; abbreviation is capitalized when it occurs in the text).
  ;; ///// what do we do in the other cases ?????

  (let ((word (resolve-string-to-word/make string)))
    (when (polyword-p word)
      (error "Abbreviations are defined as single words, this input ~
              yields a polyword:~%     ~A~
              If you included a period, leave it out." string))

    (let ((abbrev (define-individual 'abbreviation
                    :word word)))

      (let ((rule (define-cfr category::abbreviation
                              (list  word )
                    :form category::abbreviation
                    :referent  abbrev )))

        (setf (unit-plist abbrev)
              `(:rule ,rule ,@(unit-plist abbrev)))

        abbrev ))))
