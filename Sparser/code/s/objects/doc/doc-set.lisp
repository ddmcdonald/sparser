;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2012-2013  David D. McDonald  -- all rights reserved
;;;
;;;    File:  "doc-set"  ("document set")
;;;   Module:  "objects;doc:"
;;;  Version:  May 2013

;; initiated 9/2/12 to provide an object to represent a set of documents and
;; facts about them. Use-case in frequency calculations.
;; 3/29/13 Added real content.  5/1/13 Tweaked initialization.

(in-package :sparser)

;;;--------
;;; object
;;;--------

(defclass document-set (named-object)
  ((articles :type list :initform nil :accessor articles
     :documentation "a list of article objects, in chronological order")
   (merged-contents :accessor contents-of-doc-set
     :documentation "A text-relations-contents object whose fields
       are populated by summing the relations from each of the articles.
       See collect-relations-from-articles ")
   )
  (:documentation
   "In general there would be many document sets. For the moment (3/13)
    there is just one, assigned to a global and cleared with successive
    runs of do-document-as-stream-of-files."))


(defmethod print-object ((ds document-set) stream)
  (print-unreadable-object (ds stream :type t)
    (format stream "~a" (name ds))))


;;;--------------
;;; global state
;;;--------------

(defvar *current-document-set* nil
  "Holds the document set that is currently active")

(defun doc-set ()
  "Syntactic sugar for the global"
  *current-document-set*)


;;;------------
;;; operations
;;;------------

(defun initialize-document-set (name)
  ;; called from do-document-as-stream-of-files before
  ;; it starts reading articles. 
  (unless *current-document-set*
    (setq *current-document-set*
          (make-instance 'document-set)))
  (setf (name *current-document-set*) name)
  (clear *current-document-set*))

(defmethod clear ((ds document-set))
  (kreclaim (articles ds))
  (setf (articles ds) nil))


(defmethod add-to-document-set ((a article))
  ;; Called from begin-new-article
  (unless (doc-set)
    (initialize-document-set (article-name a)))
  (if (null (articles (doc-set))) ;; first one
    (setf (articles (doc-set)) `(,a))
    (ktail-cons a (articles (doc-set)))))
