;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "nom/pers"
;;;   Module:  "model forms;acts:arg str:"
;;;  version:  1.0  March 1991
;;;
;;;  Nominalized verbs where the argument is a person
;;;

;; initiated 3/7
;; 3/25 added [person][nom/pers] for "his retirement"

(in-package :CTI-source)


;;;---------------------------
;;; phrases spanning [person]
;;;---------------------------

(def-cfr person-possessive (person apostrophe-s)
  :referent (:daughter left-edge))

(def-cfr of-person ("of" person)
  :referent (:daughter right-edge))


;;;------------------
;;; swallowing stuff
;;;------------------

(def-cfr nominalization/person
         ("the" nominalization/person)
  :referent (:daughter right-edge))


(def-cfr nominalization/person
         (adverb nominalization/person)
  :referent (:daughter right-edge))


(def-cfr nominalization/person
         (temporal-adverb nominalization/person)
  :referent (:daughter right-edge))


(def-cfr nominalization/person
         (nominalization/person time)
  :referent (:daughter left-edge))


;;;----------
;;; cs rules
;;;----------

(def-csr  of-name of-person   :left-context  nominalization/person
  :referent (:find-or-make-object
             find-or-make/person right-edge))



;;;------------
;;; job-events
;;;------------

(def-cfr job-event (person-possessive nominalization/person)
  :referent (:composite job-event+person
                        right-edge left-edge))


(def-cfr job-event (nominalization/person of-person)
  :referent (:composite job-event+person
                        left-edge right-edge))


(def-cfr job-event (person nominalization/person)  ;; "his retirement"
  :referent (:composite job-event+person
                        right-edge left-edge))

