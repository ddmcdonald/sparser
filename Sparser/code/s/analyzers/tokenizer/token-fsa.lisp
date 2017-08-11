;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1996,2013-2016  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "token FSA"
;;;   Module:  "analyzers:tokenizer:"
;;;  Version:  December 2016

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
;;       (1/30/13) continue-token got an char entry of 0 on a bad character
;;        so added check for that case to improve the error. 
;;  3.3  (2/3/14) Added check and dispatch for character above 256.
;;       (2/27/14) cleaned up the no-entry logic in continue-token
;;  3.4  (3/2/14) Folded in the common function character-entry to replace
;;        the open-coded versions.
;; 6/5/2015 modified code in run-token-fsas to make it easier 
;;  to find out what characters are causing problems

(in-package :sparser)


(defun run-token-fsa ()
  ;; we're starting a new token.
  (let ((char
         (unless *pending-entry*
           (elt *character-buffer-in-use*
                (incf *index-of-next-character*))))
        entry  char-type )
    
    (if *pending-entry*
      (then (setq entry *pending-entry*
                  *pending-entry* nil))
      (setq entry
            (character-entry char)))
    
    (if entry
      (if (eq :punctuation 
              (setq char-type (car entry)))
            
        (do-punctuation (cdr entry))
            
        (else
          ;; it's now likely to be more than one character long, so set up
          ;; pointers to keep track of it
          (setq *category-of-accumulating-token*  (car entry))
          (when (consp (cdr (cdr entry)))
            (break "bad character entry: ~a" entry))
          (continue-token (kcons (cdr entry)
                                 nil)
                          1
                          char-type)))
        
      (announce-out-of-range-character))))


(defun continue-token (accumulated-entries length char-type)
  (declare (special accumulated-entries))
  (when (consp (cdr (car accumulated-entries)))
    (break "bad accumulated entries"))

  (let ((next-entry
         (character-entry (elt *character-buffer-in-use*
                               (incf *index-of-next-character*)))))

    (when (and (numberp next-entry) (= next-entry 0))
      ;; Presumably a character in the Latin-1 range that we don't
      ;; haev an entry for, but keeping this info around just in case
      (push-debug `(,*index-of-next-character* ,*character-buffer-in-use*))
      (let* ((char (elt *character-buffer-in-use* *index-of-next-character*))
             (code-point (char-code char)))
        (push-debug `(,code-point ,char))
        (announce-out-of-range-character)))

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
            (when (consp (cdr (car accumulated-entries)))
              (break "bad element in accumulated-entries"))
                
           (finish-token accumulated-entries length char-type))))
      
      (announce-out-of-range-character))))

(defun create-raw-string (accumulated-entries)
  (format nil "~{~a~}"
          (loop for cc in
                  (reverse accumulated-entries)
                collect
                  (if (eq (car cc) :uppercase)
                      (string-upcase (cdr cc))
                      (string-downcase (cdr cc))))))

(defparameter *collect-init-lowercase* nil)
(defun finish-token (accumulated-entries length char-type)
  (declare (special accumulated-entries))
  (if (> length *word-lookup-buffer-length*)
    (format t "~%~%The token just found:~%  ~s~
               ~%is longer than the word lookup buffer can ~
               accomodate (~A characters).~%It was ignored. ~
               If it should be accepted then you must increase ~
               ~%the buffer size. See the Sparser manual.~%~%"
            "<trunc>"
            *word-lookup-buffer-length*)

    (let ((interning-array *word-lookup-buffer*) ;;local version of ptr
          (index length)
          (capitalization-state :start)
          entry )
      
      (setf (fill-pointer interning-array) length)
      (when (initial-lowercase? accumulated-entries)
        (pushnew (create-raw-string accumulated-entries)
                 *collect-init-lowercase* :test #'equal))
      (loop
        (when (null accumulated-entries)
          (return))
        (when (consp (cdr (car accumulated-entries)))
          (error "bad element in accumulated-entries"))
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

(defun initial-lowercase? (acc)
  (and *collect-init-lowercase*
       (eq (caar (last acc)) :lowercase)
       (loop for a in acc thereis (eq (car a) :uppercase))))
