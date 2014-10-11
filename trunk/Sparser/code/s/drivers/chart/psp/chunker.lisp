;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "chunker"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  October 2014

;; Initiated 10/8/14

(in-package :sparser)

;;;-------------------------------------
;;; data structure to represent a chunk
;;;-------------------------------------

(defclass chunk ()
  ((start :initarg :start :accessor chunk-start-pos
    :documentation "The position object that the chunk
      starts at.")
   (end :initarg :end :accessor chunk-end-pos
    :documentation "The position object that the chunk
      ends at.")
   (form :initarg :form :initform nil :accessor chunk-form
    :documentation "When it is known, this is the syntactic
      category of the chunk taken from the vocabulary given in
      grammar/rules/syntax/categories.lisp."))
  (:documentation
   "Provides a representation for a minimal syntactic phrase
    or 'chunk'. Noun phrases up to the head. Verb groups from
    any auxiliaries through the main verb including any adverbs
    that are known to associate with verbs."))

(defun parse-chunk-interior (chunk)
  ;; Use the standard machinery is PTS to parse the interior
  ;; of the chunk and introduce a corresponding edge into
  ;; the chart. Run pts in a mode that will make it run
  ;; to completion and return rather than makinig a tail
  ;; recursive call back to the scan level
  (declare (special *left-segment-boundary*
                    *right-segment-boundary*))
  (setq *left-segment-boundary* (chunk-start-pos chunk)
        *right-segment-boundary* (chunk-end-pos chunk))
  (let ((*return-after-doing-segment* t))
    (pts)))


;;;--------
;;; driver 
;;;--------

(defun identify-chunks (sentence)
  ;; Get the position bounds from the sentence instance
  ;; Do a bunch of stuff then...
  (set-sentence-status sentence :chunked)
  (throw :end-of-sentence :finished-chunking))

