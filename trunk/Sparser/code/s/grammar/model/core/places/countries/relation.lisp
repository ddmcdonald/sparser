;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2012-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "relation"
;;;   Module:  "model;core:places:countries:"
;;;  version:  March 2013

;; initiated 8/6/07. Moved out the generic routine 9/4. Changed one of
;; the form rules from np-head to common-noun since that's what we
;; actually get. 
;; 0.1 (3/4/13) Substantially reworking it. Using an ETF. Fixed the
;;  method 3/8.  Blocking it 3/9  because the set of rules that
;;  actually get created is bogus

(in-package :sparser)
	
#|  The design question is whether to use category or simply to
define a lambda variable that names the relation and have a rule
that links the country and the item. (See models/sl/military/ranks.lisp)
  Both can be annotated for provinance (probably use a plist or
an external table in either case).
  Only the category can be specialized though (as things stand),
so if we want to refine the choice of relationship according to the
type of the item (person, vs city, vs government official) then we
should use a category and use methods for the composition
|#

#|
The ETF doesn't do the right thing (it's beyond it's ken) because
it's random which of the two options for the region-type become
lhs and rhs randomly when they should be systematically the same
       person -> country person
 but   person -> country region-tpye

(define-category associated-with-country
  :instantiates self
  :specializes modifies  ;; ???
  :binds ((country . country)
          (item))
  :index (:sequential-keys country item)
  :realization (:tree-family modifier-adds-head-dependent-property
                :mapping ((np-head . (person region-type))
                          (modifier . country)
                          (combo-method . relationship-to-country))))
|#
                           
;;//// See people/names-to-people and places/regions to fix it all up
;; and remove the hacks that are there

(defgeneric relationship-to-country (country object)
  (:documentation "By default it just instantiates an instance
    of associated-with-country, but particular cases of object
    can use more specific relations."))

(defmethod relationship-to-country ((c sh::country) (thing t))
  (let ((country (dereference-shadow-individual c))
        (item (dereference-shadow-individual thing)))
    ;; Person and location versions of this method hack with
    ;; the form and category of the edge being created.
    ;; /// Should we do that here? What would it look like?
    (define-or-find-individual 'associated-with-country
        :country country :item item)))



#|  Treatment in 2007  Model for a general compose
(def-form-rule (country common-noun)
  :form n-bar
  :referent (:head right-edge
             :function bind-open-var left-edge right-edge))
;; Extending the form rule machinery to do the expansion implicit
;; in listing both form categories at once it besides the point
;; just now (8/6/07)
(def-form-rule (country n-bar)
  :form n-bar
  :referent (:head right-edge
	         :function bind-open-var left-edge right-edge))  |#
