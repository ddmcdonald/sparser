;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1998,2011 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "construct"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   1.4 August 2011

;; broken out from [define] 9/6/92 v2.3
;; 1.0 (10/23) promulgated the fact that the rules for polywords are
;;      being made when they are defined, hence they no longer have
;;      to be sorted out here
;; 1.1 (11/1) Moved the point where the symbol is created to the very
;;      beginning so it's available to such things as n-ary rules.
;;     (3/9/93) Added a routine for changing the form and referent when
;;      redefining a known rule. Can't do it ad-hoc in the two places
;;      where this occurs because of complexities with n-ary rules.
;; 1.2 (8/17) elaborated changes-to-known-rule to handle case of
;;      multiple lhs's.
;;      Trivially tweaked 2/16/98 to bump the fasl for new source.
;; 1.3 (2/24/98) Added references to the global schema from which the
;;      rule derives to Changes-to-known-rule and Construct-cfr.
;; 1.4 (8/3/11) Added a :schema argument to permit overriding the default
;;      (which is set when working from an ETF).

(in-package :sparser)


(defun construct-cfr (lhs rhs form referent source
                      &optional schema-to-use)
  (let* ((r-symbol (gen-cfr-symbol))
         (cfr (make-cfr
               :symbol   r-symbol
               :category lhs
               :rhs      rhs
               :form     form
               :referent referent
               :schema (or schema-to-use
                           *schema-being-instantiated*))))

    (note-file-location cfr)
    (note-grammar-module cfr :source source)

    (knit-into-psg-tables cfr)
    (catalog/cfr cfr r-symbol)

    cfr ))




(defun changes-to-known-rule (cfr lhs form referent)

  ;; Called from def-cfr/expr and define-cfr when the righthand side
  ;; of this rule appears in other rules but it has passed the
  ;; Duplicate-rule check.  In the case where n-ary rules are
  ;; involved the "cfr" may well be a list of several rules each with
  ;; the same rhs but a different lhs. The duplicate check will have
  ;; been passed either because one of the lhs was assembled for 
  ;; a dotted rule, or because the flag is up that allows arbitrary
  ;; duplications.
  ;;    So when the cfr is a list we have to locate and work on
  ;; the rule with the appropriate lhs.

  (when (listp cfr)
    (let ((list-of-cfrs cfr))
      (setq cfr (car (member lhs list-of-cfrs
                             :key #'cfr-category :test #'eq)))
      (unless cfr
        (break "No cfr with the indicated lhs ~A~
                ~%has been found in the list of rules:~%~A"
               lhs list-of-cfrs))))      

  ;; Check that we're putting the changes on the right object
  (when (member :n-ary (cfr-plist cfr))
    (setq cfr 
          (first (second (cadr (member :n-ary (cfr-plist cfr)))))))

  (setf (cfr-form cfr) form)
  (setf (cfr-referent cfr) referent)
  (setf (cfr-schema cfr) *schema-being-instantiated*)
  cfr )

