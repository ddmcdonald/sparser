;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2011 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "setup action"
;;;   Module:  "drivers;DA:"
;;;  Version:  October 2011

;; initiated 5/5/95. Elaborated ..5/11. Resumed elaborating 10/28/11.

(in-package :sparser)


(defun setup-da-action (action-expression rule)
  ;; Called from define-da-rule.  The expression is either
  ;; a list or a symbol naming a function.
  (etypecase action-expression
    (symbol
     ;; can't check for it being defined yet by using Symbol-function,
     ;; since that dies when they aren't.
     (setf (da-action-fn rule) action-expression))
    (cons
     (decode-da-action action-expression rule))))



(defun decode-da-action (list rule)
  (unless (keywordp (first list))
    (break "The action expression on ~A isn't correctly ~
            ~%formed. It must begin with one of the predefined ~
            keywords.~%  ~A~%" list))

  (let ((decoded-expression
         (case (first list)
           (:make-edge-over-whole-span
            `( :make-edge-over-whole-span
               ,@(decode-edge-over-whole-span-exp (rest list))))

           (:function
            (let ((fn-name (cadr list))
                  (args (cddr list)))
              ;; What checks make sense?
            `(:function ,fn-name ,@args)))

           (otherwise
            (break "The action expression on ~A doesn't begin~
                    ~%with one of the predefined keywords.~
                    ~%  ~A~%" list)))))

    (setf (da-action-description rule) decoded-expression)))



;;; cases

(defun decode-edge-over-whole-span-exp (items)
  ;; returns the action expression to be stored with the rule
  (let ((label-name (first items)))

    (let ((label (resolve label-name)))
      (unless label
        (break "There is no label named ~A" label-name))

      (let ((referent (decode-da-referent-expression (rest items))))

        `(,label ,@referent) ))))


(defun decode-da-referent-expression (items)
  (let ( decoded-expressions )
    (dolist (item items)
      (etypecase item
        (cons
         (ecase (first item)
           (:daughter
            (unless (member (second item)
                            '(first second third fourth fifth
                              sixth seventh eighth ninth tenth) :test #'eq)
              (break "The daughter specification isn't one of the ~
                      anticipated terms"))

            (push item decoded-expressions))
           ))))

    (nreverse decoded-expressions)))


