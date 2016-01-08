;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "first rules"
;;;   Module:  "model;sl:JV:"
;;;  version:  July 1991

;; initiated (?) 7/17.  Extended 7/23

(in-package :sparser)


;;--- joint venture

#|  The notion itself (vs. it's structure as the head of a relation)
   we can represent just as a category without giving it any
   ontological commitments.  |#

(def-cfr joint-venture ("joint venture")
  :form N-bar
  :referent joint-venture )


#| But once we form a full NP then we have an individual on our hands
  and we have to establish (or find) an object, which these do NOT,
  they just record the debris in a slightly more interpreted way.  |#

(def-cfr joint-venture ("a" joint-venture)
  :form NP
  :referent (:composite  joint-venture+indefinite right-edge))

(def-cfr joint-venture ("the" joint-venture)
  :form NP
  :referent (:composite  joint-venture+definite right-edge))
  



;;;-------------------------------------
;;; specific subcategorization patterns
;;;-------------------------------------

;;----- [co] "develop" [defCo]

(define-main-verb  'mvb/develop
  :infinitive           "develop"
  :tensed/singular      "develops"
  :past-participle      "developed"
  :present-participle   "developing" )

(def-cfr event/co!__ ( mvb/develop defCo )
  :form  VP
  :referent (:composite develop-a-company
                        left-edge right-edge))

(def-cfr event  ( company event/co!__ )
  :form  S
  :referent  (:composite  vp+agent left-edge right-edge))


;;;--------------------
;;;  events in general
;;;--------------------

(def-cfr event  ( event in-location )       ;; "in NAME" -> in-location
  :form S
  :referent (:composite event+location
                        left-edge right-edge))

(def-cfr event  ( event location )          ;; "there"
  :form S
  :referent (:composite event+location
                        left-edge right-edge))

(def-cfr event  ( event in-city )          ;; "in Hong Kong"
  :form S
  :referent (:composite event+location
                        left-edge right-edge))



;;;----------------------------------------------------
;;;  [co] set up [joint-venture] {location} [with Co]
;;;----------------------------------------------------

(define-category set-up-something)

(define-main-verb  'mvb/set-up
                   :referent  category::set-up-something
  :infinitive           "set up"
  :tensed/singular      "set up"
  :past-participle      "set up"
  :present-participle   "set up" )


(def-cfr event/co!__  ( mvb/set-up joint-venture )
  :form VP
  :referent  (:composite  setup-a-joint-venture
                          right-edge))


;;--- ditto for establish

(def-cfr event/co!__  ( mvb/establish joint-venture )
  :form VP
  :referent (:composite setup-a-joint-venture
                        right-edge))

