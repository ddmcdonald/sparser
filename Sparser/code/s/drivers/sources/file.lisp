;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2013,2018-2020 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "file"
;;;   Module:  "drivers;sources:"
;;;  Version:   March 2020

;; initiated 2/91, added Analyze-text-from-file/at-filepos 12/14/94
;; 2/15/13 Folded in initializations from do-document-as-stream-of-files,
;;  for the code in objects/doc/object.lisp. 3.14.13 fixed it.  Fan-out
;;  from further change 4/1/13.
;; 0.1 (10/3/13) Reorganized the initialization.

(in-package :sparser)

(export 'analyze-text-from-file)

(defun analyze-text-from-file (file &key
                                      ((:paragraph make-orthographic-paragraphs)
                                       *paragraphs-from-orthography*)
                                      ((:prescan prescan-buffer?)
                                       *prescan-character-input-buffer*)
                                      ((:trace traces-on) t)
                                      ((:skip ignore-errors?) t)
                                      echo)
  
  (declare (special *open-stream-of-source-characters* *paragraphs-from-orthography*
                    *prescan-character-input-buffer*))
  (when *open-stream-of-source-characters*
    (close-character-source-file))

  (let* ((pathname (decode-file-expression/pathname file))
         (file-name (intern (pathname-name pathname))))
    
    (unless (probe-file pathname)
      (format t "~&~a~%No such file~%" pathname)
      (return-from analyze-text-from-file nil))

    (set-initial-state :name file-name :location pathname)

    (establish-character-source/file pathname)

    (when prescan-buffer?
      (scan-and-swap-character-buffer :echo echo))

    (let ((*paragraphs-from-orthography* make-orthographic-paragraphs)
          (*tts-after-each-section* traces-on)
          (*trap-error-skip-sentence* ignore-errors?))
      (declare (special *paragraphs-from-orthography* *tts-after-each-section*
                        *trap-error-skip-sentence*))

      (analysis-core))

    (when *open-stream-of-source-characters*
      (close-character-source-file))))



;; N.b. hasn't been run since the early 1990s
(defun analyze-text-from-file/at-filepos (file file-position)
  (declare (special *open-stream-of-source-characters*))
  (when *open-stream-of-source-characters*
    (close-character-source-file))
  (let ((pathname (decode-file-expression/pathname file)))
    (establish-character-source/file/at-filepos pathname
                                                file-position)
    (analysis-core)
    (when *open-stream-of-source-characters*
      (close-character-source-file))))
