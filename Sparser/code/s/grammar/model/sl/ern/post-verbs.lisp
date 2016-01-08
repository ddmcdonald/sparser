;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "'post' verbs"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  December 1995

;; initiated 12/20/95

(in-package :sparser)


#| These verbs are an action by a company. They're sort of a variation
 on "announce".  "<co> <vb> <fin-dat>" is a simple transitive.  |#

(define-category  announce-a-financial-datum-verb
  :specializes nil
  :instantiates self
  :binds ((name  :primitive word))
  :index (:permanent :key name)
  :realization (:main-verb name))

#| Strictly speaking, these appear to be pretty narrow in application,
 so they could go with the rdata for the financial-report category.
 But that has so many realizations that it seems like it would be
 easier to keep track if we made this an other verbs their own
 instances and instantiated the category by other means. |#


;;--- intermediate partial-relation on the way to financial-reports
;;     (//?? is this step necessary ??)
;;
(define-category announce-a-financial-datum
  :specializes nil
  :instantiates self
  :binds ((datum . financial-data))
  :index (:temporary :key datum))


;;;---------------------------------
;;; rules to form financial reports
;;;---------------------------------

(def-cfr announce-a-financial-datum
         (announce-a-financial-datum-verb financial-data)
  :form vp
  :referent (:instantiate-individual announce-a-financial-datum
             :with (datum right-edge)))

(def-cfr announce-a-financial-datum
         (announce-a-financial-datum-verb financial-data-with-value)
  :form vp
  :referent (:instantiate-individual announce-a-financial-datum
             :with (datum right-edge)))


(def-cfr financial-report (company announce-a-financial-datum)
  :form s
  :referent (:instantiate-individual financial-report
             :with (company left-edge)
                   (datum right-edge)))



;;;---------
;;; autodef
;;;---------

(defun define-financial-datum-announcement-verb (string)
  (define-individual 'announce-a-financial-datum-verb
    :name string))

(define-autodef-data  'announce-a-financial-datum-verb
  :module *ern*
  :display-string "announcement verbs"
  :dossier "dossiers;financial data items"
  :form 'define-financial-datum-announcement-verb
  :description "A verb that takes a company as its subject and a financial datum of some sort as its direct object"
  :examples "\"post\"" )

