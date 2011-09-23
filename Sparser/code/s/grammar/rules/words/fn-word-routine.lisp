;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2011  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "fn word routine"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   0.7 July 2011

;; 0.1 (12/17/92 v2.3) redid the routine so it was caps insensitive and handled
;;      bracketing.
;; 0.2 (5/15/93) Added Function-word? and the marker on the word's plist
;; 0.3 (1/12/94) Having bracket assignment first remove any old brackets so that
;;      it's easy to make revisions.
;; 0.4 (7/29) extended the code to be able to handle polywords
;; 0.5 (8/7) removed its 'etypecase' and made the 'otherwise' nil.
;; 0.6 (10/24) embelleshed check to let brackets come in as bracket objects
;; 0.7 (11/16) added keyword for form category
;;     (5/12/95) fixed glitch in format stmt.
;;     (7/31/11) factored out backet operations as assign-brackets-to-word.
;;      and added make-minimal-word-form-rule

(in-package :sparser)


(defun function-word? (word)
  (typecase word
    (word (cadr (member :function-word (label-plist word))))
    (polyword
     (cadr (member :function-word (pw-plist word))))
    (otherwise
     nil )))


(defun define-function-word (string
                             &key ((:brackets bracket-symbols))
                                  ((:form name-of-form-category)))

  (let ((word (or (when (word-p string) string)
                  (when (polyword-p string) string)
                  (resolve-string-to-word/make string)))
        (form (if name-of-form-category
                (resolve-form-category name-of-form-category)
                t )))

    (etypecase word
      (word (setf (label-plist word)
                  `( :function-word ,form ,@(label-plist word) )))
      (polyword
       (setf (pw-plist word)
             `( :function-word ,form ,@(pw-plist word)))))

    (unless (rule-set-for word)
      (establish-rule-set-for word))

    (assign-brackets-to-word word bracket-symbols)

    word ))


(defun make-minimal-word-form-rule (word form-label)
  (let ((form-cat (resolve-form-category form-label)))
    (define-cfr word (list word)
      :form form-cat
      :referent word
      :source :form)))
  

;;--- auxiliaries

(defun resolve-form-category (form-label)
  (let ((category
         (etypecase form-label
           (symbol (category-named form-label))
           ((or referential-category mixin-category category)
            form-label))))
    (unless category
      (break "The category ~A isn't defined yet"
             name-of-form-category))
    (unless (form-category? category)
      (cerror "Just keep going"
              "You are proposing to use the category ~a~
             ~%as the form of a rule, but it's not defined as~
             ~%a form rule. See /grammar/rules/syntax/categories.lisp"
              form-label))
    category))
