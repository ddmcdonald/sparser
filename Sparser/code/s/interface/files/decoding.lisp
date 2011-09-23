;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1997  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "decoding"
;;;   Module:  "interface;file ops:"
;;;  Version:  0.1 September 1997

;; initiated 7/90
;; 0.1 (12/7/93 v2.3) upgraded to Sparser logicals for MCL 2.0.
;;     (9/10/97) put calls to position explicitly in cl package
;;      to avoid conflict with the defstruct when running in Franz.

(in-package :sparser)


(defun decode-file-expression/pathname (file-expression)

  ;; called from Analyze-text-from-file, which as a toplevel driver
  ;; might get files described in any number of ways.  This version
  ;; finds the corresponding pathname.  It does not check whether
  ;; the pathname is valid for the operating system being used or
  ;; whether it exists, leaving those operations to other routines
  ;; that know more specifically how it is going to be used.

  (etypecase  file-expression
    (pathname  file-expression)
    (string
     (if (cl:position #\; file-expression)
       ;; then it includes a logical which has to be expanded
       ;; before we have a pathname. We use a routine from LLoad
       (pathname
        (expand-namestring file-expression))

       (pathname file-expression)))))

