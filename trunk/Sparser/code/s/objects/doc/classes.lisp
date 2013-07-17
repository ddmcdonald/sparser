;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;    File:  "classes"
;;;   Module:  "objects/doc/"
;;;  Version:  July 2013

;; initiated 7/15/13 to hold Sparser-specific mixin clos classes.
;; Loads after the regular objects including the model and before
;; any other document objects. 

(in-package :sparser)

;;--- Anchored in the chart / document string

(defclass chart-region ()
  ((starts-at-pos :type position
    :accessor starts-at-pos
    :documentation "The position just before the region starts")
   (ends-at-pos  :type position
    :accessor starts-at-pos
    :documentation "The position just after the region ends"))
  (:documentation "Picks out a region of the chart. Somewhat the
   same position-relative information as an edge, so the content
   of any object that mixes in theis class needs to reap it before
   the chart wraps and the positions are reclaimed."))


(defclass document-region ()
  ((starts-at-char :type integer :accessor starts-at-char
    :documentation "The index of the first character in the region")
   (ends-at-char ;; :type position -- not defined yet
    :accessor starts-at-char
    :documentation "The index just after the last character in the region"))
  (:documentation "Picks out a region of a document. 
     ///Perhaps the document should be included in this class?"))

;;--- for collecting results

(defclass has-content-model ()
  ((contents :accessor contents
    :documentation "Holds some object of type contents, the one
      for Grok is text-relation-contents"))
  (:documentation "Belongs on all levels of the document structure
    so that, e.g., the note operation can be generalized."))



