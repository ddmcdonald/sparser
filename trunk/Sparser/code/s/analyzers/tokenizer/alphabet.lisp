;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1996,2013  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "alphabet"
;;;   Module:  "analyzers:tokenizer:"
;;;  Version:  0.2 September 2013

;; file created 9/15/92 v2.3, populated 9/21
;; 8/20/93 fixed mistake in entry for #127
;; 0.1 (5/31/96) Started adding cases above 128 for umlauted character and such
;;      using the encoding scheme on the Macintosh
;;     (5/23/13) Added Soft_Hyphen at 173 (Latin-1 char set)
;; 0.2 (9/23/13) Adding characters in the Latin-1 range of UTF-8.
;; 0.3 (2/3/14) Added entry-for-out-of-band-character and friends to
;;      accommodate characters above that. 

(in-package :sparser)

;;;----------------------
;;; populating the array
;;;----------------------

;;---------------- extended (Mac) char set ------------

(defun announce-out-of-range-character ()
  (let* ((character (elt *character-buffer-in-use* *index-of-next-character*))
         (code (char-code character)))

    (break "~%The input stream contains the character \"~A\", whose character code~
            ~%is ~A.  That character is not part of the ascii character set~
            ~%(0 to 127), and has not yet been entered into Sparser's character~
            ~%array.~
            ~%~
            ~%   If the character shouldn't have been in the stream, then you~
            ~%can just remove it and restart. If it does belong there, then ~
            ~%you can extend the character set by executing this form:~
            ~%~
            ~%   (setf (elt *character-dispatch-array* <code>)~
            ~%         `(:alphabetical~
            ~%            . (:lowercase . ,#\<char number> )))~
            ~%~
            ~%where you use the character code of the new character in the~
            ~%spot called '<code>' and the Lisp slashed form for the character~
            ~%in '<char number>'.  For example an \"a\" with an umlaut over~
            ~%it is represented in Lisp as #\\212 and has the character code~
            ~%number 138.
            ~%~
            ~%Note that characters whose codes are larger than ~a, the present ~
            ~%length of the character array, need special handling. See the ~
            ~%function entry-for-out-of-band-character~%"
           character code (length *character-dispatch-array*))))
         

#+:apple
(setf (elt *character-dispatch-array* 138)  ;; #\212  "a" with an umlaut
      `(:alphabetical
        . (:lowercase . ,#\212 )))




;;---------------- standard ascii ----------------

(setf (elt *character-dispatch-array* 0)  ;; #\null
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 1)  ;; #\^A
      '(:punctuation
        . :source-start))  ;; needed for the punctuation, but
                           ;; never appears in the input

(setf (elt *character-dispatch-array* 2)  ;; #\^B
      '(:punctuation
        . :end-of-source))

(setf (elt *character-dispatch-array* 3)  ;; #\Enter  ^C
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 4)  ;; #\^D
      '(:punctuation
        . :end-of-buffer))

(setf (elt *character-dispatch-array* 5)  ;; #\^E
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 6)  ;; #\^F
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 7)  ;; #\Bell  ^G
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 8)  ;; #\Backspace  ^H
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 9)  ;; #\Tab  ^I
      `(:punctuation
        . ,(punctuation-named #\Tab )))

(setf (elt *character-dispatch-array* 10)  ;; #\Linefeed  ^J
      `(:punctuation
        . ,(punctuation-named #\Linefeed )))

(setf (elt *character-dispatch-array* 11)  ;; #\^K
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 12)  ;; #\Page      ^L
      `(:punctuation
        . ,(punctuation-named #\Page )))

(setf (elt *character-dispatch-array* 13)  ;; #\Newline   ^M
      `(:punctuation
        . ,(punctuation-named #\Newline )))

(setf (elt *character-dispatch-array* 14)  ;; #\^N
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 15)  ;; #\^O
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 16)  ;; #\^P
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 17)  ;; #\CommandMark  ^Q
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 18)  ;; #\CheckMark    ^R
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 19)  ;; #\DiamondMark  ^S
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 20)  ;; #\AppleMark    ~T
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 21)  ;; #\^U
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 22)  ;; #\^V
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 23)  ;; #\^W
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 24)  ;; #\^X
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 25)  ;; #\^Y
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 26)  ;; #\^Z
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 27)  ;; #\Clear
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 28)  ;; #\BackArrow
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 29)  ;; #\ForwardArrow
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 30)  ;; #\UpArrow
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 31)  ;; #\DownArrow
      '(:punctuation
        . :meaningless))

(setf (elt *character-dispatch-array* 32)  ;; #\Space
      '(:punctuation
        . :space))

(setf (elt *character-dispatch-array* 33)  ;; #\!
      `(:punctuation
        . ,(punctuation-named #\! )))

(setf (elt *character-dispatch-array* 34)  ;; #\"
      `(:punctuation
        . ,(punctuation-named #\" )))

(setf (elt *character-dispatch-array* 35)  ;; #\#
      `(:punctuation
        . ,(punctuation-named #\# )))

(setf (elt *character-dispatch-array* 36)  ;; #\$
      `(:punctuation
        . ,(punctuation-named #\$ )))

(setf (elt *character-dispatch-array* 37)  ;; #\%
      `(:punctuation
        . ,(punctuation-named #\% )))

(setf (elt *character-dispatch-array* 38)  ;; #\&
      `(:punctuation
        . ,(punctuation-named #\& )))

(setf (elt *character-dispatch-array* 39)  ;; #\'
      `(:punctuation
        . ,(punctuation-named #\' )))

(setf (elt *character-dispatch-array* 40)  ;; #\(
      `(:punctuation
        . ,(punctuation-named #\( )))

(setf (elt *character-dispatch-array* 41)  ;; #\)
      `(:punctuation
        . ,(punctuation-named #\) )))

(setf (elt *character-dispatch-array* 42)  ;; #\*
      `(:punctuation
        . ,(punctuation-named #\* )))

(setf (elt *character-dispatch-array* 43)  ;; #\+
      `(:punctuation
        . ,(punctuation-named #\+ )))

(setf (elt *character-dispatch-array* 44)  ;; #\,
      `(:punctuation
        . ,(punctuation-named #\, )))

(setf (elt *character-dispatch-array* 45)  ;; #\-
      `(:punctuation
        . ,(punctuation-named #\- )))

(setf (elt *character-dispatch-array* 46)  ;; #\.
      `(:punctuation
        . ,(punctuation-named #\. )))

(setf (elt *character-dispatch-array* 47)  ;; #\/
      `(:punctuation
        . ,(punctuation-named #\/ )))

(setf (elt *character-dispatch-array* 48)  ;; #\0
      `(:number
        . (:digit . ,#\0)))

(setf (elt *character-dispatch-array* 49)  ;; #\1
      `(:number
        . (:digit . ,#\1 )))

(setf (elt *character-dispatch-array* 50)  ;; #\2
      `(:number
        . (:digit . ,#\2 )))

(setf (elt *character-dispatch-array* 51)  ;; #\3
      `(:number
        . (:digit . ,#\3 )))

(setf (elt *character-dispatch-array* 52)  ;; #\4
      `(:number
        . (:digit . ,#\4 )))

(setf (elt *character-dispatch-array* 53)  ;; #\5
      `(:number
        . (:digit . ,#\5 )))

(setf (elt *character-dispatch-array* 54)  ;; #\6
      `(:number
        . (:digit . ,#\6 )))

(setf (elt *character-dispatch-array* 55)  ;; #\7
      `(:number
        . (:digit . ,#\7 )))

(setf (elt *character-dispatch-array* 56)  ;; #\8
      `(:number
        . (:digit . ,#\8 )))

(setf (elt *character-dispatch-array* 57)  ;; #\9
      `(:number
        . (:digit . ,#\9 )))

(setf (elt *character-dispatch-array* 58)  ;; #\:
      `(:punctuation
        . ,(punctuation-named #\: )))

(setf (elt *character-dispatch-array* 59)  ;; #\;
      `(:punctuation
        . ,(punctuation-named #\; )))

(setf (elt *character-dispatch-array* 60)  ;; #\<
      `(:punctuation
        . ,(punctuation-named #\< )))

(setf (elt *character-dispatch-array* 61)  ;; #\=
      `(:punctuation
        . ,(punctuation-named #\= )))

(setf (elt *character-dispatch-array* 62)  ;; #\>
      `(:punctuation
        . ,(punctuation-named #\> )))

(setf (elt *character-dispatch-array* 63)  ;; #\?
      `(:punctuation
        . ,(punctuation-named #\? )))

(setf (elt *character-dispatch-array* 64)  ;; #\@
      `(:punctuation
        . ,(punctuation-named #\@ )))

(setf (elt *character-dispatch-array* 65)  ;; #\A
      `(:alphabetical
        . (:uppercase . ,#\a )))

(setf (elt *character-dispatch-array* 66)  ;; #\B
      `(:alphabetical
        . (:uppercase . ,#\b )))

(setf (elt *character-dispatch-array* 67)  ;; #\C
      `(:alphabetical
        . (:uppercase . ,#\c )))

(setf (elt *character-dispatch-array* 68)  ;; #\D
      `(:alphabetical
        . (:uppercase . ,#\d )))

(setf (elt *character-dispatch-array* 69)  ;; #\E
      `(:alphabetical
        . (:uppercase . ,#\e )))

(setf (elt *character-dispatch-array* 70)  ;; #\F
      `(:alphabetical
        . (:uppercase . ,#\f )))

(setf (elt *character-dispatch-array* 71)  ;; #\G
      `(:alphabetical
        . (:uppercase . ,#\g )))

(setf (elt *character-dispatch-array* 72)  ;; #\H
      `(:alphabetical
        . (:uppercase . ,#\h )))

(setf (elt *character-dispatch-array* 73)  ;; #\I
      `(:alphabetical
        . (:uppercase . ,#\i )))

(setf (elt *character-dispatch-array* 74)  ;; #\J
      `(:alphabetical
        . (:uppercase . ,#\j )))

(setf (elt *character-dispatch-array* 75)  ;; #\K
      `(:alphabetical
        . (:uppercase . ,#\k )))

(setf (elt *character-dispatch-array* 76)  ;; #\L
      `(:alphabetical
        . (:uppercase . ,#\l )))

(setf (elt *character-dispatch-array* 77)  ;; #\M
      `(:alphabetical
        . (:uppercase . ,#\m )))

(setf (elt *character-dispatch-array* 78)  ;; #\N
      `(:alphabetical
        . (:uppercase . ,#\n )))

(setf (elt *character-dispatch-array* 79)  ;; #\O
      `(:alphabetical
        . (:uppercase . ,#\o )))

(setf (elt *character-dispatch-array* 80)  ;; #\P
      `(:alphabetical
        . (:uppercase . ,#\p )))

(setf (elt *character-dispatch-array* 81)  ;; #\Q
      `(:alphabetical
        . (:uppercase . ,#\q )))

(setf (elt *character-dispatch-array* 82)  ;; #\R
      `(:alphabetical
        . (:uppercase . ,#\r )))

(setf (elt *character-dispatch-array* 83)  ;; #\S
      `(:alphabetical
        . (:uppercase . ,#\s )))

(setf (elt *character-dispatch-array* 84)  ;; #\T
      `(:alphabetical
        . (:uppercase . ,#\t )))

(setf (elt *character-dispatch-array* 85)  ;; #\U
      `(:alphabetical
        . (:uppercase . ,#\u )))

(setf (elt *character-dispatch-array* 86)  ;; #\V
      `(:alphabetical
        . (:uppercase . ,#\v )))

(setf (elt *character-dispatch-array* 87)  ;; #\W
      `(:alphabetical
        . (:uppercase . ,#\w )))

(setf (elt *character-dispatch-array* 88)  ;; #\X
      `(:alphabetical
        . (:uppercase . ,#\x )))

(setf (elt *character-dispatch-array* 89)  ;; #\Y
      `(:alphabetical
        . (:uppercase . ,#\y )))

(setf (elt *character-dispatch-array* 90)  ;; #\Z
      `(:alphabetical
        . (:uppercase . ,#\z )))

(setf (elt *character-dispatch-array* 91)  ;; #\[
      `(:punctuation
        . ,(punctuation-named #\[ )))

(setf (elt *character-dispatch-array* 92)  ;; #\\
      `(:punctuation
        . ,(punctuation-named #\\ )))

(setf (elt *character-dispatch-array* 93)  ;; #\]
      `(:punctuation
        . ,(punctuation-named #\] )))

(setf (elt *character-dispatch-array* 94)  ;; #\^
      `(:punctuation
        . ,(punctuation-named #\^ )))

(setf (elt *character-dispatch-array* 95)  ;; #\_
      `(:punctuation
        . ,(punctuation-named #\_ )))

(setf (elt *character-dispatch-array* 96)  ;; #\`
      `(:punctuation
        . ,(punctuation-named #\` )))

(setf (elt *character-dispatch-array* 97)  ;; #\a
      `(:alphabetical
        . (:lowercase . ,#\a )))

(setf (elt *character-dispatch-array* 98)  ;; #\b
      `(:alphabetical
        . (:lowercase . ,#\b )))

(setf (elt *character-dispatch-array* 99)  ;; #\c
      `(:alphabetical
        . (:lowercase . ,#\c )))

(setf (elt *character-dispatch-array* 100) ;; #\d
      `(:alphabetical
        . (:lowercase . ,#\d )))

(setf (elt *character-dispatch-array* 101) ;; #\e
      `(:alphabetical
        . (:lowercase . ,#\e )))

(setf (elt *character-dispatch-array* 102) ;; #\f
      `(:alphabetical
        . (:lowercase . ,#\f )))

(setf (elt *character-dispatch-array* 103) ;; #\g
      `(:alphabetical
        . (:lowercase . ,#\g )))

(setf (elt *character-dispatch-array* 104) ;; #\h
      `(:alphabetical
        . (:lowercase . ,#\h )))

(setf (elt *character-dispatch-array* 105) ;; #\i
      `(:alphabetical
        . (:lowercase . ,#\i )))

(setf (elt *character-dispatch-array* 106) ;; #\j
      `(:alphabetical
        . (:lowercase . ,#\j )))

(setf (elt *character-dispatch-array* 107) ;; #\k
      `(:alphabetical
        . (:lowercase . ,#\k )))

(setf (elt *character-dispatch-array* 108) ;; #\l
      `(:alphabetical
        . (:lowercase . ,#\l )))

(setf (elt *character-dispatch-array* 109) ;; #\m
      `(:alphabetical
        . (:lowercase . ,#\m )))

(setf (elt *character-dispatch-array* 110) ;; #\n
      `(:alphabetical
        . (:lowercase . ,#\n )))

(setf (elt *character-dispatch-array* 111) ;; #\o
      `(:alphabetical
        . (:lowercase . ,#\o )))

(setf (elt *character-dispatch-array* 112) ;; #\p
      `(:alphabetical
        . (:lowercase . ,#\p )))

(setf (elt *character-dispatch-array* 113) ;; #\q
      `(:alphabetical
        . (:lowercase . ,#\q )))

(setf (elt *character-dispatch-array* 114) ;; #\r
      `(:alphabetical
        . (:lowercase . ,#\r )))

(setf (elt *character-dispatch-array* 115) ;; #\s
      `(:alphabetical
        . (:lowercase . ,#\s )))

(setf (elt *character-dispatch-array* 116) ;; #\t
      `(:alphabetical
        . (:lowercase . ,#\t )))

(setf (elt *character-dispatch-array* 117) ;; #\u
      `(:alphabetical
        . (:lowercase . ,#\u )))

(setf (elt *character-dispatch-array* 118) ;; #\v
      `(:alphabetical
        . (:lowercase . ,#\v )))

(setf (elt *character-dispatch-array* 119) ;; #\w
      `(:alphabetical
        . (:lowercase . ,#\w )))

(setf (elt *character-dispatch-array* 120) ;; #\x
      `(:alphabetical
        . (:lowercase . ,#\x )))

(setf (elt *character-dispatch-array* 121) ;; #\y
      `(:alphabetical
        . (:lowercase . ,#\y )))

(setf (elt *character-dispatch-array* 122) ;; #\z
      `(:alphabetical
        . (:lowercase . ,#\z )))

(setf (elt *character-dispatch-array* 123) ;; #\{
      `(:punctuation
        . ,(punctuation-named #\{ )))

(setf (elt *character-dispatch-array* 124) ;; #\|
      `(:punctuation
        . ,(punctuation-named #\| )))

(setf (elt *character-dispatch-array* 125) ;; #\}
      `(:punctuation
        . ,(punctuation-named #\} )))

(setf (elt *character-dispatch-array* 126) ;; #\~
      `(:punctuation
        . ,(punctuation-named #\~ )))

(setf (elt *character-dispatch-array* 127) ;; #\Rubout
      `(:punctuation
        . :meaningless))


;;---- selected characters above 127 and below 256

(setf (elt *character-dispatch-array* 160) ;; #\No-break_Space
      '(:punctuation
        . :space))

(setf (elt *character-dispatch-array* 173) ;; #\Soft_Hyphen
      `(:punctuation
        . ,(punctuation-named #\- )))

(setf (elt *character-dispatch-array* 194) ;; #\Latin_Capital_Letter_A_With_Circumflex
      '(:punctuation
        . :space))
;; Loading the utf-8 file into Hemlock it appears as a space, 
;; in Emacs (in whatever it's default is -- Hemloc says its utf-8)
;; is appears as \302\240, and ACL just rolls over it.)
;; in the character buffer itself is appears like it says: as an
;; a with a circumflex over it.
;      `(:alphabetical
;        . (:uppercase . ,#\a )))

;;;-------------------------------------------
;;; Machinery for characters higher than that 
;;;-------------------------------------------

(defparameter *entries-for-out-of-band-characters*
  '((353  ;; #\Latin_Small_Letter_S_With_Caron
     (:alphabetical . (:lowercase . #\s)))
    )
  "If it's not a defparameter, CCL won't let us extend it 
   in a running lisp.")

(defun entry-for-out-of-band-character (char-code)
  (let ((entry
         (cadr (assoc char-code *entries-for-out-of-band-characters*))))
    (unless entry
      (announce-out-of-range-character))
    entry))


