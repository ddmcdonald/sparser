;;; -*- Mode: Lisp; Syntax: Common-Lisp; -*-
;;; Copyright (c) 2016-2022 SIFT LLC. All Rights Reserved.
;;;
;;;     file "jsonify"
;;;   module: tools/
;;;  version: January 2022

;; Created by Rusty during the fall of 2016. Since the Sparser defsystem now 'depends-on'
;; cl-json, there's no problem having this file in the Sparser tree.  The idea is to
;; gradually migrate general functions from R3 (e.g code/evaluations/jsonify.lisp)
;; that can be used in new applications

(in-package :sparser)

;; Cribbed from r3;code/evaluation/jsonify.lisp
(defun json-to-sexp (str)
  (json::decode-json-from-source str))

(defun sexp-to-json (sexpr)
  (json::encode-json-to-string sexpr))

;;--- pretty print (from evaluations/make-index-card.lisp 

(defparameter *json-sexprs* nil)

(defun pp-json (sexpr &optional (stream t))
  (push sexpr *json-sexprs*)
  (pp-sexpr-to-json sexpr t stream))

(defparameter *indent* 2)

(defun pp-sexpr-to-json (sexpr after-colon stream)
  (cond
   ((not (consp sexpr))
    (emit-line stream "~a" (non-cons-to-json :unknown-tag sexpr)))
   ((consp sexpr)
    (if after-colon
     (emit-line-continue stream "{")
     (emit-line stream "{"))
    (push-indentation *indent*)
    (loop for i on sexpr
       do (let ((item (car i)))
           (cond
             ((not (consp item))
              (break "can't have a non list under ~s" sexpr))
             ((keywordp (car item))
              (emit-line stream
                         "~s: "
                         (json::lisp-to-camel-case (symbol-name (car item))))
              (cond
                ((not (consp (cdr item)))
                 (emit-line-continue stream "~a" (non-cons-to-json (car item) (cdr item))))
                ((or
                  (not (consp (cadr item)))
                  (consp (car (cadr item))))
                 ;; this is a json collection
                 (pp-json-list (cdr item) stream))
                (t
                 (pp-sexpr-to-json (cdr item) t stream)))
              (when (cdr i) ;; still some pairs to go
                (emit-line-continue stream  "," )))
             (t
              (warn "item is not a non-cons or a list starting with a keyword: ~s" item)
              nil))))
    (pop-indentation *indent*)
    (emit-line-continue stream "}"))))

(defun pp-json-list (jlist stream &optional (newlines 0))
  (emit-line-continue stream (format nil "["))
  (loop for iil on jlist
     do (let ((ii (car iil)))
          (when (not (consp ii)) (push-indentation *indent*))
          (pp-sexpr-to-json ii nil stream)
          (when (cdr iil)
            (format stream ",")
            (loop for n from 1 to newlines by 1 do (terpri stream)))
          (when (not (consp ii)) (pop-indentation *indent*))))
  (emit-line-continue stream (format nil "]")))

(defun non-cons-to-json (tag nc)
  (cond
   ((stringp nc)
    (with-output-to-string (s)
      (json::write-json-string nc s)))
   ((numberp nc)
    (format nil "~S" nc))
   ((eq nc t) "true")
   ((null nc)
    (case tag
      ((:MODEL--ELEMENTS :REFERENCES) "[]")
      (:IDENTIFIER "\"\"")
      ((:to--location :from--location) "null")
      (t "false")))))




;;--- Rusty's original function

(defun jsonify-cats (&optional cats (show-leaves nil) (stream t))
  (let ((json::*json-output* stream)
        (cats (or cats
                  (sort
                   (loop for cat in *categories-defined*
                      when (and (not (form-category? cat))
                                (cat-lattice-position cat)
                                (or show-leaves
                                    (subcategories-of cat)))
                      collect cat)
                   #'string<
                   :key #'sp::pname))))
    (declare (special json::*json-output*))
    (json::with-object  nil
      (loop for cat in cats
         do (jsonify-cat cat)
           (terpri json::*json-output*)))))

(defun jsonify-cat (cat)
  (json::as-object-member
      ((sp::pname cat))
    (json::with-object
        nil
      (json::encode-object-member
       "parent"
       (sp::pname (sp::lp-super-category (sp::cat-lattice-position cat))))
      (json::as-object-member
          ("roles")
        (json::with-array
            nil
          (loop for var in (sp::cat-slots cat)
             do
               (json::encode-array-member (sp::pname var))))))))
