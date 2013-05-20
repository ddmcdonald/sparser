;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "file"
;;;   Module:  "drivers;sources:"
;;;  Version:   April 2013

;; initiated 2/91, added Analyze-text-from-file/at-filepos 12/14/94
;; 2/15/13 Folded in initializations from do-document-as-stream-of-files,
;;  for the code in objects/doc/object.lisp. 3.14.13 fixed it.  Fan-out
;;  from further change 4/1/13.

(in-package :sparser)

(export 'analyze-text-from-file)


(defun analyze-text-from-file (file)
  (when *open-stream-of-source-characters*
    (close-character-source-file))
  (let* ((pathname (decode-file-expression/pathname file))
         (file-name (intern (pathname-name pathname))))
    (establish-character-source/file pathname)
    (when *recognize-sections-within-articles* ;; grammar module
      (initialize-article-resource)
      (initialize-section-resource)
      (begin-new-article :name file-name :location pathname))
    (when *note-text-relations*
      (initialize-text-relationships))
    (analysis-core)
    (when *open-stream-of-source-characters*
      (close-character-source-file))))



(defun analyze-text-from-file/at-filepos (file file-position)
  (when *open-stream-of-source-characters*
    (close-character-source-file))
  (let ((pathname (decode-file-expression/pathname file)))
    (establish-character-source/file/at-filepos pathname
                                                file-position)
    (analysis-core)
    (when *open-stream-of-source-characters*
      (close-character-source-file))))
