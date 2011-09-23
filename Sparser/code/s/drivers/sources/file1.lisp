;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "file"
;;;   Module:  "drivers;sources:"
;;;  Version:   February 1991

;; initiated 2/91, added Analyze-text-from-file/at-filepos 12/14/94

(in-package :sparser)

(export 'analyze-text-from-file)


(defun analyze-text-from-file (file)
  (when *open-stream-of-source-characters*
    (close-character-source-file))
  (let ((pathname (decode-file-expression/pathname file)))
    (establish-character-source/file pathname))
  (analysis-core)
  (when *open-stream-of-source-characters*
    (close-character-source-file)))



(defun analyze-text-from-file/at-filepos (file file-position)
  (when *open-stream-of-source-characters*
    (close-character-source-file))
  (let ((pathname (decode-file-expression/pathname file)))
    (establish-character-source/file/at-filepos pathname
                                                file-position)
    (analysis-core)
    (when *open-stream-of-source-characters*
      (close-character-source-file))))
