;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2003  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "earnings report"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  2.0 April 2003

;; initiated 12/20/95. Elaborated through 1/8/96
;; 1.0 (7/12/98) Started to rework the files into the new era of lattice-points.
;; 2.0 (9/5/00) Started reworking (again) to incorporate realizations within the
;;      category definition.
;;     (3/26/03) Added realization for "sales of $93.85 billion" 4/11 tweaked it
;;      since it was going to a tree-family that wasn't instantiating the ern
;;      itself as a result-type. 

(in-package :sparser)

;;;--------------------------------------------------------------------
;;; a toplevel stub to provide a hook for the individual autodef items
;;;--------------------------------------------------------------------

(define-category company-financial
  :specializes nil )

(define-autodef-data 'company-financial
  :module *finance*
  :display-string "Company financial"
  :not-instantiable t )


;;;------------------------------
;;; the basic (minimal) relation
;;;------------------------------

(define-category ern   ;; not just earnings, any financial can head it, e.g. "sales"
  :specializes company-financial
  :instantiates self
  :binds ((company . company)
          (financial . financial)
          (reporting-period . (:or quarter year))
          (value . money)
          (esp . amount-per-share))
  :realization ((:tree-family  item-of-value1 ;; "sales of $93.85 billion"
                 :mapping ((result-type . :self)
                           (item . financial)
                           (value . value)
                           (result-np . financial)
                           (np . financial) ;;"earnings") ;;
                           (complement . money)))      
          
                (:tree-family  pp-after-np    ;; "sales in the fourth quarter"
                 :mapping ((pp-head-field . reporting-period)
                           (np . financial)
                           (pp . in-quarter)
                           (prep . "in")
                           (prep-head . quarter)))

                (:tree-family  transitive/new-head   ;; "sales totaled $$"
                 :mapping ((agent . financial)
                           (patient . value)
                           (result-type . :self)
                           (s . :self)
                           (np/subject . financial)
                           (np/object . money)
                           (vg . financial-datum-value-verb)
                           (vp . financial\total)))
                ))



#|  Old version that was built up the hard way

(define-category  financial-report
  :specializes nil
  :instantiates self
  :binds ((company . company)
          (datum . financial-data)
          (reporting-period . time)
          (value . money)
          (value-per-share . money)
          (percentage-changed . percentage)
          (direction-of-change . direction)
          (comparative-value . money)
          (comparative-value-per-share . money)
          (reporting-period-compared . time)))    |#

