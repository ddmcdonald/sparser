;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992-2005, 2011  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:  "alists"
;;;    Module:   /Sparser/util/
;;;   Version:   1.0 March 2011

;; 1.0 January 1991
;; (2/8/05) Added plist-to-alist and alist-to-plist.
;; (1/9/07) Added assq for Allegro's benefit
;; (7/3) Added variant on member & assoc that can handle the mixed lists
;;  that appear in rule referents. 
;; (2/8/11) Conditionalized it to Allegro so would load w/o complaint in Clozure.
;; (3/9/11) Reworked to fit in ddm-util.

(in-package :ddm-util)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (export '(#-ccl assq
            memq/assq
            delete-pair-from-alist
            plist-to-alist
            alist-to-plist)))



#+allegro ;; already present in Clozure
(defun assq (item alist)
  (assoc item alist :test #'eq))


(defun memq/assq (item alist)
  ;; Scans the toplevel of the list, acting like alist when it sees
  ;; conses and memq when it sees symbols or anything else
  (do ((i (car alist) (car rest))
       (rest (cdr alist) (cdr rest)))
      ((null i) nil)
    (if (consp i)
      (when (eq (car i) item)
	(return-from memq/assq i))
      (when (eq i item)
	(return-from memq/assq (cons i rest))))))


(defun delete-pair-from-alist (pair alist)
  (if (equal (car alist)
             pair)
    (cdr alist)
    (let ((cons-before alist)
          (cons       (cdr alist))
          (cons-after (cddr alist)))
      (dolist (p (cdr alist))
        (if (equal pair p)
          (return)
          (setq cons-before (cdr cons-before)
                cons        (cdr cons)
                cons-after  (cdr cons-after))))

      (rplacd cons-before
              cons-after)
      alist )))



;;--- plists <=> alists

(defun plist-to-alist (plist &optional not-dotted?)
  (let ( alist )
    (do ((tag (car plist) (car rest))
         (value (cadr plist) (cadr rest))
         (rest (cddr plist) (cddr rest)))
        ((null tag))
      (when (null value)
        (break "Appears to be an odd number of items in the plist"))
      (if not-dotted?
        (push `(,tag ,value) alist)
        (push `(,tag . ,value) alist)))
    (nreverse alist)))

(defun alist-to-plist (alist)
  (let ( plist )
    (dolist (pair alist)
      (if (consp (cdr pair)) ;; not dotted
        (then (push (first pair) plist) ;; tag
              (push (second pair) plist)) ;; value
        (else
          (push (car pair) plist)
          (push (cdr pair) plist))))
    (nreverse plist)))
    
