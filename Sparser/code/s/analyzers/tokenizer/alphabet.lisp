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
    ;;(lsp-break "out-of-range-char")
    (error "~%The input stream contains the character \"~A\", whose character code~
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

(setf (elt *character-dispatch-array* 163) 
      `(:alphabetical . (:lowercase . ,(code-char 163))))

;;#\CENT_SIGN 

;;; added to cover biopax import issue
(setf (elt *character-dispatch-array* 164) 
      `(:alphabetical . (:lowercase . ,(code-char 164)))) 
;;#\CURRENCY_SIGN 


;;; added to cover biopax import issue
(setf (elt *character-dispatch-array* 166) 
      `(:alphabetical . (:lowercase . ,(code-char 167))))

(setf (elt *character-dispatch-array* 167) 
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
    `((256 (:alphabetical . (:uppercase .,(code-char 256)))) ;; #\LATIN_CAPITAL_LETTER_A_WITH_MACRON
      (262 #+allegro (:alphabetical (:uppercase . #\C))
      #-allegro (:alphabetical (:uppercase . #\Ć)))    
      (263 ;; #\Latin_Small_Letter_C_With_Acute
       (:alphabetical . (:lowercase . #\c))) ;;"ć", (code = 263)
      (264 (:alphabetical . (:uppercase .,(code-char 264)))) ;;#\LATIN_CAPITAL_LETTER_C_WITH_CIRCUMFLEX
      (268 (:alphabetical . (:uppercase .,(code-char 268)))) ;;#\LATIN_CAPITAL_LETTER_C_WITH_CARON
      (304 (:alphabetical . (:uppercase .,(code-char 304)))) ;;#\LATIN_CAPITAL_LETTER_I_WITH_DOT_ABOVE
      (321 (:alphabetical . (:uppercase .,(code-char 321)))) ;;#\LATIN_CAPITAL_LETTER_L_WITH_STROKE
      (322 (:alphabetical . (:lowercase .,(code-char 322)))) ;;#\LATIN_SMALL_LETTER_L_WITH_STROKE
      (324 (:alphabetical . (:lowercase .,(code-char 324)))) ;;#\LATIN_SMALL_LETTER_N_WITH_ACUTE)
      (337 :alphabetical . (:lowercase .,(code-char 337))) ;; #\LATIN_SMALL_LETTER_O_WITH_DOUBLE_ACUTE
      (378 (:alphabetical . (:lowercase .,(code-char 378)))) ;;#\LATIN_SMALL_LETTER_N_WITH_ACUTE))
      (506 (:alphabetical . (:uppercase .,(code-char 506)))) ;;#\LATIN_CAPITAL_LETTER_A_WITH_RING_ABOVE_AND_ACUTE)))
      
      (339 ;; "œ" #\Latin_Small_Ligature_Oe
       (:alphabetical . (:lowercase . #\o)))
      (341  ;; #\Latin_Small_Letter_R_With_Acute
       (:alphabetical . (:lowercase . #\Latin_Small_Letter_R_With_Acute)))
      (347  ;; #\Latin_Small_Letter_S_With_Acute
       (:alphabetical . (:lowercase . #\Latin_Small_Letter_S_With_Acute)))
      (347  ;; #\Latin_Small_Letter_S_With_Acute
       (:alphabetical . (:lowercase . #\Latin_Small_Letter_S_With_Acute)))
      (352  ;; #\latin_capital_letter_s_with_Caron
       (:alphabetical . (:lowercase . ,(code-char 352))))
      (353  ;; #\Latin_Small_Letter_S_With_Caron
       (:alphabetical . (:lowercase . #\s)))
      (381 (:alphabetical . (:uppercase .,(code-char 381)))) ;; #\LATIN_CAPITAL_LETTER_Z_WITH_CARON
      (382 (:alphabetical . (:uppercase .,(code-char 382)))) ;; #\LATIN_SMALL_LETTER_Z_WITH_CARON
      (400  ;; #\Latin_Capital_Letter_Open_E

       (:alphabetical . (:lowercase . #\s)))
      (448  ;; #\Latin_Capital_Letter_Open_E
       (:alphabetical . (:lowercase . ,(code-char 448))))
      (562 (:alphabetical . (:uppercase .,(code-char 562)))) ;; #\LATIN_CAPITAL_LETTER_Y_WITH_MACRON
      (603 ;; #\Latin_Small_Letter_Open_E
       (:alphabetical . (:lowercase . #\e))) ;;"ɛ", (code = 603)
      (611 (:alphabetical . (:uppercase .,(code-char 611)))) ;; #\LATIN_SMALL_LETTER_GAMMA
      (657 (:alphabetical . (:uppercase .,(code-char 657)))) ;; #\LATIN_SMALL_LETTER_Z_WITH_CURL
      (697 ;; "ʹ" #\Modifier_Letter_Prime
       (:punctuation . ,(punctuation-named (code-char 697))))
      (700 (:alphabetical . (:uppercase .,(code-char 700)))) ;;#\MODIFIER_LETTER_APOSTROPHE
      (773 (:alphabetical . (:uppercase .,(code-char 773)))) ;;#\COMBINING_OVERLINE
      (710 ;; "ˆ" #\Modifier_Letter_Circumflex_Accent
       (:punctuation . ,(punctuation-named (code-char 710))))
    
      (729 ;; #\Dot_Above
       (:punctuation . ,(punctuation-named (code-char 729)))) ;; #\*)) ;;"˙", (code = 729)
      (730 ;; #\Ring_Above
       (:punctuation . (punctuation-named (code-char 730))))
      (732 ;; #\Small_Tilde
       (:punctuation . (:lowercase . #\~))) ;;"˜"
      (771 (:alphabetical . (:uppercase .,(code-char 771)))) ;; #\COMBINING_TILDE
      (803 (:alphabetical . (:uppercase .,(code-char 803)))) ;; #\COMBINING_DOT_BELOW

      (768  ;; #\COMBINING_GRAVE_ACCENT
       (:punctuation . ,(punctuation-named (code-char 768))))
      (769  ;; #\Combining_Acute_Accent
       (:punctuation . ,(punctuation-named (code-char 769))))
      (770  ;; #\Latin_Small_Letter_S_With_Acute
       (:alphabetical . (:lowercase . ,(code-char 770))))
      (771  ;; #\Latin_Small_Letter_S_With_Acute
       (:alphabetical . (:lowercase . ,(code-char 771))))
     
      (772 ;; #\Combining_Macron
       (:punctuation . ,(punctuation-named (code-char 772))))
    
      (776  ;; #\Combining_Diaeresis
       (:punctuation . ,(punctuation-named (code-char 776))))
      
      (834 (:punctuation . ,(punctuation-named (code-char 834)))) ;;";", (code = 894)    
      (894 (:punctuation . ,(punctuation-named (code-char 894)))) ;;";", (code = 894)
      (901 (:alphabetical . (:uppercase .,(code-char 901)))) ;; #\GREEK_DIALYTIKA_TONOS



      (913 ;; #\GREEK_DIALYTIKA_TONOS
       (:greek . (:uppercase . ,(code-char 901))))
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
      (943 (:alphabetical . (:uppercase .,(code-char 943)))) ;; #\GREEK_SMALL_LETTER_IOTA_WITH_TONOS
      (977 (:alphabetical . (:uppercase .,(code-char 977)))) ;; #\GREEK_THETA_SYMBOL
      (978 (:alphabetical . (:uppercase .,(code-char 978)))) ;; #\GREEK_UPSILON_WITH_HOOK_SYMBOL
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
      (962 (:greek . (:lowercase . , (code-char 961)))) ;;"ς", (code = 962)
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
      (976 (:greek . (:lowercase . , (code-char 976)))) ;;#\GREEK_BETA_SYMBOL
      (977 (:greek . (:lowercase . , (code-char 977)))) ;;
      (981 (:greek . (:lowercase . , (code-char 981)))) ;;"ϕ", (code = 981)


      (1013 (:punctuation . ,(punctuation-named (code-char 1013)))) ;; "ϵ"
      (1050  (:alphabetical . (:uppercase .,(code-char 1050)))) ;; #\CYRILLIC_CAPITAL_LETTER_KA
      (1082 (:alphabetical . (:lowercase . , (code-char 1082)))) ;;"к", (code = 1082) #\CYRILLIC_SMALL_LETTER_KA      
      (1092 (:alphabetical . (:uppercase .,(code-char 1092)))) ;; #\CYRILLIC_SMALL_LETTER_EF
      (1092 (:alphabetical . (:lowercase . , (code-char 1092)))) ;;"Ñ", (code = 1092) 
      (1108 (:alphabetical . (:uppercase .,(code-char 1108)))) ;; #\CYRILLIC_SMALL_LETTER_UKRAINIAN_IE      
      
      (8004 (:punctuation . ,(punctuation-named (code-char 8004)))) ;; #\GREEK_SMALL_LETTER_OMICRON_WITH_PSILI_AND_OXIA

      

      (8194 ;; #\EN_SPACE
       (:punctuation . ,(punctuation-named (code-char 8194)))) ;;" ", (code = 8194)



      
      (8195 (:punctuation . ,(punctuation-named (code-char 8195)))) ;;  #\EM_SPACE      
      (8197 ;; #\FOUR-PER-EM_SPACE
       (:punctuation . ;; ,(punctuation-named (code-char 8197)))) ;;" ", (code = 8197)
                     :space))
      (8200 (:punctuation . ,(punctuation-named (code-char 8200)))) ;; #\PUNCTUATION_SPACE
      (8201 ;; #\THIN_SPACE
       (:punctuation . ;; ,(punctuation-named (code-char 8201)))) ;;" ", (code = 8201)
                  :space)) 
      (8202  ;; #\hair_space
       (:punctuation  ;; ,(punctuation-named (code-char 8202)))) ;;" ", (code = 8202)
        .  :space))
      (8203  ;; #\ZERO_WIDTH_SPACE
       (:punctuation . :space))
      (8208 ;; #\HYPHEN
       (:punctuation . ,(punctuation-named (code-char 8208)))) ;;"‐"
      (8209  ;; #\NON-BREAKING_HYPHEN
       (:punctuation . ,(punctuation-named (code-char 8209)))) ;;"‑" 

      (8211  ;; en dash
       (:punctuation . ,(punctuation-named #\- )))
      (8212  ;; em dash, html: &mdash; "—" 
       ;; Doesn't appear to have a symbolic form in ccl 
       ;; (note from Laurel: this should probably be treated
       ;; differently from en dash and hyphen but isn't yet)
       (:punctuation . ,(punctuation-named #\- )))

      (8213 (:punctuation . ,(punctuation-named (code-char 8213)))) ;;"―", (code = 8213)
      (8214 (:punctuation . ,(punctuation-named (code-char 8214)))) ;; #\DOUBLE_VERTICAL_LINE      
      (8216 ;; left single quote
       (:punctuation . ,(punctuation-named #\' )))
      (8217 ;; right single quote
       (:punctuation . ,(punctuation-named #\' )))
      (8218 (:punctuation . ,(punctuation-named (code-char 8218)))) ;;"‚", (code = 8218)
      
      (8220 ;; left double quote
       (:punctuation . ,(punctuation-named #\" )))
      (8221 ;; right double quote
       (:punctuation . ,(punctuation-named #\" )))
      (8222 (:punctuation . ,(punctuation-named (code-char 8222)))) ;; #\DOUBLE_LOW-9_QUOTATION_MARK

      (8224 (:punctuation . ,(punctuation-named (code-char 8224)))) ;; †
      (8225 (:punctuation . ,(punctuation-named (code-char 8225)))) ;; ‡
      (8226 (:punctuation . ,(punctuation-named (code-char 8226)))) ;;"•", (code = 8226)
      (8229 (:punctuation . ,(punctuation-named (code-char 8229)))) ;;#\TWO_DOT_LEADER
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
      (8244 (:punctuation . ,(punctuation-named (code-char 8244)))) ;; #\TRIPLE_PRIME

      (8260 (:punctuation . ,(punctuation-named (code-char 8260)))) ;; "⁄" #\U+2044
      (8364 (:punctuation . ,(punctuation-named (code-char 8364)))) ;; #\EURO_SIGN
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
      (8490 (:punctuation . ,(punctuation-named (code-char 8490)))) ;; #\KELVIN_SIGN

      (8491 ;; angstrom symbol
       (:punctuation . ,(punctuation-named (code-char 8491))))
      (8499 ;;"ℳ" #\U+2133
       (:punctuation . ,(punctuation-named (code-char 8499))))
      (8531 (:punctuation . ,(punctuation-named (code-char 8531)))) ;;"⅓", (code = 8531)
      (8544 (:punctuation . ,(punctuation-named (code-char 8544)))) ;; #\ROMAN_NUMERAL_ONE
      (8545 (:punctuation . ,(punctuation-named (code-char 8545)))) ;;"Ⅱ", (code = 8545)
      (8546 (:punctuation . ,(punctuation-named (code-char 8546)))) ;; #\ROMAN_NUMERAL_THREE
      (8547 (:punctuation . ,(punctuation-named (code-char 8547)))) ;; #\ROMAN_NUMERAL_FOUR
      (8592 (:punctuation . ,(punctuation-named (code-char 8592)))) ;;"←" #\left_right_arrow
      (8593 (:punctuation . ,(punctuation-named (code-char 8593)))) ;;"↑", (code = 8593)
      (8594 ;; rightwards arrow
       #-allegro (:punctuation . ,(punctuation-named #\U+2192))
       #+allegro (:punctuation . ,(punctuation-named (code-char #x2192))))      
      (8595 (:punctuation . ,(punctuation-named (code-char 8595)))) ;;"↓", (code = 8595)
      (8596 (:punctuation . ,(punctuation-named (code-char 8596))))
      (8656 (:punctuation . ,(punctuation-named (code-char 8656)))) ;; #\LEFTWARDS_DOUBLE_ARROW
      (8658 (:punctuation . ,(punctuation-named (code-char 8658)))) ;; #\RIGHTWARDS_DOUBLE_ARROW
      (8660 (:punctuation . ,(punctuation-named (code-char 8660)))) ;; ⇔
      (8709 (:punctuation . ,(punctuation-named (code-char 8709)))) ;; #\EMPTY_SET
      (8729 (:punctuation . ,(punctuation-named (code-char 8729)))) ;; #\BULLET_OPERATOR
      (8733 (:punctuation . ,(punctuation-named (code-char 8733)))) ;; #\PROPORTIONAL_TO
      (8746 (:punctuation . ,(punctuation-named (code-char 8746)))) ;; #\UNION
      (8780 (:punctuation . ,(punctuation-named (code-char 8780)))) ;; #\ALL_EQUAL_TO
      (8711 (:punctuation . ,(punctuation-named (code-char 8711)))) ;; ∇
      (8729 (:punctuation . ,(punctuation-named (code-char 8729)))) ;; ∇
      (8730 (:punctuation . ,(punctuation-named (code-char 8730)))) ;;
      (8733 (:punctuation . ,(punctuation-named (code-char 8733)))) ;; 
      (8759 (:punctuation . ,(punctuation-named (code-char 8759)))) ;; ∷
      (8773 (:punctuation . ,(punctuation-named (code-char 8773)))) ;; ≅
      (8801 (:punctuation . ,(punctuation-named (code-char 8801)))) ;; #\IDENTICAL_TO
      (8807 (:punctuation . ,(punctuation-named (code-char 8807)))) ;; #\GREATER-THAN_OVER_EQUAL_TO
      (8869 (:punctuation . ,(punctuation-named (code-char 8869)))) ;; #\UP_TACK
      (8896 (:punctuation . ,(punctuation-named (code-char 8896)))) ;; #\N-ARY_LOGICAL_AND
      (8921 (:punctuation . ,(punctuation-named (code-char 8921)))) ;; #\VERY_MUCH_GREATER-THAN
      (9001 (:punctuation . ,(punctuation-named (code-char 9001)))) ;; 〈
      (9002 (:punctuation . ,(punctuation-named (code-char 9002)))) ;; 〉
      (9312 (:punctuation . ,(punctuation-named (code-char 9312)))) ;; #\CIRCLED_DIGIT_ONE
      (9313 (:punctuation . ,(punctuation-named (code-char 9313)))) ;; #\CIRCLED_DIGIT_TWO
      (9314 (:punctuation . ,(punctuation-named (code-char 9314)))) ;; #\CIRCLED_DIGIT_THREE
      (9632 (:punctuation . ,(punctuation-named (code-char 9632)))) ;; #\BLACK_SQUARE
      (9650 (:punctuation . ,(punctuation-named (code-char 9650)))) ;; ▲
      (9679 (:punctuation . ,(punctuation-named (code-char 9679)))) ;; ●
      (9839 (:punctuation . ,(punctuation-named (code-char 9839)))) ;; #\MUSIC_SHARP_SIGN
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
      (8733 (:punctuation . ,(punctuation-named (code-char 8733)))) ;;
      (8734 (:punctuation . ,(punctuation-named (code-char 8734)))) ;;"∞", (code = 8734)
      (8739 (:punctuation . ,(punctuation-named (code-char 8739)))) ;;"∣", (code = 8739)
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
      (8810 ;; "≪" #\U+226B
       (:punctuation . ,(punctuation-named (code-char 8810))))
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
      (12354 (:hiragana . (:lowercase .,(CODE-CHAR 12354)))) ;; #\HIRAGANA_LETTER_A)
      (12356 (:hiragana .(:lowercase ., (CODE-CHAR 12356)))); #\HIRAGANA_LETTER_I
      (12360 (:hiragana .(:lowercase ., (CODE-CHAR 12360))));  #\HIRAGANA_LETTER_E)
      (12362 (:hiragana .(:lowercase ., (CODE-CHAR 12362)))); #\HIRAGANA_LETTER_O
      (12363 (:hiragana .(:lowercase ., (CODE-CHAR 12363)))); #\HIRAGANA_LETTER_KA
      (12364 (:hiragana .(:lowercase ., (CODE-CHAR 12364)))); #\HIRAGANA_LETTER_GA
      (12367 (:hiragana .(:lowercase ., (CODE-CHAR 12367)))); #\HIRAGANA_LETTER_KU
      (12369 (:hiragana .(:lowercase ., (CODE-CHAR 12369)))); #\HIRAGANA_LETTER_KE
      (12371 (:hiragana .(:lowercase ., (CODE-CHAR 12371)))); #\HIRAGANA_LETTER_KO
      (12372 (:hiragana .(:lowercase ., (CODE-CHAR 12372)))); #\HIRAGANA_LETTER_GO
      (12373 (:hiragana .(:lowercase ., (CODE-CHAR 12373)))); #\HIRAGANA_LETTER_SA
      (12375 (:hiragana .(:lowercase ., (CODE-CHAR 12375)))); #\HIRAGANA_LETTER_SI
      (12377 (:hiragana .(:lowercase ., (CODE-CHAR 12377)))); #\HIRAGANA_LETTER_SU
      (12383 (:hiragana .(:lowercase ., (CODE-CHAR 12383)))); #\HIRAGANA_LETTER_TA
      (12384 (:hiragana .(:lowercase ., (CODE-CHAR 12384)))); #\HIRAGANA_LETTER_DA
      (12387 (:hiragana .(:lowercase ., (CODE-CHAR 12387)))); #\HIRAGANA_LETTER_SMALL_TU
      (12388 (:hiragana .(:lowercase ., (CODE-CHAR 12388)))); #\HIRAGANA_LETTER_TU
      (12389 (:hiragana .(:lowercase ., (CODE-CHAR 12389)))); #\HIRAGANA_LETTER_DU
      (12390 (:hiragana .(:lowercase ., (CODE-CHAR 12390)))); #\HIRAGANA_LETTER_TE
      (12391 (:hiragana .(:lowercase ., (CODE-CHAR 12391)))); #\HIRAGANA_LETTER_DE
      (12392 (:hiragana .(:lowercase ., (CODE-CHAR 12392)))); #\HIRAGANA_LETTER_TO
      (12394 (:hiragana .(:lowercase ., (CODE-CHAR 12394)))); #\HIRAGANA_LETTER_NA
      (12395 (:hiragana .(:lowercase ., (CODE-CHAR 12395)))); #\HIRAGANA_LETTER_NI
      (12398 (:hiragana .(:lowercase ., (CODE-CHAR 12398)))); #\HIRAGANA_LETTER_NO
      (12399 (:hiragana .(:lowercase ., (CODE-CHAR 12399)))); #\HIRAGANA_LETTER_HA
      (12400 (:hiragana .(:lowercase ., (CODE-CHAR 12400)))); #\HIRAGANA_LETTER_BA
      (12403 (:hiragana .(:lowercase ., (CODE-CHAR 12403)))); #\HIRAGANA_LETTER_BI
      (12414 (:hiragana .(:lowercase ., (CODE-CHAR 12414)))); #\HIRAGANA_LETTER_MA
      (12417 (:hiragana .(:lowercase ., (CODE-CHAR 12417)))); #\HIRAGANA_LETTER_ME
      (12418 (:hiragana .(:lowercase ., (CODE-CHAR 12418)))); #\HIRAGANA_LETTER_MO
      (12424 (:hiragana .(:lowercase ., (CODE-CHAR 12424)))); #\HIRAGANA_LETTER_YO
      (12425 (:hiragana .(:lowercase ., (CODE-CHAR 12425)))); #\HIRAGANA_LETTER_RA
      (12427 (:hiragana .(:lowercase ., (CODE-CHAR 12427)))); #\HIRAGANA_LETTER_RU
      (12428 (:hiragana .(:lowercase ., (CODE-CHAR 12428)))); #\HIRAGANA_LETTER_RE
      (12431 (:hiragana .(:lowercase ., (CODE-CHAR 12431)))); #\HIRAGANA_LETTER_WA
      (12434 (:hiragana .(:lowercase ., (CODE-CHAR 12434)))); #\HIRAGANA_LETTER_WO
      (12435 (:hiragana .(:lowercase ., (CODE-CHAR 12435)))); #\HIRAGANA_LETTER_N
      (12450 (:katakana .(:lowercase ., (CODE-CHAR 12450)))); #\KATAKANA_LETTER_A
      (12452 (:katakana .(:lowercase ., (CODE-CHAR 12452)))); #\KATAKANA_LETTER_I
      (12458 (:katakana .(:lowercase ., (CODE-CHAR 12458)))); #\KATAKANA_LETTER_O
      (12463 (:katakana .(:lowercase ., (CODE-CHAR 12463)))); #\KATAKANA_LETTER_KU
      (12472 (:katakana .(:lowercase ., (CODE-CHAR 12472)))); #\KATAKANA_LETTER_ZI
      (12473 (:katakana .(:lowercase ., (CODE-CHAR 12473)))); #\KATAKANA_LETTER_SU
      (12474 (:katakana .(:lowercase ., (CODE-CHAR 12474)))); #\KATAKANA_LETTER_ZU
      (12479 (:katakana .(:lowercase ., (CODE-CHAR 12479)))); #\KATAKANA_LETTER_TA
      (12483 (:katakana .(:lowercase ., (CODE-CHAR 12483)))); #\KATAKANA_LETTER_SMALL_TU
      (12487 (:katakana .(:lowercase ., (CODE-CHAR 12487)))); #\KATAKANA_LETTER_DE
      (12490 (:katakana .(:lowercase ., (CODE-CHAR 12490)))); #\KATAKANA_LETTER_NA
      (12495 (:katakana .(:lowercase ., (CODE-CHAR 12495)))); #\KATAKANA_LETTER_HA
      (12503 (:katakana .(:lowercase ., (CODE-CHAR 12503)))); #\KATAKANA_LETTER_PU
      (12510 (:katakana .(:lowercase ., (CODE-CHAR 12510)))); #\KATAKANA_LETTER_MA
      (12514 (:katakana .(:lowercase ., (CODE-CHAR 12514)))); #\KATAKANA_LETTER_MO
      (12522 (:katakana .(:lowercase ., (CODE-CHAR 12522)))); #\KATAKANA_LETTER_RI
      (12523 (:katakana .(:lowercase ., (CODE-CHAR 12523)))); #\KATAKANA_LETTER_RU
      (12524 (:katakana .(:lowercase ., (CODE-CHAR 12524)))); #\KATAKANA_LETTER_RE
      (12525 (:katakana .(:lowercase ., (CODE-CHAR 12525)))); #\KATAKANA_LETTER_RO
      (12539 (:katakana .(:lowercase ., (CODE-CHAR 12539)))); #\KATAKANA_MIDDLE_DOT
      (12540 (:katakana .(:lowercase ., (CODE-CHAR 12540)))); #\KATAKANA-HIRAGANA_PROLONGED_SOUND_MARK
      
      ;; following are not yet characterized unicode characters
      (19968 (:alphabetical .(:lowercase .,(CODE-CHAR 19968)))) ;; #\U4E00 
      (19978 (:alphabetical .(:lowercase .,(CODE-CHAR 19978)))) ;; #\U4E0A 
      (19979 (:alphabetical .(:lowercase .,(CODE-CHAR 19979)))) ;; #\U4E0B 
      (19981 (:alphabetical .(:lowercase .,(CODE-CHAR 19981)))) ;; #\U4E0D 
      (19982 (:alphabetical .(:lowercase .,(CODE-CHAR 19982)))) ;; #\U4E0E 
      (19988 (:alphabetical .(:lowercase .,(CODE-CHAR 19988)))) ;; #\U4E14 
      (19990 (:alphabetical .(:lowercase .,(CODE-CHAR 19990)))) ;; #\U4E16 
      (20010 (:alphabetical .(:lowercase .,(CODE-CHAR 20010)))) ;; #\U4E2A 
      (20013 (:alphabetical .(:lowercase .,(CODE-CHAR 20013)))) ;; #\U4E2D 
      (20020 (:alphabetical .(:lowercase .,(CODE-CHAR 20020)))) ;; #\U4E34 
      (20026 (:alphabetical .(:lowercase .,(CODE-CHAR 20026)))) ;; #\U4E3A 
      (20027 (:alphabetical .(:lowercase .,(CODE-CHAR 20027)))) ;; #\U4E3B 
      (20041 (:alphabetical .(:lowercase .,(CODE-CHAR 20041)))) ;; #\U4E49 
      (20043 (:alphabetical .(:lowercase .,(CODE-CHAR 20043)))) ;; #\U4E4B 
      (20063 (:alphabetical .(:lowercase .,(CODE-CHAR 20063)))) ;; #\U4E5F 
      (20083 (:alphabetical .(:lowercase .,(CODE-CHAR 20083)))) ;; #\U4E73 
      (20102 (:alphabetical .(:lowercase .,(CODE-CHAR 20102)))) ;; #\U4E86 
      (20108 (:alphabetical .(:lowercase .,(CODE-CHAR 20108)))) ;; #\U4E8C 
      (20110 (:alphabetical .(:lowercase .,(CODE-CHAR 20110)))) ;; #\U4E8E 
      (20114 (:alphabetical .(:lowercase .,(CODE-CHAR 20114)))) ;; #\U4E92 
      (20122 (:alphabetical .(:lowercase .,(CODE-CHAR 20122)))) ;; #\U4E9A 
      (20123 (:alphabetical .(:lowercase .,(CODE-CHAR 20123)))) ;; #\U4E9B 
      (20132 (:alphabetical .(:lowercase .,(CODE-CHAR 20132)))) ;; #\U4EA4 
      (20154 (:alphabetical .(:lowercase .,(CODE-CHAR 20154)))) ;; #\U4EBA 
      (20182 (:alphabetical .(:lowercase .,(CODE-CHAR 20182)))) ;; #\U4ED6 
      (20195 (:alphabetical .(:lowercase .,(CODE-CHAR 20195)))) ;; #\U4EE3 
      (20197 (:alphabetical .(:lowercase .,(CODE-CHAR 20197)))) ;; #\U4EE5 
      (20219 (:alphabetical .(:lowercase .,(CODE-CHAR 20219)))) ;; #\U4EFB 
      (20253 (:alphabetical .(:lowercase .,(CODE-CHAR 20253)))) ;; #\U4F1D 
      (20272 (:alphabetical .(:lowercase .,(CODE-CHAR 20272)))) ;; #\U4F30 
      (20284 (:alphabetical .(:lowercase .,(CODE-CHAR 20284)))) ;; #\U4F3C 
      (20294 (:alphabetical .(:lowercase .,(CODE-CHAR 20294)))) ;; #\U4F46 
      (20301 (:alphabetical .(:lowercase .,(CODE-CHAR 20301)))) ;; #\U4F4D 
      (20302 (:alphabetical .(:lowercase .,(CODE-CHAR 20302)))) ;; #\U4F4E 
      (20303 (:alphabetical .(:lowercase .,(CODE-CHAR 20303)))) ;; #\U4F4F 
      (20307 (:alphabetical .(:lowercase .,(CODE-CHAR 20307)))) ;; #\U4F53 
      (20309 (:alphabetical .(:lowercase .,(CODE-CHAR 20309)))) ;; #\U4F55 
      (20316 (:alphabetical .(:lowercase .,(CODE-CHAR 20316)))) ;; #\U4F5C 
      (20351 (:alphabetical .(:lowercase .,(CODE-CHAR 20351)))) ;; #\U4F7F 
      (20363 (:alphabetical .(:lowercase .,(CODE-CHAR 20363)))) ;; #\U4F8B 
      (20379 (:alphabetical .(:lowercase .,(CODE-CHAR 20379)))) ;; #\U4F9B 
      (20385 (:alphabetical .(:lowercase .,(CODE-CHAR 20385)))) ;; #\U4FA1 
      (20449 (:alphabetical .(:lowercase .,(CODE-CHAR 20449)))) ;; #\U4FE1 
      (20462 (:alphabetical .(:lowercase .,(CODE-CHAR 20462)))) ;; #\U4FEE 
      (20491 (:alphabetical .(:lowercase .,(CODE-CHAR 20491)))) ;; #\U500B 
      (20516 (:alphabetical .(:lowercase .,(CODE-CHAR 20516)))) ;; #\U5024 
      (20540 (:alphabetical .(:lowercase .,(CODE-CHAR 20540)))) ;; #\U503C 
      (20687 (:alphabetical .(:lowercase .,(CODE-CHAR 20687)))) ;; #\U50CF 
      (20808 (:alphabetical .(:lowercase .,(CODE-CHAR 20808)))) ;; #\U5148 
      (20837 (:alphabetical .(:lowercase .,(CODE-CHAR 20837)))) ;; #\U5165 
      (20840 (:alphabetical .(:lowercase .,(CODE-CHAR 20840)))) ;; #\U5168 
      (20849 (:alphabetical .(:lowercase .,(CODE-CHAR 20849)))) ;; #\U5171 
      (20851 (:alphabetical .(:lowercase .,(CODE-CHAR 20851)))) ;; #\U5173 
      (20854 (:alphabetical .(:lowercase .,(CODE-CHAR 20854)))) ;; #\U5176 
      (20855 (:alphabetical .(:lowercase .,(CODE-CHAR 20855)))) ;; #\U5177 
      (20917 (:alphabetical .(:lowercase .,(CODE-CHAR 20917)))) ;; #\U51B5 
      (20934 (:alphabetical .(:lowercase .,(CODE-CHAR 20934)))) ;; #\U51C6 
      (20943 (:alphabetical .(:lowercase .,(CODE-CHAR 20943)))) ;; #\U51CF 
      (20986 (:alphabetical .(:lowercase .,(CODE-CHAR 20986)))) ;; #\U51FA 
      (20998 (:alphabetical .(:lowercase .,(CODE-CHAR 20998)))) ;; #\U5206 
      (20999 (:alphabetical .(:lowercase .,(CODE-CHAR 20999)))) ;; #\U5207 
      (21010 (:alphabetical .(:lowercase .,(CODE-CHAR 21010)))) ;; #\U5212 
      (21021 (:alphabetical .(:lowercase .,(CODE-CHAR 21021)))) ;; #\U521D 
      (21029 (:alphabetical .(:lowercase .,(CODE-CHAR 21029)))) ;; #\U5225 
      (21035 (:alphabetical .(:lowercase .,(CODE-CHAR 21035)))) ;; #\U522B 
      (21051 (:alphabetical .(:lowercase .,(CODE-CHAR 21051)))) ;; #\U523B 
      (21058 (:alphabetical .(:lowercase .,(CODE-CHAR 21058)))) ;; #\U5242 
      (21069 (:alphabetical .(:lowercase .,(CODE-CHAR 21069)))) ;; #\U524D 
      (21147 (:alphabetical .(:lowercase .,(CODE-CHAR 21147)))) ;; #\U529B 
      (21152 (:alphabetical .(:lowercase .,(CODE-CHAR 21152)))) ;; #\U52A0 
      (21160 (:alphabetical .(:lowercase .,(CODE-CHAR 21160)))) ;; #\U52A8 
      (21161 (:alphabetical .(:lowercase .,(CODE-CHAR 21161)))) ;; #\U52A9 
      (21177 (:alphabetical .(:lowercase .,(CODE-CHAR 21177)))) ;; #\U52B9 
      (21205 (:alphabetical .(:lowercase .,(CODE-CHAR 21205)))) ;; #\U52D5 
      (21270 (:alphabetical .(:lowercase .,(CODE-CHAR 21270)))) ;; #\U5316 
      (21307 (:alphabetical .(:lowercase .,(CODE-CHAR 21307)))) ;; #\U533B 
      (21313 (:alphabetical .(:lowercase .,(CODE-CHAR 21313)))) ;; #\U5341 
      (21319 (:alphabetical .(:lowercase .,(CODE-CHAR 21319)))) ;; #\U5347 
      (21333 (:alphabetical .(:lowercase .,(CODE-CHAR 21333)))) ;; #\U5355 
      (21355 (:alphabetical .(:lowercase .,(CODE-CHAR 21355)))) ;; #\U536B 
      (21361 (:alphabetical .(:lowercase .,(CODE-CHAR 21361)))) ;; #\U5371 
      (21363 (:alphabetical .(:lowercase .,(CODE-CHAR 21363)))) ;; #\U5373 
      (21387 (:alphabetical .(:lowercase .,(CODE-CHAR 21387)))) ;; #\U538B 
      (21435 (:alphabetical .(:lowercase .,(CODE-CHAR 21435)))) ;; #\U53BB 
      (21450 (:alphabetical .(:lowercase .,(CODE-CHAR 21450)))) ;; #\U53CA 
      (21452 (:alphabetical .(:lowercase .,(CODE-CHAR 21452)))) ;; #\U53CC 
      (21453 (:alphabetical .(:lowercase .,(CODE-CHAR 21453)))) ;; #\U53CD 
      (21457 (:alphabetical .(:lowercase .,(CODE-CHAR 21457)))) ;; #\U53D1 
      (21463 (:alphabetical .(:lowercase .,(CODE-CHAR 21463)))) ;; #\U53D7 
      (21464 (:alphabetical .(:lowercase .,(CODE-CHAR 21464)))) ;; #\U53D8 
      (21487 (:alphabetical .(:lowercase .,(CODE-CHAR 21487)))) ;; #\U53EF 
      (21490 (:alphabetical .(:lowercase .,(CODE-CHAR 21490)))) ;; #\U53F2 
      (21495 (:alphabetical .(:lowercase .,(CODE-CHAR 21495)))) ;; #\U53F7 
      (21512 (:alphabetical .(:lowercase .,(CODE-CHAR 21512)))) ;; #\U5408 
      (21516 (:alphabetical .(:lowercase .,(CODE-CHAR 21516)))) ;; #\U540C 
      (21517 (:alphabetical .(:lowercase .,(CODE-CHAR 21517)))) ;; #\U540D 
      (21518 (:alphabetical .(:lowercase .,(CODE-CHAR 21518)))) ;; #\U540E 
      (21521 (:alphabetical .(:lowercase .,(CODE-CHAR 21521)))) ;; #\U5411 
      (21542 (:alphabetical .(:lowercase .,(CODE-CHAR 21542)))) ;; #\U5426 
      (21560 (:alphabetical .(:lowercase .,(CODE-CHAR 21560)))) ;; #\U5438 
      (21578 (:alphabetical .(:lowercase .,(CODE-CHAR 21578)))) ;; #\U544A 
      (21608 (:alphabetical .(:lowercase .,(CODE-CHAR 21608)))) ;; #\U5468 
      (21644 (:alphabetical .(:lowercase .,(CODE-CHAR 21644)))) ;; #\U548C 
      (21766 (:alphabetical .(:lowercase .,(CODE-CHAR 21766)))) ;; #\U5506 
      (21777 (:alphabetical .(:lowercase .,(CODE-CHAR 21777)))) ;; #\U5511 
      (21892 (:alphabetical .(:lowercase .,(CODE-CHAR 21892)))) ;; #\U5584 
      (21931 (:alphabetical .(:lowercase .,(CODE-CHAR 21931)))) ;; #\U55AB 
      (22139 (:alphabetical .(:lowercase .,(CODE-CHAR 22139)))) ;; #\U567B 
      (22238 (:alphabetical .(:lowercase .,(CODE-CHAR 22238)))) ;; #\U56DE 
      (22240 (:alphabetical .(:lowercase .,(CODE-CHAR 22240)))) ;; #\U56E0 
      (22243 (:alphabetical .(:lowercase .,(CODE-CHAR 22243)))) ;; #\U56E3 
      (22260 (:alphabetical .(:lowercase .,(CODE-CHAR 22260)))) ;; #\U56F4 
      (22270 (:alphabetical .(:lowercase .,(CODE-CHAR 22270)))) ;; #\U56FE 
      (22311 (:alphabetical .(:lowercase .,(CODE-CHAR 22311)))) ;; #\U5727 
      (22312 (:alphabetical .(:lowercase .,(CODE-CHAR 22312)))) ;; #\U5728 
      (22320 (:alphabetical .(:lowercase .,(CODE-CHAR 22320)))) ;; #\U5730 
      (22343 (:alphabetical .(:lowercase .,(CODE-CHAR 22343)))) ;; #\U5747 
      (22411 (:alphabetical .(:lowercase .,(CODE-CHAR 22411)))) ;; #\U578B 
      (22522 (:alphabetical .(:lowercase .,(CODE-CHAR 22522)))) ;; #\U57FA 
      (22577 (:alphabetical .(:lowercase .,(CODE-CHAR 22577)))) ;; #\U5831 
      (22633 (:alphabetical .(:lowercase .,(CODE-CHAR 22633)))) ;; #\U5869 
      (22659 (:alphabetical .(:lowercase .,(CODE-CHAR 22659)))) ;; #\U5883 
      (22686 (:alphabetical .(:lowercase .,(CODE-CHAR 22686)))) ;; #\U589E 
      (22768 (:alphabetical .(:lowercase .,(CODE-CHAR 22768)))) ;; #\U58F0 
      (22793 (:alphabetical .(:lowercase .,(CODE-CHAR 22793)))) ;; #\U5909 
      (22806 (:alphabetical .(:lowercase .,(CODE-CHAR 22806)))) ;; #\U5916 
      (22810 (:alphabetical .(:lowercase .,(CODE-CHAR 22810)))) ;; #\U591A 
      (22815 (:alphabetical .(:lowercase .,(CODE-CHAR 22815)))) ;; #\U591F 
      (22823 (:alphabetical .(:lowercase .,(CODE-CHAR 22823)))) ;; #\U5927 
      (22899 (:alphabetical .(:lowercase .,(CODE-CHAR 22899)))) ;; #\U5973 
      (22909 (:alphabetical .(:lowercase .,(CODE-CHAR 22909)))) ;; #\U597D 
      (22949 (:alphabetical .(:lowercase .,(CODE-CHAR 22949)))) ;; #\U59A5 
      (23376 (:alphabetical .(:lowercase .,(CODE-CHAR 23376)))) ;; #\U5B50 
      (23384 (:alphabetical .(:lowercase .,(CODE-CHAR 23384)))) ;; #\U5B58 
      (23398 (:alphabetical .(:lowercase .,(CODE-CHAR 23398)))) ;; #\U5B66 
      (23433 (:alphabetical .(:lowercase .,(CODE-CHAR 23433)))) ;; #\U5B89 
      (23450 (:alphabetical .(:lowercase .,(CODE-CHAR 23450)))) ;; #\U5B9A 
      (23454 (:alphabetical .(:lowercase .,(CODE-CHAR 23454)))) ;; #\U5B9E 
      (23460 (:alphabetical .(:lowercase .,(CODE-CHAR 23460)))) ;; #\U5BA4 
      (23494 (:alphabetical .(:lowercase .,(CODE-CHAR 23494)))) ;; #\U5BC6 
      (23545 (:alphabetical .(:lowercase .,(CODE-CHAR 23545)))) ;; #\U5BF9 
      (23548 (:alphabetical .(:lowercase .,(CODE-CHAR 23548)))) ;; #\U5BFC 
      (23550 (:alphabetical .(:lowercase .,(CODE-CHAR 23550)))) ;; #\U5BFE 
      (23556 (:alphabetical .(:lowercase .,(CODE-CHAR 23556)))) ;; #\U5C04 
      (23569 (:alphabetical .(:lowercase .,(CODE-CHAR 23569)))) ;; #\U5C11 
      (23615 (:alphabetical .(:lowercase .,(CODE-CHAR 23615)))) ;; #\U5C3F 
      (23637 (:alphabetical .(:lowercase .,(CODE-CHAR 23637)))) ;; #\U5C55 
      (24038 (:alphabetical .(:lowercase .,(CODE-CHAR 24038)))) ;; #\U5DE6 
      (24085 (:alphabetical .(:lowercase .,(CODE-CHAR 24085)))) ;; #\U5E15 
      (24112 (:alphabetical .(:lowercase .,(CODE-CHAR 24112)))) ;; #\U5E30 
      (24120 (:alphabetical .(:lowercase .,(CODE-CHAR 24120)))) ;; #\U5E38 
      (24179 (:alphabetical .(:lowercase .,(CODE-CHAR 24179)))) ;; #\U5E73 
      (24180 (:alphabetical .(:lowercase .,(CODE-CHAR 24180)))) ;; #\U5E74 
      (24182 (:alphabetical .(:lowercase .,(CODE-CHAR 24182)))) ;; #\U5E76 
      (24202 (:alphabetical .(:lowercase .,(CODE-CHAR 24202)))) ;; #\U5E8A 
      (24212 (:alphabetical .(:lowercase .,(CODE-CHAR 24212)))) ;; #\U5E94 
      (24230 (:alphabetical .(:lowercase .,(CODE-CHAR 24230)))) ;; #\U5EA6 
      (24320 (:alphabetical .(:lowercase .,(CODE-CHAR 24320)))) ;; #\U5F00 
      (24341 (:alphabetical .(:lowercase .,(CODE-CHAR 24341)))) ;; #\U5F15 
      (24418 (:alphabetical .(:lowercase .,(CODE-CHAR 24418)))) ;; #\U5F62 
      (24433 (:alphabetical .(:lowercase .,(CODE-CHAR 24433)))) ;; #\U5F71 
      (24449 (:alphabetical .(:lowercase .,(CODE-CHAR 24449)))) ;; #\U5F81 
      (24456 (:alphabetical .(:lowercase .,(CODE-CHAR 24456)))) ;; #\U5F88 
      (24471 (:alphabetical .(:lowercase .,(CODE-CHAR 24471)))) ;; #\U5F97 
      (24489 (:alphabetical .(:lowercase .,(CODE-CHAR 24489)))) ;; #\U5FA9 
      (24515 (:alphabetical .(:lowercase .,(CODE-CHAR 24515)))) ;; #\U5FC3 
      (24517 (:alphabetical .(:lowercase .,(CODE-CHAR 24517)))) ;; #\U5FC5 
      (24577 (:alphabetical .(:lowercase .,(CODE-CHAR 24577)))) ;; #\U6001 
      (24615 (:alphabetical .(:lowercase .,(CODE-CHAR 24615)))) ;; #\U6027 
      (24635 (:alphabetical .(:lowercase .,(CODE-CHAR 24635)))) ;; #\U603B 
      (24739 (:alphabetical .(:lowercase .,(CODE-CHAR 24739)))) ;; #\U60A3 
      (24773 (:alphabetical .(:lowercase .,(CODE-CHAR 24773)))) ;; #\U60C5 
      (24847 (:alphabetical .(:lowercase .,(CODE-CHAR 24847)))) ;; #\U610F 
      (25104 (:alphabetical .(:lowercase .,(CODE-CHAR 25104)))) ;; #\U6210 
      (25239 (:alphabetical .(:lowercase .,(CODE-CHAR 25239)))) ;; #\U6297 
      (25253 (:alphabetical .(:lowercase .,(CODE-CHAR 25253)))) ;; #\U62A5 
      (25345 (:alphabetical .(:lowercase .,(CODE-CHAR 25345)))) ;; #\U6301 
      (25351 (:alphabetical .(:lowercase .,(CODE-CHAR 25351)))) ;; #\U6307 
      (25454 (:alphabetical .(:lowercase .,(CODE-CHAR 25454)))) ;; #\U636E 
      (25506 (:alphabetical .(:lowercase .,(CODE-CHAR 25506)))) ;; #\U63A2 
      (25509 (:alphabetical .(:lowercase .,(CODE-CHAR 25509)))) ;; #\U63A5 
      (25552 (:alphabetical .(:lowercase .,(CODE-CHAR 25552)))) ;; #\U63D0 
      (25688 (:alphabetical .(:lowercase .,(CODE-CHAR 25688)))) ;; #\U6458 
      (25903 (:alphabetical .(:lowercase .,(CODE-CHAR 25903)))) ;; #\U652F 
      (25913 (:alphabetical .(:lowercase .,(CODE-CHAR 25913)))) ;; #\U6539 
      (25968 (:alphabetical .(:lowercase .,(CODE-CHAR 25968)))) ;; #\U6570 
      (25972 (:alphabetical .(:lowercase .,(CODE-CHAR 25972)))) ;; #\U6574 
      (26001 (:alphabetical .(:lowercase .,(CODE-CHAR 26001)))) ;; #\U6591 
      (26029 (:alphabetical .(:lowercase .,(CODE-CHAR 26029)))) ;; #\U65AD 
      (26032 (:alphabetical .(:lowercase .,(CODE-CHAR 26032)))) ;; #\U65B0 
      (26041 (:alphabetical .(:lowercase .,(CODE-CHAR 26041)))) ;; #\U65B9 
      (26080 (:alphabetical .(:lowercase .,(CODE-CHAR 26080)))) ;; #\U65E0 
      (26085 (:alphabetical .(:lowercase .,(CODE-CHAR 26085)))) ;; #\U65E5 
      (26089 (:alphabetical .(:lowercase .,(CODE-CHAR 26089)))) ;; #\U65E9 
      (26102 (:alphabetical .(:lowercase .,(CODE-CHAR 26102)))) ;; #\U65F6 
      (26126 (:alphabetical .(:lowercase .,(CODE-CHAR 26126)))) ;; #\U660E 
      (26144 (:alphabetical .(:lowercase .,(CODE-CHAR 26144)))) ;; #\U6620 
      (26159 (:alphabetical .(:lowercase .,(CODE-CHAR 26159)))) ;; #\U662F 
      (26174 (:alphabetical .(:lowercase .,(CODE-CHAR 26174)))) ;; #\U663E 
      (26223 (:alphabetical .(:lowercase .,(CODE-CHAR 26223)))) ;; #\U666F 
      (26354 (:alphabetical .(:lowercase .,(CODE-CHAR 26354)))) ;; #\U66F2 
      (26356 (:alphabetical .(:lowercase .,(CODE-CHAR 26356)))) ;; #\U66F4 
      (26366 (:alphabetical .(:lowercase .,(CODE-CHAR 26366)))) ;; #\U66FE 
      (26368 (:alphabetical .(:lowercase .,(CODE-CHAR 26368)))) ;; #\U6700 
      (26376 (:alphabetical .(:lowercase .,(CODE-CHAR 26376)))) ;; #\U6708 
      (26377 (:alphabetical .(:lowercase .,(CODE-CHAR 26377)))) ;; #\U6709 
      (26399 (:alphabetical .(:lowercase .,(CODE-CHAR 26399)))) ;; #\U671F 
      (26410 (:alphabetical .(:lowercase .,(CODE-CHAR 26410)))) ;; #\U672A 
      (26412 (:alphabetical .(:lowercase .,(CODE-CHAR 26412)))) ;; #\U672C 
      (26441 (:alphabetical .(:lowercase .,(CODE-CHAR 26441)))) ;; #\U6749 
      (26512 (:alphabetical .(:lowercase .,(CODE-CHAR 26512)))) ;; #\U6790 
      (26524 (:alphabetical .(:lowercase .,(CODE-CHAR 26524)))) ;; #\U679C 
      (26597 (:alphabetical .(:lowercase .,(CODE-CHAR 26597)))) ;; #\U67E5 
      (26631 (:alphabetical .(:lowercase .,(CODE-CHAR 26631)))) ;; #\U6807 
      (26681 (:alphabetical .(:lowercase .,(CODE-CHAR 26681)))) ;; #\U6839 
      (26816 (:alphabetical .(:lowercase .,(CODE-CHAR 26816)))) ;; #\U68C0 
      (26908 (:alphabetical .(:lowercase .,(CODE-CHAR 26908)))) ;; #\U691C 
      (27096 (:alphabetical .(:lowercase .,(CODE-CHAR 27096)))) ;; #\U69D8 
      (27161 (:alphabetical .(:lowercase .,(CODE-CHAR 27161)))) ;; #\U6A19 
      (27169 (:alphabetical .(:lowercase .,(CODE-CHAR 27169)))) ;; #\U6A21 
      (27178 (:alphabetical .(:lowercase .,(CODE-CHAR 27178)))) ;; #\U6A2A 
      (27425 (:alphabetical .(:lowercase .,(CODE-CHAR 27425)))) ;; #\U6B21 
      (27491 (:alphabetical .(:lowercase .,(CODE-CHAR 27491)))) ;; #\U6B63 
      (27492 (:alphabetical .(:lowercase .,(CODE-CHAR 27492)))) ;; #\U6B64 
      (27493 (:alphabetical .(:lowercase .,(CODE-CHAR 27493)))) ;; #\U6B65 
      (27507 (:alphabetical .(:lowercase .,(CODE-CHAR 27507)))) ;; #\U6B73 
      (27599 (:alphabetical .(:lowercase .,(CODE-CHAR 27599)))) ;; #\U6BCF 
      (27602 (:alphabetical .(:lowercase .,(CODE-CHAR 27602)))) ;; #\U6BD2 
      (27604 (:alphabetical .(:lowercase .,(CODE-CHAR 27604)))) ;; #\U6BD4 
      (27665 (:alphabetical .(:lowercase .,(CODE-CHAR 27665)))) ;; #\U6C11 
      (27700 (:alphabetical .(:lowercase .,(CODE-CHAR 27700)))) ;; #\U6C34 
      (27809 (:alphabetical .(:lowercase .,(CODE-CHAR 27809)))) ;; #\U6CA1 
      (27835 (:alphabetical .(:lowercase .,(CODE-CHAR 27835)))) ;; #\U6CBB 
      (27841 (:alphabetical .(:lowercase .,(CODE-CHAR 27841)))) ;; #\U6CC1 
      (27861 (:alphabetical .(:lowercase .,(CODE-CHAR 27861)))) ;; #\U6CD5 
      (27880 (:alphabetical .(:lowercase .,(CODE-CHAR 27880)))) ;; #\U6CE8 
      (27979 (:alphabetical .(:lowercase .,(CODE-CHAR 27979)))) ;; #\U6D4B 
      (28082 (:alphabetical .(:lowercase .,(CODE-CHAR 28082)))) ;; #\U6DB2 
      (28508 (:alphabetical .(:lowercase .,(CODE-CHAR 28508)))) ;; #\U6F5C 
      (28608 (:alphabetical .(:lowercase .,(CODE-CHAR 28608)))) ;; #\U6FC0 
      (28814 (:alphabetical .(:lowercase .,(CODE-CHAR 28814)))) ;; #\U708E 
      (28857 (:alphabetical .(:lowercase .,(CODE-CHAR 28857)))) ;; #\U70B9 
      (28895 (:alphabetical .(:lowercase .,(CODE-CHAR 28895)))) ;; #\U70DF 
      (28919 (:alphabetical .(:lowercase .,(CODE-CHAR 28919)))) ;; #\U70F7 
      (29017 (:alphabetical .(:lowercase .,(CODE-CHAR 29017)))) ;; #\U7159 
      (29031 (:alphabetical .(:lowercase .,(CODE-CHAR 29031)))) ;; #\U7167 
      (29289 (:alphabetical .(:lowercase .,(CODE-CHAR 29289)))) ;; #\U7269 
      (29305 (:alphabetical .(:lowercase .,(CODE-CHAR 29305)))) ;; #\U7279 
      (29366 (:alphabetical .(:lowercase .,(CODE-CHAR 29366)))) ;; #\U72B6 
      (29575 (:alphabetical .(:lowercase .,(CODE-CHAR 29575)))) ;; #\U7387 
      (29615 (:alphabetical .(:lowercase .,(CODE-CHAR 29615)))) ;; #\U73AF 
      (29616 (:alphabetical .(:lowercase .,(CODE-CHAR 29616)))) ;; #\U73B0 
      (29664 (:alphabetical .(:lowercase .,(CODE-CHAR 29664)))) ;; #\U73E0 
      (29702 (:alphabetical .(:lowercase .,(CODE-CHAR 29702)))) ;; #\U7406 
      (29872 (:alphabetical .(:lowercase .,(CODE-CHAR 29872)))) ;; #\U74B0 
      (29983 (:alphabetical .(:lowercase .,(CODE-CHAR 29983)))) ;; #\U751F 
      (29992 (:alphabetical .(:lowercase .,(CODE-CHAR 29992)))) ;; #\U7528 
      (30007 (:alphabetical .(:lowercase .,(CODE-CHAR 30007)))) ;; #\U7537 
      (30028 (:alphabetical .(:lowercase .,(CODE-CHAR 30028)))) ;; #\U754C 
      (30064 (:alphabetical .(:lowercase .,(CODE-CHAR 30064)))) ;; #\U7570 
      (30097 (:alphabetical .(:lowercase .,(CODE-CHAR 30097)))) ;; #\U7591 
      (30103 (:alphabetical .(:lowercase .,(CODE-CHAR 30103)))) ;; #\U7597 
      (30149 (:alphabetical .(:lowercase .,(CODE-CHAR 30149)))) ;; #\U75C5 
      (30151 (:alphabetical .(:lowercase .,(CODE-CHAR 30151)))) ;; #\U75C7 
      (30244 (:alphabetical .(:lowercase .,(CODE-CHAR 30244)))) ;; #\U7624 
      (30284 (:alphabetical .(:lowercase .,(CODE-CHAR 30284)))) ;; #\U764C 
      (30333 (:alphabetical .(:lowercase .,(CODE-CHAR 30333)))) ;; #\U767D 
      (30340 (:alphabetical .(:lowercase .,(CODE-CHAR 30340)))) ;; #\U7684 
      (30382 (:alphabetical .(:lowercase .,(CODE-CHAR 30382)))) ;; #\U76AE 
      (30417 (:alphabetical .(:lowercase .,(CODE-CHAR 30417)))) ;; #\U76D1 
      (30456 (:alphabetical .(:lowercase .,(CODE-CHAR 30456)))) ;; #\U76F8 
      (30740 (:alphabetical .(:lowercase .,(CODE-CHAR 30740)))) ;; #\U7814 
      (30784 (:alphabetical .(:lowercase .,(CODE-CHAR 30784)))) ;; #\U7840 
      (30828 (:alphabetical .(:lowercase .,(CODE-CHAR 30828)))) ;; #\U786C 
      (30906 (:alphabetical .(:lowercase .,(CODE-CHAR 30906)))) ;; #\U78BA 
      (31034 (:alphabetical .(:lowercase .,(CODE-CHAR 31034)))) ;; #\U793A 
      (31227 (:alphabetical .(:lowercase .,(CODE-CHAR 31227)))) ;; #\U79FB 
      (31243 (:alphabetical .(:lowercase .,(CODE-CHAR 31243)))) ;; #\U7A0B 
      (31283 (:alphabetical .(:lowercase .,(CODE-CHAR 31283)))) ;; #\U7A33 
      (31309 (:alphabetical .(:lowercase .,(CODE-CHAR 31309)))) ;; #\U7A4D 
      (31350 (:alphabetical .(:lowercase .,(CODE-CHAR 31350)))) ;; #\U7A76 
      (31469 (:alphabetical .(:lowercase .,(CODE-CHAR 31469)))) ;; #\U7AED 
      (31867 (:alphabetical .(:lowercase .,(CODE-CHAR 31867)))) ;; #\U7C7B 
      (31958 (:alphabetical .(:lowercase .,(CODE-CHAR 31958)))) ;; #\U7CD6 
      (31995 (:alphabetical .(:lowercase .,(CODE-CHAR 31995)))) ;; #\U7CFB 
      (32034 (:alphabetical .(:lowercase .,(CODE-CHAR 32034)))) ;; #\U7D22 
      (32043 (:alphabetical .(:lowercase .,(CODE-CHAR 32043)))) ;; #\U7D2B 
      (32080 (:alphabetical .(:lowercase .,(CODE-CHAR 32080)))) ;; #\U7D50 
      (32113 (:alphabetical .(:lowercase .,(CODE-CHAR 32113)))) ;; #\U7D71 
      (32218 (:alphabetical .(:lowercase .,(CODE-CHAR 32218)))) ;; #\U7DDA 
      (32294 (:alphabetical .(:lowercase .,(CODE-CHAR 32294)))) ;; #\U7E26 
      (32423 (:alphabetical .(:lowercase .,(CODE-CHAR 32423)))) ;; #\U7EA7 
      (32435 (:alphabetical .(:lowercase .,(CODE-CHAR 32435)))) ;; #\U7EB3 
      (32437 (:alphabetical .(:lowercase .,(CODE-CHAR 32437)))) ;; #\U7EB5 
      (32447 (:alphabetical .(:lowercase .,(CODE-CHAR 32447)))) ;; #\U7EBF 
      (32452 (:alphabetical .(:lowercase .,(CODE-CHAR 32452)))) ;; #\U7EC4 
      (32455 (:alphabetical .(:lowercase .,(CODE-CHAR 32455)))) ;; #\U7EC7 
      (32456 (:alphabetical .(:lowercase .,(CODE-CHAR 32456)))) ;; #\U7EC8 
      (32467 (:alphabetical .(:lowercase .,(CODE-CHAR 32467)))) ;; #\U7ED3 
      (32676 (:alphabetical .(:lowercase .,(CODE-CHAR 32676)))) ;; #\U7FA4 
      (32771 (:alphabetical .(:lowercase .,(CODE-CHAR 32771)))) ;; #\U8003 
      (32773 (:alphabetical .(:lowercase .,(CODE-CHAR 32773)))) ;; #\U8005 
      (32780 (:alphabetical .(:lowercase .,(CODE-CHAR 32780)))) ;; #\U800C 
      (32784 (:alphabetical .(:lowercase .,(CODE-CHAR 32784)))) ;; #\U8010 
      (32852 (:alphabetical .(:lowercase .,(CODE-CHAR 32852)))) ;; #\U8054 
      (32908 (:alphabetical .(:lowercase .,(CODE-CHAR 32908)))) ;; #\U808C 
      (32957 (:alphabetical .(:lowercase .,(CODE-CHAR 32957)))) ;; #\U80BD 
      (32959 (:alphabetical .(:lowercase .,(CODE-CHAR 32959)))) ;; #\U80BF 
      (32972 (:alphabetical .(:lowercase .,(CODE-CHAR 32972)))) ;; #\U80CC 
      (33016 (:alphabetical .(:lowercase .,(CODE-CHAR 33016)))) ;; #\U80F8 
      (33021 (:alphabetical .(:lowercase .,(CODE-CHAR 33021)))) ;; #\U80FD 
      (33026 (:alphabetical .(:lowercase .,(CODE-CHAR 33026)))) ;; #\U8102 
      (33032 (:alphabetical .(:lowercase .,(CODE-CHAR 33032)))) ;; #\U8108 
      (33039 (:alphabetical .(:lowercase .,(CODE-CHAR 33039)))) ;; #\U810F 
      (33041 (:alphabetical .(:lowercase .,(CODE-CHAR 33041)))) ;; #\U8111 
      (33146 (:alphabetical .(:lowercase .,(CODE-CHAR 33146)))) ;; #\U817A 
      (33205 (:alphabetical .(:lowercase .,(CODE-CHAR 33205)))) ;; #\U81B5 
      (33235 (:alphabetical .(:lowercase .,(CODE-CHAR 33235)))) ;; #\U81D3 
      (33324 (:alphabetical .(:lowercase .,(CODE-CHAR 33324)))) ;; #\U822C 
      (33509 (:alphabetical .(:lowercase .,(CODE-CHAR 33509)))) ;; #\U82E5 
      (33539 (:alphabetical .(:lowercase .,(CODE-CHAR 33539)))) ;; #\U8303 
      (33655 (:alphabetical .(:lowercase .,(CODE-CHAR 33655)))) ;; #\U8377 
      (33879 (:alphabetical .(:lowercase .,(CODE-CHAR 33879)))) ;; #\U8457 
      (33981 (:alphabetical .(:lowercase .,(CODE-CHAR 33981)))) ;; #\U84BD 
      (34013 (:alphabetical .(:lowercase .,(CODE-CHAR 34013)))) ;; #\U84DD 
      (34385 (:alphabetical .(:lowercase .,(CODE-CHAR 34385)))) ;; #\U8651 
      (34507 (:alphabetical .(:lowercase .,(CODE-CHAR 34507)))) ;; #\U86CB 
      (34880 (:alphabetical .(:lowercase .,(CODE-CHAR 34880)))) ;; #\U8840 
      (34892 (:alphabetical .(:lowercase .,(CODE-CHAR 34892)))) ;; #\U884C 
      (34920 (:alphabetical .(:lowercase .,(CODE-CHAR 34920)))) ;; #\U8868 
      (34928 (:alphabetical .(:lowercase .,(CODE-CHAR 34928)))) ;; #\U8870 
      (35201 (:alphabetical .(:lowercase .,(CODE-CHAR 35201)))) ;; #\U8981 
      (35211 (:alphabetical .(:lowercase .,(CODE-CHAR 35211)))) ;; #\U898B 
      (35215 (:alphabetical .(:lowercase .,(CODE-CHAR 35215)))) ;; #\U898F 
      (35265 (:alphabetical .(:lowercase .,(CODE-CHAR 35265)))) ;; #\U89C1 
      (35299 (:alphabetical .(:lowercase .,(CODE-CHAR 35299)))) ;; #\U89E3 
      (35328 (:alphabetical .(:lowercase .,(CODE-CHAR 35328)))) ;; #\U8A00 
      (35336 (:alphabetical .(:lowercase .,(CODE-CHAR 35336)))) ;; #\U8A08 
      (35342 (:alphabetical .(:lowercase .,(CODE-CHAR 35342)))) ;; #\U8A0E 
      (35413 (:alphabetical .(:lowercase .,(CODE-CHAR 35413)))) ;; #\U8A55 
      (35469 (:alphabetical .(:lowercase .,(CODE-CHAR 35469)))) ;; #\U8A8D 
      (35519 (:alphabetical .(:lowercase .,(CODE-CHAR 35519)))) ;; #\U8ABF 
      (35542 (:alphabetical .(:lowercase .,(CODE-CHAR 35542)))) ;; #\U8AD6 
      (35745 (:alphabetical .(:lowercase .,(CODE-CHAR 35745)))) ;; #\U8BA1 
      (35760 (:alphabetical .(:lowercase .,(CODE-CHAR 35760)))) ;; #\U8BB0 
      (35770 (:alphabetical .(:lowercase .,(CODE-CHAR 35770)))) ;; #\U8BBA 
      (35775 (:alphabetical .(:lowercase .,(CODE-CHAR 35775)))) ;; #\U8BBF 
      (35780 (:alphabetical .(:lowercase .,(CODE-CHAR 35780)))) ;; #\U8BC4 
      (35786 (:alphabetical .(:lowercase .,(CODE-CHAR 35786)))) ;; #\U8BCA 
      (35937 (:alphabetical .(:lowercase .,(CODE-CHAR 35937)))) ;; #\U8C61 
      (36127 (:alphabetical .(:lowercase .,(CODE-CHAR 36127)))) ;; #\U8D1F 
      (36229 (:alphabetical .(:lowercase .,(CODE-CHAR 36229)))) ;; #\U8D85 
      (36321 (:alphabetical .(:lowercase .,(CODE-CHAR 36321)))) ;; #\U8DE1 
      (36341 (:alphabetical .(:lowercase .,(CODE-CHAR 36341)))) ;; #\U8DF5 
      (36394 (:alphabetical .(:lowercase .,(CODE-CHAR 36394)))) ;; #\U8E2A 
      (36716 (:alphabetical .(:lowercase .,(CODE-CHAR 36716)))) ;; #\U8F6C 
      (36739 (:alphabetical .(:lowercase .,(CODE-CHAR 36739)))) ;; #\U8F83 
      (36741 (:alphabetical .(:lowercase .,(CODE-CHAR 36741)))) ;; #\U8F85 
      (36755 (:alphabetical .(:lowercase .,(CODE-CHAR 36755)))) ;; #\U8F93 
      (36798 (:alphabetical .(:lowercase .,(CODE-CHAR 36798)))) ;; #\U8FBE 
      (36807 (:alphabetical .(:lowercase .,(CODE-CHAR 36807)))) ;; #\U8FC7 
      (36816 (:alphabetical .(:lowercase .,(CODE-CHAR 36816)))) ;; #\U8FD0 
      (36825 (:alphabetical .(:lowercase .,(CODE-CHAR 36825)))) ;; #\U8FD9 
      (36827 (:alphabetical .(:lowercase .,(CODE-CHAR 36827)))) ;; #\U8FDB 
      (36861 (:alphabetical .(:lowercase .,(CODE-CHAR 36861)))) ;; #\U8FFD 
      (36899 (:alphabetical .(:lowercase .,(CODE-CHAR 36899)))) ;; #\U9023 
      (36984 (:alphabetical .(:lowercase .,(CODE-CHAR 36984)))) ;; #\U9078 
      (36986 (:alphabetical .(:lowercase .,(CODE-CHAR 36986)))) ;; #\U907A 
      (37255 (:alphabetical .(:lowercase .,(CODE-CHAR 37255)))) ;; #\U9187 
      (37325 (:alphabetical .(:lowercase .,(CODE-CHAR 37325)))) ;; #\U91CD 
      (37327 (:alphabetical .(:lowercase .,(CODE-CHAR 37327)))) ;; #\U91CF 
      (37492 (:alphabetical .(:lowercase .,(CODE-CHAR 37492)))) ;; #\U9274 
      (38041 (:alphabetical .(:lowercase .,(CODE-CHAR 38041)))) ;; #\U9499 
      (38048 (:alphabetical .(:lowercase .,(CODE-CHAR 38048)))) ;; #\U94A0 
      (38291 (:alphabetical .(:lowercase .,(CODE-CHAR 38291)))) ;; #\U9593 
      (38306 (:alphabetical .(:lowercase .,(CODE-CHAR 38306)))) ;; #\U95A2 
      (38382 (:alphabetical .(:lowercase .,(CODE-CHAR 38382)))) ;; #\U95EE 
      (38388 (:alphabetical .(:lowercase .,(CODE-CHAR 38388)))) ;; #\U95F4 
      (38451 (:alphabetical .(:lowercase .,(CODE-CHAR 38451)))) ;; #\U9633 
      (38459 (:alphabetical .(:lowercase .,(CODE-CHAR 38459)))) ;; #\U963B 
      (38477 (:alphabetical .(:lowercase .,(CODE-CHAR 38477)))) ;; #\U964D 
      (38500 (:alphabetical .(:lowercase .,(CODE-CHAR 38500)))) ;; #\U9664 
      (38522 (:alphabetical .(:lowercase .,(CODE-CHAR 38522)))) ;; #\U967A 
      (38543 (:alphabetical .(:lowercase .,(CODE-CHAR 38543)))) ;; #\U968F 
      (38598 (:alphabetical .(:lowercase .,(CODE-CHAR 38598)))) ;; #\U96C6 
      (38656 (:alphabetical .(:lowercase .,(CODE-CHAR 38656)))) ;; #\U9700 
      (38750 (:alphabetical .(:lowercase .,(CODE-CHAR 38750)))) ;; #\U975E 
      (38911 (:alphabetical .(:lowercase .,(CODE-CHAR 38911)))) ;; #\U97FF 
      (39033 (:alphabetical .(:lowercase .,(CODE-CHAR 39033)))) ;; #\U9879 
      (39044 (:alphabetical .(:lowercase .,(CODE-CHAR 39044)))) ;; #\U9884 
      (39057 (:alphabetical .(:lowercase .,(CODE-CHAR 39057)))) ;; #\U9891 
      (39064 (:alphabetical .(:lowercase .,(CODE-CHAR 39064)))) ;; #\U9898 
      (39640 (:alphabetical .(:lowercase .,(CODE-CHAR 39640)))) ;; #\U9AD8 
      (40802 (:alphabetical .(:lowercase .,(CODE-CHAR 40802)))) ;; #\U9F62

      (65285 (:punctuation .,(CODE-CHAR 65285))) ;; #\FULLWIDTH_PERCENT_SIGN 
      (65289 (:punctuation .,(CODE-CHAR 65289))) ;;  #\FULLWIDTH_RIGHT_PARENTHESIS 
      (65292 (:punctuation .,(CODE-CHAR 65292))) ;; #\FULLWIDTH_COMMA 
      (65306 (:punctuation .,(CODE-CHAR 65306))) ;; #\FULLWIDTH_COLON 
      (65307 (:punctuation .,(CODE-CHAR 65307))) ;; #\FULLWIDTH_SEMICOLON 
      (65308 (:punctuation .,(CODE-CHAR 65308))) ;; #\FULLWIDTH_LESS-THAN_SIGN 
      (65310 (:punctuation .,(CODE-CHAR 65310))) ;; #\FULLWIDTH_GREATER-THAN_SIGN 
      (65374 (:punctuation .,(CODE-CHAR 65374))) ;; #\FULLWIDTH_TILDE 

      (119977 (:alphabetical .(:lowercase .,(CODE-CHAR 119977)))) ;; #\MATHEMATICAL_SCRIPT_CAPITAL_N 
      (119978 (:alphabetical .(:lowercase .,(CODE-CHAR 119978)))) ;; #\MATHEMATICAL_SCRIPT_CAPITAL_O 
      (119989 (:alphabetical .(:lowercase .,(CODE-CHAR 119989)))) ;; #\MATHEMATICAL_SCRIPT_CAPITAL_Z 
      (120594 (:alphabetical .(:lowercase .,(CODE-CHAR 120594)))) ;; #\MATHEMATICAL_ITALIC_SMALL_CHI 
      
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



