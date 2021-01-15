;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2020 SIFT LLC. All Rights Reserved
;;;
;;;    File:   "groups"
;;;   Module:  "model;core:mid-level::"
;;;  version:  November 2020

;; Initiated 11/11/20 by lifting out of bio;taxonomy and other places

(in-package :sparser)

;; Collection (core/collections/object.lisp) provides variables
;; for items -- the list of the members of the collection,
;;     type -- a category saying what the members type is,
;; and number -- a lisp integer saying how many items there are.

(define-category group
  :specializes collection
  :binds ((group-members top)
          (label label)) ;; "group 2B CoVs"
  :realization (:noun "group"
                :of group-members))

(define-category set :specializes group :realization (:noun "set"))

(define-category family :specializes group :realization (:noun "family"))
(define-category superfamily :specializes group :realization (:noun "superfamily"))
(define-category cluster :specializes group :realization (:noun "cluster"))


(define-category member
 :specializes part-of-a-whole
 :restrict ((whole group))
 :realization (:noun "member"
               :of whole))

(define-category component
  :specializes part-of-a-whole
  :documentation "The relations this applies to allow the part
    to be subassemblies, subsets, the lid of a beer stien, etc."
  :realization
    (:noun "component"
     :of whole
     :in whole))

(define-category  part :specializes component :realization (:noun "part"))
(define-category fraction :specializes component :realization (:noun "fraction"))
(define-category subset :specializes component :realization (:noun "subset"))

