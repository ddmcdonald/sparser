;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2011 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:titles:"
;;;  version:  1.2 February 2011

;; initiated 6/10/93 v2.3.  Moved out the print macro 1/6/94 to help the
;; compiler.  1/18 added title-heads and title-modifiers
;; 1.0 (3/17) Redesigned the object so that heads and modifiers and such
;;   could be done seriously.
;;   (12/7/95) actually doing it -- making the 3/17 stub work.
;; 1.1 (1/31/99) pulled the old-style indexing statement from title so that
;;    they could be assembled using lattice-points. 
;;    (3/17/05) Added np-common-noun/one-of-several schema to titlex2
;; 1.2 (2/21/11) Added abbreviated-title for things like CEO. 

(in-package :sparser)

;;;------------
;;; components
;;;------------

(define-category  title  :specializes nil) ;; placeholder to inherit from

(define-category  title-base-word
  :instantiates title
  :specializes title
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))

(defun string/title-base-word (tbw)
  (let ((w/pw (value-of 'name tbw)))
    (etypecase w/pw
      (word (word-pname w/pw))
      (polyword (pw-pname w/pw)))))



(define-category  title-modifier
  :instantiates self
  :specializes nil
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:adjective name))

(defun string/title-modifier (tm)
  (let ((w/pw (value-of 'name tm)))
    (etypecase w/pw
      (word (word-pname w/pw))
      (polyword (pw-pname w/pw)))))



(define-category  single-word-title
  :instantiates title
  :specializes title
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))

(defun string/single-word-title (swt)
  (let ((w/pw (value-of 'name swt)))
    (etypecase w/pw
      (word (word-pname w/pw))
      (polyword (pw-pname w/pw)))))



;;;-----------------------
;;; compound title object
;;;-----------------------

(define-category  title ;; overwrites the placeholder at the top of this file
  :instantiates self
  :specializes nil
  :binds ((base-title)  ;; (:or title title-base-word single-word-title)
          (modifier . title-modifier)
          (responsibility))
  :realization ((:tree-family  modifier-specializes-adjective
                 :mapping ((adjp . title)
                           (modifier . title-modifier)
                           (adjective . (title-base-word title))
                           (specialized-type . title)
                           (base . base-title)
                           (specializer . modifier)))
                (:tree-family  np-common-noun/one-of-several
                 ;; for "a <title>" -- subtypes the object as 'indefinite'
                 :mapping ((np . :self)
                           (np-head . :self)))))



(defun string/title (title)
  (unless (individual-p title)
    (break "object passed is not an individual:~%  ~A~%" title))
  (unless (itype title 'title)
    (break "object passed is not a 'title':~%  ~A~%" title))

  ;; Given those checks, it has to have modifiers, the question is
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


(defun string/term-in-head-position-of-title (term)
  (ecase (cat-symbol (itype-of term))
    (category::title-base-word (string/title-base-word term))
    (category::single-word-title (string/single-word-title term))))


;;;---------------------------
;;; Titles with abbreviations
;;;---------------------------

(define-category abbreviated-title
  :instantiates title
  :specializes title
  :binds ((abbreviation)
          (full-form . title))
  :realization (:common-noun abbreviation))

(defun define-abbreviated-title (abbreviation/s &key full)
  (declare (ignore full))
  ;; The full form will want to be parsed, which is too much for today
  (unless (stringp abbreviation/s)
    (break "Stub: extend define-abbreviated-title to take a list"))
  (let ((word (define-word/expr abbreviation/s)))
    (define-individual 'abbreviated-title :abbreviation word)))


