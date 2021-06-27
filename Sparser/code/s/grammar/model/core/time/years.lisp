;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2000,2013-2021 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "years"
;;;   Module:  "model;core:time:"
;;;  version:  June 2021

;; initiated in February 1991
;; 0.1 (4/9 v1.8.2)  Added the years from 1959 to 1979
;; 0.2 (7/31 v1.8.6)  Gave years "month" fields to facilitate real indexing
;; 1.0 (12/15/92 v2.3) setting up for new semantics
;; 1.1 (9/18/93) actually doing it.   10/20/94 breaking out the cases.
;; 2.0 (7/9/00) Reworked as psi.
;; 2.1 (8/20/08) shifting from proper to common noun because proper noun introduces
;;      a leading ].proper-noun, which seems like overkill. Also rewriting the
;;      category to go to self instead of time.
;; 2.2 (7/25/13) Added csr and function for one case of contextually establishing
;;      that a number is a year. 5/26/14 Moved comma-year here from dates2

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category year
  :specializes time
  :instantiates self
  :mixins (takes-numerical-value sequential)
  :binds ((year-of-century :primitive number))
  :index (:permanent :key name :get)
  :realization (:common-noun name)) ;; strands the 2 digit version!


;;;---------------
;;; defining form
;;;---------------

(defvar *year-digits-to-year* (make-hash-table)
  "Since a year is defined in terms of more than one variable,
   it's simpler to record it against something we'll have at hand
   when we want to look it up (with get-year).")

(defvar *year-of-century-to-year* (make-hash-table)
  "The wiring of the description lattice makes it unduely hard to
   allow both finding from the first variable ('name') and any later
   variable ('year-of-century'). This ad-hoc table fills the gap.")

(defun define-year (string integer)  ;; e.g. "2015" & 15
  "Only designed to run once, at system load time when the dossier
   of years is loaded"
  (let ((lisp-number (read-from-string string)))
    (or (get-year lisp-number)
        (let ((year
               (define-individual 'year
                 :name string
                 :value lisp-number
                 :year-of-century integer)))
          (setf (gethash lisp-number *year-digits-to-year*) year)
          (setf (gethash integer *year-of-century-to-year*) year)
          year))))


(defgeneric get-year (index)
  (:documentation "Presumes that the year that we want exists (otherise
    we return nil. Looks at the index and consults the appropriate table.")
  (:method ((n integer)) ; e.g. 2021
    (gethash n *year-digits-to-year*))
  (:method ((s string)) ; e.g. "2021"
    (let ((n (read-from-string s)))
      (get-year n))))



(defgeneric digits-denote-a-year (word)
  (:documentation "Called from preterminals-for-unknown with a fresh
    word. We look at its pname and heuristically decide whether it could
    be the name of a year. Only considers four digit years. Shorter strings
    will need to go through as regular numbers and be converted by
    context-sensitive rules, e.g. 'Augustus Caesar dies in A.D. 14'.")
  (:method ((w word))
    (digits-denote-a-year (word-pname w)))
  (:method ((pname string))
    ;; from Acumen corpus #705
    ;; "1938 - Time capsule, to be opened in 6939, ..."
    (= 4 (length pname))))
     
(defun make-edge-over-new-year (word position-scanned next-position)
  "Called from preterminals-for-unknown if the digits of the word passed
   digits-denote-a-year. We define the year and then put an edge over it
   like make-edge-over-unknown-digit-sequence does with other digit sequences."
  (let* ((string (word-pname word))
         (lisp-number (read-from-string string))
         (century (read-from-string (subseq string 0 2)))
         (year (define-year string century)))
    (let ((edge (make-completed-unary-edge
                 (pos-starts-here position-scanned) ; starting-vector
                 (pos-ends-here next-position)      ; ending-vector
                 'make-edge-over-new-year ; rule
                 word ; daughter
                 (category-named 'year) ;  category
                 (category-named 'common-noun) ; form
                 year))) ; referent
      (tr :making-edge-over-new-year edge)
      (reify-year-word word edge)
      edge)))

(defun reify-year-word (word edge)
  "Analogous to reify-digit-word -- we to write a rule
   so we get the right thing the next time we see these 4 digits."
  (let ((i (edge-referent edge)))
    (define-cfr (category-named 'year) `(,word)
      :form (category-named 'common-noun)
      :referent i
      :schema (get-schematic-word-rule :common-noun))))


;;;-----------
;;; functions
;;;-----------

(defgeneric get-year-from-last-two-digits (number)
  (:method ((i individual))
    (unless (itypep i 'number) (error "not a number ~a" i)) ; use k-method?
    (let ((value (value-of 'value i)))
      ;; don't assume this is being called correctly -- causes error with "1990–2328"
      (when (< value 100) ;; (error "value is too large: ~a" value)
        (get-year-from-last-two-digits value))))
  (:method ((n integer))
    (gethash n *year-of-century-to-year*)))


(def-k-method next-item ((year category::year))
  (or (value-of 'next year)
      (with-bindings (value) year
        (let* ((value* (1+ value))
               (next-year (or (get-year value*)
                              (define-individual 'year
                                  :name (format nil "~a" value*)
                                  :value value*))))
          (old-bind-variable 'previous next-year year)
          (old-bind-variable 'next next-year year)
          next-year))))

(def-k-method prior-item ((year category::year))
  (or (value-of 'previous year)
      (with-bindings (value) year
        (let* ((value* (1- value))
               (prior-year (or (get-year value*)
                              (define-individual 'year
                                  :name (format nil "~a" value*)
                                  :value value*))))
          (old-bind-variable 'previous prior-year year)
          (old-bind-variable 'next prior-year year)
          prior-year))))


;;;---------------------------
;;; making years from context
;;;---------------------------

;; csr for year from javan-online.text
;; captures instances of "the year 90"

(def-csr number year
  :left-context time-unit
  :form np
  ;; n.b. context-sensitive rules are effectively binary,
  ;; so the number will be  under the right-edge
  :referent (:function make-year-from-constituent left-edge right-edge))

(defun make-year-from-constituent (time-unit number)
  (declare (special *subcat-test*))
  (cond
    (*subcat-test* ;; rule out "second" and such
     (itypep time-unit 'year))
    (t
     (let ((string (string/number number)))
       (when string 
         (define-year string (number-value number)))))))


;;;---------------
;;; stranded year
;;;---------------

; In the standard pattern for dates, "June 26, 2004", the comma will
; terminate the segment. If there's more in the segment than just the
; month-day combination (e.g. "for [its fiscal 2004 third quarter
; ended June 26], 2004"), then the date edge of the date->date comma-year
; rule will be covered before the comma-year can see it. 
; So we look under the hood of the edge-vector and extend the date
; edge if we find one.   ////Consider whether this should be a standard
; check within pts.

(def-cfr comma-year ("," year)
  :form appositive
  :referent (:daughter right-edge))

(set-ca-action category::comma-year 'check-for-stranded-date)

(defun check-for-stranded-date (comma-year-edge)
  (declare (special category::date))
  (let* ((position (pos-edge-starts-at comma-year-edge))
         (ev (pos-ends-here position))
         (date-edge (vector-contains-edge-of-category ev category::date)))
    (when date-edge
      (let ((rule (multiply-edges date-edge comma-year-edge)))
        (when rule
          (make-edge-below-top-edge date-edge comma-year-edge rule))))))


;;;----------------
;;; pairs of years
;;;----------------

(defun look-for-year-expression (left-edge right-edge)
  "Called from the no-space function make-hyphenated-number when notices
 that the left edge is labeled a year. Given the role of its
 caller, this function has to make the edge over the two edges
 (and the hyphen between them) and return it."
  (declare (special category::time-interval category::np))
  (let ((from-year (edge-referent left-edge))
        (to-year (edge-referent right-edge)))
    (unless (itypep to-year 'year)
      ;; caller checked already, so we know it's a number
      (setq to-year (get-year-from-last-two-digits to-year)))
    (let* ((i (make-simple-individual category::time-interval
                 `((begin ,from-year) (:end ,to-year))))
           (edge (make-ns-edge
                  (pos-edge-starts-at left-edge)
                  (pos-edge-ends-at right-edge)
                  category::time-interval ; category
                  :form category::np
                  :referent i
                  :constituents `(,left-edge ,right-edge)
                  :rule 'look-for-year-expression)))
      edge)))


