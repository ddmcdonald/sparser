;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1989,1993,2011  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "syntactic sugar"
;;;    module:   /Sparser/util/
;;;   Version:   July 2011

;; (3/9/11) Reworked to fit in ddm-util. 7/5 fixed old case in
;; string-append

(in-package :ddm-util)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (export '(string-append
            equivalent-uppercase-symbol-with-hyphens
            string-pad-number)))

;;;----------------------------------------
;;; sugar for (concatenate 'string ...)
;;;----------------------------------------

(defun string-append (&rest list-of-strings)
  (let ( strings )
    (dolist (s list-of-strings)
      (push (typecase s
              (string s)
              (symbol (format nil "~a" (symbol-name s)))
              (number (format nil "~a" s))
              (pathname
               (format nil "~a" (namestring s)))
              (otherwise
               (break "string-append - new type: ~a~%~a"
                      (type-of s) s)))
            strings))
    (apply #'concatenate 'string (nreverse strings))))
;; flush this one
(defun string-from-list (list-of-strings)
  (declare (ignore list-of-strings))
  (format t "~%~%!!! outdated function: replace with 'string-append'"))


;;;-----------------------------------------------------------------
;;;  converting strings to various symbols by various conventions
;;;-----------------------------------------------------------------

(defun equivalent-uppercase-symbol-with-hyphens
       (string
        package)

  (let (accumulated-characters)
    (dolist (c (coerce string 'list))
      (cond ((eq c #\space)
             (push #\- accumulated-characters))
            (t (push c accumulated-characters))))

    (let ((new-string
           (coerce (nreverse accumulated-characters) 'string)))
      (intern new-string package))))


;;;-------------------------
;;;  #<number 2>  ->  "002"
;;;-------------------------

(defun string-pad-number (number length-of-string)
  (let* ((number-string (format nil "~A" number)))
    (cond ((= 3 length-of-string)
           (case (length number-string)
             (1 (concatenate 'string "00" number-string))
             (2 (concatenate 'string "0" number-string))
             (3 number-string)
             (otherwise
              (if (> length-of-string 4)
                (break/debug "Case statement has to be extended ~
                              to accomodate strings of length ~A"
                             length-of-string)
                (break/debug "Number out of range: ~A" number))
              :foo)))
          ((= 4 length-of-string)
           (case (length number-string)
             (1 (concatenate 'string "000" number-string))
             (2 (concatenate 'string "00" number-string))
             (3 (concatenate 'string "0" number-string))
             (4 number-string)
             (otherwise
              (if (> length-of-string 4)
                (break/debug "Case statement has to be extended ~
                              to accomodate strings of length ~A"
                             length-of-string)
                (break/debug "Number out of range: ~A" number))
              :foo)))
          (t
           (break/debug "Extend the routine to handle a length ~
                         of ~A in the final string"
                        length-of-string)
           :foo))))

