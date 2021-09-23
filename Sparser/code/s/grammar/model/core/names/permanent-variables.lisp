;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "permanent-variables"
;;;   Module:  "model;core:names:"
;;;  version:  September 2021

;; Created 9/22/21 to hold variable that should be registered as not
;; reclaiming their bound-in bindingss between runs.

(in-package :sparser)


(register-permanent-bound-in-variable 'name 'named-object)

(register-permanent-bound-in-variable 'name/s 'uncategorized-name)

(register-permanent-bound-in-variable 'items 'collection)
(register-permanent-bound-in-variable 'type 'collection)
(register-permanent-bound-in-variable 'number 'collection)

(register-permanent-bound-in-variable 'items 'sequence) ; type ?
(register-permanent-bound-in-variable 'type 'sequence)
(register-permanent-bound-in-variable 'number 'sequence)

(register-permanent-bound-in-variable 'number 'position-in-a-sequence)
(register-permanent-bound-in-variable 'item 'position-in-a-sequence)
(register-permanent-bound-in-variable 'sequence 'position-in-a-sequence)

(register-permanent-bound-in-variable 'name 'name-word)
(register-permanent-bound-in-variable 'name-of 'name-word)

(register-permanent-bound-in-variable 'name 'person)
(register-permanent-bound-in-variable 'sequence 'person-name)
(register-permanent-bound-in-variable 'last-name 'person-name)
(register-permanent-bound-in-variable 'first-name 'person-name)
(register-permanent-bound-in-variable 'version 'person-name)

(register-permanent-bound-in-variable 'name 'company)
(register-permanent-bound-in-variable 'aliases 'company)

(register-permanent-bound-in-variable 'sequence 'company-name)
(register-permanent-bound-in-variable 'first-word 'company-name)
(register-permanent-bound-in-variable 'the 'company-name)
(register-permanent-bound-in-variable 'prefix 'company-name)
(register-permanent-bound-in-variable 'rest 'company-name)
(register-permanent-bound-in-variable 'inc-term 'company-name)

#|
(register-permanent-bound-in-variable  )
(register-permanent-bound-in-variable  )
(register-permanent-bound-in-variable  )
(register-permanent-bound-in-variable  )
(register-permanent-bound-in-variable  )
(register-permanent-bound-in-variable  )  |#
