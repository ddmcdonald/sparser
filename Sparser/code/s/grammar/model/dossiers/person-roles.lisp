;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: (SPARSER LISP) -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "person-roles"
;;;   Module:  grammar/model/dossiers/
;;;  Version:  September 2020

(in-package :sparser)

(defparameter *person-role-names*
  '(
    "professional"

    ;; specific to experiments
    "participant" ; 'participates in some study or other activity
    "respondent"
    "subjects"

    "student"
    "undergraduate"

    ))

#| These too? 
   outlier  "Ninety-one couples"
|#

(defun instantiate-person-roles ()
  (loop for role-name in *person-role-names*
     do (define-role-based-person role-name)))

(instantiate-person-roles)
