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

(defun replace-newline-with-space (string)
  "Simple, single newline case"
  (substitute #\space #\newline string))



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



;;; ======================================================================
;;; Below here taken from KM code under the GNU lesser GPL
;;;   or from Peter Clark's personal utilities.

;;; copied from Denys, and modified...
(defun break-string-at (string break-char)
  (loop
    for start0 = 0 then end
    and end = 0
    while (setq start0 (position-if-not
		       #'(lambda (char) (char= char break-char))
		       string :start start0))
    do    (setq end (position-if
		     #'(lambda (char) (char= char break-char))
		     string :start start0))
    collecting (subseq string start0 end)
    while end))


;;; ======================================================================
;;;		STRING-TO-LIST   
;;; This nifty little utility breaks a string up into its word
;;; and delimeter components. Always starts with delimeter:


;;; (string-to-list '"the cat, sat on t-he m/at ")
;;; ==> ("" "the" " " "cat" ", " "sat" " " "on" " " "t-he" " " "m/at" " ")

;;; ======================================================================

;;; (string-to-words "the cat on the mat") -> ("the" "cat" "on" "the" "mat")
;;; (string-to-words "the cat_n1 is big" :wordchars '(not whitespace)) -> ("the" "cat_n1" "is" "big")
(defun string-to-words (string &key (wordchars 'alphanum))
  (remove-delimeters (string-to-list string :wordchars wordchars)))

;;; USER(3): (string-to-list "the cat sat")
;;; ("" "the" " " "cat" " " "sat")
;;; [1] This is a special-purpose bit of code which makes sure "." within
;;;     a string (eg. "Section 2.2.1") is *not* categorized as a delimeter.
(defun string-to-list (string &key (wordchars 'alphanum))
  (scan-to wordchars string 0 0 (length string)))

(defun scan-to (delimeter string m n nmax)
  (cond ((= n nmax) (list (subseq string m n)))		; reached the end.
	(t (let ( (curr-char (char string n))
		  (next-char (cond ((< (1+ n) nmax) (char string (1+ n)))
				   (t #\ ))) )
	     (cond ((and (is-type curr-char delimeter)
			 (not (and (char= curr-char #\.) 	; [1]
				   (alphanumericp next-char))))
		    (cons (subseq string m n)
			  (scan-to (invert-type delimeter) string n n nmax)))
		   (t (scan-to delimeter string m (1+ n) nmax)))))))


;;; ======================================================================
;;; A bit more generic

;;; (new-scan-to "c:dd>eee:f>" :delimeter-chars '(#\: #\>)) -> ("c" ":" "dd" ">" "eee" ":" "f" ">")
(defun new-scan-to (string &key delimeter-chars)
  (new-scan-to0 delimeter-chars string 0 0 (length string) 'positive))
    
(defun new-scan-to0 (delimeter-chars string m n nmax polarity)
  (cond ((= n nmax) (list (subseq string m n)))		; reached the end.
	(t (let ( (curr-char (char string n)) )
	     (cond ((or (and (eq polarity 'positive) (member curr-char delimeter-chars :test #'char=))
			(and (eq polarity 'negative) (not (member curr-char delimeter-chars :test #'char=))))
		    (cons (subseq string m n)
			  (new-scan-to0 delimeter-chars string n n nmax 
					(cond ((eq polarity 'positive) 'negative) (t 'positive)))))
		   (t (new-scan-to0 delimeter-chars string m (1+ n) nmax polarity)))))))


;;; ======================================================================
;;;	Break up a string into pieces, preserving quoted adjacencies
;;; 	and trimming leading/ending white-space.
;;; ======================================================================

#| (break-up (string '|    aadsf a  " " "" "the cat" 1/2 a"b"c  de"f|))
("aadsf" 
 "a" 
 " " 
 "the cat" 
 "1/2" 
 "a" 
 "b" 
 "c" 
 "de" 
 "f")
|#
;;; NOTE: delim-chars MUSTN'T be a '"'
(defun break-up (string &optional (delim-chars '(#\ )))
  (break-up2 string 0 0 (length string) nil delim-chars))	  ; nil means "not in quotes"

;;; n is the current character (0 = first character)
;;; m is the start of the current 'word' still being read. If n = m then a word was just done.
(defun break-up2 (string m n nmax quotep &optional (delim-chars '(#\ )))
  (cond ((and (= n nmax) (= m n)) nil)			  ; ignore trailing white-space
	((= n nmax) (list (subseq string m n)))		  ; reached the end.
	(t (let ( (curr-char (char string n)) )
	     (cond
               ((and (not quotep)				  ; delimiter following start or a delimeter, so skip
                     (member curr-char delim-chars :test #'char=)
                     (= m n))
                (break-up2 string (1+ n) (1+ n) nmax quotep delim-chars)) ; ... so ignore it
               ((and (not quotep)				  ; found a delimiter
                     (member curr-char delim-chars :test #'char=))
                (cond ((= m n)				  ; nothing between delimeters...
                       (break-up2 string (1+ n) (1+ n) nmax quotep delim-chars))    ; ... so ignore it
                      (t (cons (subseq string m n)
                               (break-up2 string (1+ n) (1+ n) nmax quotep delim-chars)))))
               ((char= curr-char #\") 			  			; found a '"', so toggle quotep 
                (break-up2 string m (1+ n) nmax (not quotep) delim-chars))
               (t (break-up2 string m (1+ n) nmax quotep delim-chars)))))))



;;;------------------------------------------------
;;; from Peter Clark's open-source utilities in KM
;;;------------------------------------------------

(defun break-up-at (string &key delimeter-chars)
  (break-up-at0 delimeter-chars string 0 0 (length string) 'positive))

(defun break-up-at0 (delimeter-chars string m n nmax polarity)
  (cond
    ((= n nmax) (list (subseq string m n)))             ; reached the end.
    (t (let ( (curr-char (char string n)) )
         (cond ((or (and (eq polarity 'positive)
                         (member curr-char delimeter-chars :test #'char=))
                    (and (eq polarity 'negative)
                         (not (member curr-char delimeter-chars :test #'char=))))
                (cons (subseq string m n)
                      (break-up-at0 delimeter-chars string n n nmax
                                    (cond ((eq polarity 'positive) 'negative) (t 'positive)))))
               (t (break-up-at0 delimeter-chars string m (1+ n) nmax polarity)))))))





;;; ======================================================================  
#|
(fold <string> <n>): Break a long string up after approximately <n> characters,
preferring to break at a space if possible.

(fold "the cat is on the mat in the park in the rainrainrainrainrainrainrain" 10)
"the cat
is on the
mat in
the park
in the
rainrainra
inrainrain
rainrain"
|# 
(defun fold (string0 n)
  (declare (special *newline-str*)) ;; n.b. go back to Peter's code and look this up
  (let ((string (trim-whitespace string0)))
    (cond 
     ((<= (length string) n) string)  
     (t (concat-list (insert-delimeter (fold0 string n) *newline-str*))))))
  
(defun fold0 (string n)
  (cond 
   ((<= (length string) n) (list string))
   (t (let ((space-posn (or (position #\  string :end n :from-end t) n)))
	(cons (subseq string 0 space-posn) 
	      (fold0 (remove-leading-whitespace (subseq string space-posn (length string))) n))))))

