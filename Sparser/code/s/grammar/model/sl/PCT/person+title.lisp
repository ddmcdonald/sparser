;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "person+title"
;;;   Module:  "model;sl:pct:"
;;;  version:  0.1 January 1994

;; initiated 6/11/93 v2.3, populated with appositive rule 6/15
;; 0.1 (1/28/94) changing the relation to be 'has-title', and adding it.
;;     (2/29/08) commented out the define-realization rather than debug it now.

(in-package :sparser)

;;;----------
;;; category
;;;----------

(define-category  has-title
  :instantiates self
  :specializes nil
  :binds ((person . person)
          (title . title))
  :index (:sequential-keys title person))


;;;----------------
;;; preposed title
;;;----------------

#| ?? what's a plausible route for getting the cs rules done automatically ??
   Maybe a notion of "named thing" ??  |#

(def-cfr person (title person)
  :form np
  :referent (:head right-edge
             :instantiate-individual  has-title
                :with (person right-edge
                       title left-edge)))

(def-csr  name person
  :left-context title
  :form np
  :referent (:function interpret-name-as-person right-edge))

(def-csr  capitalized-word person
  :left-context title
  :form np
  :referent (:function interpret-cap-word-as-person right-edge))



;;;--------------------------------------------
;;; appositive setup -- stupid comma treatment
;;;--------------------------------------------

(def-cfr comma-title ("," title)
  :form appositive
  :referent (:daughter right-edge))

(def-cfr person (person comma-title)
  :form np
  :referent (:head left-edge
             :instantiate-individual has-title
                 :with (person left-edge
                        title right-edge)))


;; 10/20/95
;; be-title ->  be title
;; event ->  person be-title
#+ignore
(define-realization has-title
         thing-is-description
         ((np/subject . person)
          (s . event)
          (description . (TITLE qualified-title))
          (result . has-title)
          (vp . be-title)
          (be . be)
          (complement . title)
          (individual . (PERSON employed-as))))

