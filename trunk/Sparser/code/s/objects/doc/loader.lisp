;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2012-2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "loader"
;;;   Module:  "objects;doc:"
;;;  Version:  0.5 May 2013

;; initiated 10/91
;; 0.1  (10/21 v2.0) Bumped [section] to "1".  Added [SGML tags]
;;      (6/18/92 v2.2) added [context]
;; 0.2  (12/7/93 v2.3) added [header label], moved [article] to grammar 12/15
;;      (5/20/94) added [marker pairs].  5/21 added [invisible markup] and
;;       [tag interiors].  6/6 added [annotation].
;; 0.3 (8/17) renamed [sections1] as [section markers], added [sections]
;; 0.4 (1/9/95) bumped [section markers].  9/19 added [html]
;; 0.5 (7/27/10) Added [article1]. The file article has been in the system
;;      forever (1993), but grep doesn't find anything that lloads it.
;;    (9/2/12) added [doc-set] and [word-freq]. (2/28/13) added [content]
;;    (3/14/13) moved the text-relations package here. 4/1 reordered to me
;;     dependency imposed by doc-set  (5/1/13) Moved globals first so all the
;;     symbols are known before they're referenced in code.

(in-package :sparser)

;; package to distinguish text-relations

(or (boundp '*text-relationships-package*)
    (defconstant *text-relationships-package*
      (or (find-package :text-relationships)
          (make-package :text-relationships
                        ::nicknames '(:tr)
                        :use nil))))


(lload "doc;globals")
(lload "doc;word-freq")
(lload "doc;article1")
(lload "doc;sections")
(lload "doc;section markers1")
(lload "doc;SGML tags")
(lload "doc;html")
(lload "doc;marker pairs")
(lload "doc;invisible markup")
(lload "doc;tag interiors")
(lload "doc;annotation")
(lload "doc;header label")
(lload "doc;style")
(lload "doc;object")
(lload "doc;doc-set")
(lload "doc;doc stream")
(lload "doc;context")
(lload "doc;content")


