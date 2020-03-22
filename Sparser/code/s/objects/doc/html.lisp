;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995,2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "html"
;;;   Module:  "objects;doc:"
;;;  Version:  March 2020

;; initiated 9/19/95

(in-package :sparser)

;;;--------------------
;;; The stub from 1995
;;;--------------------
;; //// there are fragments of URL handling scattered about,
;; non complete, from start on them in September 1995 that
;; had to be shutdown. They're gated by the *internet* grammar
;; module. When we figure out what (if anything) more we want here
;; it should be organized in files it gates. (ddm 3/19/20)

;;--- normally these will be called from the autodef routines

(defun define-html-tag (string)
  (let* ((word (resolve-string-to-word/make string))
         (name (intern (concatenate 'string "html/" string) *category-package*))
         (cat (or (category-named name)
                  (define-category/expr name
                    `(:specializes ,(category-named 'paired-html-tag)
                      :instantiates html-tag
                      :binds ((start-index . (:primitive number)))
                      :index (:temporary :key start-index))))))
    (declare (special category::html-tag category::section-marker))
    (setf (get-rules cat)
          (list (define-cfr category::html-tag `(,word)
                  :form category::section-marker
                  :referent cat)))
    cat))

(defun define-empty-html-tag/expr (string)
  (define-html-tag string))

(defun define-html-attribute (string)
  (declare (ignore string))

  ;; When instances of these are found they become properties
  ;; of the tag individuals that they are part of

  )

