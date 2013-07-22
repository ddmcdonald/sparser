;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved

;;;
;;;     File:  "person+title"
;;;   Module:  "model;sl:pct:"
;;;  version:  0.2 July 2013

;; initiated 6/11/93 v2.3, populated with appositive rule 6/15
;; 0.1 (1/28/94) changing the relation to be 'has-title', and adding it.
;;     (2/29/08) commented out the define-realization rather than debug it now.
;; 0.2 (7/19/13) Moved in the title/person rules that were accumulating 
;;      in names to people

(in-package :sparser)

;;;----------
;;; category
;;;----------

;; Depricated not that position is a variable on person
(define-category  has-title
  :instantiates self
  :specializes nil
  :binds ((person . person)
          (title . title))
  :index (:sequential-keys title person))

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


;;;----------------
;;; preposed title
;;;----------------

#| ?? what's a plausible route for getting the cs rules done automatically ??
   Maybe a notion of "named thing" ??  |#

(def-cfr person (title person)
  :form np
  :referent (:head right-edge
             :bind (position left-edge)))

(def-csr  named-object person 
  :left-context title
  :form np
  :referent (:function interpret-name-as-person right-edge))

(def-csr  name person ;; overtaken by the event of named-object ??
  :left-context title
  :form np
  :referent (:function interpret-name-as-person right-edge))

(def-csr  capitalized-word person  ;; possible now?
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

(def-csr  name-object person
  :right-context  comma-title
  :form appositive-prefix
  :referent (:function interpret-name-as-person left-edge))

(def-csr  name-object person
  :right-context  comma-title
  :form appositive-prefix
  :referent (:function interpret-name-as-person left-edge))

