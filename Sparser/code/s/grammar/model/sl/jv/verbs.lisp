;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "verbs"
;;;   Module:  "model;sl:JV:"
;;;  version:  June 1993

;; initiated (?) 7/17/91.  Extended 7/23, 12/29 broken out from 
;; "first rules"
;; 1.1 (8/5/92 v2.3)  Started converting it over to categories and rdata
;; 1.3 (6/6/93) converted "capitalize"

(in-package :sparser)

;;;-------------------------------------------
;;; joint venture verbs just to get them down
;;;-------------------------------------------

(define-category visit
  :instantiates  self
  :specializes   event
  :binds ((traveler . person)
          (location . location))
  :realization
    (:tree-family transitive
     :mapping ((agent . traveler)
               (patient . location)
               (s . event)
               (np/subject . person)
               (vp . event/person)
               (vg . :self)
               (np/object . country))

     :main-verb "visit" )
  :index (:temporary :list))



(define-category  capitalize
  :instantiates self
  :specializes event
  :index (:temporary :list)
  :binds ((parent . company)
          (venture . company))
  :realization
    (:tree-family transitive/passive
     :mapping ((agent . parent)
               (patient . venture)
               (s . event)
               (np/subject . company)
               (vp . event/company)
               (vg . :self)
               (np/object . company))
     :main-verb "capitalize"))


#|
(define-main-verb  'mvb/achieve
                   :referent  nil
  :infinitive           "achieve"
  :tensed/singular      "achieves"
  :past-participle      "achieved"
  :present-participle   "achieving" )

(define-main-verb  'mvb/decide
                   :referent  nil
  :infinitive           "decide"
  :tensed/singular      "decides"
  :past-participle      "decided"
  :present-participle   "deciding"
  :nominalization       "decision" )

(define-main-verb  'mvb/double
                   :referent  nil
  :infinitive           "double"
  :tensed/singular      "doubles"
  :past-participle      "doubled"
  :present-participle   "doubling" )

(define-main-verb  'mvb/establish
                   :referent  nil
  :infinitive           "establish"
  :tensed/singular      "establishs"
  :past-participle      "established"
  :present-participle   "establishing"
  :nominalization       "establishment" )

(define-main-verb  'mvb/import
                   :referent  nil
  :infinitive           "import"
  :tensed/singular      "imports"
  :past-participle      "imported"
  :present-participle   "importing"
  :nominalization       "importation" )

(define-main-verb  'mvb/manufacture
                   :referent  nil
  :infinitive           "manufacture"
  :tensed/singular      "manufactures"
  :past-participle      "manufactured"
  :present-participle   "manufacturing" )

(define-main-verb  'mvb/open
                   :referent  nil
  :infinitive           "open"
  :tensed/singular      "opens"
  :past-participle      "opened"
  :present-participle   "opening" )

(define-main-verb  'mvb/plan
                   :referent  nil
  :infinitive           "plan"
  :tensed/singular      "plans"
  :past-participle      "planed"
  :present-participle   "planing" )

(define-main-verb  'mvb/produce
                   :referent  nil
  :infinitive           "produce"
  :tensed/singular      "produces"
  :past-participle      "produced"
  :present-participle   "producing" )

(define-main-verb  'mvb/provide
                   :referent  nil
  :infinitive           "provide"
  :tensed/singular      "provides"
  :past-participle      "provided"
  :present-participle   "providing" )

(define-main-verb  'mvb/use
                   :referent  nil
  :infinitive           "use"
  :tensed/singular      "uses"
  :past-participle      "used"
  :present-participle   "using" )    |#

