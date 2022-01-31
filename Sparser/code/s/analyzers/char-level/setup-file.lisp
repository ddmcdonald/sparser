;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990-1995,2022 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "setup/file"
;;;   Module:  "analyzers;char-level:"
;;;  Version:  January 2022

;; first version 6/90
;; 3.0 (9/25/92 v2.3) redone for new tokenizer
;;     (12/14/94) added Establish-character-source/file/at-filepos. 
;; 3.1 (1/9/95) refined it.

(in-package :sparser)

;;;------------------
;;; Initializations
;;;------------------

(defparameter *filepos-at-beginning-of-source* 0)


(defun establish-character-source/file (pathname &key (ext-format :utf-8))
  "Invoked from analyze-text-from-file and other source drivers to
   pour their souce into the character-buffer."
  (let ((file-stream
         (open-character-source/file pathname :ext-format ext-format)))
    (setq *filepos-at-beginning-of-source* 0)
    (establish-character-source/open-file file-stream)))


(defun establish-character-source/file/at-filepos (pathname
                                                   integer)
  "Called from analyze-text-from-file/at-filepos which hasn't
   been used in decades -- probably not since the work for Apple"
  (let ((file-stream
         (open-character-source/file pathname)))
    (setq *filepos-at-beginning-of-source* integer)
    (file-position file-stream integer)
    (establish-character-source/open-file file-stream)))


(defun establish-character-source/open-file (file-stream)
  (declare (special *open-stream-of-source-characters* *source-exhausted*))
  (let ((buffer *first-character-input-buffer*))

    (setq *open-stream-of-source-characters* file-stream)

    (setq *character-buffer-in-use*    *first-character-input-buffer*)
    (setq *the-next-character-buffer*  *second-character-input-buffer*)
    (setq *buffers-in-transition*      nil)
    (setq *character-buffer-in-use*    buffer)
    (setq *index-of-next-character*    -1)
     
    (setq *length-accumulated-from-prior-buffers* 0)

    (read-chars-into-buffer/maximum-count
     1 buffer file-stream *usable-amount-of-character-buffer*)

    (setf (elt buffer 0) #\^A) ;; source-start

    (setq *source-exhausted* nil)
    (designate-buffer-refilling-routine :file)
    buffer ))


;;;----------------------------------------------------------
;;; refilling the buffer with more characters from the file
;;;----------------------------------------------------------

(defun refill-character-buffer/file (old-buffer)
  (declare (special *open-stream-of-source-characters*))

  (let ((new-buffer *the-next-character-buffer*)
        (file-stream *open-stream-of-source-characters*))
        
    (unless file-stream
      (error "source character-stream closed prematurely"))

    (setq *length-accumulated-from-prior-buffers*
          (+ *length-accumulated-from-prior-buffers*
             *usable-amount-of-character-buffer*))

    (setq *the-next-character-buffer* old-buffer)
    (setq *character-buffer-in-use*   new-buffer)
    (setq *buffers-in-transition* t)
    (setq *character-buffer-in-use*   new-buffer)
    (setq *index-of-next-character*   -1)
     
    (read-chars-into-buffer/maximum-count
     0 new-buffer file-stream *usable-amount-of-character-buffer*)

    new-buffer ))

