;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "style"
;;;   Module:  "objects;doc:"
;;;  Version:  0.1 Sep 1995

;; stubbed 10/90. Fleshed out 10/27/91. Given real content 12/27/93 v2.3
;; 0.1 (9/17/95) added a feature slot and Style-includes-feature

(in-package :sparser)

;;;--------
;;; object
;;;--------

(defstruct (document-style
            (:include unit)
            (:conc-name #:style-)
            (:print-function print-document-style-structure))
  name
  rules       ;; list of cfrs
  init-fn     ;; symbol naming a function
  features
  )


(defun print-document-style-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<style " stream)
  (princ (style-name obj) stream)
  (write-string ">" stream))


;;;---------
;;; catalog
;;;---------

#| They're interned by their names. All fields are changed each time
their def-forms are executed.  |#

(defparameter *document-styles* nil)


(defun make-a-document-style (symbol)
  (let ((style (make-document-style :name symbol)))
    (push style *document-styles*)
    style ))


(defun document-style-named (symbol)
  (unless (symbolp symbol)
    (error "Document styles are named by symbols.~
            ~%  Your input was a ~A" (type-of symbol)))
  (unless (eq (symbol-package symbol)
              *sparser-source-package*)
    (setq symbol
          (find-symbol (symbol-name symbol) *sparser-source-package*)))

  (unless (null symbol) ;; "nil" is a symbol
    (find symbol *document-styles* :test #'eq :key #'style-name)))


(defun delete/document-style (ds)
  (let* ((style (etypecase ds
                  (document-style ds)
                  (symbol (or (document-style-named ds)
                              (format t "~&~%There is no document style ~
                                         named ~A~%" ds)))))
         (symbol (style-name style)))

    (setq *document-styles*
          (delete symbol *document-styles*
                  :test #'eq :key #'style-name))
    style ))


(defun list-document-styles ()
  (pl *document-styles*))


;;;------------------
;;; feature checking
;;;------------------

(defun style-includes-feature (keyword)
  (let ((current-style *current-style*))
    (if current-style
      (member keyword
              (style-features current-style)
              :test #'eq )
      (else
        (when *break-on-unexpected-cases*
          (break "There is no *current-style* for this document"))
        nil ))))




;;;----------
;;; def form
;;;----------

(defun define-document-style/expr (style-name rules init-fn features)

  ;; called from define-document-style
  (declare (ignore rules))

  (let ((style (or (document-style-named style-name)
                   (make-a-document-style style-name))))

    (when init-fn
      (setf (style-init-fn style) init-fn))

    (when features
      (setf (style-features style) features))

    style ))
