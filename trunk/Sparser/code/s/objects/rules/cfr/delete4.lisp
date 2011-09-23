;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "delete"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   4.6 August 1994

;; 4.0 (9/6/93 v2.3) Cleaned up deadwood
;; 4.1 (12/21) getting loose ends in n-aries.
;;     (5/11/93) fixed some typos
;; 4.2 (6/6) put in deletion of form rules
;; 4.3 (8/27) sharpened treatment of multiple lhs, revised Delete-cfr to
;;      take expressions rather than labels
;; 4.4 (10/5) fixed a bug in flush-nary-rules-from-tables
;; 4.5 (7/15/94) fixed logic bug in flush-multiplier-table-entry.
;;     (8/16) and its caller didn't know from context-sensitive vs. form rule
;; 4.6 (11/17) revised the check re. distinguishing those two

(in-package :sparser)

;;;---------------
;;; deleting CFRs
;;;---------------

(defun delete/cfr (cfr)
  ;; core routine -- all the others feed into this one
  (let ((r-symbol (cfr-symbol cfr)))
    (flush-cfr-from-psg-tables cfr)
    (un-catalog/cfr cfr r-symbol)
    cfr ))

;;;-------------------------
;;; variations on that call
;;;-------------------------

(defun delete/cfr# (n)
  (let ((rule-symbol (intern (concatenate 'string
                                          "PSR"
                                          (format nil "~A" n))
                             *phrase-structure-rule-package*)))
    (unless (boundp rule-symbol)
      (error "There is no cfr with the number ~A~
              ~%Its rule symbol ~A is not bound" n rule-symbol))
    (let ((rule (symbol-value rule-symbol)))
      (unless (typep rule 'cfr)
        (error "The symbol ~A is not bound to a rule" rule-symbol))
      (delete/cfr rule))))



(defun delete-cfr/symbol (r-symbol)
  (unless (eq (symbol-package r-symbol)
              *phrase-structure-rule-package*)
    (if (find-symbol (symbol-name r-symbol)
                     *phrase-structure-rule-package*)
      (setq r-symbol
            (find-symbol (symbol-name r-symbol)
                         *phrase-structure-rule-package*))
      (error "The symbol ~A does not name a rule" r-symbol)))

  (unless (boundp r-symbol)
    (error "The symbol ~A is unbound" r-symbol))

  (let ((cfr (symbol-value r-symbol)))
    (unless (and cfr
                 (cfr-p cfr))
      (error "The symbol ~A does not name a rule" r-symbol))
    (delete/cfr cfr)))



(defmacro delete-cfr (lhs-expr list-of-rhs-exprs)
  `(delete-cfr/expr ',lhs-expr ',list-of-rhs-exprs))

(defun delete-cfr/expr (lhs-expr list-of-rhs-exprs)
  (let ((cfr (find-cfr lhs-expr list-of-rhs-exprs)))
    (unless cfr
      (error "The rule components lhs: ~A~
            ~%      rhs: ~A~
            ~%  do not fit an already defined rule"
             lhs-expr list-of-rhs-exprs))
    (delete/cfr cfr)))



;;;-------------------------------------------
;;; removing the rules from the runtime table
;;;-------------------------------------------

(defun flush-multiplier-table-entry (right-looking-id
                                     left-looking-id
                                     cfr)

  ;; core routine that does the work in all of the cases

  (let* ((target-site (+ right-looking-id
                         left-looking-id))
         (entry (gethash target-site *edge-multiplication-table*)))

    (if entry
      (if (listp entry)
        (cond
         ((eq 2 (length entry))
          ;; there'll only be one left after we delete this one
          (cond ((eq cfr (first entry))
                 (setf (gethash target-site *edge-multiplication-table*)
                       (second entry)))
                ((eq cfr (second entry))
                 (setf (gethash target-site *edge-multiplication-table*)
                       (first entry)))
                (t (break "The cfr to delete:~%  ~A~%is not one of the ~
                           table entries for that righthand side."
                          cfr))))
         
         ((null (cdr entry))
          (break "Unexpected format for entry:~
                  ~%The entry for the righthand side:~%   ~A~
                  ~%maps to just one rule, but the entry is a list.~
                  ~%Continue if this is ok"
                 (cfr-rhs cfr))
          (if (eq (car entry) cfr)
            (remhash target-site *edge-multiplication-table*)
            (break "The cfr to delete:~%  ~A~%is not in the tables" cfr)))
         
         (t          
          (setf (gethash target-site *edge-multiplication-table*)
                (delete cfr entry))))
        
        (else
          (remhash target-site *edge-multiplication-table*)))
      (else
        (break "There is no entry in the tables corresponding to~
                ~%the righthand side of the rule being deleted:~
                ~%  ~A" cfr)
        (return-from flush-multiplier-table-entry)))))


;;;----------
;;; dispatch
;;;----------

(defun flush-cfr-from-psg-tables (cfr)
  ;; dispatch called from Delete/cfr
  (cond ((and (null (cdr (cfr-rhs cfr)))
              (polyword-p (car (cfr-rhs cfr))))
         (flush-just-polyword-cfr-from-tables cfr))
        ;((dotted-rule cfr)
        ; (break "dotted"))
        ((nary-rule cfr)
         (flush-nary-cfr-from-tables cfr))
        (t (ecase (length (cfr-rhs cfr))
             (1 (flush-unary-cfr-from-tables  cfr))
             (2 (flush-binary-cfr-from-tables cfr))))))


;;;-------
;;; cases
;;;-------

(defun flush-unary-cfr-from-tables  (cfr)
  (let* ((term (first (cfr-rhs cfr)))
         (rs (rule-set-for term))
         (field (rs-single-term-rewrites rs)))
    (setf (rs-single-term-rewrites rs)
          (delete cfr field :test #'eq))
    cfr ))



(defun flush-binary-cfr-from-tables (cfr)
  (let ((left-label  (first  (cfr-rhs cfr)))
        (right-label (second (cfr-rhs cfr)))
        L-id R-id )

    (if (cfr-completion cfr)
      ;; its a form rule or a context-sensitive rule
      (if (member :form-rule (cfr-plist cfr))
        ;; different multipliers are used
        (setq L-id (cdr (rs-right-looking-ids (label-rule-set left-label)))
              R-id (cdr (rs-left-looking-ids  (label-rule-set right-label))))

        (setq L-id (car (rs-right-looking-ids (label-rule-set left-label)))
              R-id (car (rs-left-looking-ids  (label-rule-set right-label)))))          

      ;; regular rules
      (setq L-id (car (rs-right-looking-ids (label-rule-set left-label)))
            R-id (car (rs-left-looking-ids  (label-rule-set right-label)))))

    (flush-multiplier-table-entry L-id R-id cfr)
    cfr ))


#| earlier version -- on a form rule (11/17 [rules;dm&p:you]
   completion field wasn't a list

    (if (and (cfr-completion cfr)
             (listp (cfr-completion cfr))
             (keywordp (car (cfr-completion cfr))))
      ;; its a form rule or a context-sensitive rule
      (let ((completion-field (cfr-completion cfr)))
        (if (or (eq (first completion-field) :left-daughter)
                (eq (first completion-field) :right-daughter))
          ;; then it's a context-sensitive rule
          (flush-multiplier-table-entry
           (car (rs-right-looking-ids (label-rule-set left-label)))
           (car (rs-left-looking-ids  (label-rule-set right-label)))
           cfr)
          (else
            ;; its a form rule and different multipliers are used
            (flush-multiplier-table-entry
             (cdr (rs-right-looking-ids (label-rule-set left-label)))
             (cdr (rs-left-looking-ids  (label-rule-set right-label)))
             cfr))))

      ;; regular rules
      (flush-multiplier-table-entry
       (car (rs-right-looking-ids (label-rule-set left-label)))
       (car (rs-left-looking-ids  (label-rule-set right-label)))
       cfr))

    cfr )) |#



(defun flush-nary-cfr-from-tables (cfr)
  ;; you have to flush this rule and all those intermediaries that
  ;; aren't independently rules in their own right
  (dolist (rule (intermediaries-of-nary-rule cfr))
    (flush-binary-cfr-from-tables rule))
  cfr )
    

(defun flush-just-polyword-cfr-from-tables (cfr)
  ;; A rule that consists of just a polyword is really a unary
  ;; rule -- the polyword runs on its own, and then its completion
  ;; triggers the cfr.
  ;;
  ;; We delete the cfr and delete its trigger from the polyword.
  ;; If the polyword is used in any other rule we keep it, 
  ;; otherwise we delete it as well.

  (let* ((pw (first (cfr-rhs cfr)))
         (rs (pw-rules pw))
         (single-term-field (rs-single-term-rewrites rs)))

    (setf (rs-single-term-rewrites rs)
          (setq single-term-field
                (delete cfr single-term-field :test #'eq)))

    (when (null single-term-field)
      ;; there are no other rules whose rhs is just this pw, check
      ;; whether there are any other uses of this pw and if not
      ;; then delete it too
      (unless (or (rs-right-looking-ids rs)
                  (rs-left-looking-ids rs))
        ;;(delete-polyword/obj pw)
        ))))

#|  If we add enough cross-indexing to know when a label no longer
    participates in any rules then we'll want to really flush the
    polyword, which will entail doing something like this:
  (let ((pw (cfr-rhs cfr)))
    (if (null (cddr (pw-words  pw)))
      ;; a pw-based rule with only two words won't have intermediaries
      ()
      (dolist (rule (intermediaries-of-nary-rule cfr))
        (when (dotted-rule rule)
          (flush-binary-cfr-from-tables rule))))))|#

