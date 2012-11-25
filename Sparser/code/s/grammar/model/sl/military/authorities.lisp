;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2012  David D. McDonald  -- all rights reserved

;;;     File:  "authorities"
;;;   Module:  model/sl/military
;;;  version:  November 2012

;; Initiated 2/2/07. Mostly done 2/22. Moved in to generic military and tweaked 11/24/12

(in-package :sparser)

;;;------------
;;; categories
;;;------------

(define-category authority
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name))

(define-category command  ;; USCENTCOM
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name))

(define-category agency   ;; NSA
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name))

(define-category service  ;; US Army
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name))

;; department (of Defense)


;;;---------------------------------------------
;;; code to define instances and rules for them
;;;---------------------------------------------

;; All of them get the label 'authority', while retaining their
;; identity and more specific category within their referents

(defun define-instance-of-a-kind-of-authority (category-name 
					       name other-names)
  (let* ((word (resolve-string-to-word/make name))
	 (i (define-individual category-name :name word)))
    (define-cfr (category-named 'authority) `(,word)
      :form (category-named 'proper-noun)
      :referent i)))

(defun type-check-authority-keys (name)
  (when name
    (unless (stringp name) 
      (break "The 'name' parameter should be a string.~%~a is a ~a"
	     name (type-of name)))))
		
;;--- cases

(defun define-command (name &optional other-names)
  (type-check-authority-keys name)
  (define-instance-of-a-kind-of-authority 'command name other-names))

(defun define-agency (name &optional other-names)
  (type-check-authority-keys name)
  (define-instance-of-a-kind-of-authority 'agency name other-names))

(defun define-service (name &optional other-names)
  (type-check-authority-keys name)
  (define-instance-of-a-kind-of-authority 'service name other-names))

(defun define-authority (name &optional other-names)
  (type-check-authority-keys name)
  (define-instance-of-a-kind-of-authority 'authority name other-names))



;;;-----------------------
;;; "commander uscentcom"
;;;-----------------------

(define-category commander
  :instantiates self
  :binds ((unit))) ;; what they command

(def-cfr commander ("commander" authority)
  :form np
  :referent (:instantiate-individual commander
	     :with (unit right-edge)))

