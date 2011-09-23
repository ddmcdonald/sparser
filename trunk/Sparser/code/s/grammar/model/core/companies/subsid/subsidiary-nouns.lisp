;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "subsidiary nouns"
;;;   Module:  "model;core:names:companies"
;;;  version:  April 1991      (v1.8.2)

(in-package :CTI-source)


;;;------------------------------------------------------
;;; head nouns that mark a company as being a subsidiary
;;;------------------------------------------------------

#|  These words take on their marking function strictly by way of the
context they are in, which is to say by their explicit mention in the
rules that recognize subsidiary companies.  They don't have a special
categorization indicating this function. |#

(defun princ-company-unit (u stream)
  (etypecase u
    (category
     ;; it's presumably a self-referential word
     (let ((word (cadr (member :self-referential-word
                               (cat-plist u)))))
       (if word
         (display-word word stream)
         (break "The unit in the subsidiary is a category but not a ~
                 ~%     self referential word.  Extend the code to ~
                 cover this case:~
                 ~%     ~A" u))))
    ))


;;;---------------
;;; head category
;;;---------------

(def-category subsidiary-head :lattice-position :non-terminal)


;;;----------
;;; def form
;;;----------

(defun define-head-of-subsidiary-phrase (string)
  (let ((word (resolve/make string)))
    (define-cfr category::subsidiary-head `(,word)
      :form  category::NP-head
      :referent  word)))


(define-head-of-subsidiary-phrase "affiliate")
(define-head-of-subsidiary-phrase "division")
(define-head-of-subsidiary-phrase "operation")
(define-head-of-subsidiary-phrase "subsidiary")
(define-head-of-subsidiary-phrase "unit")

