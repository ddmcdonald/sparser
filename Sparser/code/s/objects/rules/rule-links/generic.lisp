;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2013-2021 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "generic"
;;;    Module:   "objects;rules;rule links;"
;;;   Version:   March 2021

;;  1.1  (v1.5)  cat-rules -> cat-rule-set
;;  1.2  (3/20/91 v1.8.1)  Changed Establish-rule-set-for to look for an
;;       already existing set before making a new one.
;;  1.3  (9/2/92 v2.3) added referential-category, mixed-category
;;  1.4  (7/11/94) "mixed" became "mixin" somewhere in the meantime
;;       (5/22/95) added Remove-rule-set-from. 6.14.13 added null case
;;        for individual.
;;  1.5  (1/16/16) simplified using generic label accessors.

(in-package :sparser)

;;;---------------------------------
;;; transparent access to rule-sets
;;;---------------------------------

(defun rule-set-for (obj)
  (etypecase obj
    (label (label-rule-set obj))
    (string (label-rule-set (word-named obj))) ; convenient when debugging
    (individual)))

(defun (setf rule-set-for) (rule-set obj)
  (etypecase obj
    (label (setf (label-rule-set obj) rule-set))))

(defun establish-rule-set-for (obj)
  (or (rule-set-for obj)
      (setf (rule-set-for obj) (make-rule-set :backpointer obj))))

(defun remove-rule-set-from (obj)
  (setf (rule-set-for obj) nil))

(defgeneric rule-for (label &key no-warn)
  (:documentation "Given a word, what is the rule/s in its rule-set")
  (:method ((pname string) &key no-warn)
    (let ((w (resolve pname)))
      (if w
        (rule-for w :no-warn no-warn)
        (unless no-warn
          (format t "The word ~s is not defined" pname)))))
  (:method ((w word) &key no-warn)
    (let ((rs (rule-set-for w)))
      (if rs
        (rule-for rs)
        (unless no-warn
          (format t "~s does not have a rule-set" (pname w))))))
  (:method ((w polyword) &key no-warn)
    (let ((rs (rule-set-for w)))
      (if rs
        (rule-for rs)
        (unless no-warn
          (format t "~s does not have a rule-set" (pname w))))))
  (:method ((rs rule-set) &key no-warn)
    (when (rs-single-term-rewrites rs)
      (values (rs-backpointer rs)
              (rs-single-term-rewrites rs)))))

(defun single-term-rewrite? (item &key no-warn)
  (multiple-value-bind (word rule) (rule-for item :no-warn no-warn)
    rule))

;;;--------------------
;;; rules on the plist
;;;--------------------

(defgeneric get-rules (obj)
  (:method (obj)
    (get-tag :rules obj)))

(defgeneric (setf get-rules) (rules obj)
  (:method (rules obj)
    (setf (get-tag :rules obj) rules)))

(defun add-rule (rule obj)
  (check-type rule cfr "a context-free rule")
  (or (find rule (get-rules obj))
      (and (nconcf (get-rules obj) (list rule))
           rule)))

(defun add-rules (rules obj)
  (check-type rules list)
  (push-debug `(,rules ,obj))
  (setq rules (loop for r in rules when r collect r)) ;; has nil in redefines
  (assert (every #'cfr-p rules) (rules) "Invalid rule list.")
  (nconcf (get-rules obj) (set-difference rules (get-rules obj))))


;;;-------------------------------
;;; generic test for having rules
;;;-------------------------------

(defgeneric has-rules? (item)
  (:documentation "Generalizes over words and categories, which store
 their rules in different ways. Used for querying whether categories
 are known, which comes down to whether they'll add an edge to the
 chart.")
  (:method ((w word))
    (rule-for w))
  (:method ((pw polyword))
    (rule-for pw))
  (:method ((c category))
    (get-rules c))
  (:method ((pname string))
    (let ((word (resolve pname)))
      (when word (has-rules? word))))
  (:method ((name symbol))
    (let ((c (category-named name)))
      (when c (has-rules? c)))))
