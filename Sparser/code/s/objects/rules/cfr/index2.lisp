;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "index"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   1.3  July 1991

;; ChangeLog:
;;  1.1  (12/12 v1.6)  Modifies Enter-cfr-on-plist-of-parent to index
;;       polyword rhs's correctly
;;  1.2  (1/9 v1.7)  Moved Flush-cfr-index to this file from lookup4
;;  1.3  (7/31 v1.8.6) Tweeked error message in Flush-cfr-index
;;

(in-package :sparser)


;;;-------------------
;;; daughters to rule
;;;-------------------

(defun cross-index-daughters-to-rule (cfr rhs-list-of-objects)
  ;; this is a standin for something more consistent.
  ;; It just handles the case of polywords, which do not otherwise
  ;; have a pointer to the rule(s) that employ them.  Categories do,
  ;; in so far as the fields in their rule-sets that are used to
  ;; initiate rules can be used as cross-indexes.
  (dolist (obj rhs-list-of-objects)
    (when (typep obj 'polyword)
      (let ((used-in (cadr (member :used-in (pw-plist obj)
                                   ))))
        (if used-in
          (rplacd used-in
                  (cons cfr (cdr used-in)))
          (setf (pw-plist obj)
                (cons :used-in
                      (cons (list cfr)
                            (pw-plist obj)
                            ))))
        used-in ))))


;;;------------------------
;;; lhs ("parent") to rule
;;;------------------------

(defun enter-cfr-on-plist-of-parent (cfr parent daughters)
  ;; called from Define-cfr.  Manages the table that is used by
  ;; Lookup/cfr/resolved to determine if a given parent/daughters
  ;; pair corresponds to an existing rule.
  ;;
  (when (member :polyword (cfr-plist cfr))
    (setq daughters (cadr (member :polyword (cfr-plist cfr)))))

  (let ((cfr-list
         (cadr (member :cfrs (plist-for parent)))))

    (if cfr-list
      (rplacd cfr-list
              (cons (cons daughters
                          cfr)
                    (cdr cfr-list)))
      (push-onto-plist parent
                       (list (cons daughters
                                   cfr))
                       :cfrs))
    cfr-list ))


(defun flush-cfr-index (cfr)
  ;; This removes the index that is used to intern a rule.  With this
  ;; gone, the rule can be redefined.  Called from Delete/cfr
  (let ((lhs-category (cfr-category cfr))
        (rhs-list (if (member :polyword (cfr-plist cfr))
                    (cadr (member :polyword (cfr-plist cfr)))
                    (cfr-rhs cfr))))
    (let* ((cons-before
            (member :cfrs (plist-for lhs-category)))
           (alist (cadr cons-before))
           (cons-after
            (cddr cons-before))
           (cons-with-index
            (assoc rhs-list alist :test #'equal))
           alist-without )

      (unless cons-with-index
        ;; you can get here by having aborted out of a rule
        ;; deletion part way and then retrying it.
        (error "Can't find the item to remove from the cfr index~
                ~%If this is expected, just continue.")
        (return-from Flush-cfr-index))
      (setq alist-without
            (delete-pair-from-alist cons-with-index alist))

      (rplacd cons-before
              (cons alist-without
                    cons-after))
      cons-with-index )))



(defun rules-from-parent-alist (alist)
  (let ( rules )
    (dolist (cons alist)
      (push (cdr cons)
            rules))
    rules))

