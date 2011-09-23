;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "article windows"
;;;   module:  "drivers;sinks:"
;;;  Version:  March 1992

;; initiated 1/91

(in-package :sparser)

;;;---------
;;; globals
;;;---------

(defvar *current-article-window* nil)

;;;---------
;;; drivers
;;;---------

(defun w/s (string)
  ;; called from toplevel
  (setq *significant-text-segments* nil)
  (p string)
  (let ((w (make-a-new-article-window)))
    (setq *current-article-window* w
          *significant-text-segments* (nreverse *significant-text-segments*))
    (fill-article-window/string string w :select t)
    (when (y-or-n-p "Walk through the results of the analysis?")
      (walk-analysis))
    :analysis-finished ))



(defun display-source-in-walking-window (source-file)
  ;; called from Do-article
  (let* (source-namestring
         (decoded-source
          (etypecase source-file
            (pathname
             (setq source-namestring (namestring source-file))
             source-file)
            (string
             (setq source-namestring source-file)
             (if (probe-file source-file)
               source-file
               (let ((namestring
                      (concatenate 'string
                                   *source-directory* source-file)))
                 (if (probe-file namestring)
                   namestring
                   (error "No source file for an article named ~a"
                          source-file)))))))
         (w (make-a-new-article-window)))

    (setq *current-article-window* w)
    (ask w (set-window-title source-namestring))
    (fill-article-window/file decoded-source w :select t)))

