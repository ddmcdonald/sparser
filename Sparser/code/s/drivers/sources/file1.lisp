;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "file"
;;;   Module:  "drivers;sources:"
;;;  Version:   0.1 October 2013

;; initiated 2/91, added Analyze-text-from-file/at-filepos 12/14/94
;; 2/15/13 Folded in initializations from do-document-as-stream-of-files,
;;  for the code in objects/doc/object.lisp. 3.14.13 fixed it.  Fan-out
;;  from further change 4/1/13.
;; 0.1 (10/3/13) Reorganized the initialization.

(in-package :sparser)

(export 'analyze-text-from-file)


(defun analyze-text-from-file (file)
  (when *open-stream-of-source-characters*
    (close-character-source-file))
  (let* ((pathname (decode-file-expression/pathname file))
         (file-name (intern (pathname-name pathname))))
    (set-initial-state :name file-name :location pathname)
    (establish-character-source/file pathname)
    (analysis-core)
    (when *open-stream-of-source-characters*
      (close-character-source-file))))


;; N.b. hasn't been run since the early 1990s
(defun analyze-text-from-file/at-filepos (file file-position)
  (when *open-stream-of-source-characters*
    (close-character-source-file))
  (let ((pathname (decode-file-expression/pathname file)))
    (establish-character-source/file/at-filepos pathname
                                                file-position)
    (analysis-core)
    (when *open-stream-of-source-characters*
      (close-character-source-file))))
