;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:names:people:"
;;;  version:  0.2 March 2005

;; initiated 6/8/93 v2.3
;; 0.1 (1/7/94) redesigned not to pre-index
;; 0.2 (9/26) promulgating change to how instances are stored. 10/6 added properties
;;  (3/16/05) Adding realization rules.

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  person
  :instantiates self
  :specializes nil
  :binds ((name . person-name)
          (age . age)
          (position . position))
  :index (:key name)
  :realization ((:tree-family  appositive
                 :mapping ((appositive-field . age)
                           (np . :self)
                           (appositive . age)))))


;;;------------
;;; operations
;;;------------

(defun make/person-with-name (name)
  (unless (indiv-typep name 'person-name)
    (break "Expected a person-name and got:~%  ~A" name))
  (define-individual 'person
    :name name))

(defun find/person-with-name (name)
  ;; ///add capability for near misses.
  (let ((people (cat-instances category::person)))

    (let ((person (gethash name people)))
      (if (consp person)
        (if (null (cdr person))
          (car person)
          (break "Multiple people with the same name"))
        person ))))



;;;---------------
;;; print routine
;;;---------------
#|
(define-special-printing-routine-for-category  person-name
  :full ((write-string "#<person-name " stream)
         (  |#

(defun shortest-person-string (person)
  (let ((name-word
         (value-of 'last-name
                   (value-of 'name person))))
    (let ((word
           (value-of 'name name-word)))
      (word-pname word))))

