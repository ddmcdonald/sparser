;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "Feb91"
;;;   Module:  "model;sl:whos news:tests:"
;;;  version:  May 1991      system version 1.8.5

(in-package :sparser)

;;;---------
;;; drivers
;;;---------

(defun f/tts (article)
  (f article) (tts))

;;---------------------------------------------
;; driver for going from a pathname
;; re-routining *standard-output* to a buffer
;; doing a TTS

(defun f/buffer (filename)
  (let* ((analysis-filename (filename-for-article-analysis filename))
         (window (ccl::oneof *fred-window*
                             :file-name analysis-filename
                             :window-show t )))

    (let ((*standard-output* window)
          (article-filename
           (filename-for-article-source filename)))

      (f/tts article-filename))))


(defun f# (number
           &optional (logical-pathname
                      *current-source-pathname*))
  (when *open-stream-of-source-characters*
    (close-character-source-file))
  (let* ((*initial-region* :header)
         (filename (concatenate
                    'string
                    "WSJ"
                    (string-pad-number number 3)
                    ".TXT"))
         (namestring
          (concatenate 'string logical-pathname filename)))

    (format t "~%~%~%analyzing ~A~%~%" namestring)
    (analyze-text-from-file namestring)))


;;------------------------------------------------
;; driver for going from a pathname
;; accumulating vetted records

(defun r (filename)
  (let* ((source-filename (filename-for-article-source filename)))
    (do-article source-filename)
    :analysis-finished ))


;;-------------------------------------------------------------
;; driver for running through a whole set of "files" and being
;;  able to pick up again and repeat cases that break because
;;  of errors.  Writes out the records with each file.

(defun r/all ()
  (if files
    (then
      (unless *current-article*
        (setq *current-article* (pop files)))
      (r *current-article*)
      (write-db-records-for-pending-articles)
      (setq *articles-with-records* nil)

      (setq *current-article* (pop files))
      (r/all))

    :got-through-all-files))



;;--- write a .rec file for a single article
;;
(defun wnff (filename &optional (source "wsj #1;"))
  (setq *article-under-analysis* filename)
  (let ((namestring (concatenate 'string source filename))
        (*display-salient-objects* t)
        (*write-db-records-for-salient-objects* t)
        (*send-db-records-to-listener* nil))
    (f namestring)))

;;------- no files, just screen display of job-event objects
;;
(defun wnf (filename &optional (source "wsj #1;"))
  (setq *article-under-analysis* filename)
  (let ((namestring (concatenate 'string source filename)))
    (f namestring)))

(defun wnf/tts (filename source)
  (wnf filename source)
  (terpri)
  (tts))


;;;-----------
;;; workspace
;;;-----------

; (wnf/tts "WSJxxx.TXT" "feb0;")

(defvar files nil)
;(length (setq files (files-in-directory "Feb0;")))
;(length (setq files (files-in-directory "Feb1;")))
;(length (setq files (files-in-directory "Feb2;")))
;(length (setq files (files-in-directory "Feb3;")))

(defparameter *current-source-pathname* "Feb2;")
;(first (setq files (nthcdr 69 files)))
  ;; where we left off -- Feb2;

;(f/buffer (setq *current-article* (pop files)))
;(f/buffer *current-article*)
;(f/tts *current-article*)
;(f/tts (setq *current-article* (pop files)))
;(f/tts *current-article*)
;(f (setq *current-article* (pop files)))
;(f *current-article*)

;(setq *vet-records* t)
;(r (setq *current-article* (pop files)))
;(r *current-article*)

;(setq *vet-records* t)
;(setq *accept-all-records* t)
;(setq *write-db-records-for-salient-objects* nil)
;(setq *display-word-stream* nil)
;(r/all)


;(setq *display-salient-objects* t)
;(setq *display-salient-objects* nil)
;(setq *write-db-records-for-salient-objects* t)
;(setq *write-db-records-for-salient-objects* nil)

;; this preempts building the file, shunting the same output
;; to the Listener instead.
;(setq *send-db-records-to-listener* t)
;(setq *send-db-records-to-listener* nil)

;(set-directory-for-db-records "hd;CTI:results:REC files:")


;(title-company-is-the-company)
;(use-the-topic-company)
;(company-is-in-e# )
;(title-is-in-e# )
;(use-title/company-given-with-person)

;(set-directory-for-db-records "hd;CTI:results:REC files:")
;(write-db-records-for-pending-articles)
;(close-file-for-db-records)
;(write-db-record-from-saved-item)
;(setq *articles-with-records* nil)


;;;------------------------
;;; constructing pathnames
;;;------------------------

(defparameter *directory-for-article-results*
              "CTI;results:article analyses:")

(defparameter *directory-for-article-source* "Feb2;")


(defun filename-for-article-analysis (article)
  (typecase article
    (string (concatenate 'string
                         *directory-for-article-results* article))
    (pathname
     (file-namestring article))
    (otherwise
     (break/debug "Article has an unexpected data-type: ~A" article)
     :foo )))


(defun filename-for-article-source (article)
  (typecase article
    (string (concatenate 'string
                         *directory-for-article-source* article))
    (pathname  article)
    (otherwise
     (break/debug "Article has an unexpected data-type: ~A" article)
     :foo )))

