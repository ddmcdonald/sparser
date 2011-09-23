;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991,1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "delete"
;;;    Module:   "objects;chart:generics:"
;;;   Version:   0.2 August 1994

;; 0.1 (1/9/90 v1.7)  Switched Delete/linguistic-object from using
;;     the obsolete routine flush/word in favor of the uncataloging 
;; 0.2 (2/5/91 v1.8)  In Flush-unsupporte-terms... put in a hook for
;;     the case of words as lhs's.
;; (11/25/91 v2.1) Renamed routine in Used-in-some-rule for name change
;; (5/14/93 v2.3) updated some field names

(in-package :sparser)


;;;------------------
;;; generic deletion
;;;------------------

(defun delete/linguistic-object (lo)
  (etypecase lo
    (word     (delete/word lo))
    (polyword (delete/polyword lo))
    (category (delete/category lo)))
  lo)


;;;----------------------------------------------------------
;;; deleting the elements of rules if no more rules use them
;;;----------------------------------------------------------

(defun flush-unsupported-terms-in-cfr (cfr)
  ;; called from delete/cfr
  (let ((lhs (cfr-category cfr)))
    
    (dolist (term (cfr-rhs cfr))
      (unless (used-in-some-rule term)
        (etypecase term 
          (polyword (delete/linguistic-object term))
          (word     (delete/linguistic-object term))
          (category
           (unless (cadr (member :cfrs (cat-plist term)))
             (delete/linguistic-object term))))))

    (etypecase lhs
      (category
       (when (null (cadr (member :cfrs (cat-plist lhs))))
         ;; there are no rules that will form this category
         (delete/linguistic-object (cfr-category cfr))))
      (word ))
    cfr ))


(defun used-in-some-rule (lo)
  (let* ((rs (rule-set-for lo))
         (unary (rs-single-term-rewrites rs))
         (binary (or (rs-left-looking-ids rs)
                     (rs-right-looking-ids rs)))
         (fsa (rs-fsa rs))
         (ha  (rs-phrase-boundary rs))
         (action (rs-completion-actions rs)))

    (or unary
        binary
        fsa
        ha
        action)))
