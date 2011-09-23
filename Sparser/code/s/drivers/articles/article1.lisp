;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "article"
;;;   Module:  "drivers;articles:"
;;;  Version:  February 1991

(in-package :sparser)

;;;---------
;;; globals
;;;---------

(defvar *source-directory* nil
  "Points to the directory logical that is combined with a filename to
   establish what full namestring to use when analyzing articles
   on the basis of explicit files.")

(defvar *article-under-analysis* nil
  "Points to the designator (name) of the article presently being
   analyzed.  May be just a filename.")


;;;--------
;;; driver
;;;--------

(defun do-article (source)
  (catch '*abort-article*
    (let ((decoded-source
           (etypecase source
             (pathname source)
             (string
              (if (probe-file source)
                source
                (let ((namestring
                       (concatenate 'string
                                    *source-directory* source)))
                  (if (probe-file namestring)
                    namestring
                    (error "No source file for an article named ~a"
                           source))))))))

      (setq *article-under-analysis* decoded-source)

      (when *display-article-name*
        (format *standard-output* "~&~%Doing article:~%   ~A~%"
                decoded-source))

      (analyze-text-from-file decoded-source)

      (when *copy-text-to-walking-window*
        (display-source-in-walking-window source))

      (after-analysis/article decoded-source))))

