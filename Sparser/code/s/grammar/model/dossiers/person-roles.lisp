;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: (SPARSER LISP) -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "person-roles"
;;;   Module:  grammar/model/dossiers/
;;;  Version:  September 2020

(in-package :sparser)

(defparameter *person-role-names*
  '(

    "entrepreneur"
    
    "candidate"
    "individual"   ; "Individuals with HIV"
    "professional"

    ;; specific to experiments
    "participant" ; participates in some study or other activity
    "respondent"  ; "565 responses (35.3%) were obtained"
    "subject"

    "student"
    "undergraduate"

    ;; medical
    "patient"
    
    "doctor"
    "nurse"
    "physician"
    "rehabilitation therapist"
    "staff"
    "social worker"
    ))

#| These too? 
   outlier  "Ninety-one couples" "The authors"
|#

(defun instantiate-person-roles ()
  (loop for role-name in *person-role-names*
     do (define-role-based-person role-name)))

(instantiate-person-roles)
