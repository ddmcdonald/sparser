;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "Feb91"
;;;   Module:  "model;sl:whos news:tests:"
;;;  version:  May 1991      system version 1.8.5

(in-package :CTI-source)


(defun f/tts (article)
  (f article) (tts))

; (wnf/tts "WSJxxx.TXT" "feb0;")

;(length (setq files (files-in-directory "Feb0;")))
;(length (setq files (files-in-directory "Feb1;")))
;(length (setq files (files-in-directory "Feb2;")))
;(length (setq files (files-in-directory "Feb3;")))

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


;;;---------
;;; drivers
;;;---------


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


;;------------------------------------------------
;; driver for going from a pathname
;; accumulating vetted records

(defun r (filename)
  (let* ((source-filename (filename-for-article-source filename)))
    (do-article source-filename)
    :analysis-finished ))


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

