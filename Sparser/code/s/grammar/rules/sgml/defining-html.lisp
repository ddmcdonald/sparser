;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "defining html"
;;;    Module:  "grammar;rules:SGML:"
;;;   version:  September 1995

;; initiated 9/20/95. Moved from Interface to Grammar 10/5

(in-package :sparser)

;;;-----------
;;; auto-defs
;;;-----------

(define-autodef-data  'html-markup-element
  :module *sgml*
  :display-string "HTML markup elements"
  :not-instantiable t
  :description "Various kinds of tags and attributes" )

(define-autodef-data  'html-attribute
  :module *sgml*
  :display-string "attribute"
  :description "The name of an attribute that might appear within an html tag. The equals sign and value in quotations are handled automatically."
  :examples "\"scr\", \"href\""
  :form 'define-html-attribute
  :dossier "dossiers;html attributes" )


(define-autodef-data  'html-tag
  :module *sgml*
  :display-string "types of html tags"
  :description "For parsing purposes, html tags are divided into two groups. Some tags will appear in begin-end pairs and enclose a region of the document; the end tag uses the same name but preceded with a slash.  Other tags are 'empty' and stand by themselves."
  :not-instantiable t )

(define-autodef-data  'paired-html-tag
  :module *sgml*
  :display-string "paired tag"
  :description "These tags come in begin-end pairs and enclose some part of the document. The slash on the end-tag is handled automatically."
  :examples "\"a\", \"h1\""
  :form 'define-html-tag
  :dossier "dossiers;html tags" )

(define-autodef-data  'empty-html-tag
  :module *sgml*
  :display-string "empty tag"
  :description "These tags stand by themselves."
  :examples "\"img\", \"p\""
  :form 'define-empty-html-tag
  :dossier "dossiers;html tags" )

