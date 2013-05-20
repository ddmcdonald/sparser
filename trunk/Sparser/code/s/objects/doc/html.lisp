;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "html"
;;;   Module:  "objects;doc:"
;;;  Version:  September 1995

;; initiated 9/19/95

(in-package :sparser)


;;--- normally these will be called from the autodef routines

(defun define-html-tag (string)

  (let ((word (resolve-string-to-word/make string))
        (category-name (intern (concatenate 'string "html/"
                                            string)
                               *sparser-source-package*))
        cat  rule )

    (unless (setq cat (category-named category-name))
      ;; don't create the object twic

      (setq cat (define-category/expr  category-name

                  `(:specializes ,(category-named 'paired-html-tag)
                    :instantiates html-tag
                    :binds ((start-index . (:primitive number)))
                    :index (:temporary :key start-index))))

      (setq rule (define-cfr  (category-named 'html-tag)
                              `( ,word )
                   :form  (category-named 'section-marker)
                   :referent cat ))

      (setf (unit-plist cat) `(:rules ,(list rule)
                               ,@(unit-plist cat)))

      cat )))

 

(defun define-empty-html-tag/expr (string)
  (define-html-tag string))



(defun define-html-attribute (string)
  (declare (ignore string))

  ;; When instances of these are found they become properties
  ;; of the tag individuals that they are part of

  )

