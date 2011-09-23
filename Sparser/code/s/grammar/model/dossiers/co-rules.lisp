;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;     File:  "co rules"
;;;   Module:  "model;dossiers:"
;;;  version:  October 2009

;; initiated (repackaging) 4/30/95. Moved in koc cfr's 5/22. Added a cs rule
;; for name->company 5/29. 3/3/08 Commented out that cs rule -- it only applies
;; when the name is in head position and wasn't anywhere to put the test.
;; 10/9/09 Commented out all the define-realization forms -- hasn't survived
;; the make-over of variables (or something) for the stick-psi fix.

(in-package :sparser)


;;;--------------
;;; prepositions
;;;--------------

(def-cfr at-company ("at" company)
  :form pp
  :referent (:daughter right-edge))


(def-cfr for-company ("for" company)
  :form pp
  :referent (:daughter right-edge))


(def-cfr in-company ("in" company)
  :form pp
  :referent (:daughter right-edge))


(def-cfr of-company ("of" company)
  :form pp
  :referent (:daughter right-edge))


(def-cfr to-company ("to" company)
  :form pp
  :referent (:daughter right-edge))


(def-cfr with-company ("with" company)
  :form pp
  :referent (:daughter right-edge))


;;----------- PPs on KOC

(def-cfr at-company ("at" kind-of-company)
  :form pp
  :referent (:daughter right-edge))

(def-cfr from-company ("from" kind-of-company)
  :form pp
  :referent (:daughter right-edge))

(def-cfr in-company ("in" kind-of-company)
  :form pp
  :referent (:daughter right-edge))

(def-cfr of-company ("of" kind-of-company)
  :form pp
  :referent (:daughter right-edge))

(def-cfr with-company ("with" kind-of-company)
  :form pp
  :referent (:daughter right-edge))






;;;-------------------------------------
;;; extending a company name with "the"
;;;-------------------------------------

(def-cfr company ("the" company)
  :form np
  :referent (:daughter right-edge
             :function mark-company-as-taking-the right-edge))



;;;---------------------------------------
;;; using "the" as evidence for a company
;;;---------------------------------------

;;/// Need to add a test that the name constituent is in head
;; position so it doesn't fire in cases like "the Kurdish city"
;(def-csr  name company
;  :left-context "the"
;  :form np
;  :referent (:function interpret-name-as-company right-edge))


;; 11/12/95
;; at-company ->  "at" company
#|
This macro doesn't seem to mean now what it used to, since while there's 
a category called 'company-descriptor', there's never giong to be one called
comma-company-descriptor and these are generating errors as the machinery
tried to connect variables to categories (e.g. description), of course
there might also be a bug in the inheritence of variables.

(define-realization at-company
         transparent-pp
         ((complement . company)
          (preposition . "at")
          (pp . at-company)))


;; 3/13/96
;; comma-company-descriptor ->  COMMA company-descriptor
;; company ->  company comma-company-descriptor

(define-realization comma-company-descriptor
         appositive
         ((appositive . company-descriptor)
          (comma-/appositive . comma-company-descriptor)
          (np . company)
          (appositive-field . (description be))))


;; 6/28/96
;; comma-company-descriptor ->  COMMA company-descriptor
;; company ->  company comma-company-descriptor

(define-realization company
         appositive
         ((appositive . company-descriptor)
          (np . company)
          (appositive-field . (description be))))

|#