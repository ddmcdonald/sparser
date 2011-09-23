;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "plist"
;;;    Module:   "objects;chart:generics:"
;;;   Version:   0.1 December 1994

;; (2/10/92 v2.2) added cases for cfr's.
;; (9/2 v2.3) added cases for referential-categories
;; (10/19,24) added mixin categories (7/19/94) added Get-tag-for
;; (11/14) added cases for 'individual'
;; 0.1 (11/16) for individual made the 'push' routine really push
;;     (12/1) in that routine changed indiv-plist to unit-plist

(in-package :sparser)

;;;------------------
;;; the plist itself
;;;------------------

(defun plist-for (obj)
  (etypecase obj
    (word      (unit-plist obj))
    ((or category referential-category mixin-category)
               (cat-plist obj))
    (cfr       (cfr-plist obj))
    (polyword  (pw-plist obj))
    (individual (indiv-plist obj))))


(defun set-plist-of (obj plist)
  (etypecase obj
    (word      (setf (unit-plist obj) plist))
    ((or category referential-category mixin-category)
               (setf (cat-plist obj) plist))
    (cfr       (setf (cfr-plist obj) plist))
    (polyword  (setf (pw-plist obj) plist))
    (individual (setf (unit-plist obj) plist))))



;;;--------------
;;; return value
;;;--------------

(defun get-tag-for (tag obj)
  (let ((plist (plist-for obj)))
    (when plist
      (cadr (member tag plist :test #'eq)))))

;;--- variant 
(defun get-tags-cell (tag obj)
  (let ((plist (plist-for obj)))
    (when plist
      (member tag plist :test #'eq))))

;;;--------------
;;; excise entry
;;;--------------

(defun remove-property-from (obj tag)
  (let ((plist (plist-for obj)))
    (if (eq (first plist) tag)
      (set-plist-of obj (cddr plist))
      (let* ((last-cell (cdr plist))
             (next-cell (cddr plist))
             (next-tag (car next-cell)))
        (loop
          (when (null next-cell)
            (break "No instance of the tag ~A~
                    ~%on the plist of ~A" tag obj)
            (return-from remove-property-from))
          (when (eq next-tag tag)
            (rplacd last-cell (cddr next-cell)))
          (setq last-cell (cdr next-cell)
                next-cell (cddr next-cell)
                next-tag (car next-cell)))))))
            



;;;--------------------
;;; add property+value
;;;--------------------

(defun push-onto-plist (obj item tag)
  (etypecase obj
    (word     (push-onto-word-plist obj item tag))
    ((or category referential-category mixin-category)
     (push-onto-cat-plist  obj item tag))
    (cfr      (push-onto-cfr-plist  obj item tag))
    (polyword (push-onto-pw-plist   obj item tag))
    (individual (push-onto-individual-plist obj item tag))))


(defun push-onto-word-plist (obj item tag)
  (setf (unit-plist obj)
        (cons tag
              (cons item
                    (unit-plist obj)))))


(defun push-onto-pw-plist (obj item tag)
  (setf (pw-plist obj)
        (cons tag
              (cons item
                    (pw-plist obj)))))


(defun push-onto-cfr-plist (obj item tag)
  (setf (cfr-plist obj)
        (cons tag
              (cons item
                    (cfr-plist obj)))))


(defun push-onto-cat-plist (obj item tag)
  (if (cat-plist obj)
    (setf (cat-plist obj)
          (cons tag
                (cons item
                      (cat-plist obj))))
    (setf (cat-plist obj)
          (list tag item))))


(defun push-onto-individual-plist (obj item tag)
  (if (indiv-plist obj)
    (let ((cell-before (get-tags-cell tag obj)))
      (if cell-before
        (rplaca (cdr cell-before)
                (push item (cadr cell-before)))
        (setf (unit-plist obj)
              (cons tag
                    (cons item
                          (unit-plist obj))))))
    (setf (unit-plist obj)
          (list tag item))))

