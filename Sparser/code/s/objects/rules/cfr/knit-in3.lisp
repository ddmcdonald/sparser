;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992-2000  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "knit in"
;;;    Module:   "objects;rules:cfr:"   ;; "context free rules"
;;;   Version:   3.2 May 1993

;; 1.1 (4/19/91 v1.8.2)  Revised Knit-in-binary to appreciate the case
;;      of the two terms of the rule being the same thing
;; 3.0 (9/3/92 v2.3) Added case for form rules
;; 3.1 (10/23) promulgated new treatment of when polywords are defined
;;      in Knit-in-single-term-rewrite-rule.
;; 3.2 (5/13/93) added categories as able to have single term rules
;;     (7/13/00) added referential-category case to Knit-in-single-term-rewrite-rule

(in-package :sparser)


(defun knit-into-psg-tables (cfr)
  (case (length (cfr-rhs cfr))
    (1 (knit-in-single-term-rewrite-rule cfr))
    (2 (knit-in-binary-rule cfr))
    (otherwise
     (create-dotted-intermediaries-of-nary-rule cfr))))


;;;-------
;;; unary
;;;-------

(defun knit-in-single-term-rewrite-rule (cfr)
  (let ((label (first (cfr-rhs cfr))))
    (etypecase label
      ((or word polyword category referential-category)
       (let ((rs (rule-set-for label)))
         (unless rs
           (setq rs (establish-rule-set-for label)))

         (let ((field (rs-single-term-rewrites rs)))
           (if field
             (setf (rs-single-term-rewrites rs)
                   (cons cfr field))
             (setf (rs-single-term-rewrites rs)
                   (list cfr)))
           cfr ))))))


;;;---------
;;; binary
;;;---------

(defun knit-in-binary-rule (cfr)
  (let* ((term1 (first  (cfr-rhs cfr)))
         (term2 (second (cfr-rhs cfr)))
         (rs1 (rule-set-for term1))
         (rs2 (rule-set-for term2)))
    (unless rs1
      (setq rs1 (establish-rule-set-for (first  (cfr-rhs cfr)))))
    (unless rs2
      (if (eq term1 term2)
        (setq rs2 rs1)
        (setq rs2 (establish-rule-set-for (second (cfr-rhs cfr))))))

    (let ((id1 (lookup/make-right-looking-label-id rs1))
          (id2 (lookup/make-left-looking-label-id  rs2)))
      (establish-multiplier id1 id2 cfr)

      cfr )))


;;;---------------------------------
;;; form rules (they're all binary)
;;;---------------------------------

(defun knit-form-rule-into-psg-tables (cfr)

  ;; this part is the same for regular rules
  (let* ((label1 (first  (cfr-rhs cfr)))
         (label2 (second (cfr-rhs cfr)))
         (rs1 (rule-set-for label1))
         (rs2 (rule-set-for label2)))
    (unless rs1
      (setq rs1 (establish-rule-set-for (first (cfr-rhs cfr)))))
    (unless rs2
      (if (eq label1 label2)
        (setq rs2 rs1)
        (setq rs2 (establish-rule-set-for (second (cfr-rhs cfr))))))

    (let ((id1 (lookup/make-right-looking-form-id rs1))
          (id2 (lookup/make-left-looking-form-id  rs2)))
      (establish-multiplier id1 id2 cfr)

      cfr )))
