;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: (SPARSER LISP) -*-
;;; Copyright (c) 2021-2022 Smart Information Flow Technologies
;;;
;;;     File:  "person-roles"
;;;   Module:  grammar/model/dossiers/
;;;  Version:  July 2022

(in-package :sparser)

(defparameter *person-role-names*
  '(
    "analyst"
    "author"
 
    "entrepreneur"
    "founder"
    "co-founder"
    "boss"
    "shareholder"
    
    "candidate"
    "individual"   ; "Individuals with HIV"
    "professional"

    ;; specific to experiments
    "participant" ; participates in some study or other activity
    "respondent"  ; "565 responses (35.3%) were obtained"
    "relative"
    "subject"

    "student"
    "undergraduate"

    "scientist"
    "epidemiologist"
    "virologist"
    
    ;; medical
    "patient"
    "doctor"
    "nurse"
    "physician"
    "rehabilitation therapist"
    "social worker"
    "staff"

    ;; transportation
    "passenger"
    "pilot"

    "conductor"

    ))

#| These too? 
   outlier  "Ninety-one couples"
|#

(defun instantiate-person-roles ()
  (loop for role-name in *person-role-names*
     do (define-role-based-person role-name)))

(instantiate-person-roles)
