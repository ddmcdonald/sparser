;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1999,2016-2019  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "objects"
;;;   Module:  "model;core:money:"
;;;  version:  December 2019

;; initiated 10/22/93 v2.3 from treatment of 11/91. Added a sort routine 11/15/95
;; Added a proper definition for stuff like "cents" 1/16/96
;; 1.0 (7/12/98) Redefining the rules via realization specifications.
;;     //// "cents" is not going to work right.
;; 1.1 (5/18/99) reworked  define-fractional-denomination-of-money to have
;;      its explicit calls to bind-variable return new psi so that the
;;      net result is a saturated individual. 
;; 1.2 (9/1) The simple indexes criteria changed, so now terms like "cent" come
;;      out as individuals (which feels right today) rather than psi.

(in-package :sparser)

;;;---------
;;; objects 
;;;---------

(define-category  denomination/money
  :specializes  name
  :instantiates :self
  :binds ((name  :primitive word)
          (symbol :primitive word))
  :index (:permanent :key name)
  :realization
    (:common-noun name))

(define-category  fractional-denomination/money    ; "cents"
  :specializes denomination/money
  :instantiates self
  :binds ((reference-denomination . denomination/money)
          (fraction))
  :index (:permanent :key name)
  :realization (:common-noun name)) ;; redo with a schema that uses
                                    ;; Equivalent-amount-in-reference-currency

(defun define-denomination-of-money (pname &key symbol fraction reference)
  (let ((symbol-word (when symbol
                       (etypecase symbol
                         (symbol ; euro_sign
                          (resolve symbol)) 
                         (character ; #\$
                          (resolve (get-punct-symbol symbol))))))
        (reference-denomination
         (when reference (find-individual 'denomination/money :name reference)))
        (fraction-value (when fraction fraction))) ; placeholder
    (let ((i (if fraction
               (define-or-find-individual 'fractional-denomination/money
                   :name pname
                   :symbol symbol-word
                   :reference-denomination reference-denomination
                   :fraction fraction-value)
               (define-or-find-individual 'denomination/money
                   :name pname
                   :symbol symbol-word))))
      (when symbol-word
        (let ((rule (define-cfr category::denomination/money `(,symbol-word)
                      :form category::determiner
                      :referent i)))
          (add-rule rule i)))
      i)))

               
               
(define-category  currency
  :specializes  unit-of-measure
  :instantiates :self
  :binds ((denomination . denomination/money)
          (country . country))
  :realization (:tree-family definite-proper+np-head ; "British pounds"
                :mapping ((individual . country)
                          (base . denomination)
                          (np . :self)
                          (proper-modifier . country)
                          (np-head . (denomination/money
                                      fractional-denomination/money))
                          (result-type . :self))))
    


(define-category  money
  :specializes  amount
  :instantiates :self
  :binds ((number . number)
          (currency . currency))
  :realization ((:tree-family  quantity+kind   ;; "10 dollars"
                 :mapping ((quantity . number)
                           (base . currency)
                           (result-type . :self)
                           (np . :self)
                           (modifier . number)
                           (np-head . (denomination/money
                                       fractional-denomination/money))))
                (:tree-family  modifier-creates-definite-individual  ;; "$10"
                 :mapping ((individuator . currency)
                           (base-category . number)
                           (result-type . :self)
                           (np . :self)
                           (modifier . denomination/money)
                           (np-head . number)))))



;;;----------------------------
;;; overhead for "cents", etc.
;;;----------------------------

(defun equivalent-amount-in-reference-currency (number fractional-denomination)
  (let ((integer (value-of 'value number))
        (reference-denomination (value-of 'reference-denomination
                                          fractional-denomination))
        (fraction (value-of 'fraction fractional-denomination)))

    (let* ((fractional-value (* fraction integer))
           (value-as-number-obj (define-individual 'number
                                  :value fractional-value))
           (presumed-currency (define-individual 'currency
                                :denomination reference-denomination
                                :country (find-individual 'country
                                           :name "United States"))))
      (break "redo as a psi if it isn't happening automatically")
      (define-individual 'money
        :number value-as-number-obj
        :currency presumed-currency))))


;;;---------------
;;; sort function
;;;---------------

#+ccl(define-sort-function 'money 'sort-money-by-numerical-value)

(defun sort-money-by-numerical-value (m1 m2)
  (let ((n1 (value-of 'number m1))
        (n2 (value-of 'number m2)))
    (sort-number-individuals-by-value n1 n2)))

