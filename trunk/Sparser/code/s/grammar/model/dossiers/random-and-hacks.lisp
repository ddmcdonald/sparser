;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1998  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "random and hacks"
;;;   Module:  "model;dossiers:"
;;;  version:  July 1998

;; initiated 2/14/94 v2.3, breaking out of [whos news:random and hacks]
;; 10/3 def->define-individual

(in-package :sparser)

#|  7/20/98  Commenting this out while a problem with find-variable../named
    is worked out.
(defparameter *default-person*
  (define-individual 'person
    :name (define-individual 'person-name
            :first-name/s (define-sequence `(,(define-individual 'name-word
                                                :name (define-word "John"))))
            :last-name (define-individual 'name-word
                         :name (define-word "Doe")))))   |#

