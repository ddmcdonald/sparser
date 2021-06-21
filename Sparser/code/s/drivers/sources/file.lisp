;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2013,2018-2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "file"
;;;   Module:  "drivers;sources:"
;;;  Version:   June 2021

;; initiated 2/91, added Analyze-text-from-file/at-filepos 12/14/94
;; 2/15/13 Folded in initializations from do-document-as-stream-of-files,
;;  for the code in objects/doc/object.lisp. 3.14.13 fixed it.  Fan-out
;;  from further change 4/1/13.
;; 0.1 (10/3/13) Reorganized the initialization.

(in-package :sparser)


(defun analyze-text-from-file (file &key
                                      ((:paragraph make-orthographic-paragraphs)
                                       *paragraphs-from-orthography*)
                                      ((:prescan prescan-buffer?)
                                       *prescan-character-input-buffer*)
                                      echo
                                      (ext-format :utf-8)
                                      ((:trace traces-on) t)
                                      quiet
                                      ((:skip ignore-errors?) t)
                                      name )

  "Opens the indicated file an passes it to analysis-core to be parsed.
     :paragraph signals that the file should be interpreted as a multi-paragraph
   document, where paragraph breaks are signaled by newlines. For the details,
   read the documentation on new-ortho-paragraph (objects/doc/paragraphs.lisp)
     :prescan gates a procedure that runs before any parsing to apply a
   set of character-level transformation to the input before it is passed
   to the parsing engine: collapse multiple newlines, move punctuation outside
   a final quotation mark, and translate html escape strings.
     :echo is passed to the character-level transducer so we can see what
   its doing.
     :trace gates the display of a set of per-paragraph stats, notably this
   includes doing a tts to show what was parsed in the paragraph. 
     :quiet turns off all normal during-parse printing such as segment
   boundaries. Overrides trace so that end-of-paragraph printing is off.
     :skip enables the alternate parsing path for sentences that traps and
   reports errors when they occur rather than bringing up the debugger.
     :name should be a string that will be communicated to the paragraph
   handlers to be assigned to the article. Defaults to the file name."
  
  (declare (special *open-stream-of-source-characters* *paragraphs-from-orthography*
                    *prescan-character-input-buffer*))
  
  (when *open-stream-of-source-characters*
    (close-character-source-file))

  (let* ((pathname (decode-file-expression/pathname file))
         (file-name (intern (pathname-name pathname))))
    
    (unless (probe-file pathname)
      (format t "~&~a~%No such file~%" pathname)
      (return-from analyze-text-from-file nil))

    (start-timer '*time-to-read-document*)

    (set-initial-state :name (or name file-name)
                       :location pathname)
    
    (establish-character-source/file pathname :ext-format ext-format )

    (let ((*paragraphs-from-orthography* make-orthographic-paragraphs)
          (*tts-after-each-section* (unless quiet traces-on))
          (*trap-error-skip-sentence* ignore-errors?))
      (declare (special *paragraphs-from-orthography* *tts-after-each-section*
                        *trap-error-skip-sentence*))

      (when prescan-buffer?
        (scan-and-swap-character-buffer :echo echo))
      
      (if quiet
        (with-total-quiet (analysis-core))
        (analysis-core)))

    (when *open-stream-of-source-characters*
      (close-character-source-file))

    (article)))



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
