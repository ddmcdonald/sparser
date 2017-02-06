;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1996,2013-2016  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "alphabet"
;;;   Module:  "analyzers:tokenizer:"
;;;  Version:  December 2016

;; file created 9/15/92 v2.3, populated 9/21
;; 8/20/93 fixed mistake in entry for #127
;; 0.1 (5/31/96) Started adding cases above 128 for umlauted character and such
;;      using the encoding scheme on the Macintosh
;;     (5/23/13) Added Soft_Hyphen at 173 (Latin-1 char set)
;; 0.2 (9/23/13) Adding characters in the Latin-1 range of UTF-8.
;; 0.3 (2/3/14) Added entry-for-out-of-band-character and friends to
;;      accommodate characters above that.
;;     (2/27/14) Added lowercase greek up to lambda
;;     (6/12/14) added em-dash. Refined the error message.
;;     (4/15/15) added correct entry for a right arrow
;;     (6/5/15) Massive infusion of new characters
;;     (6/20/15) Another one. 



;; NOTE: the encodings of unicode characters are in HEX, so #\+2192 is 5894 decimal
;;  while the alist (*entries-for-out-of-band-characters*) for out-of-band characters
;;  uses decimal encoding, so in *entries-for-out-of-band-characters* we need
;;  (8594 ;; rightwards arrow
;;    (:punctuation . ,(punctuation-named #\U+2192)))
;; 6/28/2015 correct handling of  (8764 (:punctuation . ,(punctuation-named (code-char 8764)))) ;; #\∼



(in-package :sparser)

;;;----------------------
;;; populating the array
;;;----------------------

;;---------------- extended (Mac) char set ------------

(defun announce-out-of-range-character ()
  (let* ((character (elt *character-buffer-in-use* *index-of-next-character*))
         (code (char-code character)))
    (push-debug `(,character ,code))
    (lsp-break "out-of-range-char")
    (break "~%The input stream contains the character \"~A\", whose character code~
            ~%is ~A.  That character is not part of the ascii character set~
            ~%(0 to 127), and has not yet been entered into either Sparser's ~
            ~%extended character array (128 to 255) or its table of 'out of bound'~
            ~%characters. Note that above ascii the character encoding is~
            ~%expected to be unicode, UTF-8.~

            ~%   If the character shouldn't have been in the stream, then you~
            ~%should just remove it and try again. If it does belong there, then ~
            ~%you can extend the character set. If you meta-. on this function~
            ~%that will take you to the file analyzers/tokenizer/alphabet.lisp~
            ~%where you can see examples to copy and read more details.~
            ~%"
           character code (length *character-dispatch-array*))
    ))

#| When you get that error it's likely because the text you're running
has a UTF-8 character that we don't have an entry for yet. The error message
showed you what the character was visually, and identified the code point
that has to be added to the *entries-for-out-of-band-characters* alist at
the bottom of this file. Your job, is to figure out what "normal" character
that corresponds to (e.g. a unicode left-single-quotation-mark corresponds
to an ascii single quote), as least for the purpose of telling the token fsa
how to handle it -- the original character won't be replaced in the token.

This will usually entail a web search. There are lots of unicode web pages.
This is a reasonable choice http://www.fileformat.info/info/unicode/char/search.htm

|#


#+:apple ;; old character set, hopefully OBE
(setf (elt *character-dispatch-array* 138)  ;; #\212  "a" with an umlaut
      `(:alphabetical
        . (:lowercase . ,#\212 )))


#|
Entries are decoded by continue-token which uses the car to determine
the character type (for token boundaries), then the cdr is accumulated
and eventually passed to finish-token where the capitalization information
is noted by the capitalization-fsa and the character is entered into
the buffer that is fed to find-word and becomes part of the word's pname.

(:alphabetical . (:lowercase . ,#\212 ))

|#

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


;;---- selected characters above 127 and below 256 (extended ASCII)

;;; added to cover up bio protein definition problems
(setf (elt *character-dispatch-array* 128) ;; Euro sign
      `(:punctuation . ,(punctuation-named (code-char 128))))

;;; added to cover biopax import issue
(setf (elt *character-dispatch-array* 130) 
      `(:alphabetical . (:lowercase . ,(code-char 130))))

;;; added to cover biopax import issue
(setf (elt *character-dispatch-array* 131) 
      `(:alphabetical . (:lowercase . ,(code-char 131)))) 
;;#\No-break-permitted (?)

(setf (elt *character-dispatch-array* 132) 
      `(:alphabetical . (:lowercase . ,(code-char 132)))) 
;;#\C84 (?)

;;; added to cover biopax import issue
(setf (elt *character-dispatch-array* 142) 
      `(:alphabetical . (:lowercase . ,(code-char 131)))) 
;;#\Single-Shift-Two (?)



;;; added to cover up bio protein definition problems
(setf (elt *character-dispatch-array* 145) ;; left single quotation
      `(:punctuation . ,(punctuation-named #\' )))


;;; added to cover up bio protein definition problems
(setf (elt *character-dispatch-array* 146) ;; right single quotation
      `(:punctuation . ,(punctuation-named #\' )))


;;; added to cover up bio protein definition problems
(setf (elt *character-dispatch-array* 147) ;; left double quotation
      `(:punctuation . ,(punctuation-named #\" )))

;;; added to cover up bio protein definition problems
(setf (elt *character-dispatch-array* 148) ;; right double quotation
      `(:punctuation . ,(punctuation-named #\" )))

;;; added to cover biopax import issue
(setf (elt *character-dispatch-array* 150) 
      `(:alphabetical . (:lowercase . ,(code-char 150)))) 
;;#\Start-Guarded-Area (?)

;;; added to cover biopax import issue
(setf (elt *character-dispatch-array* 157) 
      `(:alphabetical . (:lowercase . ,(code-char 157)))) 
;;#\Operating-System-Command (?)

(setf (elt *character-dispatch-array* 160) ;; #\No-break_Space
  '(:punctuation . :space))

;;; added to cover biopax import issue
(setf (elt *character-dispatch-array* 161) 
      `(:alphabetical . (:lowercase . ,(code-char 161)))) 
;;#\INVERTED_EXCLAMATION_MARKN 

;;; added to cover biopax import issue
(setf (elt *character-dispatch-array* 162) 
      `(:alphabetical . (:lowercase . ,(code-char 162)))) 
;;#\CENT_SIGN 

;;; added to cover biopax import issue
(setf (elt *character-dispatch-array* 164) 
      `(:alphabetical . (:lowercase . ,(code-char 164)))) 
;;#\CURRENCY_SIGN 


;;; added to cover biopax import issue
(setf (elt *character-dispatch-array* 166) 
      `(:alphabetical . (:lowercase . ,(code-char 166)))) 
;;#\BROKEN_BAR 

(setf (elt *character-dispatch-array* 169) ;; #\Copyright_Sign
      `(:punctuation . ,(punctuation-named (code-char 169))))

(setf (elt *character-dispatch-array* 171) 
      `(:punctuation . ,(punctuation-named (code-char 171)))) 
;;#\Acute_Accent ? (this is what it previously said, but if you do code-char of 171 you get the following:
;; #\LEFT-POINTING_DOUBLE_ANGLE_QUOTATION_MARK

;; FOR THE MOMENT -- PROBLEMS WITH LOADING
(setf (elt *character-dispatch-array* 172) 
      `(:punctuation . ,(punctuation-named (code-char 172)))) ;; #\NOT_SIGN

(setf (elt *character-dispatch-array* 173) ;; #\Soft_Hyphen
      `(:punctuation . ,(punctuation-named #\- )))

(setf (elt *character-dispatch-array* 174) ;; #\Registered_Sign
      `(:punctuation . ,(punctuation-named (code-char 174))))

(setf (elt *character-dispatch-array* 176) ;; #\Degree_Sign
      `(:punctuation
        . ,(punctuation-named #\* ))) ;; substitute simple asterisk

(setf (elt *character-dispatch-array* 177) ;; #\Plus-Minus_Sign
      `(:punctuation
        . ,(punctuation-named (code-char 177)))) ;;//////////////////////////////////////// #\±

;;; added to cover up bio protein definition problems
(setf (elt *character-dispatch-array* 178) ;; superscript two or 'squared' - just use #\2
      `(:number . (:digit . ,#\2 )))

;;; added to cover up bio protein definition problems
(setf (elt *character-dispatch-array* 179) ;; superscript three or 'cubed' - just use #\3
       `(:number . (:digit . ,#\3 )))


(setf (elt *character-dispatch-array* 180) ;;#\Acute_Accent
      `(:punctuation . ,(punctuation-named (code-char 180)))) 

(setf (elt *character-dispatch-array* 181) ;; #\Micro_Sign
      '(:punctuation
        . :space)) ;;////////////////////////////////////////

;;; added to cover biopax import issue
(setf (elt *character-dispatch-array* 182) 
      `(:alphabetical . (:lowercase . ,(code-char 182)))) 
;;#\PILCROW_SIGN


(setf (elt *character-dispatch-array* 183) ;; #\Middle_Dot
      `(:punctuation . ,(punctuation-named (code-char 183)))) 


;;; added to cover up bio protein definition problems
(setf (elt *character-dispatch-array* 184) ;; Spacing cedilla (subscript dot)
      `(:punctuation . :space))


;;; added to cover up bio protein definition problems
(setf (elt *character-dispatch-array* 185) ;; superscript one - just use #\1
      `(:number . (:digit . ,#\1 )))



(setf (elt *character-dispatch-array* 186)  ;;#\Masculine_Ordinal_Indicator
      `(:punctuation . ,(punctuation-named (code-char 186))))

(setf (elt *character-dispatch-array* 187)
      `(:punctuation . ,(punctuation-named (code-char 187)))) ;;#\Right-Pointing_Double_Angle_Quotation_Mark

(setf (elt *character-dispatch-array* 188) `(:punctuation . ,(punctuation-named (code-char 188)))) ;;#\Vulgar_Fraction_One_Quarter
(setf (elt *character-dispatch-array* 189) `(:punctuation . ,(punctuation-named (code-char 189)))) ;;#\Vulgar_Fraction_One_Half
(setf (elt *character-dispatch-array* 190) `(:punctuation . ,(punctuation-named (code-char 190)))) ;;#\Vulgar_Fraction_Three_Quarters
(setf (elt *character-dispatch-array* 191) `(:punctuation . ,(punctuation-named (code-char 191)))) ;;#\Inverted_Question_Mark







(setf (elt *character-dispatch-array* 192) `(:alphabetical . (:uppercase . ,(code-char 192)))) ;;#\Latin_Capital_Letter_A_With_Grave
(setf (elt *character-dispatch-array* 193) `(:alphabetical . (:uppercase . ,(code-char 193)))) ;;#\Latin_Capital_Letter_A_With_Acute
(setf (elt *character-dispatch-array* 194) `(:alphabetical . (:uppercase . ,(code-char 194)))) ;;#\Latin_Capital_Letter_A_With_Circumflex
(setf (elt *character-dispatch-array* 195) `(:alphabetical . (:uppercase . ,(code-char 195)))) ;;#\Latin_Capital_Letter_A_With_Tilde
(setf (elt *character-dispatch-array* 196) `(:alphabetical . (:uppercase . ,(code-char 196)))) ;;#\Latin_Capital_Letter_A_With_Diaeresis
(setf (elt *character-dispatch-array* 197) `(:alphabetical . (:uppercase . ,(code-char 197)))) ;;#\Latin_Capital_Letter_A_With_Ring_Above
(setf (elt *character-dispatch-array* 198) `(:alphabetical . (:uppercase . ,(code-char 198)))) ;;#\Latin_Capital_Letter_Ae
(setf (elt *character-dispatch-array* 199) `(:alphabetical . (:uppercase . ,(code-char 199)))) ;;#\Latin_Capital_Letter_C_With_Cedilla
(setf (elt *character-dispatch-array* 200) `(:alphabetical . (:uppercase . ,(code-char 200)))) ;;#\Latin_Capital_Letter_E_With_Grave
(setf (elt *character-dispatch-array* 201) `(:alphabetical . (:uppercase . ,(code-char 201)))) ;;#\Latin_Capital_Letter_E_With_Acute
(setf (elt *character-dispatch-array* 202) `(:alphabetical . (:uppercase . ,(code-char 202)))) ;;#\Latin_Capital_Letter_E_With_Circumflex
(setf (elt *character-dispatch-array* 203) `(:alphabetical . (:uppercase . ,(code-char 203)))) ;;#\Latin_Capital_Letter_E_With_Diaeresis
(setf (elt *character-dispatch-array* 204) `(:alphabetical . (:uppercase . ,(code-char 204)))) ;;#\Latin_Capital_Letter_I_With_Grave
(setf (elt *character-dispatch-array* 205) `(:alphabetical . (:uppercase . ,(code-char 205)))) ;;#\Latin_Capital_Letter_I_With_Acute
(setf (elt *character-dispatch-array* 206) `(:alphabetical . (:uppercase . ,(code-char 206)))) ;;#\Latin_Capital_Letter_I_With_Circumflex
(setf (elt *character-dispatch-array* 207) `(:alphabetical . (:uppercase . ,(code-char 207)))) ;;#\Latin_Capital_Letter_I_With_Diaeresis
(setf (elt *character-dispatch-array* 208) `(:alphabetical . (:uppercase . ,(code-char 208)))) ;;#\Latin_Capital_Letter_Eth
(setf (elt *character-dispatch-array* 209) `(:alphabetical . (:uppercase . ,(code-char 209)))) ;;#\Latin_Capital_Letter_N_With_Tilde
(setf (elt *character-dispatch-array* 210) `(:alphabetical . (:uppercase . ,(code-char 210)))) ;;#\Latin_Capital_Letter_O_With_Grave
(setf (elt *character-dispatch-array* 211) `(:alphabetical . (:uppercase . ,(code-char 211)))) ;;#\Latin_Capital_Letter_O_With_Acute
(setf (elt *character-dispatch-array* 212) `(:alphabetical . (:uppercase . ,(code-char 212)))) ;;#\Latin_Capital_Letter_O_With_Circumflex
(setf (elt *character-dispatch-array* 213) `(:alphabetical . (:uppercase . ,(code-char 213)))) ;;#\Latin_Capital_Letter_O_With_Tilde
(setf (elt *character-dispatch-array* 214) `(:alphabetical . (:uppercase . ,(code-char 214)))) ;;#\Latin_Capital_Letter_O_With_Diaeresis
(setf (elt *character-dispatch-array* 215) `(:punctuation . ,(punctuation-named (code-char 215)))) ;;#\Multiplication_Sign
(setf (elt *character-dispatch-array* 216) `(:alphabetical . (:lowercase . ,(code-char 216)))) ;;#\Latin_Capital_Letter_O_With_Stroke
(setf (elt *character-dispatch-array* 217) `(:alphabetical . (:lowercase . ,(code-char 217)))) ;;#\Latin_Capital_Letter_U_With_Grave
(setf (elt *character-dispatch-array* 218) `(:alphabetical . (:lowercase . ,(code-char 218)))) ;;#\Latin_Capital_Letter_U_With_Acute
(setf (elt *character-dispatch-array* 219) `(:alphabetical . (:lowercase . ,(code-char 219)))) ;;#\Latin_Capital_Letter_U_With_Circumflex
(setf (elt *character-dispatch-array* 220) `(:alphabetical . (:lowercase . ,(code-char 220)))) ;;#\Latin_Capital_Letter_U_With_Diaeresis
(setf (elt *character-dispatch-array* 221) `(:alphabetical . (:lowercase . ,(code-char 221)))) ;;#\Latin_Capital_Letter_Y_With_Acute
(setf (elt *character-dispatch-array* 222) `(:alphabetical . (:lowercase . ,(code-char 222)))) ;;#\Latin_Capital_Letter_Thorn
(setf (elt *character-dispatch-array* 223) `(:alphabetical . (:lowercase . ,(code-char 223)))) ;;#\Latin_Small_Letter_Sharp_S
(setf (elt *character-dispatch-array* 224) `(:alphabetical . (:lowercase . ,(code-char 224)))) ;;#\Latin_Small_Letter_A_With_Grave
(setf (elt *character-dispatch-array* 225) `(:alphabetical . (:lowercase . ,(code-char 225)))) ;; #\Latin_Small_Letter_A_With_Ac
(setf (elt *character-dispatch-array* 226) `(:alphabetical . (:lowercase . ,(code-char 226)))) ;;#\Latin_Small_Letter_A_With_Circumflex
(setf (elt *character-dispatch-array* 227) `(:alphabetical . (:lowercase . ,(code-char 227)))) ;;#\Latin_Small_Letter_A_With_Tilde
(setf (elt *character-dispatch-array* 228) `(:alphabetical . (:lowercase . ,(code-char 228)))) ;;#\Latin_Small_Letter_A_With_Diaeresis
(setf (elt *character-dispatch-array* 229) `(:alphabetical . (:lowercase . ,(code-char 229)))) ;;#\Latin_Small_Letter_A_With_Ring_Above
(setf (elt *character-dispatch-array* 230) `(:alphabetical . (:lowercase . ,(code-char 230)))) ;;#\Latin_Small_Letter_Ae
(setf (elt *character-dispatch-array* 231) `(:alphabetical . (:lowercase . ,(code-char 231)))) ;;#\Latin_Small_Letter_C_With_Cedilla
(setf (elt *character-dispatch-array* 232) `(:alphabetical . (:lowercase . ,(code-char 232)))) ;;#\Latin_Small_Letter_E_With_Grave
(setf (elt *character-dispatch-array* 233) `(:alphabetical . (:lowercase . ,(code-char 233)))) ;;#\Latin_Small_Letter_E_With_Acute
(setf (elt *character-dispatch-array* 234) `(:alphabetical . (:lowercase . ,(code-char 234)))) ;;#\Latin_Small_Letter_E_With_Circumflex
(setf (elt *character-dispatch-array* 235) `(:alphabetical . (:lowercase . ,(code-char 235)))) ;;#\Latin_Small_Letter_E_With_Diaeresis
(setf (elt *character-dispatch-array* 236) `(:alphabetical . (:lowercase . ,(code-char 236)))) ;;#\Latin_Small_Letter_I_With_Grave
(setf (elt *character-dispatch-array* 237) `(:alphabetical . (:lowercase . ,(code-char 237)))) ;;#\Latin_Small_Letter_I_With_Acute
(setf (elt *character-dispatch-array* 238) `(:alphabetical . (:lowercase . ,(code-char 238)))) ;;#\Latin_Small_Letter_I_With_Circumflex
(setf (elt *character-dispatch-array* 239) `(:alphabetical . (:lowercase . ,(code-char 239)))) ;;#\Latin_Small_Letter_I_With_Diaeresis
(setf (elt *character-dispatch-array* 240) `(:alphabetical . (:lowercase . ,(code-char 240)))) ;;#\Latin_Small_Letter_Eth
(setf (elt *character-dispatch-array* 241) `(:alphabetical . (:lowercase . ,(code-char 241)))) ;;#\Latin_Small_Letter_N_With_Tilde
(setf (elt *character-dispatch-array* 242) `(:alphabetical . (:lowercase . ,(code-char 242)))) ;;#\Latin_Small_Letter_O_With_Grave
(setf (elt *character-dispatch-array* 243) `(:alphabetical . (:lowercase . ,(code-char 243)))) ;;#\Latin_Small_Letter_O_With_Acute
(setf (elt *character-dispatch-array* 244) `(:alphabetical . (:lowercase . ,(code-char 244)))) ;;#\Latin_Small_Letter_O_With_Circumflex
(setf (elt *character-dispatch-array* 245) `(:alphabetical . (:lowercase . ,(code-char 245)))) ;;#\Latin_Small_Letter_O_With_Tilde
(setf (elt *character-dispatch-array* 246) `(:alphabetical . (:lowercase . ,(code-char 246)))) ;;#\Latin_Small_Letter_O_With_Diaeresis
(setf (elt *character-dispatch-array* 247) `(:punctuation . ,(punctuation-named (code-char 247)))) ;; #\Division_Sign)))
(setf (elt *character-dispatch-array* 248) `(:alphabetical . (:lowercase . ,(code-char 248)))) ;;#\Latin_Small_Letter_O_With_Stroke
(setf (elt *character-dispatch-array* 249) `(:alphabetical . (:lowercase . ,(code-char 249)))) ;;#\Latin_Small_Letter_U_With_Grave
(setf (elt *character-dispatch-array* 250) `(:alphabetical . (:lowercase . ,(code-char 250)))) ;;#\Latin_Small_Letter_U_With_Acute
(setf (elt *character-dispatch-array* 251) `(:alphabetical . (:lowercase . ,(code-char 251)))) ;;#\Latin_Small_Letter_U_With_Circumflex
(setf (elt *character-dispatch-array* 252) `(:alphabetical . (:lowercase . ,(code-char 252)))) ;;#\Latin_Small_Letter_U_With_Diaeresis
(setf (elt *character-dispatch-array* 253) `(:alphabetical . (:lowercase . ,(code-char 253)))) ;;#\Latin_Small_Letter_Y_With_Acute
(setf (elt *character-dispatch-array* 254) `(:alphabetical . (:lowercase . ,(code-char 254)))) ;;#\Latin_Small_Letter_Thorn
(setf (elt *character-dispatch-array* 255) `(:alphabetical . (:lowercase . ,(code-char 255)))) ;;#\Latin_Small_Letter_Y_With_Diaeresis


;;;-------------------------------------------
;;; Machinery for characters higher than that
;;;-------------------------------------------

;; (code-char 954) => #\Greek_Small_Letter_Kappa
;; (format nil "~x" 954) => 3BA
;; (format nil "~a" (code-char 954)) => "κ"

(defun to-hex (n)
  (format nil "~x" n))


;;; temporarily ignore char reading problem.
(defparameter *entries-for-out-of-band-characters* 
    `(
      (262 #+allegro (:alphabetical (:uppercase . #\C))
      #-allegro (:alphabetical (:uppercase . #\Ć)))    
      (263 ;; #\Latin_Small_Letter_C_With_Acute
       (:alphabetical . (:lowercase . #\c))) ;;"ć", (code = 263)
      (339 ;; "œ" #\Latin_Small_Ligature_Oe
       (:alphabetical . (:lowercase . #\o)))
      (341  ;; #\Latin_Small_Letter_R_With_Acute
       (:alphabetical . (:lowercase . #\Latin_Small_Letter_R_With_Acute)))
      (347  ;; #\Latin_Small_Letter_S_With_Acute
       (:alphabetical . (:lowercase . #\Latin_Small_Letter_S_With_Acute)))
      (347  ;; #\Latin_Small_Letter_S_With_Acute
       (:alphabetical . (:lowercase . #\Latin_Small_Letter_S_With_Acute)))
      (353  ;; #\Latin_Small_Letter_S_With_Caron
       (:alphabetical . (:lowercase . #\s)))
      (400  ;; #\Latin_Capital_Letter_Open_E
       (:alphabetical . (:lowercase . #\s)))
    
      (603 ;; #\Latin_Small_Letter_Open_E
       (:alphabetical . (:lowercase . #\e))) ;;"ɛ", (code = 603)
      (697 ;; "ʹ" #\Modifier_Letter_Prime
       (:punctuation . ,(punctuation-named (code-char 697))))
     
      (710 ;; "ˆ" #\Modifier_Letter_Circumflex_Accent
       (:punctuation . ,(punctuation-named (code-char 710))))
    
      (729 ;; #\Dot_Above
       (:punctuation . ,(punctuation-named (code-char 729)))) ;; #\*)) ;;"˙", (code = 729)
      (730 ;; #\Ring_Above
       (:punctuation . (punctuation-named (code-char 730))))
      (732 ;; #\Small_Tilde
       (:punctuation . (:lowercase . #\~))) ;;"˜"
    
      (769  ;; #\Combining_Acute_Accent
       (:punctuation . ,(punctuation-named #\')))
      (770  ;; #\Latin_Small_Letter_S_With_Acute
       (:alphabetical . (:lowercase . ,(code-char 770))))
    
      (772 ;; #\Combining_Macron
       (:punctuation . ,(punctuation-named (code-char 772))))
    
      (776  ;; #\Combining_Diaeresis
       (:punctuation . ,(punctuation-named (code-char 776))))
    
      (894 (:punctuation . ,(punctuation-named (code-char 894)))) ;;";", (code = 894)
    
      (913 ;; #\Greek_Capital_Letter_Alpha "Α"
       (:greek . (:uppercase . ,(code-char 913))))
      (914 ;; #\Greek_Capital_Letter_Beta "Β"
       (:greek . (:uppercase . ,(code-char 914))))
      (915 ;; #\Greek_Capital_Letter_Gamma "Γ"
       (:greek . (:uppercase . ,(code-char 915))))
      (916 ;; #\Greek_Capital_Letter_Delta "Δ" (:greek . (:uppercase
       ;; . ,(code-char 916)))) redefining as punctuation to see if
       ;; that makes it easier to deal with cases where it's being
       ;; used at the beginning of an item to denote "change" -- as in
       ;; ΔΨ for membrane potential
       (:punctuation . ,(punctuation-named (code-char 916))))
      (917 ;; #\Greek_Capital_Letter_Epsilon
       (:greek . (:uppercase . ,(code-char 917))))
      (918 ;; #\Greek_Capital_Letter_Zeta
       (:greek . (:uppercase . ,(code-char 918))))
      (919 ;; "Η" #\Greek_Capital_Letter_Eta
       (:greek . (:uppercase . ,(code-char 919))))
      (920 ;; #\Greek_Capital_Letter_Theta
       (:greek . (:uppercase . ,(code-char 920))))
      (921 ;; #\Greek_Capital_Letter_Iota
       (:greek . (:uppercase . ,(code-char 921))))
      (922 ;; "Κ" #\Greek_Capital_Letter_Kappa
       (:greek . (:uppercase . ,(code-char 922))))
      (923  ;; "Λ" #\Greek_Capital_Letter_Lambda
       (:greek . (:lowercase . ,(code-char 923))))  
      (924 (:greek . (:uppercase . ,(code-char 924)))) ;;"Μ", (code = 924)
      (925 (:greek . (:uppercase . ,(code-char 925)))) ;;"Ν", (code = 925)
      (926 (:greek . (:uppercase . ,(code-char 926)))) ;;, (code = 926)
      (927 (:greek . (:uppercase . ,(code-char 927)))) ;;, (code = 927)
      (928 (:greek . (:uppercase . ,(code-char 928)))) ;;, (code = 928)
      (929 (:greek . (:uppercase . ,(code-char 929)))) ;;, (code = 929)
      (930 (:greek . (:uppercase . ,(code-char 930)))) ;;, (code = 930)
      (931 ;; "Σ" #\Greek_Capital_Letter_Sigma
       (:greek . (:uppercase . ,(code-char 931))))  
      (932 (:greek . (:uppercase . ,(code-char 932)))) ;;"Τ", (code = 932)
      (933 (:greek . (:uppercase . ,(code-char 933)))) ;;"Υ", (code = 933)
      (934 (:greek . (:uppercase . ,(code-char 934)))) ;;"Φ", (code = 934)
      (935 (:greek . (:uppercase . ,(code-char 935)))) ;;"Χ", (code = 935)
      (936 (:greek . (:uppercase . ,(code-char 936)))) ;;"Ψ", (code = 936)
      (937 (:greek . (:uppercase . ,(code-char 937)))) ;;"Ω", (code = 937)
      (940 ;; #\GREEK_SMALL_LETTER_ALPHA_WITH_TONOS
       (:greek . (:lowercase . ,(code-char 940)))) ;;"ά", (code = 940)
      (945 ;; #\Greek_Small_Letter_Alpha
       (:greek . (:lowercase . ,(code-char 945))))
      (946 ;; #\Greek_Small_Letter_Beta
       (:greek . (:lowercase . ,(code-char 946))))
      (947 ;; #\Greek_Small_Letter_Gamma
       (:greek . (:lowercase . ,(code-char 947))))
      (948 ;; #\Greek_Small_Letter_Delta
       (:greek . (:lowercase . ,(code-char 948))))
      (949 ;; #\Greek_Small_Letter_Epsilon
       (:greek . (:lowercase . ,(code-char 949))))
      (950 ;; #\Greek_Small_Letter_Zeta
       (:greek . (:lowercase . ,(code-char 950))))
      (951 ;; #\Greek_Small_Letter_Eta
       (:greek . (:lowercase . ,(code-char 951))))
      (952 ;; #\Greek_Small_Letter_Theta
       (:greek . (:lowercase . ,(code-char 952))))
      (953 ;; #\Greek_Small_Letter_Iota
       (:greek . (:lowercase . ,(code-char 953))))
      (954 ;; #\Greek_Small_Letter_Kappa  U#03BA
       (:greek . (:lowercase . ,(code-char 954))))
      (955 ;; #\Greek_Small_Letter_Lambda
       (:greek . (:lowercase . ,(code-char 955))))
      (956 ;; #\Greek_Small_Letter_Mu
       (:greek . (:lowercase . ,(code-char 956))))
      (957 ;; "ξ" #\Greek_Small_Letter_Omicron
       (:greek . (:lowercase . ,(code-char 957))))
      (958 ;; "ξ" #\Greek_Small_Letter_Xi
       (:greek . (:lowercase . ,(code-char 958))))
      (959 (:greek . (:lowercase . , (code-char 959)))) ;;"ο", (code = 959)
      (960 (:greek . (:lowercase . , (code-char 960)))) ;;"π", (code = 960)
      (961 (:greek . (:lowercase . , (code-char 961)))) ;;"ρ", (code = 961)
      (963;; #\Greek_Small_Letter_Sigma
       (:greek . (:lowercase . ,(code-char 963))))
      (964 (:greek . (:lowercase . , (code-char 964)))) ;;"τ", (code = 964)
      (965 ;; "υ" #\Greek_Small_Letter_Upsilon
       (:greek . (:lowercase . ,(code-char 965))))
      (966 ;; "φ" #\Greek_Small_Letter_Phi
       (:greek . (:lowercase . ,(code-char 966))))
      (967 (:greek . (:lowercase . , (code-char 967)))) ;;"χ", (code = 967)
      (968 (:greek . (:lowercase . , (code-char 968)))) ;;"ψ", (code = 968)
      (969 (:greek . (:lowercase . , (code-char 969)))) ;;"ω", (code = 969)
      (981 (:greek . (:lowercase . , (code-char 981)))) ;;"ϕ", (code = 981)
      (1013 (:punctuation . ,(punctuation-named (code-char 1013)))) ;; "ϵ"
      (1082 (:alphabetical . (:lowercase . , (code-char 1082)))) ;;"к", (code = 1082) #\CYRILLIC_SMALL_LETTER_KA    
      
      (8194 ;; #\EN_SPACE
       (:punctuation . ,(punctuation-named (code-char 8194)))) ;;" ", (code = 8194)
      
      (8197 ;; #\FOUR-PER-EM_SPACE
       (:punctuation . ;; ,(punctuation-named (code-char 8197)))) ;;" ", (code = 8197)
                     :space))
      (8201 ;; #\THIN_SPACE
       (:punctuation . ;; ,(punctuation-named (code-char 8201)))) ;;" ", (code = 8201)
                  :space)) 
      (8202  ;; #\hair_space
       (:punctuation  ;; ,(punctuation-named (code-char 8202)))) ;;" ", (code = 8202)
        .  :space))
      (8203  ;; #\ZERO_WIDTH_SPACE
       (:punctuation . :space))
      (8208 ;; #\HYPHEN
       (:punctuation . (punctuation-named (code-char 8208)))) ;;"‐"

                                              
    
      (8211  ;; en dash
       (:punctuation . ,(punctuation-named #\- )))
      (8212  ;; em dash, html: &mdash; "—" 
       ;; Doesn't appear to have a symbolic form in ccl 
       ;; (note from Laurel: this should probably be treated
       ;; differently from en dash and hypehn but isn't yet)
       (:punctuation . ,(punctuation-named #\- )))
      (8213 (:punctuation . ,(punctuation-named (code-char 8213)))) ;;"―", (code = 8213)
      
      (8216 ;; left single quote
       (:punctuation . ,(punctuation-named #\' )))
      (8217 ;; right single quote
       (:punctuation . ,(punctuation-named #\' )))
      (8218 (:punctuation . ,(punctuation-named (code-char 8218)))) ;;"‚", (code = 8218)
      
      (8220 ;; left double quote
       (:punctuation . ,(punctuation-named #\" )))
      (8221 ;; right double quote
       (:punctuation . ,(punctuation-named #\" )))
      (8226 (:punctuation . ,(punctuation-named (code-char 8226)))) ;;"•", (code = 8226)
      (8230 (:punctuation . ,(punctuation-named (code-char 8230)))) ;;"…", (code = 8230)
      (8232 (:punctuation . ,(punctuation-named (code-char 8232)))) ;;"", (code = 8232)
      (8240 (:punctuation . ,(punctuation-named (code-char 8240)))) ;;"‰", (code = 8240)
      
      (8242 ;; "prime"
       (:punctuation . ,(or
                         #-allegro
                         (punctuation-named #\U+2032 )
                         #+allegro
                         (punctuation-named (code-char #x2032))
                         (punctuation-named #\'))))
      
      (8243 (:punctuation . ,(punctuation-named (code-char 8243)))) ;;"″", (code = 8243)
      (8260 (:punctuation . ,(punctuation-named (code-char 8260)))) ;; "⁄" #\U+2044
      #-allegro
      (8446 ;;"ℒ", (code = 8446)
       (:punctuation . ,(punctuation-named (code-char 8446))))
      (8451 (:punctuation . ,(punctuation-named (code-char 8451)))) ;;"℃", (code = 8451)
      (8466 (:punctuation . ,(punctuation-named (code-char 8466)))) ;;"ℒ", (code = 8466)
      (8482 (:punctuation . ,(punctuation-named (code-char 8482)))) ;;"™", (code = 8482)
      (8486 ;;"Ω" #\U+2126 
       (:punctuation . ,(punctuation-named (code-char 8486))))
      #-allegro
      (8488
       (:alphabetical . (:uppercase . , #\ℨ)))
      (8491 ;; angstrom symbol
       (:punctuation . ,(punctuation-named (code-char 8491))))
      (8499 ;;"ℳ" #\U+2133
       (:punctuation . ,(punctuation-named (code-char 8499))))
      (8545 (:punctuation . ,(punctuation-named (code-char 8545)))) ;;"Ⅱ", (code = 8545)
      (8592 (:punctuation . ,(punctuation-named (code-char 8592)))) ;;"←" #\left_right_arrow
      (8593 (:punctuation . ,(punctuation-named (code-char 8593)))) ;;"↑", (code = 8593)
      (8594 ;; rightwards arrow
       #-allegro (:punctuation . ,(punctuation-named #\U+2192))
       #+allegro (:punctuation . ,(punctuation-named (code-char #x2192))))      
      (8595 (:punctuation . ,(punctuation-named (code-char 8595)))) ;;"↓", (code = 8595)
      (8596 (:punctuation . ,(punctuation-named (code-char 8596))))

      (8704 (:punctuation . ,(punctuation-named (code-char 8704)))) ;; #|for_all
      (8706 (:punctuation . ,(punctuation-named (code-char 8706)))) ;;"∂", (code = 8706)
      (8707 (:punctuation . ,(punctuation-named (code-char 8707)))) ;;"∃"
      (8710 ;;"∆" #\U+2206
       (:punctuation . ,(punctuation-named (code-char 8710))))
      (8712 ;; "∈" #\U+2208
       (:punctuation . ,(punctuation-named (code-char 8712))))
      (8714 (:punctuation . ,(punctuation-named (code-char 8714)))) ;;"∊", (code = 8714)
      (8721 (:punctuation . ,(punctuation-named (code-char 8721)))) ;;"∑", (code = 8721)
      
      (8722 ;; ""−" #\U+2212 Minus sign
       (:punctuation . ,(punctuation-named #\-)))
      (8727 ;; "∗" #\U+2217
       (:punctuation . ,(punctuation-named (code-char 8727))))
      (8734 (:punctuation . ,(punctuation-named (code-char 8734)))) ;;"∞", (code = 8734)
      (8743 ;; "∧" #\U+2227
       (:punctuation . ,(punctuation-named (code-char 8743))))
      (8745 ;; "∩" #\U+2229
       (:punctuation . ,(punctuation-named (code-char 8745))))
      (8747 (:punctuation . ,(punctuation-named (code-char 8747)))) ;; "∫", (code = 8747)
      
      (8758 ;; ratio  #\U+2236
       (:punctuation . ,(punctuation-named #\:)))
      
      ;; This is tilde in the Mathematical operator section.
      ;; we'll use a regular ascii tilde instead
      (8764 (:punctuation . ,(punctuation-named #\~ ))) ;; #\∼
      (8765 (:punctuation . ,(punctuation-named #\~ ) )) ;; #\REVERSED_TILDE


      (8776 (:punctuation . ,(punctuation-named (code-char 8776)))) ;;"≈", (code = 8776)
      (8781 (:punctuation . ,(punctuation-named (code-char 8781)))) ;;"≍", (code = 8781)
      
      (8800 (:punctuation . ,(punctuation-named (code-char 8800)))) ;;"≠", (code = 8805)    
      (8804 ;;  "≤"
       (:punctuation . ,(punctuation-named (code-char 8804))))
      (8805 (:punctuation . ,(punctuation-named (code-char 8805)))) ;;"≥", (code = 8805)
      (8806 (:punctuation . ,(punctuation-named (code-char 8806)))) ;;"≦", (code = 8806)
      (8811 ;; "≫" #\U+226B
       (:punctuation . ,(punctuation-named (code-char 8811))))
      (8839 ;; "⊇" #\U+2287
       (:punctuation . ,(punctuation-named (code-char 8839))))
      (8900 (:punctuation . ,(punctuation-named (code-char 8900)))) ;; "⋄"
      (8943 (:punctuation . ,(punctuation-named (code-char 8943)))) ;;"⋯", (code = 8943)
      (8900 (:punctuation . ,(punctuation-named (code-char 8900)))) ;;"⋅", (code = 8901)
      (8901 (:punctuation . ,(punctuation-named (code-char 8901)))) ;;"⋅", (code = 8901)
      (8902 (:punctuation . ,(punctuation-named (code-char 8902))))
      (8942 ;; "▪"
       (:punctuation . ,(punctuation-named (code-char 8942))))
      (8943 ;; "⋯"
       (:punctuation . ,(punctuation-named (code-char 8943))))

      (9415 (:punctuation . ,(punctuation-named (code-char 9415)))) ;; "Ⓡ"
      (9633 (:punctuation . ,(punctuation-named (code-char 9633)))) ;; "□"
      (9642 (:punctuation . ,(punctuation-named (code-char 9642)))) ;; "□"
      (9651 ;; "△" #\U+25B3
       (:punctuation . ,(punctuation-named (code-char 9651))))
      (9652 (:punctuation . ,(punctuation-named (code-char 9652)))) ;; "▴"
      (9653 (:punctuation . ,(punctuation-named (code-char 9653)))) ;;"▵", (code = 8901)
      (9658 (:punctuation . ,(punctuation-named (code-char 9658)))) ;;""►", (code = 9658)
      (9633 ;; "□"
       (:punctuation . ,(punctuation-named (code-char 9633))))
      (9663 ;; "▿" #\U+25BF
       (:punctuation . ,(punctuation-named (code-char 9663))))
      (9674 ;; "◊" #\U+25CA
       (:punctuation . ,(punctuation-named (code-char 9674))))
      (9675 ;; "○" #\U+25CB
       (:punctuation . ,(punctuation-named (code-char 9675))))
      (9733 (:punctuation . ,(punctuation-named (code-char 9733)))) ;;"★"
      (9792 ;; "♀" #\U+2640
       (:punctuation . ,(punctuation-named (code-char 9792))))
      (9794 ;; "♂" #\U+2642
       (:punctuation . ,(punctuation-named (code-char 9794))))
      (9830 ;; "♦"
       (:punctuation . ,(punctuation-named (code-char 9830))))
      (10794 ;; "⨪" #\U+2A2A
       (:punctuation . ,(punctuation-named (code-char 10794))))
      
      
      (10877 (:punctuation . ,(punctuation-named (code-char 10877)))) ;;"⩽", (code = 10878)
      (10878 (:punctuation . ,(punctuation-named (code-char 10878)))) ;;"⩾", (code = 10878)
      (64257 (:alphabetical . (:lowercase . , (code-char 64257)))) ;;"ﬁ", (code = 64257)
      (64258 (:alphabetical . (:lowercase . , (code-char 64258)))) ;;"ﬂ", (code = 64258)
      (65288 (:punctuation . ,(punctuation-named (code-char 65288)))) ;;"（", (code = 65288)
      (65293 (:punctuation . ,(punctuation-named (code-char 65293)))) ;;"－", (code = 65293)
      #-allegro
      (119967 (:punctuation . ,(punctuation-named (code-char 119967)))) ;;"풟", (code = 119967)
      
      )
  "If it's not a defparameter, CCL won't let us extend it
   in a running lisp.")


(defparameter *cache-out-of-band-characters* t)

(defun entry-for-out-of-band-character (char-code)
  (let ((entry
         (cadr (assoc char-code *entries-for-out-of-band-characters*))))
    (or entry
        (when *cache-out-of-band-characters*
          (cache-out-of-band-character char-code))
        (announce-out-of-range-character))))

(defvar *new-characters-to-define* nil
  "Holds a list of character points that require definition.
   Needs to be emptied by hand. No provision as yet for storing
   across runs if you don't actually make the definitions.")

(defun cache-out-of-band-character (char-code)
  ;; Called from character-entry when zero is returned or from
  ;; entry-given-char-code for the characters above 256.
  ;; Announce what's happening. Store the character code.
  ;; Return an inoccuous character is its place.
  (let ((character (code-char char-code)))
    (format t "~&~%The character \"~a\", (code = ~a) is not in the alphabet yet.~
                 ~%Using a space in its place.~%~%"
            character char-code)
    (pushnew (cons character char-code)
          *new-characters-to-define*
          :test #'equal)
    '(:punctuation . :space)))



