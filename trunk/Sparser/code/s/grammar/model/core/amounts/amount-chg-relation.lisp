;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2005,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "amount-chg relation"
;;;   module:  "model;core:amounts:"
;;;  Version:  0.1 April 2013

;; instantiated 12/26/95. "in" -> "by" 1/2/96. Direction verb added to rules 1/9/96
;; 0.1 (3/30/05) Converting to a proper schematic treatment of the rules, through 3/31.
;;  (4/1/13) turned off changed-in-direction (be direction) because it was snagging things
;;    it shouldn't. 

(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category change-by-amount  ;; "rose 15%", "dropped to $101 million" 
  :specializes event
  :instantiates self
  :binds ((amount)  ;; too many kinds to list
          (direction))  ;; should be " . direction", except that without
                        ;; a part-elevation scheme to handle the extraction
                        ;; of the direction from the verb, this slot is
                        ;; going to hold a change-in-amount-verb.
  :index (:temporary :sequential-keys direction amount)
  :realization
     ((:tree-family  quantity-of-kind  ;; "34% increase"
                     ;; make a new etf by rewriting modifier-creates-individual
       :mapping ((item . amount)
                 (np . :self)
                 (quantifier . percent)
                 (np-head . change-in-amount-noun)))
      ))



;;;--------------------
;;; rules done by hand   //// !! put into rdata now that there are VP etfs
;;;--------------------

(def-cfr change-by-amount (change-in-amount-verb percent)
  :form vp
  :referent (:instantiate-individual change-by-amount
               :with (amount right-edge
                      direction left-edge)))


(def-cfr change-by-amount (change-in-amount-verb to-money)
  :form vp
  :referent (:instantiate-individual change-by-amount
               :with (amount right-edge
                      direction left-edge)))

(when-binding change-in-amount-verb direction change-by-amount
  :transfer ((direction . direction)))


;;--- adjunct alternative to prior rule

(def-cfr change-by-amount (change-by-amount to-money)
  :form vp
  :referent (:bind (amount right-edge)))


;;;--------------
;;; q&d nominals
;;;--------------


(def-cfr change-by-amount (change-in-amount-verb of-money)
  :form np-head
  :referent (:instantiate-individual change-by-amount
               :with (amount right-edge
                      direction left-edge)))


;;;-----------------------------
;;; partially saturated version
;;;-----------------------------

(define-category changed-in-direction
  :specializes event
  :instantiates self
  :binds ((direction . direction))
  :index (:temporary :key direction))


;; "was up"
;;  -- triggering on "is [<distance><direction>} of <location>"
#+ignore (def-cfr changed-in-direction (be direction)
  :form vp
  :referent (:instantiate-individual changed-in-direction
             :with (direction right-edge)))
