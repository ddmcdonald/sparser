;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "realization measurements"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  February 1995

;; initiated 2/13/95

(in-package :sparser)

;;;--------------
;;; accumulators
;;;--------------

(defparameter *rr-catalogs* nil)


(defmacro define-catalog-for-rr-type (keyword symbol
                                      &optional description-string )
  `(define-catalog-for-rr-type/expr ',keyword ',symbol ,description-string))


(defun define-catalog-for-rr-type/expr (keyword symbol &optional description)
  (proclaim `(special ,symbol))
  (set symbol nil)
  (unless (member symbol *rr-catalogs* :test #'eq)
    (push symbol *rr-catalogs*))
  (setf (get keyword :catalog) symbol)
  (when description
    (setf (get keyword :rr-type-description) description))
  symbol )


(defun rr-Catalog-for (keyword)
  (get keyword :catalog))

(defun clear-rr-catalogs ()
  (dolist (symbol *rr-catalogs*)
    (set symbol nil)))
  


;;---------- cases -----------
;; n.b. these are recorded on *rr-catalogs* in 'push' order,
;; so they should appear in the reverse of the order that
;; the trivial printer should show them in

(define-catalog-for-rr-type :main-verb *verbs*)

(define-catalog-for-rr-type :only-term-in-segment *words-appearing-alone*)

(define-catalog-for-rr-type :distinguisher *distinguishers*)

(define-catalog-for-rr-type category::thematic     *comp-of-demonstrative*)
(define-catalog-for-rr-type category::possessive   *comp-of-possessive*)
(define-catalog-for-rr-type category::quantified   *quantified-with-a-non-number*)
(define-catalog-for-rr-type category::denumerated  *quantified-with-a-number*)

(define-catalog-for-rr-type category::modified   *modified*)
(define-catalog-for-rr-type category::classifier *noun-taking-qualifier*)
(define-catalog-for-rr-type :classified          *noun-taking-qualifier*)

(define-catalog-for-rr-type category::det        *used-with-definite-determiner*)
(define-catalog-for-rr-type category::anonymous  *used-with-indefinite-determiner*)

(define-catalog-for-rr-type :only-term-in-np     *nouns-without-qualifiers*)

(define-catalog-for-rr-type :appears-as-a-name *names*)


;;;-----------------
;;; trivial printer
;;;-----------------

(defun list-contents-of-rr-catalogs ()
  (let ( value )
    (dolist (symbol *rr-catalogs*)
      (setq value (symbol-value symbol))
      (format t "~&~%~A -- ~A~
                 ~%~A~%" symbol (length value) value))))



;;;----------------------
;;; distribution routine
;;;----------------------

(defun distribute-all-items-to-realization-accumulators ()
  (clear-rr-catalogs)
  (distribute-items-to-realization-accumulators (the-nominal-terms)))


(defun distribute-items-to-realization-accumulators (items)
  (let ( realizations  accumulator )
    (dolist (item items)
      (setq realizations (realization-record item))
      (unless realizations
        (format t ;"~&~%no realization records for ~"
                   "~A~%" item))
      (dolist (keyword realizations)
        (setq accumulator (rr-catalog-for keyword))
        (if accumulator
          (set accumulator
               (cons item (symbol-value accumulator)))
          (break "~A needs a rr-catalog" keyword))))))


        
    
