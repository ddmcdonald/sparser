;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "weekdays"
;;;   Module:  "model;core:time:"
;;;  version:  1.3 March 2005

;; 1.0 (9/18/93 v2.3) completely revamped for new semantics
;; 1.1 (1/10/94) redid ordinals.  Broke out the cases 10/20
;; 1.2 (10/30) realized that treatment of ordinals was screwy & backed out of it
;;     (1/31/99) tweaked the call to define-individual so that the ordinal
;;      was included.
;; 1.3 (3/15/05) Replaced position-in-a-sequence v/r of position-in-week with
;;      ordinal.

(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category  weekday
  :specializes time
  :instantiates time
  :binds ((name :primitive word)
          (abbreviation :primitive word)
          (position-in-week . ordinal))
  :index (:permanent :key name))
  


;;;------
;;; form
;;;------

(defun define-weekday (word-string
                       abbrev-string     ;; n.b. no period
                       position-integer)

  (let* ((word (define-word word-string))
         (abbreviation (define-word abbrev-string))
         (ordinal (nth-ordinal position-integer))
         weekday )

    (unless (setq weekday (find-individual 'weekday
                             :name word))
      (setq weekday
            (define-individual 'weekday
              :name word
              :abbreviation abbreviation
              :position-in-week ordinal ))

      (setf (unit-plist weekday)
            `(:rules
              (,(define-cfr category::weekday `(,word)
                  :form category::proper-noun
                  :referent weekday) )
              ,@(unit-plist weekday)) )

      (define-abbreviation word-string abbrev-string)

      weekday )))
