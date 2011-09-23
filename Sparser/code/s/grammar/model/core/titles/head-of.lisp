;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "head of"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  April 1991      system version 1.8.4

;; initiated 5/9

(in-package :CTI-source)

;; 5/26 --this is the only rule that mentions "head" literally
;;         it should get flushed in favor of the verb
(def-cfr title ("head" ThisCo)
  :referent (:composite  head+company
                         left-edge right-edge))

;;;-------------------------------------------
;;; rules specific to "head" taken as a title
;;;-------------------------------------------

(def-cfr title (title of-company-activity)
  :referent (:merge find-or-make/title-of-company-activity
                    left-edge right-edge))

(defun find-or-make/title-of-company-activity (title activity)
  activity)

