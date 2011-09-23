;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "initials"
;;;   Module:  "model;core:names:"
;;;  version:  2.0 January 1994

;; 2.0 (11/10/92 v2.3)  Flushed the original and put in new semantics 
;;       version.

(in-package :sparser)


;;;--------------
;;; the category
;;;--------------

(define-category initial
  :instantiates self
  :specializes  name
  :binds ((word :primitive word))  ;; /////// should inherit !!!!
  :index (:key word :permanent))
 



;;;---------------------------
;;; function to make them all
;;;---------------------------

(defun make-an-initial (string)
  (let ((word (resolve-string-to-word/make string)))
    (or (find-individual 'initial  :word word)
        (define-individual 'initial
          :word word))))

;;;-------
;;; cases
;;;-------

(mapc #'make-an-initial 
      '("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m"
        "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"))


#|----------------------------------- move these !!!!!!!!!!
;;;------------------------------
;;; abbreviations of first names
;;;------------------------------

(def-cfr "William" ("Wm."))
(def-cfr "George"  ("Geo."))       |#

