;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1989,1993,2011-2017  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "strings"
;;;    module:  "util:"
;;;   Version:  May 2017

;; (3/9/11) Reworked to fit in ddm-util. 7/5 fixed old case in
;; string-append. 2/1/16 added strings-to-hyphenated-string.
;; (3/24/16) Stripped down.

(in-package :ddm-util)

;;;---------------------------------
;;; A more versatile string creator
;;;---------------------------------

(defun string-append (&rest list-of-strings)
  "Sugar for (concatenate 'string ...) that takes characters, strings,
   symbols, or numbers. "
  ;; e.g. (string-append #\A "bc " 32 '| | 'rabbits) => "Abc 32 RABBITS"  
  (with-standard-io-syntax
    (apply #'concatenate 'string (mapcar #'princ-to-string list-of-strings))))


;;;-------------------------------------------------
;;; convenience symbol-creator built on top of that
;;;-------------------------------------------------

(defun s-intern (&rest list-of-strings)
  (intern (apply #'string-append list-of-strings)
          (find-package :sparser)))

;;;--------------------------------------
;;; Lifted from Peter Clark's km-strings
;;;--------------------------------------

(defparameter *whitespace-chars*
  '(#\Space #\Tab #\Newline #\Return #\Linefeed #\Page
    #-ccl #\HAIR_SPACE 
    #\ZERO_WIDTH_SPACE
    #\NO-BREAK_SPACE
    #-ccl #\THIN_SPACE
    #-ccl #\FOUR-PER-EM_SPACE 
    #-ccl #\EN_SPACE ))

;; " a " -> "a "
;; "  " -> ""
(defun remove-leading-whitespace (string) 
  (string-left-trim *whitespace-chars* string))

(defun remove-trailing-whitespace (string) 
  (string-right-trim *whitespace-chars* string))

;;; " a " -> "a"
(defun trim-whitespace (string)
  (string-trim *whitespace-chars* string))

;;; " a " -> t
(defun contains-whitespace (string)
  (some #'(lambda (char) (find char string)) *whitespace-chars*))



(defun spaced-string (list)
  "given a list, probably of words, return a string where
   there is a space between each word. Based on string-append"
  (apply #'string-append (spaced-list list)))

(defun spaced-list (list)
  (cond ((endp list) nil)
	((null (cdr list)) list)
	(t (cons (first list) (cons " " (spaced-list (rest list)))))))


(defun underscore-interleaved-string (list-of-strings)
  "Given a list of strings, return a string that concatenates them
   with underbars between them."
  (let ( interleaved-list )
    (dolist (string list-of-strings)
      (push "_" interleaved-list)
      (push (string-downcase string) interleaved-list))
    (apply #'string-append (nreverse interleaved-list))))


(defun remove-prefix (str prefix)
  (cond ((eq 0 (search prefix str :test #'equal))
         (subseq str (length prefix)))
        (t str)))

(defun remove-suffix (str suffix)
  (let ((rem-length (- (length str)(length suffix))))
    (cond ((and (> rem-length 0) 
                (equal (subseq str rem-length) suffix))
           (subseq str 0 rem-length))
          (t str))))

(defun remove-comma-from-number (string)
  (assert (stringp string))
  (remove #\, string :test #'char=)) ; "3,000" -> "3000"

(defgeneric insert-commas-into-number-string (number)
  (:documentation "Returns a string for the number with commas
 in the usual places every three digits.")
  (:method ((n number)) ;;/// too broad?
    (insert-commas-into-number-string (format nil "~a" n)))
  (:method ((s string)  &aux ac)
    (let* ((decimal-point-pos (position #\. s))
           (decimal-and-after (when decimal-point-pos
                                (subseq s decimal-point-pos)))
           (before-point
            (if decimal-point-pos (subseq s 0 decimal-point-pos) s))
           (triplets (subdivide-into-length-3-strings before-point)))
      (do ((digit-seq (car triplets) (car rest))
           (rest (cdr triplets) (cdr rest)))
          ((null rest) (push digit-seq ac))
        (push digit-seq ac)
        (push "," ac))
      (when decimal-point-pos
        (push decimal-and-after ac))
      (apply #'string-append (nreverse ac)))))
             
(defun subdivide-into-length-3-strings (string)
  "subroutine of insert-commas-into-number--string"
  (let ((remaining string)
        (remaining-length (length string))
        triplets )
    (loop
       (when (<= remaining-length 3)
         (push remaining triplets)
         (return))
       (let ((index (- remaining-length 3)))
         (push (subseq remaining index) triplets)
         (setq remaining (subseq remaining 0 index))
         (setq remaining-length (length remaining))))
    triplets ))

