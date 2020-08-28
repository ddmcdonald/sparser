;;; -*- Mode: LISP; Syntax: Common-Lisp; Package:(SPARSER LISP) -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "score-articles"
;;;   Module:  "objects/doc/"
;;;  Version:  August 2020

;; Broken out of drivers/sources/score.lisp 8/20/20

(in-package :sparser)

;;;--------------------
;;; specialize article
;;;--------------------

(defclass score-article (article)
  ((position :initarg :n :accessor position-in-corpus))
  (:documentation
   "Provides a hook for incorporating score-specific
    informationn"))


;;;-------------------------
;;; subclasses of paragraph
;;;-------------------------

(defclass score-paragraph (paragraph)
  ((flag :initarg :flag :accessor flag)
   (arg-alist :initform nil :accessor arg-alist)
   (index :initarg :index :accessor para-index))
  (:documentation "Superclass to group the paragraphs that
    are used to distinguish the different sorts of JSON block texts
    so we can write our sweeping routines in terms of encountering
    objects of a particular type. Parsing is transparent to these classes
    since it works off the inherited content-string field.
    The 'arg-alist' is a misnomer that should be changed since
    its actually plist accessed via member. The 'type' of section is
    recorded in the flag field
    The 'index' is a number that reflects which paragraph this
    is in the sequence of paragraphs created by collect-score-json-paragraphs
    and is zero based."))

(defmethod print-object ((p score-paragraph) stream)
  (print-unreadable-object (p stream :type t)
    (format stream "~a ~a" (para-index p) (flag p))))

(defun get-sp-arg (p keyword) ; 'get score paragraph argument'
  (cadr (memq keyword (arg-alist p))))


(defclass heading-paragraph (score-paragraph)
  ()
  (:documentation "These are for anything that names a segment of the article.
    Some of them are 'major' (see major-section?) always are in the own blocks.
    Other kinds of headings like 'Figure' or 'Table' may or may not have their
    content in the same block. Everything in the list *score-sect-titles* is
    going to be packaged in this class of paragraph"))

(defclass subheading-paragraph (score-paragraph)
  ()
  (:documentation "Like headings but not predefined (or remembered), since they
    resemble headings but without seeing the original article or believing in
    accurate scraping of the PDFs we're just taking note. For parsing these
    get rolled into the sections like regular text"))

(defclass action-paragraph (score-paragraph)
  ()
  (:documentation "Assembly level should take some action,
    but otherwise this isn't a content paragraph. So far these are just
    used to flag headers and other things that need to be removed."))

(defclass null-paragraph (score-paragraph)
  ()
  (:documentation "Known case where we should throw this block out"))


(defclass text-paragraph (paragraph)
  ((prefix :initarg :s :accessor prefix)
   (index :initarg :index :accessor para-index))
  (:documentation "Since the printer for paragraphs proper uses
 chart positions and TOC, we need a different one here to give us something 
 that we can trace. The 'prefix' is the first 12 characters of the
 text that the paragraph is assembled from, which gives a reasonable
 hint as to which paragraph this is."))

(defmethod print-object ((p text-paragraph) stream)
  (print-unreadable-object (p stream :type t)
    (format stream "~a ~a..." (para-index p) (prefix p))))

