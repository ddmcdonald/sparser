;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "read switch"
;;;   Module:  "interface;file ops:"
;;;  Version:   1.0 September 1992

;; put in 12/90 for mwm
;; 1.0 (9/26/92 v2.3) dropped the case-switching option

(in-package :sparser)


(defun read-chars-into-buffer/maximum-count
       (buffer file-stream maximum-count)
  (declare (ignore buffer file-stream maximum-count))
  (break "The file->buffer reader isn't initialized.~
          ~%   Check the switch settings."))


(defvar *character-translation-protocol* nil)


;; (establish-character-translation-protocol :no-changes)

(defun establish-character-translation-protocol (keyword)
  (ecase keyword
   (:no-changes
    (setf (symbol-function 'read-chars-into-buffer/maximum-count)
          (symbol-function 'read-chars-into-buffer/no-changes))))
  (setq *character-translation-protocol* keyword))

