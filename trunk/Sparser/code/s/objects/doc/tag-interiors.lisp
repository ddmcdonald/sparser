;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "tag interiors"
;;;   Module:  "objects;doc:"
;;;  Version:  July 1994

;; initiated 6/3/94 v2.3. Added processing routines 6/6.  Added printer 7/18.

(in-package :sparser)

;;;-----------
;;; predicate
;;;-----------

(defun takes-internal-data (sm)
  (sm-interior-markup sm))


;;;---------------
;;; setup routine
;;;---------------

(defun setup-interior-markup-data (list)

  ;; Called from Populate-section-marker. The return value becomes
  ;; the value of the 'interior-markup' field of the section-marker
  ;; being defined.

  (let ((runtime-function (car list))
        (tag-symbols (cdr list))
        string  label  labels )

    ;; define a polyword for each of the symbols, and reconstruct
    ;; the data 
    (dolist (symbol tag-symbols)
      (setq string (string-downcase (symbol-name symbol)))
      (setq label (resolve-string-to-word/make string))
      (push label labels))

    `(,runtime-function ,@labels)))


;;;---------
;;; printer
;;;---------

(defun list-of-interior-tags/string (list)
  ;; used in :show-annotation trace
  (let ((accumulating-string (format nil "( ")))
    (dolist (polyword list)
      (setq accumulating-string
            (concatenate 'string
                         accumulating-string
                         (format nil "~A "
                                 (pw-pname polyword)))))
    (concatenate 'string
                 accumulating-string ")")))

