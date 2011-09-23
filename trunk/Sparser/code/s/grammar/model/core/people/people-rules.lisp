;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "people rules"
;;;   Module:  "model;core:names:people"
;;;  version:  February 1991      (v1.8.1)

(in-package :sparser)


;;;---------------
;;; plural people
;;;---------------

(define-category plural-person)
(setf (cat-plist category::plural-person)
      (list :plural (category-named 'person)))

(def-category and/person :lattice-position :non-terminal)
(def-category and/name   :lattice-position :non-terminal)
(define-category plural-name)


;; These were written for (belmoral) back at the start of the analysis.
;; But now for a case like that we can do better because we're allowing
;; subsequent references to known people that start as [name] to be
;; converted to [person] by a CA action on their referent.
;;
;(def-cfr and/name ("and" name)
;  :form  right-half-of-a-conjunction
;  :referent (:daughter right-edge))
;
;(def-cfr name (name and/name)
;  :referent (:composite plural-name
;                        left-edge right-edge))
;
;(def-csr and/name and/person :left-context person
;  :referent (:find-object find-or-make/person right-edge))


(def-cfr person (person and/person)
  :referent (:composite plural-person
                        left-edge right-edge))


;;;------------------------------------
;;; combination with boundary prefixes
;;;------------------------------------

(def-cfr by-person ("by" person)
  :referent (:daughter right-edge))




;;; adjuncts

(def-cfr person (person-possessive person)
  :referent (:daughter right-edge))

