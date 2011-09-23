;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "relation"
;;;   Module:  "model;core:names:places:countries:"
;;;  version:  September 2007

;; initiated 8/6/07. Moved out the generic routine 9/4.

(in-package :sparser)
	
(define-category associated-with-country
  :instantiates self
  :binds ((country . country)
          (item)))
;; probably might take the off-the-shelf ETF for qualifiers, but
;; need to establish just one new capability at a time for now.


(defun define-adjective-function/country (adjective-string the-country)
  (let ((psi (define-individual 'associated-with-country 
                 :country the-country))
        (adjective (define-adjective adjective-string)))

    (let ((rule (define-cfr (category-named 'country) `(,adjective)
                  :form category::proper-adjective
                  :referent psi)))

      (let ((rules-cons (cadr (memq :rules (unit-plist category::country)))))
        (unless rules-cons ;;/// need to track down why two places are used
          (when (cat-realization category::country)
            (setq rules-cons 
                  (cadr (memq :rules (cat-realization category::country))))))
        (when rules-cons
          (rplacd rules-cons (cons rule rules-cons)))

        (values psi rule)))))


(def-form-rule (country np-head)
  :form n-bar
  :referent (:head right-edge
             :function bind-open-var left-edge right-edge))
;; Extending the form rule machinery to do the expansion implicit
;; in listing both form categories at once it besides the point
;; just now (8/6/07)
(def-form-rule (country n-bar)
  :form n-bar
  :referent (:head right-edge
	         :function bind-open-var left-edge right-edge))
