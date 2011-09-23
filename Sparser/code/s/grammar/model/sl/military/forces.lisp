;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011  David D. McDonald  -- all rights reserved
;;; $Id:$
;;;
;;;     File:  "forces"
;;;   Module:  "model:sl:military:"
;;;  version:  July 2011

;; For any sort of group that can engage in military operations.

;; initiated 7/19/11. Started populating 8/3

(in-package :sparser)

;;;--------
;;; forces
;;;--------

(define-category military-force
  :specializes kind
  :binds ((name  :primitive word)
          (abbrev :primitive word))
  :realization (:common-noun "force"))

;; Forces are referred to in general terms "insurgents", "CF",  which are
;; categories, but when they do something its a particular platoon or other
;; sort of group that's doing it, which is an individual. Starting with
;; making them categories, but this needs sorting out.

(defun define-type-of-force (name &optional abbrev)
  (let* ((category-name (name-to-use-for-category name))
         (category (category-named category-name))
         (new? (null category))
         (name-word (define-word name))
         (abbrev-word (when abbrev (define-word abbrev))))
    (when new?
      (let ((form `(define-category ,category-name
                     :specializes military-force
                     :instantiates military-force
                     :bindings (name ,name-word abbrev ,abbrev-word))))
        (setq category (eval form)))

      (let ((name-rule (make-cn-rules/aux
                        name-word 
                        (category-named 'military-force) ;; label
                        category)) ;; referent
            (abbrev-rule (make-cn-rules/aux
                          abbrev-word  ;; plural make sense?
                          (category-named 'military-force) ;; label
                          category)))
        ;; where do we put the rules?
        category ))))
          

;;--- cases (would usually be in a dossier)

(define-type-of-force "insurgent" "ins")

(define-type-of-force "coalition forces" "cf")

(define-type-of-force "close air support" "cas") ;; is this right for CAS?


;;;-------
;;; units
;;;-------

(define-category military-unit-type
  :specializes kind
  :binds ((type  :primitive word)) ;; e.g. "platoon"
  :realization (:common-noun type))

(define-individual 'military-unit-type :type "platoon")


(define-category military-unit
  :specializes kind
  :instantiates self
  :binds ((type . military-unit-type)
          (force . military-force)))







        



