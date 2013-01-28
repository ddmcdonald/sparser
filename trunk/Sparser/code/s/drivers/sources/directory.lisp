;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "string"
;;;   Module:  "drivers;sources:"
;;;  Version:   January 2012

(in-package :sparser)

;; (export 'Analyze-text-from-directory)


(defun analyze-text-from-directory (dir)
  (let* ((file-list (directory (format nil "~a/*" dir)))
         (stream (define-document-stream (gensym "document-stream")
                     :style-name 'hand-typed/no-headers
                     :file-list file-list)))
    (do-document-as-stream-of-files stream)))