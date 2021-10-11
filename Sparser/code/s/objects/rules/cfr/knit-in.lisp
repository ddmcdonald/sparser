;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992-2000,2018,2021  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "knit in"
;;;    Module:   "objects;rules:cfr:"   ;; "context free rules"
;;;   Version:   October 2021

;; 1.1 (4/19/91 v1.8.2)  Revised Knit-in-binary to appreciate the case
;;      of the two terms of the rule being the same thing
;; 3.0 (9/3/92 v2.3) Added case for form rules
;; 3.1 (10/23) promulgated new treatment of when polywords are defined
;;      in Knit-in-single-term-rewrite-rule.
;; 3.2 (5/13/93) added categories as able to have single term rules
;;     (7/13/00) added referential-category case to Knit-in-single-term-rewrite-rule

(in-package :sparser)


(defun knit-into-psg-tables (cfr)
  "Called by construct-cfr and the deprecated dotted rule route.
   Sets up the rule-sets of the labels in the cfr to provide the
   information used to determine how to apply rules."
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
             (then
               (record-multi-cfr (car field))
               (record-multi-cfr cfr)
               (setf (rs-single-term-rewrites rs)
                     (cons cfr field)))
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

      (record-rule-by-id term1 id1 rs1 cfr :right-looking)
      (record-rule-by-id term2 id2 rs2 cfr :left-looking)

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

      ;;//// record rules against form ids -- sort out how to
      ;; set that up with minimal redundancy.
      
      cfr )))


;;;---------------------------------
;;; Associating rules to id numbers
;;;---------------------------------

(defun record-rule-by-id (label id rule-set cfr direction)
  "The left/right ids on rule sets are opaque as to what rule they
 go with. Add a record of the id and corresponding cfrs on the
 plist of the rule set."
  (let ((entry (ecase direction
                 (:right-looking (get-tag :rules-for-right-looking-id rule-set))
                 (:left-looking (get-tag :rules-for-left-looking-id rule-set)))))
    (ecase direction
      (:right-looking
       (if entry
         (push cfr (cdr entry))
         (setf (get-tag :rules-for-right-looking-id rule-set)
               `(,id ,cfr))))
      (:left-looking
       (if entry
         (push cfr (cdr entry))
         (setf (get-tag :rules-for-left-looking-id rule-set)
               `(,id ,cfr)))))))


(defgeneric rules-for-label (label)
  (:documentation "When the righthand side of a binary rule is knit into
 the psg-tables, each of the two rhs labels gets a number in the appropriate
 field of its rule set. We often look at rule sets to see what's the
 grammatical properties of the label are, but until now we only had numbers
 telling us that the label was involved in at least one binary rule 
 but we didn't know what the rules were. N.b. the rules could be 
 semantic rules, form rules, context-sensitive rules, or syntactic rules.
 They're all binary, so they all go through the knitting functions.")
  (:method ((pname string))
    (let ((word/pw (resolve pname)))
      (unless word/pw (error "~s does not resolve for word (polyword)" pname))
      (rules-for-label word/pw)))
  (:method ((cat-name symbol))
    (rules-for-label (category-named cat-name t)))
  (:method ((w word))
    (rules-for-label (rule-set-for w)))
  (:method ((pw polyword))
    (rules-for-label (rule-set-for pw)))
  (:method ((c category))
    (rules-for-label (rule-set-for c)))
  (:method ((rs rule-set))
    (let ((llr (get-tag :rules-for-left-looking-id rs))
          (rlr (get-tag :rules-for-right-looking-id rs)))
      (when (or llr rlr)
        (values (cons :looking-left llr)
                (cons :looking-right rlr))))))

