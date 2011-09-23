;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1989,1993  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "syntactic sugar"
;;;    module:  "tools"
;;;   Version:   2.0     June 1990

(in-package :sparser)

;;;----------------------------------------
;;; sugar for (concatenate 'string ...)
;;;----------------------------------------

(defmacro string-append ( &rest list-of-strings )
  `(concatenate 'string
                ,@list-of-strings))

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

