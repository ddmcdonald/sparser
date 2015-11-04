;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "setup/switch"
;;;   Module:  "chars;"   ("character level processing")
;;;  Version:  1.0 September 1992

;; first version 7/90
;; 1.0 (9/25/92 v2.3) redone for new tokenizer

;; This file provides the mechanism for specializing the character
;; reader Next-char to use either the file or string routines of
;; the character buffer facility as designated by the Establish...
;; routine, which in turn will have been designated by the toplevel
;; driver for sources.

(in-package :sparser)


(defun refill-character-buffer (old-buffer)
  (declare (ignore old-buffer))
  (error "No specific version of this routine has been designated."))


(defun designate-buffer-refilling-routine (keyword)
  ;; called by Establish-character-source/ {file,string}
  (setf (symbol-function 'refill-character-buffer)
        (ecase keyword
          (:string (symbol-function 'refill-character-buffer/string))
          (:file   (symbol-function 'refill-character-buffer/file)))))

