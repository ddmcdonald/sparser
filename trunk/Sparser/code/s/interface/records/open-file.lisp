;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "open file"
;;;   Module:  "interface;records:"
;;;  Version:   1.0  January 1991

;; initated in January 1991
;; 1.1 (3/8 v1.8.1)  Extended Construct-db-filename to be able to replace
;;     ".txt" with ".rec"

(in-package :sparser)


;;;----------------------
;;; where the records go
;;;----------------------

(or (boundp '*directory-for-record-files*)
    (defparameter *directory-for-record-files*
                  "hd;CTI:results:records:"
      "A namestring designating the default directory for db records
       output by the analysis engine."))


(defun set-directory-for-db-records (namestring)
  ;; intended to be called from configuration files
  (unless (stringp namestring)
    (error "The directory must be indicated by a string"))
  ;;/// check that it exists
  (setq *directory-for-record-files* namestring))


(defun construct-db-filename ()
  ;; returns a namestring
  (let ((article *article-under-analysis*))
    (cond
     ((stringp article)
      (when (filename-ends-in ".TXT" article)
        (setq article (replace-filename-suffix ".TXT" ".REC" article)))
      (concatenate 'string
                   *directory-for-record-files*
                   article))
     (t (break "The article is being represented as something ~
                other than a string:~%   ~A" article)))))
               


;;;------------------------------------------
;;; opening and closing files for db records
;;;------------------------------------------

(defparameter *send-db-records-to-listener* nil
  "A flag for debugging the printing by sending the characters
   to the Listener rather than writing a file.")

(defvar *open-file-for-db-records* nil
  "A pointer to the file that is opened to hold db records.
   if no file is open, the value is nil.")


(defun open-file-for-db-records ()
  (if *send-db-records-to-listener*
    (setq *db-record-stream* t)
    (let ((namestring (construct-db-filename)))
      (setq *db-record-stream*
            (setq *open-file-for-db-records*
                  (open namestring
                        :direction :output
                        :if-exists :supersede))))))
            

(defun close-file-for-db-records ()
  (when *open-file-for-db-records*
    (close *open-file-for-db-records*)
    (setq *open-file-for-db-records* nil)))

