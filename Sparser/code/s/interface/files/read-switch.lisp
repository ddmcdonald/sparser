;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990 Content Technologies Inc.
;;; copyright (c) 1992,2022 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "read switch"
;;;   Module:  "interface;file ops:"
;;;  Version:  January 2022

;; put in 12/90 for mwm
;; 1.0 (9/26/92 v2.3) dropped the case-switching option

(in-package :sparser)

;; 1/29/22 Doesn't make sense to contemplate having another style of
;;  buffer populator at this point.


(defvar *character-translation-protocol* nil)

(defun establish-character-translation-protocol (keyword)
  "Invoked from switch settings. Not point in modifying them
   now that we have the prescan. Converting this to a no-op"
  (unless (eq keyword :no-changes)
    (error "The only valid character translation protocol is :no-changes.~
          ~%Not ~A" keyword))
  (setq *character-translation-protocol* keyword))

#+ignore
  (ecase keyword
    (setf (symbol-function 'read-chars-into-buffer/maximum-count)
          (symbol-function 'read-chars-into-buffer/no-changes)))
  

(defun read-chars-into-buffer/maximum-count (first-index buffer
                                             file-stream maximum-count)
  "Just a pass-through"
  (read-chars-into-buffer/no-changes first-index buffer file-stream maximum-count))
  





