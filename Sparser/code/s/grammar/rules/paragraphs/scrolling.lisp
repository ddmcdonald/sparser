;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "scrolling"
;;;   Module:  "grammar;rules:paragraphs:"
;;;  Version:  August 1994

;; initiated 5/3/94 v2.3.  6/9 added pause.  8/2 turned off the
;; two actions as redundant with new versions of section-ending

(in-package :sparser)


;;;-----------------------
;;; provision for a pause
;;;-----------------------

;; n.b.  paragraph actions are executed in the order they appear in
;; the list. Since nothing reverses the list, they're going to execute
;; is the opposite order that they appear in this file.

;(install-after-paragraph-action 'should-we-pause-after-each-paragraph?)

(defparameter *pause-after-each-paragraph* nil
  "Set in the workspace or from the preferences menu.")

(defun should-we-pause-after-each-paragraph? (p)
  (when *pause-after-each-paragraph*
    (put-parse-into-pause "---  After-pargraph pause: ~A  ---~%" 
                          (paragraph-number p))))


;;;--------
;;; driver
;;;--------

;(install-after-paragraph-action 'show-paragraph-end-in-text-view)

(defun show-paragraph-end-in-text-view (p)
  (if *text-out*
    ;; only runs when the workbench is up, which is indicated by this
    ;; view existing.
    (let* ((end-pos (paragraph-end p))
           (end-wb-line (cdr (pos-display-char-index end-pos))))

      ;; check whether the line is visible
      (when (> end-wb-line (+ *wb/top-line-of-text-view*
                              *text-view-page-size*))
        (if (eq end-wb-line *number-of-full-lines-in-text-view*)
          ;; does the paragraph end on the last line that's displayed?
          (then
            ;; leave a blank line at the bottom so it's clear that
            ;; this is as far as we've gotten
            (scroll-to-bottom-of-text-view)
            (scroll-text-view-down-one-line))
          (scroll-text-view-to-show-line end-wb-line))))

    ;;(print-paragraph-# p)
    ))

