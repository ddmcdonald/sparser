;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;    File:  "classes"
;;;   Module:  "objects/doc/"
;;;  Version:  September 2013

;; initiated 7/15/13 to hold Sparser-specific mixin clos classes.
;; Loads after the regular objects including the model and before
;; any other document objects. Fleshed out 9/17/13.

(in-package :sparser)

;;--- Anchored in the chart / document string

(defclass chart-region ()
  ((starts-at-pos ;; :type position -- no hassles from nil
    :accessor starts-at-pos
    :documentation "The position just before the region starts")
   (ends-at-pos ;; :type position
    :accessor ends-at-pos
    :documentation "The position just after the region ends"))
  (:documentation "Picks out a region of the chart. Somewhat the
   same position-relative information as an edge, so the content
   of any object that mixes in theis class needs to reap it before
   the chart wraps and the positions are reclaimed."))

(defmethod clear ((o chart-region))
  (setf (starts-at-pos o) nil)
  (setf (ends-at-pos o) nil)
  (call-next-method))


;;--- anchored in the characters of the document

(defclass document-region ()
  ((starts-at-char ;; :type integer 
                   :accessor starts-at-char
    :documentation "The index of the first character in the region")
   (ends-at-char ;; :type position -- not defined yet
    :accessor ends-at-char
    :documentation "The index just after the last character in the region"))
  (:documentation "Picks out a region of a document. 
     ///Perhaps the document should be included in this class?"))

(defmethod clear ((o document-region))
  (setf (starts-at-char o) nil)
  (setf (ends-at-char o) nil)
  (call-next-method))


;;--- for collecting results

(defclass has-content-model ()
  ((contents :accessor contents
    :documentation "Holds some object of type contents, the one
      for Grok is text-relation-contents"))
  (:documentation "Belongs on all levels of the document structure
    so that, e.g., the note operation can be generalized."))

(defmethod clear ((o has-content-model))
  (setf (contents o) nil)
  (call-next-method))

