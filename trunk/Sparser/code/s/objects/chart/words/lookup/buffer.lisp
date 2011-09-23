;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1991,1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "buffer"
;;;   Module:  "objects;chart:words:lookup:"
;;;  Version:  0.8 September 1993

;; ChangeLog:
;;  0.1  (12/17, v1.6)  Added Display-word-in-lookup-buffer and Zero-
;;       lookup-buffer as part of moving *display-word-stream* to 
;;       Next-token.  Also cleaned up the calls to setup the parameters
;;       that point to the buffer and its length
;;  0.2  (1/7  v1.7)  Removed the two "resolve" routines and moved them
;;       to grammar;forms:resolve since they didn't involve operations
;;       over the lookup buffer.
;;  0.3  (1/15  v1.7)  Changed the size of the word buffer to a thousand
;;       to coddle Philip.
;;  0.4  (11/23 v2.1)  Removed the definition of the package as redundant
;;       with the one in the load file.  Tweeked Word-named to look for
;;       the symbol being bound before taking its value.  Also pulled
;;       the check against Line-feed from the Display-word routine
;;  0.5  (1/3/92 v2.1.1) Added Resize-word-lookup-buffer and reworked the
;;       organization of the parameters so they can be evaled from here
;;  0.6 (2/26/93 v2.3) made the change from string-char to character for
;;       converting to MCL2.0
;;  0.7 (4/16) Blocked out Populate-word-lookup-buffer/buffer-indicies
;;       as probably unused.
;;  0.8 (9/8) tweeked an error msg. and fn.

(in-package :sparser)


;;;-----------------
;;;  the buffer
;;;-----------------

(or (boundp '*word-lookup-buffer-length*)
    (defparameter *word-lookup-buffer-length* 1000))

(or (boundp '*word-lookup-buffer*)
    (defparameter *word-lookup-buffer*
      (make-array *word-lookup-buffer-length*
                  :element-type 'character
                  :fill-pointer 0)))



(defun resize-word-lookup-buffer (&optional
                                  (length *word-lookup-buffer-length*))
  (setq *word-lookup-buffer*
        (make-array length
                    :element-type 'character
                    :fill-pointer 0))
  (setq *word-lookup-buffer-length* length))



(defun display-word-in-lookup-buffer ( &optional
                                         (stream *standard-output*)
                                         word )
  (declare (ignore word))
  (write-string *word-lookup-buffer* stream))


(defun zero-lookup-buffer ()
  (setf (the fixnum (fill-pointer *word-lookup-buffer*)) 0))


;;;-----------------------------------------------
;;; the Lookup operation:  buffer -> word-symbol
;;;-----------------------------------------------

(defun lookup-word-symbol ()
  (find-symbol *word-lookup-buffer* *word-package*))

(defun lookup/make-word-symbol ()
  (or (find-symbol *word-lookup-buffer* *word-package*)
      (intern (copy-seq  ;;to avoid sharing
               *word-lookup-buffer*)
              *word-package*)))

  ;;n.b. tried "unless" as possibly a quicker form than
  ;;"or", but it returns NIL when the symbol already exists
  ;;so it won't do.

(defun make-word-symbol ()
  (intern (copy-seq  ;;to avoid sharing
           *word-lookup-buffer*)
          *word-package*))

;;;---------------------
;;; priming the buffer
;;;---------------------

(defun populate-word-lookup-buffer/string (string)
  (let ((length (length string)))
    (when (> length *word-lookup-buffer-length*)
      (error "The length of the word being defined is longer than the ~
              ~%  limit, ~A characters~
              ~%  To define a word this long you have to increase the ~
              buffer size.~%See the Sparser manual."
             *word-lookup-buffer-length*))
    (setf (the fixnum
               (fill-pointer *word-lookup-buffer*))
          length)
    (replace *word-lookup-buffer* string
             :start1 0  :end1 length
             :start2 0  :end2 length)))


(defun populate-word-lookup-buffer/buffer-indicies
       (start end)
  (declare (ignore start end))
  (break "This function is obsolete - change the threading"))
#|
  ;; Called from the tokenizer. Implicitly we know that the
  ;; buffer the characters are coming from is the one the 
  ;; tokenizer is working from, and we access it as a global
  (let ((length (- end start)))
    (when (> length *word-lookup-buffer-length*)
      (error "A word has just been scanned in the current article ~
              that is longer~%  than the limit, ~A characters~
              ~%  it is being truncated." *word-lookup-buffer-length*)
      (setq length (1- *word-lookup-buffer-length*)
            end    (+ start (- *word-lookup-buffer-length* 2))))

    (setf (the fixnum
               (fill-pointer *word-lookup-buffer*))
          length)
    (replace *word-lookup-buffer*
             (cib-character-array *character-buffer-in-use*)
             :start1 0      :end1 (- end start)
             :start2 start  :end2 end))) |#



;;;----------------------------------
;;; operations over the word buffer
;;;----------------------------------

(proclaim '(inline char/wb))

(defun char/wb (number)
  ;; used by Define-word's subroutines to look at individual characters
  ;; to check capitalization properties and such.
  (aref *word-lookup-buffer* number))

