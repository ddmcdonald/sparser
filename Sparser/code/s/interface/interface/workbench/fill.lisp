;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "fill"
;;;   module:  "interface;windows:articles:"
;;;  Version:   1.0  January 1991

;; initiated 1/92, added file version 3/29/92

(in-package :sparser)


;;;--------------------------------------------
;;; recording significant segments of the text
;;;--------------------------------------------

(defvar *significant-text-segments* nil
  "Accumulates records of significant text segments in the article(s)
   under analysis.")


(defun record-significant-text-segment (label
                                        start
                                        end
                                        &rest other-arguments )
  (declare (ignore other-arguments))

  (push (list label start end)
        *significant-text-segments*))


;;;-------------------------------------------------
;;; getting an analyzed text into an article window
;;;-------------------------------------------------

(defun fill-article-window/string (string
                                   window
                                   &key select )
  (write-string string window)
  (ask window (window-update))
  (when select
    (ask window (window-select)))
  :filled )


(defun fill-article-window/file (file window  &key select)
  (read-from-source-to-window file window)
  (ask window (window-update))
  (when select
    (ask window (window-select)))
  :filled )


