;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990-1991  Content Technologies Inc.
;;; copyright (c) 1992,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "string"
;;;   Module:  "drivers;sources:"
;;;  Version:   January 2013

;; 1/30/13 Added .txt to the string passed to directory so it would work.
;; Might be Clozure-specific requirement. 3/29/13 Added keyword to pass
;; through. 

(in-package :sparser)

;; (export 'analyze-text-from-directory)


(defun analyze-text-from-directory (dir &key doc-set-name)
  (let* ((file-list (directory (format nil "~a/*.txt" dir)))
         (stream (define-document-stream (gensym "document-stream")
                     :style-name 'hand-typed/no-headers
                     :file-list file-list)))
    (do-document-as-stream-of-files stream 
                                    :article-per-file? t
                                    :doc-set-name doc-set-name)))
