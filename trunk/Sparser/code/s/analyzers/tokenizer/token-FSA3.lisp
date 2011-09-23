;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "token FSA"
;;;   Module:  "analyzers:tokenizer:"
;;;  Version:  3.2 May 1996

;;  initated ~6/90
;;  1.1  (12/90) Added a call to zero-lookup-buffer when the end-of-stream is
;;       reached so that the last "word" passed from there through
;;       Next-token won't cause *display-word-stream*'s trace to duplicate
;;       the penultimate token.
;;  3.0  (9/15/92 v2.3) utterly changed
;;  3.1  (9/8/93) Added a check against word buffer length to Finish token
;;  3.2  (5/31/96) extended the character array to 256 but with only a few
;;        entries, so a check has been added for the entry having a value and
;;        if not it calls a break with an explanation of what to do.
 

(in-package :sparser)


(defun run-token-fsa ()
  ;; we're starting a new token.
  (let ( entry char-type )
    (if *pending-entry*
      (then (setq entry *pending-entry*
                  *pending-entry* nil))
      (setq entry
            (elt *character-dispatch-array*
                 (char-code
                  (elt *character-buffer-in-use*
                       (incf *index-of-next-character*))))))

    (if entry
      (if (eq :punctuation 
              (setq char-type (car entry)))
        
        (do-punctuation (cdr entry))
        
        ;; it's now likely to be more than one character long, so set up
        ;; pointers to keep track of it
        (else
          (setq *category-of-accumulating-token*  (car entry))
          (continue-token (kcons (cdr entry)
                                 nil)
                          1
                          char-type)))
      
      (announce-out-of-range-character))))


(defun continue-token (accumulated-entries length char-type)
  (let ((next-entry (elt *character-dispatch-array*
                         (char-code
                          (elt *character-buffer-in-use*
                               (incf *index-of-next-character*))))))

    (if next-entry
      (if (eq (car next-entry) :punctuation)
        (do-punctuation-from-continue
         next-entry accumulated-entries length char-type)
        
        (if (eq *category-of-accumulating-token*
                (car next-entry))
          
          (continue-token (kcons (cdr next-entry)
                                 accumulated-entries)
                          (1+ length)
                          char-type )
          (else
            (setq *pending-entry* next-entry)
            (finish-token accumulated-entries length char-type)
            )))
      
      (announce-out-of-range-character))))



(defun finish-token (accumulated-entries length char-type)
  (if (> length *word-lookup-buffer-length*)
    (format t "~%~%The token just found:~%  ~s~
               ~%is longer than the word lookup buffer can ~
               accomodate (~A characters).~%It was ignored. ~
               If it should be accepted then you must increase ~
               ~%the buffer size. See the Sparser manual.~%~%"
            "<trunc>"
            *word-lookup-buffer-length*)

    (let ((interning-array *word-lookup-buffer*) ;;local copy of ptr
          (index length)
          (capitalization-state :start)
          entry )
      
      (setf (fill-pointer interning-array) length)
      
      (loop
        (when (null accumulated-entries)
          (return))
        (setq entry (kpop accumulated-entries))
        (setf (elt interning-array (decf index))
              (cdr entry))
        (setq capitalization-state
              (capitalization-fsa (car entry)
                                  capitalization-state)))
      
      (setq *capitalization-of-current-token*
            (cleanup-call-to-caps-fsa capitalization-state length))
      (setq *length-of-the-token* length)
      (find-word char-type))))
