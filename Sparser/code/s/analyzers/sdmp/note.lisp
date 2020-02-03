;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020 David D. McDonald all rights reserved

;;;      File: "note"
;;;    Module: "analyzers;SDM&P:
;;;   Version: January 2020

;; Initiated 1/29/20. To make an easy to use, structured, ability to
;; 'note and record interesting objects' 

(in-package :sparser)

(defgeneric noteworthy (category)
  (:documentation "Instances of this category in a text should be
    recorded when the occur in a text as part of its meta data.
"))

(defgeneric noteworthy? (item)
  (:documentation "Is this item something that is noteworthy?
"))
