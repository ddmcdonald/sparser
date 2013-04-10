;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2012-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "relation"
;;;   Module:  "model;core:places:countries:"
;;;  version:  April 2013

;; initiated 8/6/07. Moved out the generic routine 9/4. Changed one of
;; the form rules from np-head to common-noun since that's what we
;; actually get. 
;; 0.1 (3/4/13) Substantially reworking it. Using an ETF. Fixed the
;;  method 3/8.  Blocking it 3/9  because the set of rules that
;;  actually get created is bogus. Put it back 4/3 when Chomnsky-adjunction
;;  put into the rule creator

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
        :country country :item item)
    item))



#|  Treatment in 2007 -- a model for a general compose treatment
(def-form-rule (country common-noun)
  :form n-bar
  :referent (:head right-edge
             :function bind-open-var left-edge right-edge))

(def-form-rule (country n-bar)
  :form n-bar
  :referent (:head right-edge
	         :function bind-open-var left-edge right-edge))  |#
