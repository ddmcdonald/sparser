;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1996,2013-2020  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "alphabet"
;;;   Module:  "analyzers:tokenizer:"
;;;  Version:  March 2020

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
;; 6/28/2015 correct handling of  (8764 (:punctuation . ,(punctuation-named (code-char 8764)))) ;; #\∼


;; This file just contains the alphabet. Functions for extending or manipulating
;; it are in analyzers/tokenizer/alphabet-fns.lisp

(in-package :sparser)

;; NOTE: Uppercase alphabetic characters feed lowercase letters to the tokenizer.
;; e.g. (setf (elt *character-dispatch-array* 80)  ;; #\P
;;           `(:alphabetical
;;              . (:uppercase . ,#\p )))
;; This is deliberate. See Sparser/documentation/manual/6. Analyzing a text.pdf


;;;----------------------
;;; populating the array
;;;----------------------

#| Entries are decoded by continue-token which uses the car to determine
the character type (for token boundaries), then the cdr is accumulated
and eventually passed to finish-token where the capitalization information
is noted by the capitalization-fsa and the character is entered into
the buffer that is fed to find-word and becomes part of the word's pname.

(:alphabetical . (:lowercase . ,#\212 ))  |#


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

(setf (elt *character-dispatch-array* 128) ;; Euro sign
      `(:punctuation . ,(punctuation-named (code-char 128))))


(setf (elt *character-dispatch-array* 130) 
      `(:alphabetical . (:lowercase . ,(code-char 130))))


(setf (elt *character-dispatch-array* 131) 
      `(:alphabetical . (:lowercase . ,(code-char 131)))) 
;;#\No-break-permitted (?)

(setf (elt *character-dispatch-array* 132) 
      `(:alphabetical . (:lowercase . ,(code-char 132)))) 
;;#\C84 (?)


(setf (elt *character-dispatch-array* 142) 
      `(:alphabetical . (:lowercase . ,(code-char 131)))) 
;;#\Single-Shift-Two (?)


(setf (elt *character-dispatch-array* 145) ;; left single quotation
      `(:punctuation . ,(punctuation-named #\' )))

(setf (elt *character-dispatch-array* 146) ;; right single quotation
      `(:punctuation . ,(punctuation-named #\' )))

(setf (elt *character-dispatch-array* 147) ;; left double quotation
      `(:punctuation . ,(punctuation-named #\" )))

(setf (elt *character-dispatch-array* 148) ;; right double quotation
      `(:punctuation . ,(punctuation-named #\" )))


(setf (elt *character-dispatch-array* 150) 
      `(:alphabetical . (:lowercase . ,(code-char 150)))) 
;;#\Start-Guarded-Area (?)


(setf (elt *character-dispatch-array* 157) 
      `(:alphabetical . (:lowercase . ,(code-char 157)))) 
;;#\Operating-System-Command (?)

(setf (elt *character-dispatch-array* 160) ;; #\No-break_Space
  '(:punctuation . :space))

(setf (elt *character-dispatch-array* 161) ;; #\INVERTED_EXCLAMATION_MARKN 
      `(:alphabetical . (:lowercase . ,(code-char 161)))) 

(setf (elt *character-dispatch-array* 162) ;; #\CENT_SIGN 
      `(:alphabetical . (:lowercase . ,(code-char 162))))

(setf (elt *character-dispatch-array* 163) ;; #\POUND_SIGN  #\£
      `(:punctuation . ,(punctuation-named (code-char 163))))

(setf (elt *character-dispatch-array* 164) ;; #\CURRENCY_SIGN 
      `(:punctuation . ,(punctuation-named (code-char 164))))

(setf (elt *character-dispatch-array* 165) ;;#\YEN_SIGN
      `(:punctuation . ,(punctuation-named (code-char 165))))

(setf (elt *character-dispatch-array* 166) ;; #\BROKEN_BAR
      `(:alphabetical . (:lowercase . ,(code-char 166))))

(setf (elt *character-dispatch-array* 167) ;; #\section_sogn
      `(:alphabetical . (:lowercase . ,(code-char 167))))

(setf (elt *character-dispatch-array* 168) ;;#\DIAERESIS
      `(:alphabetical . (:lowercase . ,(code-char 168))))

(setf (elt *character-dispatch-array* 169) ;; #\Copyright_Sign
      `(:punctuation . ,(punctuation-named (code-char 169))))

(setf (elt *character-dispatch-array* 170) ;;#\FEMININE_ORDINAL_INDICATOR
      `(:punctuation . ,(punctuation-named (code-char 170))))

(setf (elt *character-dispatch-array* 171) 
      `(:punctuation . ,(punctuation-named (code-char 171))))
;;#\Acute_Accent ? (this is what it previously said, but if you do
;; code-char of 171 you get the following:
;; #\LEFT-POINTING_DOUBLE_ANGLE_QUOTATION_MARK


(setf (elt *character-dispatch-array* 172)  ;; #\NOT_SIGN
      `(:punctuation . ,(punctuation-named (code-char 172))))

(setf (elt *character-dispatch-array* 173) ;; #\Soft_Hyphen
      `(:punctuation . ,(punctuation-named #\- )))
(setf (elt *character-dispatch-array* 174) ;; #\Registered_Sign
      `(:punctuation . ,(punctuation-named (code-char 174))))
(setf (elt *character-dispatch-array* 175) ;;#\MACRON
      `(:alphabetical . (:lowercase . ,(code-char 175))))
(setf (elt *character-dispatch-array* 176) ;; #\Degree_Sign
      `(:punctuation
        . ,(punctuation-named #\* ))) ;; substitute simple asterisk
(setf (elt *character-dispatch-array* 177) ;; #\Plus-Minus_Sign  #\±
      `(:punctuation
        . ,(punctuation-named (code-char 177)))) ;;////////////////////////////////////////
(setf (elt *character-dispatch-array* 178) ;; superscript two or 'squared' - just use #\2
      `(:number . (:digit . ,#\2 )))
(setf (elt *character-dispatch-array* 179) ;; superscript three or 'cubed' - just use #\3
       `(:number . (:digit . ,#\3 )))


(setf (elt *character-dispatch-array* 180) ;;#\Acute_Accent
      `(:punctuation . ,(punctuation-named (code-char 180)))) 

(setf (elt *character-dispatch-array* 181) ;; #\Micro_Sign
      '(:punctuation
        . :space)) ;;////////////////////////////////////////

(setf (elt *character-dispatch-array* 182) ;#\PILCROW_SIGN
      `(:alphabetical . (:lowercase . ,(code-char 182)))) 
(setf (elt *character-dispatch-array* 183) ;; #\Middle_Dot
      `(:punctuation . ,(punctuation-named (code-char 183)))) 
(setf (elt *character-dispatch-array* 184) ;; Spacing cedilla (subscript dot)
      `(:punctuation . :space))
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

(defparameter *entries-for-out-of-band-characters* 
  `(
    (256 (:alphabetical . (:uppercase .,(code-char 256)))) ;; #\LATIN_CAPITAL_LETTER_A_WITH_MACRON
    (257 (:alphabetical . (:uppercase .,(code-char 257)))) ;; ā
    (259 (:alphabetical . (:uppercase .,(code-char 259)))) ;; ă
    (261 (:alphabetical .(:lowercase .,(code-char 261))))  ;;  "ą"
    (262 (:alphabetical . (:uppercase .,(code-char 262)))) ;;#\LATIN_CAPITAL_LETTER_C_WITH_ACUTE
    (263 (:alphabetical . (:lowercase .,(code-char 259)))) ;; #\Latin_Small_Letter_C_With_Acute) ;;"ć", (code = 263)
    (264 (:alphabetical . (:uppercase .,(code-char 264)))) ;;#\LATIN_CAPITAL_LETTER_C_WITH_CIRCUMFLEX
    (265 (:alphabetical . (:lowercase ., (code-char 265))))
    (268 (:alphabetical . (:uppercase .,(code-char 268)))) ;;#\LATIN_CAPITAL_LETTER_C_WITH_CARON
    (269 (:alphabetical . (:uppercase .,(code-char 269)))) ;; č
    (270 (:alphabetical .(:lowercase .,(code-char 270))))  ;;  "Ď"
    (271 (:alphabetical .(:lowercase .,(code-char 271))))  ;;  "ď"
    (273 (:alphabetical . (:uppercase .,(code-char 273)))) ;; đ
    (274 (:alphabetical . (:uppercase .,(code-char 274)))) ;;Ē
    (277 (:alphabetical .(:lowercase .,(code-char 277))))  ;;  "ĕ"
    (279 (:alphabetical . (:lowercase .,(code-char 279))))
    (280 (:alphabetical . (:uppercase .,(code-char 280)))) ;; Ę
    (281 (:alphabetical . (:uppercase .,(code-char 281)))) ;;ę
    (284 (:alphabetical .(:lowercase .,(code-char 284))))  ;;  "Ĝ"
    (287 (:alphabetical . (:uppercase .,(code-char 287)))) ;; ğ
    (293 (:alphabetical . (:uppercase .,(code-char 293)))) ;; ĥ
    (294 (:alphabetical . (:uppercase .,(code-char 294)))) ;; Ħ
    (295 (:alphabetical . (:uppercase .,(code-char 295)))) ;; ħ
    (298 (:alphabetical . (:uppercase .,(code-char 298)))) ;; Ī
    (299 (:alphabetical . (:uppercase .,(code-char 299)))) ;; ī
    (301 (:alphabetical .(:lowercase .,(code-char 301))))  ;;  "ĭ"
    (304 (:alphabetical . (:uppercase .,(code-char 304)))) ;;#\LATIN_CAPITAL_LETTER_I_WITH_DOT_ABOVE
    (305 (:alphabetical . (:uppercase .,(code-char 305)))) ;; ı
    (310 (:alphabetical .(:lowercase .,(code-char 310))))  ;;  "Ķ"
    (312 (:alphabetical . (:uppercase .,(code-char 312)))) ;;ĸ
    (313 (:alphabetical .(:lowercase .,(code-char 313))))  ;;  "Ĺ"
    (314 (:alphabetical .(:lowercase .,(code-char 314))))  ;;  "ĺ"
    (317 (:alphabetical .(:lowercase .,(code-char 317))))  ;;  "Ľ"
    (318 (:alphabetical .(:lowercase .,(code-char 318))))  ;;  "ľ"
    (321 (:alphabetical . (:uppercase .,(code-char 321)))) ;;#\LATIN_CAPITAL_LETTER_L_WITH_STROKE
    (322 (:alphabetical . (:lowercase .,(code-char 322)))) ;;#\LATIN_SMALL_LETTER_L_WITH_STROKE
    (323 (:alphabetical . (:lowercase .,(code-char 323)))) ;; Ń
    (323 (:alphabetical . (:uppercase .,(code-char 323)))) ;; Ń
    (324 (:alphabetical . (:lowercase .,(code-char 324)))) ;;#\LATIN_SMALL_LETTER_N_WITH_ACUTE)
    (325 (:alphabetical .(:lowercase .,(code-char 325))))  ;;  "Ņ"
    (326 (:alphabetical .(:lowercase .,(code-char 326))))  ;;  "ņ"
    (328 (:alphabetical .(:lowercase .,(code-char 328))))  ;;  "ň"
    (332 (:alphabetical .(:lowercase .,(code-char 332))))  ;;  "Ō"
    (335 (:alphabetical .(:lowercase .,(code-char 335))))  ;;  "ŏ"
    (336 (:alphabetical . (:lowercase .,(code-char 336)))) ;; #\LATIN_CAPITAL_LETTER_O_WITH_DOUBLE_ACUTE 
    (337 (:alphabetical . (:lowercase .,(code-char 337)))) ;; #\LATIN_SMALL_LETTER_O_WITH_DOUBLE_ACUTE
    (338 (:alphabetical . (:uppercase .,(code-char 338)))) ;; Œ
    (339 (:alphabetical . (:lowercase . #\o))) ;; "œ" #\Latin_Small_Ligature_Oe
    (341 (:alphabetical . (:lowercase . #\Latin_Small_Letter_R_With_Acute))) ;; #\Latin_Small_Letter_R_With_Acute
    (344 (:alphabetical .(:lowercase .,(code-char 344))))  ;;  "Ř"
    (345 (:alphabetical . (:uppercase .,(code-char 345)))) ;; ř
    (346 (:alphabetical .(:lowercase .,(code-char 346))))  ;;  "Ś"
    (347 (:alphabetical . (:lowercase . #\Latin_Small_Letter_S_With_Acute))) ;; #\Latin_Small_Letter_S_With_Acute
    (347 (:alphabetical . (:lowercase . #\Latin_Small_Letter_S_With_Acute))) ;; #\Latin_Small_Letter_S_With_Acute
    (348 (:alphabetical .(:lowercase .,(code-char 348)))) ;;  "Ŝ"
    (349 (:alphabetical . (:lowercase .,(code-char 349)))) ;; #\LATIN_SMALL_LETTER_S_WITH_CIRCUMFLEX 
    (351 (:alphabetical . (:uppercase .,(code-char 351)))) ;; ş
    (352 (:alphabetical . (:lowercase .,(code-char 352)))) ;; #\latin_capital_letter_s_with_Caron
    (353 (:alphabetical . (:lowercase . #\s))) ;; #\Latin_Small_Letter_S_With_Caron
    (355 (:alphabetical .(:lowercase .,(code-char 355))))  ;;  "ţ"
    (357 (:alphabetical .(:lowercase .,(code-char 357))))  ;;  "ť"
    (358 (:alphabetical . (:uppercase .,(code-char 358)))) ;; Ŧ
    (361 (:alphabetical .(:lowercase .,(code-char 361))))  ;;  "ũ"
    (363 (:alphabetical . (:uppercase .,(code-char 363)))) ;;ū
    (365 (:alphabetical .(:lowercase .,(code-char 365))))  ;;  "ŭ"
    (367 (:alphabetical . (:uppercase .,(code-char 367)))) ;; ů
    (369 (:alphabetical .(:lowercase .,(code-char 369))))  ;;  "ű"
    (374 (:alphabetical .(:lowercase .,(code-char 374))))  ;;  "Ŷ"
    (375 (:alphabetical . (:lowercase ., (code-char 375))))
    (376 (:alphabetical .(:lowercase .,(code-char 376)))) ;;  "Ÿ"
    (377 (:alphabetical .(:lowercase .,(code-char 377)))) ;;  "Ź"
    (378 (:alphabetical . (:lowercase .,(code-char 378)))) ;;#\LATIN_SMALL_LETTER_N_WITH_ACUTE))
    (379 (:alphabetical . (:uppercase .,(code-char 379)))) ;; Ż
    (380 (:alphabetical .(:lowercase .,(code-char 380))))  ;;  "ż"
    (381 (:alphabetical . (:uppercase .,(code-char 381)))) ;; #\LATIN_CAPITAL_LETTER_Z_WITH_CARON
    (382 (:alphabetical . (:uppercase .,(code-char 382)))) ;; #\LATIN_SMALL_LETTER_Z_WITH_CARON
    (383 (:alphabetical .(:lowercase .,(code-char 383))))  ;;  "ſ"
    (400 (:alphabetical . (:lowercase . #\s))) ;; #\Latin_Capital_Letter_Open_E
    (401 (:alphabetical .(:uppercase .,(code-char 401))))  ;;  "Ƒ"
    (404 (:alphabetical . (:lowercase .,(code-char 404)))) ;;Ɣ
    (408 (:alphabetical . (:lowercase .,(code-char 408)))) ;;Ƙ
    (409 (:alphabetical .(:lowercase .,(code-char 409))))  ;;  "ƙ"
    (413 (:alphabetical . (:lowercase ., (code-char 413)))) 
    (425 (:alphabetical . (:uppercase .,(code-char 425))))  ;; Ʃ
    (432 (:alphabetical . (:uppercase .,(code-char 432))))  ;; ư
    (434 (:alphabetical . (:uppercase .,(code-char 434))))  ;; Æ²
    (435 (:alphabetical . (:lowercase ., (code-char 435)))) ;; "Ƴ"
    (448 (:alphabetical . (:lowercase .,(code-char 448)))) ;; #\Latin_Capital_Letter_Open_E
    (449 (:alphabetical .(:lowercase .,(code-char 449))))  ;;  "ǁ"
    (487 (:alphabetical .(:lowercase .,(code-char 487))))  ;;  "ǧ"
    (505 (:alphabetical . (:uppercase .,(code-char 505)))) ;; ǹ
    (506 (:alphabetical . (:uppercase .,(code-char 506)))) ;;#\LATIN_CAPITAL_LETTER_A_WITH_RING_ABOVE_AND_ACUTE)))
    (510 (:alphabetical .(:lowercase .,(code-char 510))))  ;;  "Ǿ"
    (536 (:alphabetical .(:uppercase .,(code-char 536))))  ;;  "Ș"
    (537 (:alphabetical .(:lowercase .,(code-char 537))))  ;;  "ș"
    (538 (:alphabetical .(:uppercase .,(code-char 538))))  ;;  "Ț"
    (539 (:alphabetical .(:lowercase .,(code-char 539))))  ;;  "ț"
    (562 (:alphabetical . (:uppercase .,(code-char 562)))) ;; #\LATIN_CAPITAL_LETTER_Y_WITH_MACRON
    (563 (:alphabetical .(:lowercase .,(code-char 563))))  ;;  "ȳ"
    (581 (:alphabetical . (:lowercase ., (code-char 581)))) 
    (593 (:alphabetical . (:uppercase .,(code-char 593)))) ;;ɑ
    (596 (:alphabetical .(:lowercase .,(code-char 596))))  ;;  "ɔ"
    (603 (:alphabetical . (:lowercase . #\e))) ;;"ɛ", (code = 603)  ;; #\Latin_Small_Letter_Open_E
    (611 (:alphabetical . (:uppercase .,(code-char 611)))) ;; #\LATIN_SMALL_LETTER_GAMMA
    (612 (:alphabetical .(:lowercase .,(code-char 612))))  ;;  "ɤ"
    (629 (:alphabetical .(:lowercase .,(code-char 629))))  ;;  "ɵ"
    (632 (:alphabetical .(:lowercase .,(code-char 632))))  ;;  "ɸ"
    (657 (:alphabetical . (:uppercase .,(code-char 657)))) ;; #\LATIN_SMALL_LETTER_Z_WITH_CURL
    (697 (:punctuation .,(punctuation-named (code-char 697)))) ;; "ʹ" #\Modifier_Letter_Prime


    (700 (:alphabetical . (:uppercase .,(code-char 700)))) ;;#\MODIFIER_LETTER_APOSTROPHE
    (706 (:alphabetical . (:uppercase .,(code-char 706)))) ;;˂
    (707 (:punctuation .,(punctuation-named (code-char 707)))) ;; ˃
    (710 (:punctuation .,(punctuation-named (code-char 710)))) ;; "ˆ" #\Modifier_Letter_Circumflex_Accent
    (712 (:alphabetical . (:uppercase .,(code-char 712))))     ;;ˈ
    (713 (:alphabetical . (:uppercase .,(code-char 713))))     ;;ˉ
    (714 (:punctuation .,(punctuation-named (code-char 714))))
    (715 (:alphabetical . (:uppercase .,(code-char 715)))) ;; ˋ
    (727 (:alphabetical . (:uppercase .,(code-char 727)))) ;; ˗
    (729 (:punctuation .,(punctuation-named (code-char 729)))) ;; #\*)) ;;"˙", (code = 729)  ;; #\Dot_Above
    (730 (:punctuation .,(punctuation-named (code-char 730)))) ;; #\Ring_Above
    (731 (:punctuation .,(punctuation-named (code-char 731)))) ;; "˛"
    (732 (:punctuation .,(punctuation-named (code-char 732)))) ;;"˜"  ;; #\Small_Tilde
    (733 (:alphabetical . (:lowercase .,(code-char 733)))) ;; #\DOUBLE_ACUTE_ACCENT
    (739 (:alphabetical . (:lowercase .,(code-char 739)))) ;; "ˣ" #\MODIFIER_LETTER_SMALL_X
    (768 (:punctuation .,(punctuation-named (code-char 768)))) ;; #\COMBINING_GRAVE_ACCENT
    (769 (:punctuation .,(punctuation-named (code-char 769)))) ;; #\Combining_Acute_Accent
    (770 (:alphabetical . (:lowercase .,(code-char 770)))) ;; #\Latin_Small_Letter_S_With_Acute
    (771 (:alphabetical . (:uppercase .,(code-char 771)))) ;; #\COMBINING_TILDE
    (772 (:punctuation .,(punctuation-named (code-char 772)))) ;; #\Combining_Macron
    (773 (:alphabetical . (:uppercase .,(code-char 773)))) ;;#\COMBINING_OVERLINE
    (774 (:alphabetical . (:lowercase ., (code-char 774)))) ;; "̆"
    (775 (:alphabetical . (:lowercase ., (code-char 775)))) ;; "̇"
    (776 (:punctuation .,(punctuation-named (code-char 776)))) ;; #\Combining_Diaeresis
    (778 (:alphabetical . (:uppercase .,(code-char 778))))     ;;̊
    (803 (:alphabetical . (:uppercase .,(code-char 803)))) ;; #\COMBINING_DOT_BELOW
    (807 (:punctuation .,(punctuation-named (code-char 807)))) ;; ̧
    (817 (:punctuation .,(punctuation-named (code-char 817)))) ;; ̱
    (824 (:punctuation .,(punctuation-named (code-char 824)))) ;; "̸"
    (834 (:punctuation .,(punctuation-named (code-char 834)))) ;;";", (code = 894)    
    (884 (:punctuation .,(punctuation-named (code-char 884)))) ;; "ʹ"
    (894 (:punctuation .,(punctuation-named (code-char 894)))) ;;";", (code = 894)
    (895 (:alphabetical . (:uppercase .,(code-char 895)))) ;; #\GREEK_CAPITAL_LETTER_YOT 
    (900 (:punctuation .,(punctuation-named (code-char 900)))) ;;΄
    (901 (:alphabetical . (:uppercase .,(code-char 901)))) ;; #\GREEK_DIALYTIKA_TONOS
    (902 (:alphabetical . (:uppercase .,(code-char 902)))) ;;Ά
    (903 (:punctuation .,(punctuation-named (code-char 903)))) ;; ·
    (906 (:alphabetical . (:lowercase .,(code-char 906)))) ;; #\GREEK_CAPITAL_LETTER_IOTA_WITH_TONOS 
    (908 (:alphabetical . (:lowercase ., (code-char 908)))) ;; "Ό"
    (911 (:alphabetical . (:lowercase ., (code-char 911)))) ;; Î
    (913 (:greek . (:uppercase .,(code-char 913)))) ;; #\Greek_Capital_Letter_Alpha "Α"
    (914 (:greek . (:uppercase .,(code-char 914)))) ;; #\Greek_Capital_Letter_Beta "Β"
    (915 (:greek . (:uppercase .,(code-char 915)))) ;; #\Greek_Capital_Letter_Gamma "Γ"
    (916 (:punctuation .,(punctuation-named (code-char 916)))) ;; #\Greek_Capital_Letter_Delta "Δ" (:greek . (:uppercase ;; .,(code-char 916)))) redefining as punctuation to see if       ;; that makes it easier to deal with cases where it's being       ;; used at the beginning of an item to denote "change" -- as in       ;; ΔΨ for membrane potential
    (917 (:greek . (:uppercase .,(code-char 917)))) ;; #\Greek_Capital_Letter_Epsilon
    (918 (:greek . (:uppercase .,(code-char 918)))) ;; #\Greek_Capital_Letter_Zeta
    (919 (:greek . (:uppercase .,(code-char 919)))) ;; "Η" #\Greek_Capital_Letter_Eta
    (920 (:greek . (:uppercase .,(code-char 920)))) ;; #\Greek_Capital_Letter_Theta
    (921 (:greek . (:uppercase .,(code-char 921)))) ;; #\Greek_Capital_Letter_Iota
    (922 (:greek . (:uppercase .,(code-char 922)))) ;; "Κ" #\Greek_Capital_Letter_Kappa
    (923 (:greek . (:lowercase .,(code-char 923)))) ;; "Λ" #\Greek_Capital_Letter_Lambda
    (924 (:greek . (:uppercase .,(code-char 924)))) ;;"Μ", (code = 924)
    (925 (:greek . (:uppercase .,(code-char 925)))) ;;"Ν", (code = 925)
    (926 (:greek . (:uppercase .,(code-char 926)))) ;;, (code = 926)
    (927 (:greek . (:uppercase .,(code-char 927)))) ;;, (code = 927)
    (928 (:greek . (:uppercase .,(code-char 928)))) ;;, (code = 928)
    (929 (:greek . (:uppercase .,(code-char 929)))) ;;, (code = 929)
    (930 (:greek . (:uppercase .,(code-char 930)))) ;;, (code = 930)
    (931 (:greek . (:uppercase .,(code-char 931)))) ;; "Σ" #\Greek_Capital_Letter_Sigma
    (932 (:greek . (:uppercase .,(code-char 932)))) ;;"Τ", (code = 932)
    (933 (:greek . (:uppercase .,(code-char 933)))) ;;"Υ", (code = 933)
    (934 (:greek . (:uppercase .,(code-char 934)))) ;;"Φ", (code = 934)
    (935 (:greek . (:uppercase .,(code-char 935)))) ;;"Χ", (code = 935)
    (936 (:greek . (:uppercase .,(code-char 936)))) ;;"Ψ", (code = 936)
    (937 (:greek . (:uppercase .,(code-char 937)))) ;;"Ω", (code = 937)
    (940 (:greek . (:lowercase .,(code-char 940)))) ;;"ά", (code = 940)  ;; #\GREEK_SMALL_LETTER_ALPHA_WITH_TONOS
    (941 (:alphabetical . (:uppercase .,(code-char 941)))) ;; έ
    (943 (:alphabetical . (:uppercase .,(code-char 943)))) ;; #\GREEK_SMALL_LETTER_IOTA_WITH_TONOS
    (945 (:greek . (:lowercase .,(code-char 945)))) ;; #\Greek_Small_Letter_Alpha
    (946 (:greek . (:lowercase .,(code-char 946)))) ;; #\Greek_Small_Letter_Beta
    (947 (:greek . (:lowercase .,(code-char 947)))) ;; #\Greek_Small_Letter_Gamma
    (948 (:greek . (:lowercase .,(code-char 948)))) ;; #\Greek_Small_Letter_Delta
    (949 (:greek . (:lowercase .,(code-char 949)))) ;; #\Greek_Small_Letter_Epsilon
    (950 (:greek . (:lowercase .,(code-char 950)))) ;; #\Greek_Small_Letter_Zeta
    (951 (:greek . (:lowercase .,(code-char 951)))) ;; #\Greek_Small_Letter_Eta
    (952 (:greek . (:lowercase .,(code-char 952)))) ;; #\Greek_Small_Letter_Theta
    (953 (:greek . (:lowercase .,(code-char 953)))) ;; #\Greek_Small_Letter_Iota
    (954 (:greek . (:lowercase .,(code-char 954)))) ;; #\Greek_Small_Letter_Kappa  U#03BA
    (955 (:greek . (:lowercase .,(code-char 955)))) ;; #\Greek_Small_Letter_Lambda
    (956 (:greek . (:lowercase .,(code-char 956)))) ;; #\Greek_Small_Letter_Mu
    (957 (:greek . (:lowercase .,(code-char 957)))) ;; "ξ" #\Greek_Small_Letter_Omicron
    (958 (:greek . (:lowercase .,(code-char 958)))) ;; "ξ" #\Greek_Small_Letter_Xi
    (959 (:greek . (:lowercase ., (code-char 959)))) ;;"ο", (code = 959)
    (960 (:greek . (:lowercase ., (code-char 960)))) ;;"π", (code = 960)
    (961 (:greek . (:lowercase ., (code-char 961)))) ;;"ρ", (code = 961)
    (962 (:greek . (:lowercase ., (code-char 961)))) ;;"ς", (code = 962)
    (963 (:greek . (:lowercase .,(code-char 963)))) ;; #\Greek_Small_Letter_Sigma
    (964 (:greek . (:lowercase ., (code-char 964)))) ;;"τ", (code = 964)
    (965 (:greek . (:lowercase .,(code-char 965)))) ;; "υ" #\Greek_Small_Letter_Upsilon
    (966 (:greek . (:lowercase .,(code-char 966)))) ;; "φ" #\Greek_Small_Letter_Phi
    (967 (:greek . (:lowercase ., (code-char 967)))) ;;"χ", (code = 967)
    (968 (:greek . (:lowercase ., (code-char 968)))) ;;"ψ", (code = 968)
    (969 (:greek . (:lowercase ., (code-char 969)))) ;;"ω", (code = 969)
    (970 (:alphabetical .(:lowercase .,(code-char 970))))  ;;  "ϊ"
    (971 (:alphabetical . (:uppercase .,(code-char 971)))) ;;ϋ
    (972 (:alphabetical . (:uppercase .,(code-char 972)))) ;; ό
    (976 (:greek . (:lowercase ., (code-char 976)))) ;;#\GREEK_BETA_SYMBOL
    (977 (:alphabetical . (:uppercase .,(code-char 977)))) ;; #\GREEK_THETA_SYMBOL
    (977 (:greek . (:lowercase ., (code-char 977))))       ;;
    (978 (:alphabetical . (:uppercase .,(code-char 978)))) ;; #\GREEK_UPSILON_WITH_HOOK_SYMBOL
    (981 (:greek . (:lowercase ., (code-char 981)))) ;;"ϕ", (code = 981)
    (982 (:alphabetical . (:uppercase .,(code-char 982)))) ;; ϖ
    (997 (:alphabetical . (:uppercase .,(code-char 997)))) ;; ϥ

    (1008 (:alphabetical . (:lowercase .,(code-char 1008))))  ;;  "ϰ"
    (1009 (:alphabetical . (:lowercase ., (code-char 1009)))) ;; "ϱ"
    (1013 (:punctuation  .,(punctuation-named (code-char 1013)))) ;; "ϵ"
    (1030 (:alphabetical . (:uppercase .,(code-char 1030))))      ;; І
    (1040 (:alphabetical . (:uppercase .,(code-char 1040))))      ;; А
    (1042 (:alphabetical . (:lowercase .,(code-char 1042)))) ;;  "В"
    (1043 (:alphabetical . (:lowercase ., (code-char 1043)))) 
    (1045 (:alphabetical . (:uppercase .,(code-char 1045)))) ;; Е
    (1050 (:alphabetical . (:uppercase .,(code-char 1050)))) ;; #\CYRILLIC_CAPITAL_LETTER_KA
    (1051 (:alphabetical . (:uppercase .,(code-char 1051)))) ;; Л
    (1052 (:alphabetical . (:uppercase .,(code-char 1052)))) ;; М
    (1053 (:alphabetical . (:uppercase .,(code-char 1053)))) ;; Н
    (1054 (:alphabetical . (:uppercase .,(code-char 1054)))) ;; О
    (1056 (:alphabetical . (:uppercase .,(code-char 1056)))) ;; Р
    (1057 (:alphabetical . (:uppercase .,(code-char 1057)))) ;; С
    (1058 (:alphabetical . (:uppercase .,(code-char 1058)))) ;; Т
    (1060 (:alphabetical .(:lowercase .,(code-char 1060))))  ;;  "Ф"
    (1061 (:alphabetical . (:uppercase .,(code-char 1061)))) ;; Х
    (1072 (:alphabetical . (:uppercase .,(code-char 1072)))) ;; а
    (1073 (:alphabetical . (:uppercase .,(code-char 1073)))) ;; б
    (1074 (:alphabetical . (:uppercase .,(code-char 1074)))) ;; в
    (1075 (:alphabetical . (:uppercase .,(code-char 1075)))) ;; г
    (1077 (:alphabetical . (:uppercase .,(code-char 1077)))) ;; е
    (1080 (:alphabetical . (:uppercase .,(code-char 1080)))) ;; и
    (1082 (:alphabetical . (:lowercase ., (code-char 1082)))) ;;"к", (code = 1082) #\CYRILLIC_SMALL_LETTER_KA      
    (1083 (:alphabetical .(:lowercase .,(code-char 1083))))   ;;  "л"
    (1084 (:alphabetical .(:lowercase .,(code-char 1084))))   ;;  "м"
    (1085 (:alphabetical . (:uppercase .,(code-char 1085))))  ;; н
    (1086 (:alphabetical . (:uppercase .,(code-char 1086))))  ;; о
    (1087 (:alphabetical . (:uppercase .,(code-char 1087))))  ;; п
    (1088 (:alphabetical . (:uppercase .,(code-char 1088))))  ;; р
    (1089 (:alphabetical .(:lowercase .,(code-char 1089))))   ;;  "с"
    (1090 (:alphabetical . (:uppercase .,(code-char 1090))))  ;; т
    (1091 (:alphabetical .(:lowercase .,(code-char 1091))))   ;;  "у"
    (1092 (:alphabetical . (:lowercase ., (code-char 1092)))) ;;"Ñ", (code = 1092) 
    (1092 (:alphabetical . (:uppercase .,(code-char 1092)))) ;; #\CYRILLIC_SMALL_LETTER_EF
    (1093 (:alphabetical . (:uppercase .,(code-char 1093)))) ;; х
    (1094 (:alphabetical . (:uppercase .,(code-char 1094)))) ;; ц
    (1108 (:alphabetical . (:uppercase .,(code-char 1108)))) ;; #\CYRILLIC_SMALL_LETTER_UKRAINIAN_IE      
    (1111 (:alphabetical . (:lowercase ., (code-char 1111)))) ;; "ї"
    (1185 (:alphabetical . (:uppercase .,(code-char 1185))))  ;; ҡ
    (1255 (:alphabetical . (:uppercase .,(code-char 1255))))  ;; ӧ
    (1279 (:alphabetical . (:uppercase .,(code-char 1279))))  ;; ӿ
    (1314 (:alphabetical . (:lowercase ., (code-char 1314)))) 
    (1363 (:alphabetical .(:lowercase .,(code-char 1363)))) ;;  "Փ"
    (1523 (:punctuation  .,(punctuation-named (code-char 1523)))) ;; ׳
    (1844 (:alphabetical . (:lowercase ., (code-char 1844)))) 
    (1845 (:alphabetical . (:lowercase ., (code-char 1845)))) 
    (1851 (:alphabetical . (:lowercase ., (code-char 1851)))) 
    (1863 (:alphabetical . (:lowercase ., (code-char 1863)))) 
    (1871 (:alphabetical . (:lowercase ., (code-char 1871)))) 
    (1872 (:alphabetical . (:lowercase ., (code-char 1872)))) 
    (1875 (:alphabetical . (:lowercase ., (code-char 1875)))) 
    (2011 (:alphabetical . (:lowercase ., (code-char 2011)))) 
    (2326 (:alphabetical .(:lowercase .,(code-char 2326)))) ;;  "ख"
    (2336 (:alphabetical .(:lowercase .,(code-char 2336)))) ;;  "ठ"
    (2346 (:alphabetical .(:lowercase .,(code-char 2346)))) ;;  "प"
    (2350 (:alphabetical .(:lowercase .,(code-char 2350)))) ;;  "म"
    (2359 (:alphabetical .(:lowercase .,(code-char 2359)))) ;;  "ष"
    (2369 (:alphabetical .(:lowercase .,(code-char 2369)))) ;;  "ु"
    (2371 (:alphabetical .(:lowercase .,(code-char 2371)))) ;;  "ृ"
    (2381 (:alphabetical .(:lowercase .,(code-char 2381)))) ;;  "्"
    (2453 (:alphabetical .(:lowercase .,(code-char 2453)))) ;;  "ক"
    (2456 (:alphabetical .(:lowercase .,(code-char 2456)))) ;;  "ঘ"
    (2478 (:alphabetical .(:lowercase .,(code-char 2478)))) ;;  "ম"
    (2482 (:alphabetical .(:lowercase .,(code-char 2482)))) ;;  "ল"
    (2494 (:alphabetical .(:lowercase .,(code-char 2494)))) ;;  "া"
    (2503 (:alphabetical .(:lowercase .,(code-char 2503)))) ;;  "ে"
    (3404 (:alphabetical . (:lowercase ., (code-char 3404)))) 
    (4666 (:alphabetical . (:lowercase ., (code-char 4666)))) 
    (4667 (:alphabetical . (:lowercase ., (code-char 4667)))) 
    (5039 (:alphabetical . (:uppercase .,(code-char 5039)))) ;; "Ꭿ"  #\CHEROKEE_LETTER_HI
    (5043 (:alphabetical . (:uppercase .,(code-char 5043)))) ;; "Ꮃ" #\CHEROKEE_LETTER_LA
    (7484 (:punctuation  .,(punctuation-named (code-char 7484)))) ;; ᴼ
    (7506 (:alphabetical . (:lowercase ., (code-char 7506)))) 
    (7521 (:alphabetical . (:lowercase ., (code-char 7521)))) 
    (7527 (:punctuation  .,(punctuation-named (code-char 7527)))) ;; ᵧ
    (7529 (:punctuation  .,(punctuation-named (code-char 7529)))) ;; ᵩ
    (7712 (:alphabetical . (:uppercase .,(code-char 7712)))) ;; "Ḡ"  #\LATIN_CAPITAL_LETTER_G_WITH_MACRON
    (7818 (:alphabetical . (:uppercase .,(code-char 7818)))) ;; Ẋ
    (7819 (:alphabetical . (:lowercase ., (code-char 7819)))) 
    (7821 (:alphabetical . (:lowercase ., (code-char 7821))))
    (7825 (:alphabetical . (:lowercase .,(code-char 7825)))) ;; #\LATIN_SMALL_LETTER_Z_WITH_CIRCUMFLEX 
    (7842 (:alphabetical .(:lowercase .,(code-char 7842))))  ;;  "Ả"
    (7853 (:alphabetical . (:uppercase .,(code-char 7853)))) ;; ậ
    (7857 (:alphabetical . (:uppercase .,(code-char 7857)))) ;; ằ
    (7867 (:alphabetical . (:uppercase .,(code-char 7867)))) ;; ẻ
    (7868 (:alphabetical . (:uppercase .,(code-char 7868)))) ;; Ẽ
    (7869 (:alphabetical . (:lowercase .,(code-char 7869)))) ;; #\LATIN_SMALL_LETTER_E_WITH_TILDE 
    (7887 (:alphabetical . (:uppercase .,(code-char 7887)))) ;; ỏ
    (7899 (:alphabetical . (:uppercase .,(code-char 7899)))) ;; ớ
    (7923 (:alphabetical .(:lowercase .,(code-char 7923))))  ;;  "ỳ"
    (7929 (:alphabetical . (:lowercase ., (code-char 7929)))) 
    (8004 (:punctuation  .,(punctuation-named (code-char 8004)))) ;; #\GREEK_SMALL_LETTER_OMICRON_WITH_PSILI_AND_OXIA
    (8125 (:punctuation .,(punctuation-named (code-char 8125)))) ;;  "᾽"
    (8194 (:punctuation  .,(punctuation-named (code-char 8194)))) ;;" ", (code = 8194)  ;; #\EN_SPACE
    (8195 (:punctuation  .,(punctuation-named (code-char 8195)))) ;;  #\EM_SPACE      
    (8196 (:punctuation  .,(punctuation-named (code-char 8196)))) ;;  
    (8197 (:punctuation . :space)) ;; ,(punctuation-named (code-char 8197)))) ;;" ", (code = 8197)  ;; #\FOUR-PER-EM_SPACE
    (8200 (:punctuation  .,(punctuation-named (code-char 8200)))) ;; #\PUNCTUATION_SPACE
    (8201 (:punctuation . :space)) ;; ,(punctuation-named (code-char 8201)))) ;;" ", (code = 8201)  ;; #\THIN_SPACE
    (8202 (:punctuation .  :space)) ;; ,(punctuation-named (code-char 8202)))) ;;" ", (code = 8202)   ;; #\hair_space
    (8203 (:punctuation . :space))  ;; #\ZERO_WIDTH_SPACE
    (8206 (:punctuation  .,(punctuation-named (code-char 8206)))) ;;‎
    (8207 (:punctuation  .,(punctuation-named (code-char 8207)))) ;;‏
    (8208 (:punctuation  .,(punctuation-named (code-char 8208)))) ;;"‐"  ;; #\HYPHEN
    (8209 (:punctuation  .,(punctuation-named (code-char 8209)))) ;;"‑"   ;; #\NON-BREAKING_HYPHEN
    (8210 (:punctuation  .,(punctuation-named (code-char 8210)))) ;;‒
    (8211 (:punctuation  .,(punctuation-named #\- ))) ;; en dash
    (8212 (:punctuation  .,(punctuation-named #\- ))) ;; em dash, html: &mdash; "—"        ;; Doesn't appear to have a symbolic form in ccl        ;; (note from Laurel: this should probably be treated       ;; differently from en dash and hyphen but isn't yet)
    (8213 (:punctuation  .,(punctuation-named (code-char 8213)))) ;;"―", (code = 8213)
    (8214 (:punctuation  .,(punctuation-named (code-char 8214)))) ;; #\DOUBLE_VERTICAL_LINE      
    (8216 (:punctuation  .,(punctuation-named #\' ))) ;; left single quote
    (8217 (:punctuation  .,(punctuation-named #\' ))) ;; right single quote
    (8218 (:punctuation  .,(punctuation-named (code-char 8218)))) ;;"‚", (code = 8218)
    (8220 (:punctuation  .,(punctuation-named #\" ))) ;; left double quote
    (8221 (:punctuation  .,(punctuation-named #\" ))) ;; right double quote
    (8222 (:punctuation  .,(punctuation-named (code-char 8222)))) ;; #\DOUBLE_LOW-9_QUOTATION_MARK
    (8224 (:punctuation  .,(punctuation-named (code-char 8224)))) ;; †
    (8225 (:punctuation  .,(punctuation-named (code-char 8225)))) ;; ‡
    (8226 (:punctuation  .,(punctuation-named (code-char 8226)))) ;;"•", (code = 8226)
    (8229 (:punctuation  .,(punctuation-named (code-char 8229)))) ;;#\TWO_DOT_LEADER
    (8230 (:punctuation  .,(punctuation-named (code-char 8230)))) ;;"…", (code = 8230)
    (8231 (:punctuation  .,(punctuation-named (code-char 8231)))) ;; ‧
    (8232 (:punctuation  .,(punctuation-named (code-char 8232)))) ;;"", (code = 8232)
    (8234 (:punctuation .,(punctuation-named (code-char 8234)))) ;; "‪"
    (8235 (:alphabetical . (:lowercase ., (code-char 8235)))) 
    (8236 (:alphabetical . (:lowercase ., (code-char 8236)))) 
    (8239 (:punctuation  .,(punctuation-named (code-char 8239)))) ;; 
    (8240 (:punctuation  .,(punctuation-named (code-char 8240)))) ;;"‰", (code = 8240)
    (8242 (:punctuation  .,(punctuation-named (code-char 8242)))) ;; "prime"
    (8243 (:punctuation  .,(punctuation-named (code-char 8243)))) ;;"″", (code = 8243)
    (8244 (:punctuation  .,(punctuation-named (code-char 8244)))) ;; #\TRIPLE_PRIME
    (8245 (:punctuation  .,(punctuation-named (code-char 8245)))) ;;‵
    (8249 (:punctuation  .,(punctuation-named (code-char 8249)))) ;;‹
    (8250 (:punctuation .,(punctuation-named (code-char 8250)))) ;; "›"
    (8254 (:alphabetical . (:lowercase ., (code-char 8254)))) ;; "‾"
    (8257 (:punctuation  .,(punctuation-named (code-char 8257)))) ;; ⁁
    (8260 (:punctuation  .,(punctuation-named (code-char 8260)))) ;; "⁄" #\U+2044
    (8270 (:punctuation  .,(punctuation-named (code-char 8270)))) ;; ⁎
    (8289 (:punctuation  .,(punctuation-named (code-char 8289)))) ;; ⁡
    (8290 (:punctuation .,(punctuation-named (code-char 8290))))  ;;"⁢"
    (8304 (:alphabetical . (:lowercase ., (code-char 8304)))) 
    (8313 (:punctuation  .,(punctuation-named (code-char 8313)))) ;; "⁹" #\SUPERSCRIPT_NINE
    (8322 (:punctuation  .,(punctuation-named (code-char 8322)))) ;; ₂
    (8323 (:punctuation  .,(punctuation-named (code-char 8323)))) ;; ₃
    (8364 (:punctuation  .,(punctuation-named (code-char 8364)))) ;; #\EURO_SIGN
    (8446 (:punctuation  .,(punctuation-named (code-char 8446)))) ;;"ℒ", (code = 8446)
    (8450 (:alphabetical . (:lowercase ., (code-char 8450)))) ;; "ℂ"
    (8451 (:punctuation  .,(punctuation-named (code-char 8451)))) ;;"℃", (code = 8451)
    (8459 (:alphabetical .(:lowercase .,(code-char 8459)))) ;;  "ℋ"
    (8462 (:punctuation  .,(punctuation-named (code-char 8462)))) ;; "ℎ", #\PLANCK_CONSTANT
    (8466 (:punctuation  .,(punctuation-named (code-char 8466)))) ;;"ℒ", (code = 8466)
    (8467 (:punctuation  .,(punctuation-named (code-char 8467)))) ;; ℓ
    (8469 (:alphabetical . (:uppercase .,(code-char 8469))))      ;; ℕ
    (8471 (:punctuation  .,(punctuation-named (code-char 8471)))) ;;℗
    (8473 (:alphabetical .(:lowercase .,(code-char 8473)))) ;;  "ℙ"
    (8475 (:alphabetical . (:lowercase ., (code-char 8475))))
    (8476 (:alphabetical . (:lowercase .,(code-char 8476)))) ;; #\BLACK-LETTER_CAPITAL_R 
    (8477 (:alphabetical . (:uppercase .,(code-char 8477)))) ;; ℝ
    (8482 (:punctuation  .,(punctuation-named (code-char 8482)))) ;;"™", (code = 8482)
    (8484 (:alphabetical .(:lowercase .,(code-char 8484)))) ;;  "ℤ"
    (8486 (:punctuation  .,(punctuation-named (code-char 8486)))) ;;"Ω" #\U+2126 
    (8488 (:alphabetical . (:uppercase ., #\ℨ))) 
    (8490 (:punctuation  .,(punctuation-named (code-char 8490)))) ;; #\KELVIN_SIGN
    (8491 (:punctuation  .,(punctuation-named (code-char 8491)))) ;; angstrom symbol
    (8492 (:alphabetical . (:uppercase .,(code-char 8492))))      ;; ℬ
    (8496 (:alphabetical . (:uppercase .,(code-char 8496))))      ;; ℰ
    (8499 (:punctuation  .,(punctuation-named (code-char 8499)))) ;;"ℳ" #\U+2133
    (8501 (:alphabetical . (:lowercase .,(code-char 8501)))) ;; #\ALEF_SYMBOL 
    (8531 (:punctuation  .,(punctuation-named (code-char 8531)))) ;;"⅓", (code = 8531)
    (8532 (:punctuation .,(punctuation-named (code-char 8532)))) ;;"⅔"
    (8544 (:punctuation  .,(punctuation-named (code-char 8544)))) ;; #\ROMAN_NUMERAL_ONE
    (8545 (:punctuation  .,(punctuation-named (code-char 8545)))) ;;"Ⅱ", (code = 8545)
    (8546 (:punctuation  .,(punctuation-named (code-char 8546)))) ;; #\ROMAN_NUMERAL_THREE
    (8547 (:punctuation  .,(punctuation-named (code-char 8547)))) ;; #\ROMAN_NUMERAL_FOUR
    (8550 (:alphabetical . (:lowercase ., (code-char 8550)))) ;; "Ⅶ"
    (8569 (:punctuation  .,(punctuation-named (code-char 8569)))) ;; ⅹ
    (8592 (:punctuation  .,(punctuation-named (code-char 8592)))) ;;"←" #\left_right_arrow
    (8593 (:punctuation  .,(punctuation-named (code-char 8593)))) ;;"↑", (code = 8593)
    (8594 (:punctuation  .,(punctuation-named (code-char 8594)))) ;; rightwards arrow
    (8595 (:punctuation  .,(punctuation-named (code-char 8595)))) ;;"↓", (code = 8595)
    (8596 (:punctuation  .,(punctuation-named (code-char 8596))))
    (8614 (:punctuation .,(punctuation-named (code-char 8614)))) ;; #\RIGHTWARDS_ARROW_FROM_BAR
    (8644 (:punctuation  .,(punctuation-named (code-char 8644)))) ;;⇄     
    (8656 (:punctuation  .,(punctuation-named (code-char 8656)))) ;; #\LEFTWARDS_DOUBLE_ARROW
    (8658 (:punctuation  .,(punctuation-named (code-char 8658)))) ;; #\RIGHTWARDS_DOUBLE_ARROW
    (8660 (:punctuation  .,(punctuation-named (code-char 8660)))) ;; ⇔
    (8669 (:punctuation .,(punctuation-named (code-char 8669)))) ;; "⇝"
    (8672 (:punctuation  .,(punctuation-named (code-char 8672)))) ;; "⇠"
    (8677 (:punctuation  .,(punctuation-named (code-char 8677)))) ;;"⇥"
    (8704 (:punctuation  .,(punctuation-named (code-char 8704)))) ;; #|for_all
    (8706 (:punctuation  .,(punctuation-named (code-char 8706)))) ;;"∂", (code = 8706)
    (8707 (:punctuation  .,(punctuation-named (code-char 8707)))) ;;"∃"
    (8709 (:punctuation  .,(punctuation-named (code-char 8709)))) ;; #\EMPTY_SET
    (8710 (:punctuation  .,(punctuation-named (code-char 8710)))) ;;"∆" #\U+2206
    (8711 (:punctuation  .,(punctuation-named (code-char 8711)))) ;; ∇
    (8712 (:punctuation  .,(punctuation-named (code-char 8712)))) ;; "∈" #\U+2208
    (8713 (:punctuation .,(punctuation-named (code-char 8713)))) ;; #\NOT_AN_ELEMENT_OF 
    (8714 (:punctuation  .,(punctuation-named (code-char 8714)))) ;;"∊", (code = 8714)
    (8715 (:punctuation  .,(punctuation-named (code-char 8715)))) ;; ∋
    (8718 (:alphabetical . (:lowercase ., (code-char 8718)))) ;; "∎"
    (8719 (:punctuation  .,(punctuation-named (code-char 8719)))) ;; "∏"
    (8721 (:punctuation  .,(punctuation-named (code-char 8721)))) ;;"∑", (code = 8721)
    (8722 (:punctuation  .,(punctuation-named #\-))) ;; ""−" #\U+2212 Minus sign
    (8725 (:punctuation  .,(punctuation-named (code-char 8725)))) ;; ∕
    (8726 (:punctuation .,(punctuation-named (code-char 8726)))) ;; "∖"
    (8727 (:punctuation  .,(punctuation-named (code-char 8727)))) ;; "∗" #\U+2217
    (8728 (:punctuation  .,(punctuation-named (code-char 8728)))) ;;∘
    (8729 (:punctuation  .,(punctuation-named (code-char 8729)))) ;; #\BULLET_OPERATOR
    (8729 (:punctuation  .,(punctuation-named (code-char 8729)))) ;; ∇
    (8730 (:punctuation  .,(punctuation-named (code-char 8730)))) ;;
    (8733 (:punctuation  .,(punctuation-named (code-char 8733)))) ;;
    (8733 (:punctuation  .,(punctuation-named (code-char 8733)))) ;; 
    (8733 (:punctuation  .,(punctuation-named (code-char 8733)))) ;; #\PROPORTIONAL_TO
    (8734 (:punctuation  .,(punctuation-named (code-char 8734)))) ;;"∞", (code = 8734)
    (8737 (:punctuation  .,(punctuation-named (code-char 8737)))) ;; ∡
    (8739 (:punctuation  .,(punctuation-named (code-char 8739)))) ;;"∣", (code = 8739)
    (8741 (:punctuation  .,(punctuation-named (code-char 8741)))) ;; ∥
    (8743 (:punctuation  .,(punctuation-named (code-char 8743)))) ;; "∧" #\U+2227
    (8745 (:punctuation  .,(punctuation-named (code-char 8745)))) ;; "∩" #\U+2229
    (8746 (:punctuation  .,(punctuation-named (code-char 8746)))) ;; #\UNION
    (8747 (:punctuation  .,(punctuation-named (code-char 8747)))) ;; "∫", (code = 8747)
    (8748 (:punctuation .,(punctuation-named (code-char 8748)))) ;; "∬"
    (8749 (:punctuation .,(punctuation-named (code-char 8749)))) ;; "∭"
    (8758 (:punctuation  .,(punctuation-named #\:))) ;; ratio  #\U+2236       ;; This is tilde in the Mathematical operator section. ;; we'll use a regular ascii tilde instead
    (8759 (:punctuation  .,(punctuation-named (code-char 8759)))) ;; ∷
    (8760 (:punctuation  .,(punctuation-named (code-char 8760)))) ;; ∸
    (8764 (:punctuation  .,(punctuation-named #\~ ))) ;; #\∼
    (8765 (:punctuation  .,(punctuation-named #\~ ) )) ;; #\REVERSED_TILDE
    (8771 (:punctuation  .,(punctuation-named (code-char 8771)))) ;;≃
    (8773 (:punctuation  .,(punctuation-named (code-char 8773)))) ;; ≅
    (8775 (:alphabetical . (:uppercase .,(code-char 8775))))      ;; ≇
    (8776 (:punctuation  .,(punctuation-named (code-char 8776)))) ;;"≈", (code = 8776)
    (8780 (:punctuation  .,(punctuation-named (code-char 8780)))) ;; #\ALL_EQUAL_TO
    (8781 (:punctuation  .,(punctuation-named (code-char 8781)))) ;;"≍", (code = 8781)
    (8786 (:alphabetical . (:lowercase ., (code-char 8786)))) ;; "≒"
    (8793 (:punctuation  .,(punctuation-named (code-char 8793)))) ;; ≙
    (8800 (:punctuation  .,(punctuation-named (code-char 8800)))) ;;"≠", (code = 8805)    
    (8801 (:punctuation  .,(punctuation-named (code-char 8801)))) ;; #\IDENTICAL_TO
    (8802 (:punctuation .,(punctuation-named (code-char 8802)))) ;; "≢"
    (8804 (:punctuation  .,(punctuation-named (code-char 8804)))) ;;  "≤"
    (8805 (:punctuation  .,(punctuation-named (code-char 8805)))) ;;"≥", (code = 8805)
    (8806 (:punctuation  .,(punctuation-named (code-char 8806)))) ;;"≦", (code = 8806)
    (8807 (:punctuation  .,(punctuation-named (code-char 8807)))) ;; #\GREATER-THAN_OVER_EQUAL_TO
    (8810 (:punctuation  .,(punctuation-named (code-char 8810)))) ;; "≪" #\U+226B
    (8811 (:punctuation  .,(punctuation-named (code-char 8811)))) ;; "≫" #\U+226B
    (8818 (:punctuation .,(punctuation-named (code-char 8818)))) ;; "≲"
    (8819 (:punctuation  .,(punctuation-named (code-char 8819)))) ;; ≳
    (8826 (:punctuation .,(punctuation-named (code-char 8826)))) ;; #\PRECEDES
    (8827 (:punctuation .,(punctuation-named (code-char 8827)))) ;; #\SUCCEEDS
    (8834 (:punctuation  .,(punctuation-named (code-char 8834)))) ;; ⊂
    (8835 (:punctuation .,(punctuation-named (code-char 8835)))) ;; #\SUPERSET_OF
    (8838 (:punctuation  .,(punctuation-named (code-char 8838)))) ;; ⊆
    (8839 (:punctuation  .,(punctuation-named (code-char 8839)))) ;; "⊇" #\U+2287
    (8840 (:punctuation .,(punctuation-named (code-char 8840)))) ;; "⊈"
    (8842 (:alphabetical . (:lowercase ., (code-char 8842)))) ;; "⊊"
    (8853 (:punctuation  .,(punctuation-named (code-char 8853)))) ;; ⊕
    (8855 (:punctuation  .,(punctuation-named (code-char 8855)))) ;; ⊗
    (8867 (:punctuation  .,(punctuation-named (code-char 8867)))) ;; ⊣
    (8869 (:punctuation  .,(punctuation-named (code-char 8869)))) ;; #\UP_TACK
    (8895 (:punctuation  .,(punctuation-named (code-char 8895)))) ;;⊿
    (8896 (:punctuation  .,(punctuation-named (code-char 8896)))) ;; #\N-ARY_LOGICAL_AND
    (8899 (:punctuation .,(punctuation-named (code-char 8899)))) ;; "⋃"
    (8900 (:punctuation  .,(punctuation-named (code-char 8900)))) ;; "⋄"
    (8901 (:punctuation  .,(punctuation-named (code-char 8901)))) ;;"⋅", (code = 8901)
    (8902 (:punctuation  .,(punctuation-named (code-char 8902))))
    (8921 (:punctuation  .,(punctuation-named (code-char 8921)))) ;; #\VERY_MUCH_GREATER-THAN
    (8942 (:punctuation  .,(punctuation-named (code-char 8942)))) ;; "▪"
    (8943 (:punctuation  .,(punctuation-named (code-char 8943)))) ;;"⋯", (code = 8943)
    (8945 (:punctuation .,(punctuation-named (code-char 8945)))) ;; "⋱"
    (8970 (:punctuation  .,(punctuation-named (code-char 8970)))) ;; ⌊
    (8971 (:punctuation  .,(punctuation-named (code-char 8971)))) ;; ⌋
    (8994 (:alphabetical . (:lowercase .,(code-char 8994)))) ;; #\FROWN 
    (9001 (:punctuation  .,(punctuation-named (code-char 9001)))) ;; 〈
    (9002 (:punctuation  .,(punctuation-named (code-char 9002)))) ;; 〉
    (9082 (:punctuation  .,(punctuation-named (code-char 9082)))) ;;⍺
    (9121 (:alphabetical .,(punctuation-named (code-char 9121)))) ;; #\LEFT_SQUARE_BRACKET_UPPER_CORNER 
    (9123 (:alphabetical .,(punctuation-named (code-char 9123)))) ;; #\LEFT_SQUARE_BRACKET_LOWER_CORNER 
    (9124 (:alphabetical .,(punctuation-named (code-char 9124)))) ;; #\RIGHT_SQUARE_BRACKET_UPPER_CORNER 
    (9126 (:alphabetical .,(punctuation-named (code-char 9126)))) ;; #\RIGHT_SQUARE_BRACKET_LOWER_CORNER 
    (9183 (:punctuation .,(punctuation-named (code-char 9183)))) ;; "⏟"
    (9251 (:punctuation .,(punctuation-named (code-char 9251)))) ;; #\OPEN_BOX 
    (9252 (:punctuation .,(punctuation-named (code-char 9252)))) ;; #\SYMBOL_FOR_NEWLINE 
    (9253 (:alphabetical . (:lowercase .,(code-char 9253)))) ;; "␥", #\SYMBOL_FOR_DELETE_FORM_TWO 
    (9312 (:punctuation  .,(punctuation-named (code-char 9312)))) ;; #\CIRCLED_DIGIT_ONE
    (9313 (:punctuation  .,(punctuation-named (code-char 9313)))) ;; #\CIRCLED_DIGIT_TWO
    (9314 (:punctuation  .,(punctuation-named (code-char 9314)))) ;; #\CIRCLED_DIGIT_THREE
    (9315 (:punctuation .,(punctuation-named (code-char 9315)))) ;; "④"
    (9316 (:punctuation .,(punctuation-named (code-char 9316)))) ;; "⑤"
    (9317 (:punctuation .,(punctuation-named (code-char 9317)))) ;; "⑥"
    (9318 (:punctuation .,(punctuation-named (code-char 9318)))) ;; "⑦"
    (9415 (:punctuation  .,(punctuation-named (code-char 9415)))) ;; "Ⓡ"
    (9472 (:punctuation .,(punctuation-named (code-char 9472)))) ;; "─"
    (9474 (:punctuation  .,(punctuation-named (code-char 9474)))) ;;│
    (9524 (:punctuation  .,(punctuation-named (code-char 9524)))) ;;┴
    (9552 (:punctuation  .,(punctuation-named (code-char 9552)))) ;; ═
    (9553 (:punctuation  .,(punctuation-named (code-char 9553)))) ;;║
    (9587 (:punctuation  .,(punctuation-named (code-char 9587)))) ;; "╳"
    (9617 (:punctuation .,(punctuation-named (code-char 9617)))) ;; #\LIGHT_SHADE
    (9618 (:punctuation .,(punctuation-named (code-char 9618)))) ;; #\MEDIUM_SHADE
    (9632 (:punctuation  .,(punctuation-named (code-char 9632)))) ;; #\BLACK_SQUARE
    (9633 (:punctuation  .,(punctuation-named (code-char 9633)))) ;; "□"
    (9633 (:punctuation  .,(punctuation-named (code-char 9633)))) ;; "□"
    (9642 (:punctuation  .,(punctuation-named (code-char 9642)))) ;; "□"
    (9643 (:punctuation .,(punctuation-named (code-char 9643)))) ;; #\WHITE_SMALL_SQUARE
    (9650 (:punctuation  .,(punctuation-named (code-char 9650)))) ;; ▲
    (9651 (:punctuation  .,(punctuation-named (code-char 9651)))) ;; "△" #\U+25B3
    (9652 (:punctuation  .,(punctuation-named (code-char 9652)))) ;; "▴"
    (9653 (:punctuation  .,(punctuation-named (code-char 9653)))) ;;"▵", (code = 8901)
    (9654 (:punctuation  .,(punctuation-named (code-char 9654)))) ;;▶
    (9656 (:punctuation  .,(punctuation-named (code-char 9656)))) ;; ▸
    (9658 (:punctuation  .,(punctuation-named (code-char 9658)))) ;;""►", (code = 9658)
    (9659 (:punctuation .,(punctuation-named (code-char 9659)))) ;; #\WHITE_RIGHT-POINTING_POINTER
    (9660 (:punctuation  .,(punctuation-named (code-char 9660)))) ;;▼
    (9663 (:punctuation  .,(punctuation-named (code-char 9663)))) ;; "▿" #\U+25BF
    (9670 (:punctuation  .,(punctuation-named (code-char 9670)))) ;;◆
    (9674 (:punctuation  .,(punctuation-named (code-char 9674)))) ;; "◊" #\U+25CA
    (9675 (:punctuation  .,(punctuation-named (code-char 9675)))) ;; "○" #\U+25CB
    (9679 (:punctuation  .,(punctuation-named (code-char 9679)))) ;; ●
    (9702 (:punctuation  .,(punctuation-named (code-char 9702)))) ;;◦
    (9723 (:punctuation  .,(punctuation-named (code-char 9723)))) ;; ◻
    (9733 (:punctuation  .,(punctuation-named (code-char 9733)))) ;;"★"
    (9734 (:punctuation  .,(punctuation-named (code-char 9734)))) ;; ☆
    (9792 (:punctuation  .,(punctuation-named (code-char 9792)))) ;; "♀" #\U+2640
    (9794 (:punctuation  .,(punctuation-named (code-char 9794)))) ;; "♂" #\U+2642
    (9830 (:punctuation  .,(punctuation-named (code-char 9830)))) ;; "♦"
    (9839 (:punctuation  .,(punctuation-named (code-char 9839)))) ;; #\MUSIC_SHARP_SIGN
    ;; (1548 (:alphabetical .,(punctuation-named (code-char 1548)))) ;; ،
    
    
    (10005 (:punctuation  .,(punctuation-named (code-char 10005)))) ;; #\MULTIPLICATION_X
    (1001 (:alphabetical . (:lowercase .,(code-char 1001)))) ;; "ϩ", #\COPTIC_SMALL_LETTER_HORI 
    (1002 (:alphabetical . (:lowercase .,(code-char 1002)))) ;; #\COPTIC_CAPITAL_LETTER_GANGIA 
    (1003 (:alphabetical . (:lowercase .,(code-char 1003)))) ;; #\COPTIC_SMALL_LETTER_GANGIA 
    (10031 (:punctuation .,(punctuation-named (code-char 10031)))) ;; "✯"
    (1005 (:alphabetical . (:lowercase .,(code-char 1005)))) ;; #\COPTIC_SMALL_LETTER_SHIMA 
    (1006 (:alphabetical . (:uppercase .,(code-char 1006)))) ;; #\COPTIC_CAPITAL_LETTER_DEI 
    (1011 (:alphabetical . (:lowercase .,(code-char 1011)))) ;; #\GREEK_LETTER_YOT 
    (1021 (:alphabetical . (:lowercase .,(code-char 1021)))) ;; #\GREEK_CAPITAL_REVERSED_LUNATE_SIGMA_SYMBOL 
    (10216 (:punctuation  .,(punctuation-named (code-char 10216)))) ;; ⟨
    (10217 (:punctuation  .,(punctuation-named (code-char 10217)))) ;; ⟩
    (1022 (:alphabetical . (:lowercase .,(code-char 1022)))) ;; #\GREEK_CAPITAL_DOTTED_LUNATE_SIGMA_SYMBOL
    (10229 (:punctuation .,(punctuation-named (code-char 10229)))) ;; 'LONG LEFTWARDS ARROW'
    (10230 (:punctuation .,(punctuation-named (code-char 10230)))) ;; "⟶"
    (10233 (:punctuation .,(punctuation-named (code-char 10233)))) ;; "⟹"
    (1033 (:alphabetical . (:lowercase .,(code-char 1033)))) ;; #\CYRILLIC_CAPITAL_LETTER_LJE 
    (10564 (:alphabetical . (:lowercase .,(code-char 10564)))) ;; #\SHORT_RIGHTWARDS_ARROW_ABOVE_LEFTWARDS_ARROW 
    (10625 (:punctuation .,(punctuation-named (code-char 10625)))) ;; "⦁"
    (10794 (:punctuation  .,(punctuation-named (code-char 10794)))) ;; "⨪" #\U+2A2A
    (10815 (:punctuation  .,(punctuation-named (code-char 10815)))) ;; ⨿
    (10877 (:punctuation  .,(punctuation-named (code-char 10877)))) ;;"⩽", (code = 10878)
    (10878 (:punctuation  .,(punctuation-named (code-char 10878)))) ;;"⩾", (code = 10878)
    (11373 (:punctuation  .,(punctuation-named (code-char 11373)))) ;; Ɑ
    (119967 (:punctuation  .,(punctuation-named (code-char 119967)))) ;;"풟", (code = 119967)
    (119974 (:alphabetical .(:uppercase .,(code-char 119974)))) ;;;; 𝒦
    (119977 (:alphabetical .(:lowercase .,(code-char 119977)))) ;; #\MATHEMATICAL_SCRIPT_CAPITAL_N 
    (119978 (:alphabetical .(:lowercase .,(code-char 119978)))) ;; #\MATHEMATICAL_SCRIPT_CAPITAL_O 
    (119989 (:alphabetical .(:lowercase .,(code-char 119989)))) ;; #\MATHEMATICAL_SCRIPT_CAPITAL_Z 
    (120594 (:alphabetical .(:lowercase .,(code-char 120594)))) ;; #\MATHEMATICAL_ITALIC_SMALL_CHI 
    (12288 (:punctuation  .,(punctuation-named (code-char 12288)))) ;; 　
    (12289 (:punctuation  .,(punctuation-named (code-char 12289)))) ;;
    (12290 (:punctuation  .,(punctuation-named (code-char 12290)))) ;; 。
    (12296 (:punctuation  .,(punctuation-named (code-char 12296)))) ;; 〈
    (12297 (:punctuation  .,(punctuation-named (code-char 12297)))) ;; 〉
    (12304 (:punctuation  .,(punctuation-named (code-char 12304)))) ;; 【
    (12305 (:punctuation  .,(punctuation-named (code-char 12305)))) ;; 】
    (12354 (:hiragana . (:lowercase .,(code-char 12354)))) ;; #\HIRAGANA_LETTER_A)
    (12356 (:hiragana .(:lowercase ., (code-char 12356)))) ;; #\HIRAGANA_LETTER_I
    (12360 (:hiragana .(:lowercase ., (code-char 12360)))) ;;  #\HIRAGANA_LETTER_E
    (12362 (:hiragana .(:lowercase ., (code-char 12362)))) ;; #\HIRAGANA_LETTER_O
    (12363 (:hiragana .(:lowercase ., (code-char 12363)))) ;; #\HIRAGANA_LETTER_KA
    (12364 (:hiragana .(:lowercase ., (code-char 12364)))) ;; #\HIRAGANA_LETTER_GA
    (12367 (:hiragana .(:lowercase ., (code-char 12367)))) ;; #\HIRAGANA_LETTER_KU
    (12369 (:hiragana .(:lowercase ., (code-char 12369)))) ;; #\HIRAGANA_LETTER_KE
    (12371 (:hiragana .(:lowercase ., (code-char 12371)))) ;; #\HIRAGANA_LETTER_KO
    (12372 (:hiragana .(:lowercase ., (code-char 12372)))) ;; #\HIRAGANA_LETTER_GO
    (12373 (:hiragana .(:lowercase ., (code-char 12373)))) ;; #\HIRAGANA_LETTER_SA
    (12375 (:hiragana .(:lowercase ., (code-char 12375)))) ;; #\HIRAGANA_LETTER_SI
    (12377 (:hiragana .(:lowercase ., (code-char 12377)))) ;; #\HIRAGANA_LETTER_SU
    (12383 (:hiragana .(:lowercase ., (code-char 12383)))) ;; #\HIRAGANA_LETTER_TA
    (12384 (:hiragana .(:lowercase ., (code-char 12384)))) ;; #\HIRAGANA_LETTER_DA
    (12387 (:hiragana .(:lowercase ., (code-char 12387)))) ;; #\HIRAGANA_LETTER_SMALL_TU
    (12388 (:hiragana .(:lowercase ., (code-char 12388)))) ;; #\HIRAGANA_LETTER_TU
    (12389 (:hiragana .(:lowercase ., (code-char 12389)))) ;; #\HIRAGANA_LETTER_DU
    (12390 (:hiragana .(:lowercase ., (code-char 12390)))) ;; #\HIRAGANA_LETTER_TE
    (12391 (:hiragana .(:lowercase ., (code-char 12391)))) ;; #\HIRAGANA_LETTER_DE
    (12392 (:hiragana .(:lowercase ., (code-char 12392)))) ;; #\HIRAGANA_LETTER_TO
    (12394 (:hiragana .(:lowercase ., (code-char 12394)))) ;; #\HIRAGANA_LETTER_NA
    (12395 (:hiragana .(:lowercase ., (code-char 12395)))) ;; #\HIRAGANA_LETTER_NI
    (12398 (:hiragana .(:lowercase ., (code-char 12398)))) ;; #\HIRAGANA_LETTER_NO
    (12399 (:hiragana .(:lowercase ., (code-char 12399)))) ;; #\HIRAGANA_LETTER_HA
    (12400 (:hiragana .(:lowercase ., (code-char 12400)))) ;; #\HIRAGANA_LETTER_BA
    (12403 (:hiragana .(:lowercase ., (code-char 12403)))) ;; #\HIRAGANA_LETTER_BI
    (12414 (:hiragana .(:lowercase ., (code-char 12414)))) ;; #\HIRAGANA_LETTER_MA
    (12417 (:hiragana .(:lowercase ., (code-char 12417)))) ;; #\HIRAGANA_LETTER_ME
    (12418 (:hiragana .(:lowercase ., (code-char 12418)))) ;; #\HIRAGANA_LETTER_MO
    (12424 (:hiragana .(:lowercase ., (code-char 12424)))) ;; #\HIRAGANA_LETTER_YO
    (12425 (:hiragana .(:lowercase ., (code-char 12425)))) ;; #\HIRAGANA_LETTER_RA
    (12427 (:hiragana .(:lowercase ., (code-char 12427)))) ;; #\HIRAGANA_LETTER_RU
    (12428 (:hiragana .(:lowercase ., (code-char 12428)))) ;; #\HIRAGANA_LETTER_RE
    (12431 (:hiragana .(:lowercase ., (code-char 12431)))) ;; #\HIRAGANA_LETTER_WA
    (12434 (:hiragana .(:lowercase ., (code-char 12434)))) ;; #\HIRAGANA_LETTER_WO
    (12435 (:hiragana .(:lowercase ., (code-char 12435)))) ;; #\HIRAGANA_LETTER_N
    (12450 (:katakana .(:lowercase ., (code-char 12450)))) ;; #\KATAKANA_LETTER_A
    (12452 (:katakana .(:lowercase ., (code-char 12452)))) ;; #\KATAKANA_LETTER_I
    (12458 (:katakana .(:lowercase ., (code-char 12458)))) ;; #\KATAKANA_LETTER_O
    (12463 (:katakana .(:lowercase ., (code-char 12463)))) ;; #\KATAKANA_LETTER_KU
    (12472 (:katakana .(:lowercase ., (code-char 12472)))) ;; #\KATAKANA_LETTER_ZI
    (12473 (:katakana .(:lowercase ., (code-char 12473)))) ;; #\KATAKANA_LETTER_SU
    (12474 (:katakana .(:lowercase ., (code-char 12474)))) ;; #\KATAKANA_LETTER_ZU
    (12479 (:katakana .(:lowercase ., (code-char 12479)))) ;; #\KATAKANA_LETTER_TA
    (12483 (:katakana .(:lowercase ., (code-char 12483)))) ;; #\KATAKANA_LETTER_SMALL_TU
    (12487 (:katakana .(:lowercase ., (code-char 12487)))) ;; #\KATAKANA_LETTER_DE
    (12490 (:katakana .(:lowercase ., (code-char 12490)))) ;; #\KATAKANA_LETTER_NA
    (12495 (:katakana .(:lowercase ., (code-char 12495)))) ;; #\KATAKANA_LETTER_HA
    (12503 (:katakana .(:lowercase ., (code-char 12503)))) ;; #\KATAKANA_LETTER_PU
    (12510 (:katakana .(:lowercase ., (code-char 12510)))) ;; #\KATAKANA_LETTER_MA
    (12514 (:katakana .(:lowercase ., (code-char 12514)))) ;; #\KATAKANA_LETTER_MO
    (12522 (:katakana .(:lowercase ., (code-char 12522)))) ;; #\KATAKANA_LETTER_RI
    (12523 (:katakana .(:lowercase ., (code-char 12523)))) ;; #\KATAKANA_LETTER_RU
    (12524 (:katakana .(:lowercase ., (code-char 12524)))) ;; #\KATAKANA_LETTER_RE
    (12525 (:katakana .(:lowercase ., (code-char 12525)))) ;; #\KATAKANA_LETTER_RO
    (12539 (:katakana .(:lowercase ., (code-char 12539)))) ;; #\KATAKANA_MIDDLE_DOT
    (12540 (:katakana .(:lowercase ., (code-char 12540)))) ;; #\KATAKANA-HIRAGANA_PROLONGED_SOUND_MARK
    (13212 (:punctuation .,(punctuation-named (code-char 13212)))) ;; "㎜"
    (13212 (:punctuation .,(punctuation-named (code-char 13212)))) ;; "㎜"'
    (1349 (:alphabetical . (:lowercase .,(code-char 1349)))) ;; #\ARMENIAN_CAPITAL_LETTER_YI 
    (1350 (:alphabetical . (:uppercase .,(code-char 1350)))) ;; #\ARMENIAN_CAPITAL_LETTER_NOW 
    (1546 (:punctuation .,(punctuation-named (code-char 1546)))) ;; #\ARABIC-INDIC_PER_TEN_THOUSAND_SIGN 
    (1843 (:alphabetical . (:lowercase .,(code-char 1843)))) ;; #\SYRIAC_ZQAPHA_ABOVE 
    (1878 (:alphabetical . (:lowercase .,(code-char 1878)))) ;; #\ARABIC_LETTER_BEH_WITH_SMALL_V 
    (19968 (:alphabetical .(:lowercase .,(code-char 19968)))) ;; #\U4E00       ;; following are not yet characterized unicode characters
    (19977 (:punctuation .,(punctuation-named (code-char  19977)))) ;; "三"
    (19978 (:alphabetical .(:lowercase .,(code-char 19978)))) ;; #\U4E0A 
    (19979 (:alphabetical .(:lowercase .,(code-char 19979)))) ;; #\U4E0B 
    (19981 (:alphabetical .(:lowercase .,(code-char 19981)))) ;; #\U4E0D 
    (19982 (:alphabetical .(:lowercase .,(code-char 19982)))) ;; #\U4E0E 
    (19988 (:alphabetical .(:lowercase .,(code-char 19988)))) ;; #\U4E14 
    (19990 (:alphabetical .(:lowercase .,(code-char 19990)))) ;; #\U4E16 
    (19999 (:alphabetical . (:lowercase ., (code-char 19999)))) ;; "丟"
    (20002 (:alphabetical . (:lowercase ., (code-char 20002)))) ;; "丢"
    (20010 (:alphabetical .(:lowercase .,(code-char 20010)))) ;; #\U4E2A 
    (20013 (:alphabetical .(:lowercase .,(code-char 20013)))) ;; #\U4E2D 
    (20020 (:alphabetical .(:lowercase .,(code-char 20020)))) ;; #\U4E34 
    (20026 (:alphabetical .(:lowercase .,(code-char 20026)))) ;; #\U4E3A 
    (20027 (:alphabetical .(:lowercase .,(code-char 20027)))) ;; #\U4E3B 
    (20041 (:alphabetical .(:lowercase .,(code-char 20041)))) ;; #\U4E49 
    (20043 (:alphabetical .(:lowercase .,(code-char 20043)))) ;; #\U4E4B 
    (20044 (:alphabetical .(:lowercase .,(code-char 20044)))) ;; "乌"
    (20063 (:alphabetical .(:lowercase .,(code-char 20063)))) ;; #\U4E5F 
    (20083 (:alphabetical .(:lowercase .,(code-char 20083)))) ;; #\U4E73 
    (20102 (:alphabetical .(:lowercase .,(code-char 20102)))) ;; #\U4E86 
    (20108 (:alphabetical .(:lowercase .,(code-char 20108)))) ;; #\U4E8C 
    (20110 (:alphabetical .(:lowercase .,(code-char 20110)))) ;; #\U4E8E 
    (20114 (:alphabetical .(:lowercase .,(code-char 20114)))) ;; #\U4E92 
    (20122 (:alphabetical .(:lowercase .,(code-char 20122)))) ;; #\U4E9A 
    (20123 (:alphabetical .(:lowercase .,(code-char 20123)))) ;; #\U4E9B 
    (2013 (:alphabetical . (:lowercase .,(code-char 2013)))) ;; #\NKO_LETTER_FA 
    (20132 (:alphabetical .(:lowercase .,(code-char 20132)))) ;; #\U4EA4 
    (20154 (:alphabetical .(:lowercase .,(code-char 20154)))) ;; #\U4EBA 
    (20182 (:alphabetical .(:lowercase .,(code-char 20182)))) ;; #\U4ED6 
    (20195 (:alphabetical .(:lowercase .,(code-char 20195)))) ;; #\U4EE3 
    (20197 (:alphabetical .(:lowercase .,(code-char 20197)))) ;; #\U4EE5 
    (20210 (:alphabetical .(:lowercase .,(code-char 20210)))) ;; "仲"
    (20219 (:alphabetical .(:lowercase .,(code-char 20219)))) ;; #\U4EFB 
    (20221 (:alphabetical . (:lowercase ., (code-char 20221)))) ;; "份"
    (20237 (:alphabetical .(:lowercase .,(code-char 20237)))) ;; "伍"
    (20253 (:alphabetical .(:lowercase .,(code-char 20253)))) ;; #\U4F1D 
    (20272 (:alphabetical .(:lowercase .,(code-char 20272)))) ;; #\U4F30 
    (2028 (:alphabetical . (:lowercase .,(code-char 2028)))) ;; #\NKO_COMBINING_SHORT_LOW_TONE 
    (20284 (:alphabetical .(:lowercase .,(code-char 20284)))) ;; #\U4F3C 
    (20294 (:alphabetical .(:lowercase .,(code-char 20294)))) ;; #\U4F46 
    (20301 (:alphabetical .(:lowercase .,(code-char 20301)))) ;; #\U4F4D 
    (20302 (:alphabetical .(:lowercase .,(code-char 20302)))) ;; #\U4F4E 
    (20303 (:alphabetical .(:lowercase .,(code-char 20303)))) ;; #\U4F4F 
    (20307 (:alphabetical .(:lowercase .,(code-char 20307)))) ;; #\U4F53 
    (20309 (:alphabetical .(:lowercase .,(code-char 20309)))) ;; #\U4F55 
    (20316 (:alphabetical .(:lowercase .,(code-char 20316)))) ;; #\U4F5C 
    (20351 (:alphabetical .(:lowercase .,(code-char 20351)))) ;; #\U4F7F 
    (20363 (:alphabetical .(:lowercase .,(code-char 20363)))) ;; #\U4F8B 
    (20379 (:alphabetical .(:lowercase .,(code-char 20379)))) ;; #\U4F9B 
    (20385 (:alphabetical .(:lowercase .,(code-char 20385)))) ;; #\U4FA1 
    (20391 (:alphabetical .(:lowercase .,(code-char 20391)))) ;; "侧"
    (20449 (:alphabetical .(:lowercase .,(code-char 20449)))) ;; #\U4FE1 
    (20462 (:alphabetical .(:lowercase .,(code-char 20462)))) ;; #\U4FEE 
    (20491 (:alphabetical .(:lowercase .,(code-char 20491)))) ;; #\U500B 
    (20516 (:alphabetical .(:lowercase .,(code-char 20516)))) ;; #\U5024 
    (20540 (:alphabetical .(:lowercase .,(code-char 20540)))) ;; #\U503C 
    (20551 (:alphabetical .(:lowercase .,(code-char 20551)))) ;; "假"
    (20663 (:alphabetical .(:lowercase .,(code-char 20663)))) ;; "傷"
    (20687 (:alphabetical .(:lowercase .,(code-char 20687)))) ;; #\U50CF 
    (20808 (:alphabetical .(:lowercase .,(code-char 20808)))) ;; #\U5148 
    (20809 (:alphabetical .(:lowercase .,(code-char 20809)))) ;; "光"
    (20837 (:alphabetical .(:lowercase .,(code-char 20837)))) ;; #\U5165 
    (20839 (:alphabetical .(:lowercase .,(code-char 20839)))) ;; "內"
    (20840 (:alphabetical .(:lowercase .,(code-char 20840)))) ;; #\U5168 
    (20843 (:alphabetical . (:lowercase ., (code-char 20843)))) ;; "八"
    (20849 (:alphabetical .(:lowercase .,(code-char 20849)))) ;; #\U5171 
    (20851 (:alphabetical .(:lowercase .,(code-char 20851)))) ;; #\U5173 
    (20854 (:alphabetical .(:lowercase .,(code-char 20854)))) ;; #\U5176 
    (20855 (:alphabetical .(:lowercase .,(code-char 20855)))) ;; #\U5177 
    (20856 (:alphabetical .(:lowercase .,(code-char 20856)))) ;; "典"
    (20869 (:alphabetical . (:lowercase ., (code-char 20869)))) ;; "内"
    (20882 (:alphabetical .(:lowercase .,(code-char 20882)))) ;; "冒"
    (20896 (:alphabetical .(:lowercase .,(code-char 20896)))) ;; "冠"
    (20914 (:alphabetical . (:lowercase ., (code-char 20914)))) ;; "冲"
    (20917 (:alphabetical .(:lowercase .,(code-char 20917)))) ;; #\U51B5 
    (20934 (:alphabetical .(:lowercase .,(code-char 20934)))) ;; #\U51C6 
    (20943 (:alphabetical .(:lowercase .,(code-char 20943)))) ;; #\U51CF 
    (20986 (:alphabetical .(:lowercase .,(code-char 20986)))) ;; #\U51FA 
    (20998 (:alphabetical .(:lowercase .,(code-char 20998)))) ;; #\U5206 
    (20999 (:alphabetical .(:lowercase .,(code-char 20999)))) ;; #\U5207 
    (21010 (:alphabetical .(:lowercase .,(code-char 21010)))) ;; #\U5212 
    (21021 (:alphabetical .(:lowercase .,(code-char 21021)))) ;; #\U521D 
    (21029 (:alphabetical .(:lowercase .,(code-char 21029)))) ;; #\U5225 
    (21035 (:alphabetical .(:lowercase .,(code-char 21035)))) ;; #\U522B 
    (21051 (:alphabetical .(:lowercase .,(code-char 21051)))) ;; #\U523B 
    (21058 (:alphabetical .(:lowercase .,(code-char 21058)))) ;; #\U5242 
    (21069 (:alphabetical .(:lowercase .,(code-char 21069)))) ;; #\U524D 
    (21147 (:alphabetical .(:lowercase .,(code-char 21147)))) ;; #\U529B 
    (21152 (:alphabetical .(:lowercase .,(code-char 21152)))) ;; #\U52A0 
    (21160 (:alphabetical .(:lowercase .,(code-char 21160)))) ;; #\U52A8 
    (21161 (:alphabetical .(:lowercase .,(code-char 21161)))) ;; #\U52A9 
    (21177 (:alphabetical .(:lowercase .,(code-char 21177)))) ;; #\U52B9 
    (21205 (:alphabetical .(:lowercase .,(code-char 21205)))) ;; #\U52D5 
    (21270 (:alphabetical .(:lowercase .,(code-char 21270)))) ;; #\U5316 
    (21273 (:alphabetical .(:lowercase .,(code-char 21273)))) ;; "匙"
    (21307 (:alphabetical .(:lowercase .,(code-char 21307)))) ;; #\U533B 
    (21313 (:alphabetical .(:lowercase .,(code-char 21313)))) ;; #\U5341 
    (21319 (:alphabetical .(:lowercase .,(code-char 21319)))) ;; #\U5347 
    (21333 (:alphabetical .(:lowercase .,(code-char 21333)))) ;; #\U5355 
    (21335 (:alphabetical .(:lowercase .,(code-char 21335)))) ;; "南"
    (21338 (:alphabetical .(:lowercase .,(code-char 21338)))) ;; "博"
    (21355 (:alphabetical .(:lowercase .,(code-char 21355)))) ;; #\U536B 
    (21361 (:alphabetical .(:lowercase .,(code-char 21361)))) ;; #\U5371 
    (21363 (:alphabetical .(:lowercase .,(code-char 21363)))) ;; #\U5373 
    (21387 (:alphabetical .(:lowercase .,(code-char 21387)))) ;; #\U538B 
    (21407 (:alphabetical .(:lowercase .,(code-char 21407)))) ;; "原"
    (21435 (:alphabetical .(:lowercase .,(code-char 21435)))) ;; #\U53BB 
    (21442 (:alphabetical .(:lowercase .,(code-char 21442)))) ;; "参"
    (21450 (:alphabetical .(:lowercase .,(code-char 21450)))) ;; #\U53CA 
    (21452 (:alphabetical .(:lowercase .,(code-char 21452)))) ;; #\U53CC 
    (21453 (:alphabetical .(:lowercase .,(code-char 21453)))) ;; #\U53CD 
    (21457 (:alphabetical .(:lowercase .,(code-char 21457)))) ;; #\U53D1 
    (21463 (:alphabetical .(:lowercase .,(code-char 21463)))) ;; #\U53D7 
    (21464 (:alphabetical .(:lowercase .,(code-char 21464)))) ;; #\U53D8 
    (21475 (:alphabetical . (:lowercase ., (code-char 21475)))) ;; "口"
    (21476 (:alphabetical .(:lowercase .,(code-char 21476)))) ;; "古"
    (21487 (:alphabetical .(:lowercase .,(code-char 21487)))) ;; #\U53EF 
    (21490 (:alphabetical .(:lowercase .,(code-char 21490)))) ;; #\U53F2 
    (21494 (:alphabetical .(:lowercase .,(code-char 21494)))) ;; "叶"
    (21495 (:alphabetical .(:lowercase .,(code-char 21495)))) ;; #\U53F7 
    (21512 (:alphabetical .(:lowercase .,(code-char 21512)))) ;; #\U5408 
    (21516 (:alphabetical .(:lowercase .,(code-char 21516)))) ;; #\U540C 
    (21517 (:alphabetical .(:lowercase .,(code-char 21517)))) ;; #\U540D 
    (21518 (:alphabetical .(:lowercase .,(code-char 21518)))) ;; #\U540E 
    (21521 (:alphabetical .(:lowercase .,(code-char 21521)))) ;; #\U5411 
    (21542 (:alphabetical .(:lowercase .,(code-char 21542)))) ;; #\U5426 
    (21560 (:alphabetical .(:lowercase .,(code-char 21560)))) ;; #\U5438 
    (21578 (:alphabetical .(:lowercase .,(code-char 21578)))) ;; #\U544A 
    (21608 (:alphabetical .(:lowercase .,(code-char 21608)))) ;; #\U5468 
    (21619 (:alphabetical .(:lowercase .,(code-char 21619)))) ;; "味"
    (21644 (:alphabetical .(:lowercase .,(code-char 21644)))) ;; #\U548C 
    (21766 (:alphabetical .(:lowercase .,(code-char 21766)))) ;; #\U5506 
    (21777 (:alphabetical .(:lowercase .,(code-char 21777)))) ;; #\U5511 
    (21892 (:alphabetical .(:lowercase .,(code-char 21892)))) ;; #\U5584 
    (21902 (:alphabetical . (:lowercase ., (code-char 21902)))) ;; "喎"
    (21931 (:alphabetical .(:lowercase .,(code-char 21931)))) ;; #\U55AB 
    (22139 (:alphabetical .(:lowercase .,(code-char 22139)))) ;; #\U567B 
    (22235 (:alphabetical .(:lowercase .,(code-char 22235)))) ;; "四"
    (22238 (:alphabetical .(:lowercase .,(code-char 22238)))) ;; #\U56DE 
    (22240 (:alphabetical .(:lowercase .,(code-char 22240)))) ;; #\U56E0 
    (22242 (:alphabetical .(:lowercase .,(code-char 22242)))) ;; "团"
    (22243 (:alphabetical .(:lowercase .,(code-char 22243)))) ;; #\U56E3 
    (22260 (:alphabetical .(:lowercase .,(code-char 22260)))) ;; #\U56F4 
    (22270 (:alphabetical .(:lowercase .,(code-char 22270)))) ;; #\U56FE 
    (22311 (:alphabetical .(:lowercase .,(code-char 22311)))) ;; #\U5727 
    (22312 (:alphabetical .(:lowercase .,(code-char 22312)))) ;; #\U5728 
    (22320 (:alphabetical .(:lowercase .,(code-char 22320)))) ;; #\U5730 
    (22343 (:alphabetical .(:lowercase .,(code-char 22343)))) ;; #\U5747 
    (22411 (:alphabetical .(:lowercase .,(code-char 22411)))) ;; #\U578B 
    (22467 (:alphabetical .(:lowercase .,(code-char 22467)))) ;; "埃"
    (22521 (:alphabetical .(:lowercase .,(code-char 22521)))) ;; "培"
    (22522 (:alphabetical .(:lowercase .,(code-char 22522)))) ;; #\U57FA 
    (22577 (:alphabetical .(:lowercase .,(code-char 22577)))) ;; #\U5831 
    (22633 (:alphabetical .(:lowercase .,(code-char 22633)))) ;; #\U5869 
    (22659 (:alphabetical .(:lowercase .,(code-char 22659)))) ;; #\U5883 
    (22686 (:alphabetical .(:lowercase .,(code-char 22686)))) ;; #\U589E 
    (22763 (:alphabetical .(:lowercase .,(code-char 22763)))) ;; "士"
    (22768 (:alphabetical .(:lowercase .,(code-char 22768)))) ;; #\U58F0 
    (22793 (:alphabetical .(:lowercase .,(code-char 22793)))) ;; #\U5909 
    (22806 (:alphabetical .(:lowercase .,(code-char 22806)))) ;; #\U5916 
    (22810 (:alphabetical .(:lowercase .,(code-char 22810)))) ;; #\U591A 
    (22815 (:alphabetical .(:lowercase .,(code-char 22815)))) ;; #\U591F 
    (22823 (:alphabetical .(:lowercase .,(code-char 22823)))) ;; #\U5927 
    (22825 (:alphabetical .(:lowercase .,(code-char 22825)))) ;; "天"
    (22836 (:alphabetical .(:lowercase .,(code-char 22836)))) ;; "头"
    (22899 (:alphabetical .(:lowercase .,(code-char 22899)))) ;; #\U5973 
    (22909 (:alphabetical .(:lowercase .,(code-char 22909)))) ;; #\U597D 
    (22949 (:alphabetical .(:lowercase .,(code-char 22949)))) ;; #\U59A5 
    (23004 (:alphabetical .(:lowercase .,(code-char 23004)))) ;; "姜"
    (23376 (:alphabetical .(:lowercase .,(code-char 23376)))) ;; #\U5B50 
    (23383 (:alphabetical . (:lowercase ., (code-char 23383)))) ;; "字"
    (23384 (:alphabetical .(:lowercase .,(code-char 23384)))) ;; #\U5B58 
    (23398 (:alphabetical .(:lowercase .,(code-char 23398)))) ;; #\U5B66 
    (23433 (:alphabetical .(:lowercase .,(code-char 23433)))) ;; #\U5B89 
    (23450 (:alphabetical .(:lowercase .,(code-char 23450)))) ;; #\U5B9A 
    (23454 (:alphabetical .(:lowercase .,(code-char 23454)))) ;; #\U5B9E 
    (23460 (:alphabetical .(:lowercase .,(code-char 23460)))) ;; #\U5BA4 
    (23478 (:alphabetical . (:lowercase ., (code-char 23478)))) ;; "家"
    (23494 (:alphabetical .(:lowercase .,(code-char 23494)))) ;; #\U5BC6 
    (23506 (:alphabetical .(:lowercase .,(code-char 23506)))) ;; "寒"
    (23526 (:alphabetical .(:lowercase .,(code-char 23526)))) ;; "實"
    (23545 (:alphabetical .(:lowercase .,(code-char 23545)))) ;; #\U5BF9 
    (23548 (:alphabetical .(:lowercase .,(code-char 23548)))) ;; #\U5BFC 
    (23550 (:alphabetical .(:lowercase .,(code-char 23550)))) ;; #\U5BFE 
    (23556 (:alphabetical .(:lowercase .,(code-char 23556)))) ;; #\U5C04 
    (23569 (:alphabetical .(:lowercase .,(code-char 23569)))) ;; #\U5C11 
    (23613 (:alphabetical . (:lowercase ., (code-char 23613)))) ;; "尽"
    (23615 (:alphabetical .(:lowercase .,(code-char 23615)))) ;; #\U5C3F 
    (23637 (:alphabetical .(:lowercase .,(code-char 23637)))) ;; #\U5C55 
    (23665 (:alphabetical .(:lowercase .,(code-char 23665)))) ;; "山"
    (23784 (:alphabetical .(:lowercase .,(code-char 23784)))) ;; "峨"
    (24029 (:alphabetical .(:lowercase .,(code-char 24029)))) ;; "川"
    (24038 (:alphabetical .(:lowercase .,(code-char 24038)))) ;; #\U5DE6 
    (24085 (:alphabetical .(:lowercase .,(code-char 24085)))) ;; #\U5E15 
    (24093 (:alphabetical .(:lowercase .,(code-char 24093)))) ;; "帝"
    (24112 (:alphabetical .(:lowercase .,(code-char 24112)))) ;; #\U5E30 
    (24120 (:alphabetical .(:lowercase .,(code-char 24120)))) ;; #\U5E38 
    (24179 (:alphabetical .(:lowercase .,(code-char 24179)))) ;; #\U5E73 
    (24180 (:alphabetical .(:lowercase .,(code-char 24180)))) ;; #\U5E74 
    (24182 (:alphabetical .(:lowercase .,(code-char 24182)))) ;; #\U5E76 
    (24184 (:alphabetical . (:lowercase ., (code-char 24184)))) ;; "幸"
    (24191 (:alphabetical .(:lowercase .,(code-char 24191)))) ;; "广"
    (24202 (:alphabetical .(:lowercase .,(code-char 24202)))) ;; #\U5E8A 
    (24212 (:alphabetical .(:lowercase .,(code-char 24212)))) ;; #\U5E94 
    (24230 (:alphabetical .(:lowercase .,(code-char 24230)))) ;; #\U5EA6 
    (24320 (:alphabetical .(:lowercase .,(code-char 24320)))) ;; #\U5F00 
    (24322 (:alphabetical . (:lowercase ., (code-char 24322)))) ;; "异"
    (24341 (:alphabetical .(:lowercase .,(code-char 24341)))) ;; #\U5F15 
    (24373 (:alphabetical .(:lowercase .,(code-char 24373)))) ;; "張"
    (24418 (:alphabetical .(:lowercase .,(code-char 24418)))) ;; #\U5F62 
    (24433 (:alphabetical .(:lowercase .,(code-char 24433)))) ;; #\U5F71 
    (24449 (:alphabetical .(:lowercase .,(code-char 24449)))) ;; #\U5F81 
    (24456 (:alphabetical .(:lowercase .,(code-char 24456)))) ;; #\U5F88 
    (24471 (:alphabetical .(:lowercase .,(code-char 24471)))) ;; #\U5F97 
    (24489 (:alphabetical .(:lowercase .,(code-char 24489)))) ;; #\U5FA9 
    (24503 (:alphabetical .(:lowercase .,(code-char 24503)))) ;; "德"
    (24515 (:alphabetical .(:lowercase .,(code-char 24515)))) ;; #\U5FC3 
    (24517 (:alphabetical .(:lowercase .,(code-char 24517)))) ;; #\U5FC5 
    (24577 (:alphabetical .(:lowercase .,(code-char 24577)))) ;; #\U6001 
    (24615 (:alphabetical .(:lowercase .,(code-char 24615)))) ;; #\U6027 
    (24635 (:alphabetical .(:lowercase .,(code-char 24635)))) ;; #\U603B 
    (24694 (:alphabetical . (:lowercase ., (code-char 24694)))) ;; "恶"
    (24739 (:alphabetical .(:lowercase .,(code-char 24739)))) ;; #\U60A3 
    (24773 (:alphabetical .(:lowercase .,(code-char 24773)))) ;; #\U60C5 
    (24813 (:alphabetical . (:lowercase ., (code-char 24813)))) ;; "惭"
    (24847 (:alphabetical .(:lowercase .,(code-char 24847)))) ;; #\U610F 
    (24863 (:alphabetical .(:lowercase .,(code-char 24863)))) ;; "感"
    (24871 (:alphabetical . (:lowercase ., (code-char 24871)))) ;; "愧"
    (25104 (:alphabetical .(:lowercase .,(code-char 25104)))) ;; #\U6210 
    (25239 (:alphabetical .(:lowercase .,(code-char 25239)))) ;; #\U6297 
    (25253 (:alphabetical .(:lowercase .,(code-char 25253)))) ;; #\U62A5 
    (25289 (:alphabetical .(:lowercase .,(code-char 25289)))) ;; "拉"
    (25345 (:alphabetical .(:lowercase .,(code-char 25345)))) ;; #\U6301 
    (25351 (:alphabetical .(:lowercase .,(code-char 25351)))) ;; #\U6307 
    (25454 (:alphabetical .(:lowercase .,(code-char 25454)))) ;; #\U636E 
    (25506 (:alphabetical .(:lowercase .,(code-char 25506)))) ;; #\U63A2 
    (25509 (:alphabetical .(:lowercase .,(code-char 25509)))) ;; #\U63A5 
    (25552 (:alphabetical .(:lowercase .,(code-char 25552)))) ;; #\U63D0 
    (25688 (:alphabetical .(:lowercase .,(code-char 25688)))) ;; #\U6458 
    (25903 (:alphabetical .(:lowercase .,(code-char 25903)))) ;; #\U652F 
    (25913 (:alphabetical .(:lowercase .,(code-char 25913)))) ;; #\U6539 
    (25968 (:alphabetical .(:lowercase .,(code-char 25968)))) ;; #\U6570 
    (25972 (:alphabetical .(:lowercase .,(code-char 25972)))) ;; #\U6574 
    (26001 (:alphabetical .(:lowercase .,(code-char 26001)))) ;; #\U6591 
    (26012 (:alphabetical . (:lowercase ., (code-char 26012)))) ;; "斜"
    (26029 (:alphabetical .(:lowercase .,(code-char 26029)))) ;; #\U65AD 
    (26032 (:alphabetical .(:lowercase .,(code-char 26032)))) ;; #\U65B0 
    (26041 (:alphabetical .(:lowercase .,(code-char 26041)))) ;; #\U65B9 
    (26080 (:alphabetical .(:lowercase .,(code-char 26080)))) ;; #\U65E0 
    (26085 (:alphabetical .(:lowercase .,(code-char 26085)))) ;; #\U65E5 
    (26089 (:alphabetical .(:lowercase .,(code-char 26089)))) ;; #\U65E9 
    (26102 (:alphabetical .(:lowercase .,(code-char 26102)))) ;; #\U65F6 
    (26126 (:alphabetical .(:lowercase .,(code-char 26126)))) ;; #\U660E 
    (26144 (:alphabetical .(:lowercase .,(code-char 26144)))) ;; #\U6620 
    (26159 (:alphabetical .(:lowercase .,(code-char 26159)))) ;; #\U662F 
    (26174 (:alphabetical .(:lowercase .,(code-char 26174)))) ;; #\U663E 
    (26223 (:alphabetical .(:lowercase .,(code-char 26223)))) ;; #\U666F 
    (26234 (:alphabetical .(:lowercase .,(code-char 26234)))) ;; "智"
    (26354 (:alphabetical .(:lowercase .,(code-char 26354)))) ;; #\U66F2 
    (26356 (:alphabetical .(:lowercase .,(code-char 26356)))) ;; #\U66F4 
    (26366 (:alphabetical .(:lowercase .,(code-char 26366)))) ;; #\U66FE 
    (26368 (:alphabetical .(:lowercase .,(code-char 26368)))) ;; #\U6700 
    (26376 (:alphabetical .(:lowercase .,(code-char 26376)))) ;; #\U6708 
    (26377 (:alphabetical .(:lowercase .,(code-char 26377)))) ;; #\U6709 
    (26399 (:alphabetical .(:lowercase .,(code-char 26399)))) ;; #\U671F 
    (26410 (:alphabetical .(:lowercase .,(code-char 26410)))) ;; #\U672A 
    (26412 (:alphabetical .(:lowercase .,(code-char 26412)))) ;; #\U672C 
    (26415 (:alphabetical .(:lowercase .,(code-char 26415)))) ;; "术"
    (26441 (:alphabetical .(:lowercase .,(code-char 26441)))) ;; #\U6749 
    (26497 (:alphabetical .(:lowercase .,(code-char 26497)))) ;; "极"
    (26512 (:alphabetical .(:lowercase .,(code-char 26512)))) ;; #\U6790 
    (26519 (:alphabetical .(:lowercase .,(code-char 26519)))) ;; "林"
    (26524 (:alphabetical .(:lowercase .,(code-char 26524)))) ;; #\U679C 
    (26597 (:alphabetical .(:lowercase .,(code-char 26597)))) ;; #\U67E5 
    (26631 (:alphabetical .(:lowercase .,(code-char 26631)))) ;; #\U6807 
    (26679 (:alphabetical . (:lowercase ., (code-char 26679)))) ;; "样"
    (26681 (:alphabetical .(:lowercase .,(code-char 26681)))) ;; #\U6839 
    (26685 (:alphabetical .(:lowercase .,(code-char 26685)))) ;; "栽"
    (26690 (:alphabetical .(:lowercase .,(code-char 26690)))) ;; "桂"
    (26816 (:alphabetical .(:lowercase .,(code-char 26816)))) ;; #\U68C0 
    (26908 (:alphabetical .(:lowercase .,(code-char 26908)))) ;; #\U691C 
    (27096 (:alphabetical .(:lowercase .,(code-char 27096)))) ;; #\U69D8 
    (27161 (:alphabetical .(:lowercase .,(code-char 27161)))) ;; #\U6A19 
    (27169 (:alphabetical .(:lowercase .,(code-char 27169)))) ;; #\U6A21 
    (27178 (:alphabetical .(:lowercase .,(code-char 27178)))) ;; #\U6A2A 
    (27425 (:alphabetical .(:lowercase .,(code-char 27425)))) ;; #\U6B21 
    (27465 (:alphabetical . (:lowercase ., (code-char 27465)))) ;; "歉"
    (27491 (:alphabetical .(:lowercase .,(code-char 27491)))) ;; #\U6B63 
    (27492 (:alphabetical .(:lowercase .,(code-char 27492)))) ;; #\U6B64 
    (27493 (:alphabetical .(:lowercase .,(code-char 27493)))) ;; #\U6B65 
    (275 (:alphabetical . (:lowercase .,(code-char 275)))) ;; #\LATIN_SMALL_LETTER_E_WITH_MACRON 
    (27507 (:alphabetical .(:lowercase .,(code-char 27507)))) ;; #\U6B73 
    (27599 (:alphabetical .(:lowercase .,(code-char 27599)))) ;; #\U6BCF 
    (27602 (:alphabetical .(:lowercase .,(code-char 27602)))) ;; #\U6BD2 
    (27604 (:alphabetical .(:lowercase .,(code-char 27604)))) ;; #\U6BD4 
    (27611 (:alphabetical .(:lowercase .,(code-char 27611)))) ;; "毛"
    (27665 (:alphabetical .(:lowercase .,(code-char 27665)))) ;; #\U6C11 
    (27683 (:alphabetical .(:lowercase .,(code-char 27683)))) ;; "氣"
    (27700 (:alphabetical .(:lowercase .,(code-char 27700)))) ;; #\U6C34 
    (27743 (:alphabetical .(:lowercase .,(code-char 27743)))) ;; "江"
    (27801 (:alphabetical .(:lowercase .,(code-char 27801)))) ;; "沙"
    (27809 (:alphabetical .(:lowercase .,(code-char 27809)))) ;; #\U6CA1 
    (27835 (:alphabetical .(:lowercase .,(code-char 27835)))) ;; #\U6CBB 
    (27841 (:alphabetical .(:lowercase .,(code-char 27841)))) ;; #\U6CC1 
    (27861 (:alphabetical .(:lowercase .,(code-char 27861)))) ;; #\U6CD5 
    (27874 (:alphabetical .(:lowercase .,(code-char 27874)))) ;; "波"
    (27880 (:alphabetical .(:lowercase .,(code-char 27880)))) ;; #\U6CE8 
    (27969 (:alphabetical .(:lowercase .,(code-char 27969)))) ;; "流"
    (27979 (:alphabetical .(:lowercase .,(code-char 27979)))) ;; #\U6D4B 
    (28082 (:alphabetical .(:lowercase .,(code-char 28082)))) ;; #\U6DB2 
    (28201 (:alphabetical .(:lowercase .,(code-char 28201)))) ;; "温"
    (283 (:alphabetical . (:lowercase .,(code-char 283)))) ;; #\LATIN_SMALL_LETTER_E_WITH_CARON 
    (28331 (:alphabetical .(:lowercase .,(code-char 28331)))) ;; "溫"
    (285 (:alphabetical . (:lowercase .,(code-char 285)))) ;; #\LATIN_SMALL_LETTER_G_WITH_CIRCUMFLEX 
    (28508 (:alphabetical .(:lowercase .,(code-char 28508)))) ;; #\U6F5C 
    (28608 (:alphabetical .(:lowercase .,(code-char 28608)))) ;; #\U6FC0 
    (28814 (:alphabetical .(:lowercase .,(code-char 28814)))) ;; #\U708E 
    (28857 (:alphabetical .(:lowercase .,(code-char 28857)))) ;; #\U70B9 
    (28895 (:alphabetical .(:lowercase .,(code-char 28895)))) ;; #\U70DF 
    (28919 (:alphabetical .(:lowercase .,(code-char 28919)))) ;; #\U70F7 
    (29017 (:alphabetical .(:lowercase .,(code-char 29017)))) ;; #\U7159 
    (29031 (:alphabetical .(:lowercase .,(code-char 29031)))) ;; #\U7167 
    (29105 (:alphabetical .(:lowercase .,(code-char 29105)))) ;; "熱"
    (29151 (:alphabetical .(:lowercase .,(code-char 29151)))) ;; "營"
    (292 (:alphabetical . (:lowercase .,(code-char 292)))) ;; #\LATIN_CAPITAL_LETTER_H_WITH_CIRCUMFLEX 
    (29273 (:alphabetical .(:lowercase .,(code-char 29273)))) ;; "牙"
    (29289 (:alphabetical .(:lowercase .,(code-char 29289)))) ;; #\U7269 
    (29305 (:alphabetical .(:lowercase .,(code-char 29305)))) ;; #\U7279 
    (29359 (:alphabetical . (:lowercase ., (code-char 29359)))) ;; "犯"
    (29366 (:alphabetical .(:lowercase .,(code-char 29366)))) ;; #\U72B6 
    (29421 (:alphabetical .(:lowercase .,(code-char 29421)))) ;; "狭"
    (29575 (:alphabetical .(:lowercase .,(code-char 29575)))) ;; #\U7387 
    (29615 (:alphabetical .(:lowercase .,(code-char 29615)))) ;; #\U73AF 
    (29616 (:alphabetical .(:lowercase .,(code-char 29616)))) ;; #\U73B0 
    (29664 (:alphabetical .(:lowercase .,(code-char 29664)))) ;; #\U73E0 
    (29702 (:alphabetical .(:lowercase .,(code-char 29702)))) ;; #\U7406 
    (29872 (:alphabetical .(:lowercase .,(code-char 29872)))) ;; #\U74B0 
    (29983 (:alphabetical .(:lowercase .,(code-char 29983)))) ;; #\U751F 
    (29992 (:alphabetical .(:lowercase .,(code-char 29992)))) ;; #\U7528 
    (30007 (:alphabetical .(:lowercase .,(code-char 30007)))) ;; #\U7537 
    (30028 (:alphabetical .(:lowercase .,(code-char 30028)))) ;; #\U754C 
    (30064 (:alphabetical .(:lowercase .,(code-char 30064)))) ;; #\U7570 
    (30097 (:alphabetical .(:lowercase .,(code-char 30097)))) ;; #\U7591 
    (30103 (:alphabetical .(:lowercase .,(code-char 30103)))) ;; #\U7597 
    (30106 (:alphabetical . (:lowercase ., (code-char 30106)))) ;; "疚"
    (30149 (:alphabetical .(:lowercase .,(code-char 30149)))) ;; #\U75C5 
    (30151 (:alphabetical .(:lowercase .,(code-char 30151)))) ;; #\U75C7 
    (30244 (:alphabetical .(:lowercase .,(code-char 30244)))) ;; #\U7624 
    (30284 (:alphabetical .(:lowercase .,(code-char 30284)))) ;; #\U764C 
    (30333 (:alphabetical .(:lowercase .,(code-char 30333)))) ;; #\U767D 
    (30340 (:alphabetical .(:lowercase .,(code-char 30340)))) ;; #\U7684 
    (30382 (:alphabetical .(:lowercase .,(code-char 30382)))) ;; #\U76AE 
    (30408 (:alphabetical .(:lowercase .,(code-char 30408)))) ;; "盈"
    (30410 (:alphabetical .(:lowercase .,(code-char 30410)))) ;; "益"
    (30417 (:alphabetical .(:lowercase .,(code-char 30417)))) ;; #\U76D1 
    (30456 (:alphabetical .(:lowercase .,(code-char 30456)))) ;; #\U76F8 
    (30473 (:alphabetical .(:lowercase .,(code-char 30473)))) ;; "眉"
    (30524 (:alphabetical .(:lowercase .,(code-char 30524)))) ;; "眼"
    (30701 (:alphabetical .(:lowercase .,(code-char 30701)))) ;; "短"
    (30702 (:alphabetical .(:lowercase .,(code-char 30702)))) ;; "矮"
    (30740 (:alphabetical .(:lowercase .,(code-char 30740)))) ;; #\U7814 
    (30784 (:alphabetical .(:lowercase .,(code-char 30784)))) ;; #\U7840 
    (30828 (:alphabetical .(:lowercase .,(code-char 30828)))) ;; #\U786C 
    (30906 (:alphabetical .(:lowercase .,(code-char 30906)))) ;; #\U78BA 
    (31034 (:alphabetical .(:lowercase .,(code-char 31034)))) ;; #\U793A 
    (31165 (:alphabetical .(:lowercase .,(code-char 31165)))) ;; "禽"
    (31181 (:alphabetical .(:lowercase .,(code-char 31181)))) ;; "种"
    (31227 (:alphabetical .(:lowercase .,(code-char 31227)))) ;; #\U79FB 
    (31243 (:alphabetical .(:lowercase .,(code-char 31243)))) ;; #\U7A0B 
    (31283 (:alphabetical .(:lowercase .,(code-char 31283)))) ;; #\U7A33 
    (31309 (:alphabetical .(:lowercase .,(code-char 31309)))) ;; #\U7A4D 
    (31319 (:alphabetical .(:lowercase .,(code-char 31319)))) ;; "穗"
    (31350 (:alphabetical .(:lowercase .,(code-char 31350)))) ;; #\U7A76 
    (31469 (:alphabetical .(:lowercase .,(code-char 31469)))) ;; #\U7AED 
    (31481 (:alphabetical .(:lowercase .,(code-char 31481)))) ;; "竹"
    (31867 (:alphabetical .(:lowercase .,(code-char 31867)))) ;; #\U7C7B 
    (31958 (:alphabetical .(:lowercase .,(code-char 31958)))) ;; #\U7CD6 
    (31995 (:alphabetical .(:lowercase .,(code-char 31995)))) ;; #\U7CFB 
    (32034 (:alphabetical .(:lowercase .,(code-char 32034)))) ;; #\U7D22 
    (32043 (:alphabetical .(:lowercase .,(code-char 32043)))) ;; #\U7D2B 
    (32080 (:alphabetical .(:lowercase .,(code-char 32080)))) ;; #\U7D50 
    (32113 (:alphabetical .(:lowercase .,(code-char 32113)))) ;; #\U7D71 
    (32147 (:alphabetical .(:lowercase .,(code-char 32147)))) ;; "經"
    (32218 (:alphabetical .(:lowercase .,(code-char 32218)))) ;; #\U7DDA 
    (32294 (:alphabetical .(:lowercase .,(code-char 32294)))) ;; #\U7E26 
    (32423 (:alphabetical .(:lowercase .,(code-char 32423)))) ;; #\U7EA7 
    (32435 (:alphabetical .(:lowercase .,(code-char 32435)))) ;; #\U7EB3 
    (32437 (:alphabetical .(:lowercase .,(code-char 32437)))) ;; #\U7EB5 
    (32447 (:alphabetical .(:lowercase .,(code-char 32447)))) ;; #\U7EBF 
    (32452 (:alphabetical .(:lowercase .,(code-char 32452)))) ;; #\U7EC4 
    (32454 (:alphabetical .(:lowercase .,(code-char 32454)))) ;; "细"
    (32455 (:alphabetical .(:lowercase .,(code-char 32455)))) ;; #\U7EC7 
    (32456 (:alphabetical .(:lowercase .,(code-char 32456)))) ;; #\U7EC8 
    (32467 (:alphabetical .(:lowercase .,(code-char 32467)))) ;; #\U7ED3 
    (32618 (:alphabetical . (:lowercase ., (code-char 32618)))) ;; "罪"
    (32670 (:alphabetical . (:lowercase ., (code-char 32670)))) ;; "羞"
    (32676 (:alphabetical .(:lowercase .,(code-char 32676)))) ;; #\U7FA4 
    (32709 (:alphabetical .(:lowercase .,(code-char 32709)))) ;; "翅"
    (32771 (:alphabetical .(:lowercase .,(code-char 32771)))) ;; #\U8003 
    (32773 (:alphabetical .(:lowercase .,(code-char 32773)))) ;; #\U8005 
    (32780 (:alphabetical .(:lowercase .,(code-char 32780)))) ;; #\U800C 
    (32784 (:alphabetical .(:lowercase .,(code-char 32784)))) ;; #\U8010 
    (32800 (:alphabetical . (:lowercase .,(code-char 32800)))) ;;"耠", #\U8020 
    (32827 (:alphabetical . (:lowercase ., (code-char 32827)))) ;; "耻"
    (32852 (:alphabetical .(:lowercase .,(code-char 32852)))) ;; #\U8054 
    (32858 (:alphabetical .(:lowercase .,(code-char 32858)))) ;; "聚"
    (32908 (:alphabetical .(:lowercase .,(code-char 32908)))) ;; #\U808C 
    (32957 (:alphabetical .(:lowercase .,(code-char 32957)))) ;; #\U80BD 
    (32958 (:alphabetical .(:lowercase .,(code-char 32958)))) ;; "肾"
    (32959 (:alphabetical .(:lowercase .,(code-char 32959)))) ;; #\U80BF 
    (32972 (:alphabetical .(:lowercase .,(code-char 32972)))) ;; #\U80CC 
    (33016 (:alphabetical .(:lowercase .,(code-char 33016)))) ;; #\U80F8 
    (33021 (:alphabetical .(:lowercase .,(code-char 33021)))) ;; #\U80FD 
    (33026 (:alphabetical .(:lowercase .,(code-char 33026)))) ;; #\U8102 
    (33032 (:alphabetical .(:lowercase .,(code-char 33032)))) ;; #\U8108 
    (33033 (:alphabetical .(:lowercase .,(code-char 33033)))) ;; "脉"
    (33039 (:alphabetical .(:lowercase .,(code-char 33039)))) ;; #\U810F 
    (33041 (:alphabetical .(:lowercase .,(code-char 33041)))) ;; #\U8111 
    (33080 (:alphabetical . (:lowercase ., (code-char 33080)))) ;; "脸"
    (33146 (:alphabetical .(:lowercase .,(code-char 33146)))) ;; #\U817A 
    (33205 (:alphabetical .(:lowercase .,(code-char 33205)))) ;; #\U81B5 
    (33225 (:alphabetical . (:lowercase ., (code-char 33225)))) ;; "臉"
    (33235 (:alphabetical .(:lowercase .,(code-char 33235)))) ;; #\U81D3 
    (33258 (:alphabetical . (:lowercase ., (code-char 33258)))) ;; "自"
    (33310 (:alphabetical .(:lowercase .,(code-char 33310)))) ;; "舞"
    (33324 (:alphabetical .(:lowercase .,(code-char 33324)))) ;; #\U822C 
    (33457 (:alphabetical .(:lowercase .,(code-char 33457)))) ;; "花"
    (33502 (:alphabetical .(:lowercase .,(code-char 33502)))) ;; "苞"
    (33509 (:alphabetical .(:lowercase .,(code-char 33509)))) ;; #\U82E5 
    (33510 (:alphabetical .(:lowercase .,(code-char 33510)))) ;; "苦"
    (33539 (:alphabetical .(:lowercase .,(code-char 33539)))) ;; #\U8303 
    (33655 (:alphabetical .(:lowercase .,(code-char 33655)))) ;; #\U8377 
    (33706 (:alphabetical .(:lowercase .,(code-char 33706)))) ;; "莪"
    (33756 (:alphabetical .(:lowercase .,(code-char 33756)))) ;; "菜"
    (33865 (:alphabetical .(:lowercase .,(code-char 33865)))) ;; "葉"
    (33879 (:alphabetical .(:lowercase .,(code-char 33879)))) ;; #\U8457 
    (33981 (:alphabetical .(:lowercase .,(code-char 33981)))) ;; #\U84BD 
    (34013 (:alphabetical .(:lowercase .,(code-char 34013)))) ;; #\U84DD 
    (34107 (:alphabetical .(:lowercase .,(code-char 34107)))) ;; "蔻"
    (34385 (:alphabetical .(:lowercase .,(code-char 34385)))) ;; #\U8651 
    (34395 (:alphabetical .(:lowercase .,(code-char 34395)))) ;; "虛"
    (34507 (:alphabetical .(:lowercase .,(code-char 34507)))) ;; #\U86CB 
    (34880 (:alphabetical .(:lowercase .,(code-char 34880)))) ;; #\U8840 
    (34892 (:alphabetical .(:lowercase .,(code-char 34892)))) ;; #\U884C 
    (34907 (:alphabetical .(:lowercase .,(code-char 34907)))) ;; "衛"
    (34920 (:alphabetical .(:lowercase .,(code-char 34920)))) ;; #\U8868 
    (34928 (:alphabetical .(:lowercase .,(code-char 34928)))) ;; #\U8870 
    (350 (:alphabetical . (:lowercase .,(code-char 350)))) ;; #\LATIN_CAPITAL_LETTER_S_WITH_CEDILLA
    (35199 (:alphabetical .(:lowercase .,(code-char 35199)))) ;; "西"
    (35201 (:alphabetical .(:lowercase .,(code-char 35201)))) ;; #\U8981 
    (35211 (:alphabetical .(:lowercase .,(code-char 35211)))) ;; #\U898B 
    (35215 (:alphabetical .(:lowercase .,(code-char 35215)))) ;; #\U898F 
    (35265 (:alphabetical .(:lowercase .,(code-char 35265)))) ;; #\U89C1 
    (35299 (:alphabetical .(:lowercase .,(code-char 35299)))) ;; #\U89E3 
    (35328 (:alphabetical .(:lowercase .,(code-char 35328)))) ;; #\U8A00 
    (35336 (:alphabetical .(:lowercase .,(code-char 35336)))) ;; #\U8A08 
    (35342 (:alphabetical .(:lowercase .,(code-char 35342)))) ;; #\U8A0E 
    (35413 (:alphabetical .(:lowercase .,(code-char 35413)))) ;; #\U8A55 
    (35469 (:alphabetical .(:lowercase .,(code-char 35469)))) ;; #\U8A8D 
    (35519 (:alphabetical .(:lowercase .,(code-char 35519)))) ;; #\U8ABF 
    (35542 (:alphabetical .(:lowercase .,(code-char 35542)))) ;; #\U8AD6 
    (35657 (:alphabetical .(:lowercase .,(code-char 35657)))) ;; "證"
    (35745 (:alphabetical .(:lowercase .,(code-char 35745)))) ;; #\U8BA1 
    (35760 (:alphabetical .(:lowercase .,(code-char 35760)))) ;; #\U8BB0 
    (35770 (:alphabetical .(:lowercase .,(code-char 35770)))) ;; #\U8BBA 
    (35775 (:alphabetical .(:lowercase .,(code-char 35775)))) ;; #\U8BBF 
    (35780 (:alphabetical .(:lowercase .,(code-char 35780)))) ;; #\U8BC4 
    (35786 (:alphabetical .(:lowercase .,(code-char 35786)))) ;; #\U8BCA 
    (35910 (:alphabetical .(:lowercase .,(code-char 35910)))) ;; "豆"
    (35937 (:alphabetical .(:lowercase .,(code-char 35937)))) ;; #\U8C61 
    (36127 (:alphabetical .(:lowercase .,(code-char 36127)))) ;; #\U8D1F 
    (36229 (:alphabetical .(:lowercase .,(code-char 36229)))) ;; #\U8D85 
    (36319 (:alphabetical . (:lowercase ., (code-char 36319)))) ;; "跟"
    (36321 (:alphabetical .(:lowercase .,(code-char 36321)))) ;; #\U8DE1 
    (36341 (:alphabetical .(:lowercase .,(code-char 36341)))) ;; #\U8DF5 
    (36394 (:alphabetical .(:lowercase .,(code-char 36394)))) ;; #\U8E2A 
    (36523 (:alphabetical . (:lowercase ., (code-char 36523)))) ;; "身"
    (36716 (:alphabetical .(:lowercase .,(code-char 36716)))) ;; #\U8F6C 
    (36739 (:alphabetical .(:lowercase .,(code-char 36739)))) ;; #\U8F83 
    (36741 (:alphabetical .(:lowercase .,(code-char 36741)))) ;; #\U8F85 
    (36755 (:alphabetical .(:lowercase .,(code-char 36755)))) ;; #\U8F93 
    (36764 (:alphabetical . (:lowercase ., (code-char 36764)))) ;; "辜"
    (36785 (:alphabetical . (:lowercase ., (code-char 36785)))) ;; "辱"
    (36798 (:alphabetical .(:lowercase .,(code-char 36798)))) ;; #\U8FBE 
    (36807 (:alphabetical .(:lowercase .,(code-char 36807)))) ;; #\U8FC7 
    (36816 (:alphabetical .(:lowercase .,(code-char 36816)))) ;; #\U8FD0 
    (36825 (:alphabetical .(:lowercase .,(code-char 36825)))) ;; #\U8FD9 
    (36827 (:alphabetical .(:lowercase .,(code-char 36827)))) ;; #\U8FDB 
    (36830 (:alphabetical .(:lowercase .,(code-char 36830)))) ;; "连"
    (36861 (:alphabetical .(:lowercase .,(code-char 36861)))) ;; #\U8FFD 
    (36899 (:alphabetical .(:lowercase .,(code-char 36899)))) ;; #\U9023 
    (36984 (:alphabetical .(:lowercase .,(code-char 36984)))) ;; #\U9078 
    (36986 (:alphabetical .(:lowercase .,(code-char 36986)))) ;; #\U907A 
    (37034 (:alphabetical .(:lowercase .,(code-char 37034)))) ;; "邪"
    (37057 (:alphabetical .(:lowercase .,(code-char 37057)))) ;; "郁"
    (37255 (:alphabetical .(:lowercase .,(code-char 37255)))) ;; #\U9187 
    (37325 (:alphabetical .(:lowercase .,(code-char 37325)))) ;; #\U91CD 
    (37327 (:alphabetical .(:lowercase .,(code-char 37327)))) ;; #\U91CF 
    (37329 (:alphabetical .(:lowercase .,(code-char 37329)))) ;; "金"
    (37492 (:alphabetical .(:lowercase .,(code-char 37492)))) ;; #\U9274 
    (38041 (:alphabetical .(:lowercase .,(code-char 38041)))) ;; #\U9499 
    (38048 (:alphabetical .(:lowercase .,(code-char 38048)))) ;; #\U94A0 
    (38291 (:alphabetical .(:lowercase .,(code-char 38291)))) ;; #\U9593 
    (38306 (:alphabetical .(:lowercase .,(code-char 38306)))) ;; #\U95A2 
    (38382 (:alphabetical .(:lowercase .,(code-char 38382)))) ;; #\U95EE 
    (38388 (:alphabetical .(:lowercase .,(code-char 38388)))) ;; #\U95F4 
    (38450 (:alphabetical .(:lowercase .,(code-char 38450)))) ;; "防"
    (38451 (:alphabetical .(:lowercase .,(code-char 38451)))) ;; #\U9633 
    (38459 (:alphabetical .(:lowercase .,(code-char 38459)))) ;; #\U963B 
    (38477 (:alphabetical .(:lowercase .,(code-char 38477)))) ;; #\U964D 
    (38500 (:alphabetical .(:lowercase .,(code-char 38500)))) ;; #\U9664 
    (38512 (:alphabetical .(:lowercase .,(code-char 38512)))) ;; "陰"
    (38522 (:alphabetical .(:lowercase .,(code-char 38522)))) ;; #\U967A 
    (38525 (:alphabetical .(:lowercase .,(code-char 38525)))) ;; "陽"
    (38543 (:alphabetical .(:lowercase .,(code-char 38543)))) ;; #\U968F 
    (38598 (:alphabetical .(:lowercase .,(code-char 38598)))) ;; #\U96C6 
    (38656 (:alphabetical .(:lowercase .,(code-char 38656)))) ;; #\U9700 
    (38742 (:alphabetical .(:lowercase .,(code-char 38742)))) ;; "靖"
    (38750 (:alphabetical .(:lowercase .,(code-char 38750)))) ;; #\U975E 
    (38911 (:alphabetical .(:lowercase .,(code-char 38911)))) ;; #\U97FF 
    (39030 (:alphabetical .(:lowercase .,(code-char 39030)))) ;; "顶"
    (39033 (:alphabetical .(:lowercase .,(code-char 39033)))) ;; #\U9879 
    (39044 (:alphabetical .(:lowercase .,(code-char 39044)))) ;; #\U9884 
    (39057 (:alphabetical .(:lowercase .,(code-char 39057)))) ;; #\U9891 
    (39064 (:alphabetical .(:lowercase .,(code-char 39064)))) ;; #\U9898 
    (39321 (:alphabetical .(:lowercase .,(code-char 39321)))) ;; "香"
    (39640 (:alphabetical .(:lowercase .,(code-char 39640)))) ;; #\U9AD8 
    (39764 (:alphabetical . (:lowercase ., (code-char 39764)))) ;; "魔"
    (402 (:alphabetical . (:lowercase .,(code-char 402)))) ;; #\LATIN_SMALL_LETTER_F_WITH_HOOK
    (40643 (:alphabetical .(:lowercase .,(code-char 40643)))) ;; "黃"
    (40644 (:alphabetical .(:lowercase .,(code-char 40644)))) ;; "黄"
    (40802 (:alphabetical .(:lowercase .,(code-char 40802)))) ;; #\U9F62
    (40857 (:alphabetical .(:lowercase .,(code-char 40857)))) ;; "龙"
    (44032 (:alphabetical .(:lowercase .,(code-char 44032)))) ;; "가"
    (45740 (:alphabetical .(:lowercase .,(code-char 45740)))) ;; "늬"
    (462 (:alphabetical . (:lowercase .,(code-char 462)))) ;; #\LATIN_SMALL_LETTER_A_WITH_CARON 
    (468 (:alphabetical . (:lowercase .,(code-char 468)))) ;; "ǔ",#\LATIN_SMALL_LETTER_U_WITH_CARON 
    (47280 (:alphabetical .(:lowercase .,(code-char 47280)))) ;; "뢰"
    (47476 (:alphabetical . (:lowercase ., (code-char 47476)))) ;; "르"
    (47532 (:alphabetical .(:lowercase .,(code-char 47532)))) ;; "리"
    (47536 (:alphabetical .(:lowercase .,(code-char 47536)))) ;; "린"
    (47673 (:alphabetical .(:lowercase .,(code-char 47673)))) ;; "먹"
    (47700 (:alphabetical . (:lowercase ., (code-char 47700)))) ;; "메"
    (47924 (:alphabetical .(:lowercase .,(code-char 47924)))) ;; "무"
    (491 (:alphabetical . (:lowercase .,(code-char 491)))) ;; #\LATIN_SMALL_LETTER_O_WITH_OGONEK 
    (49108 (:alphabetical .(:lowercase .,(code-char 49108)))) ;; "뿔"
    (49828 (:alphabetical . (:lowercase ., (code-char 49828)))) ;; "스"
    (49912 (:alphabetical .(:lowercase .,(code-char 49912)))) ;; "싸"
    (50276 (:alphabetical .(:lowercase .,(code-char 50276)))) ;; "쑤"
    (50864 (:alphabetical .(:lowercase .,(code-char 50864)))) ;; "우"
    (54624 (:alphabetical .(:lowercase .,(code-char 54624)))) ;; "할"
    (55349 (:punctuation .,(punctuation-named (code-char  55349)))) ;; "�"
    (56348 (:punctuation .,(punctuation-named (code-char  56348)))) ;; "�"
    (56361 (:punctuation .,(punctuation-named (code-char  56361)))) ;; "�"
    (56364 (:punctuation .,(punctuation-named (code-char  56364)))) ;; "�"
    (56465 (:punctuation .,(punctuation-named (code-char  56465)))) ;; "�"
    (56592 (:punctuation .,(punctuation-named (code-char  56592)))) ;; "�"
    (56635 (:punctuation .,(punctuation-named (code-char  56635)))) ;; "�"
    (56650 (:punctuation .,(punctuation-named (code-char  56650)))) ;; "�"
    (57083 (:punctuation .,(punctuation-named (code-char  57083)))) ;; "�"
    (57088 (:punctuation .,(punctuation-named (code-char  57088)))) ;; "�"
    (57091 (:punctuation .,(punctuation-named (code-char  57091)))) ;; "�"
    (57305 (:punctuation .,(punctuation-named (code-char  57305)))) ;;"�"
    (57557 (:alphabetical . (:lowercase .,(code-char 57557)))) ;;"", #\UE0D5 
    (61472  (:punctuation .,(punctuation-named (code-char 61472)))) ;; #\UF020 this seems to be a space
    (61480 (:alphabetical . (:lowercase ., (code-char 61480)))) 
    (61481 (:alphabetical . (:lowercase ., (code-char 61481)))) 
    (61482 (:alphabetical . (:lowercase ., (code-char 61482)))) 
    (61484 (:alphabetical . (:lowercase ., (code-char 61484)))) 
    (61485 (:alphabetical . (:lowercase .,(code-char 61485)))) ;;"", #\UF02D 
    (61487 (:alphabetical . (:lowercase .,(code-char 61487)))) ;; "", #\UF02F 
    (61501 (:alphabetical . (:lowercase ., (code-char 61501)))) 
    (61508  (:punctuation .,(punctuation-named (code-char 61508)))) ;; #\UF044
    (61515 (:alphabetical . (:lowercase ., (code-char 61515)))) 
    (61516 (:alphabetical . (:lowercase .,(code-char 61516)))) ;;"", #\UF04C 
    (61518 (:alphabetical . (:lowercase .,(code-char 61518)))) ;; "", #\UF04E 
    (61523 (:alphabetical . (:lowercase .,(code-char 61523)))) ;; "",#\UF053 
    (61527 (:alphabetical . (:lowercase ., (code-char 61527)))) 
    (61536 (:alphabetical . (:lowercase ., (code-char 61536)))) 
    (61537  (:punctuation .,(punctuation-named (code-char 61537)))) ;; #\UF061
    (61538  (:punctuation .,(punctuation-named (code-char 61538)))) ;; #\UF062
    (61539 (:alphabetical . (:lowercase .,(code-char 61539)))) ;; "", #\UF063 
    (61540 (:alphabetical . (:lowercase ., (code-char 61540)))) 
    (61541 (:alphabetical . (:lowercase ., (code-char 61541)))) 
    (61542 (:alphabetical . (:lowercase .,(code-char 61542)))) ;; #\UF066 
    (61543 (:alphabetical . (:lowercase ., (code-char 61543)))) 
    (61544 (:alphabetical . (:lowercase ., (code-char 61544)))) 
    (61546 (:alphabetical . (:lowercase ., (code-char 61546)))) 
    (61547 (:alphabetical . (:lowercase ., (code-char 61547)))) 
    (61548 (:alphabetical . (:lowercase ., (code-char 61548)))) 
    (61549  (:punctuation .,(punctuation-named (code-char 61549)))) ;; #\UF06D
    (61553 (:alphabetical . (:lowercase ., (code-char 61553)))) 
    (61554 (:alphabetical . (:lowercase .,(code-char 61554)))) ;; #\UF072
    (61555 (:alphabetical . (:lowercase ., (code-char 61555)))) 
    (61556 (:alphabetical . (:lowercase ., (code-char 61556)))) 
    (61558 (:alphabetical . (:lowercase .,(code-char 61558)))) ;; "",#\UF076 
    (61559 (:alphabetical . (:lowercase ., (code-char 61559)))) 
    (61566  (:punctuation .,(punctuation-named (code-char 61566)))) ;; #\UF07E
    (61602 (:alphabetical . (:lowercase ., (code-char 61602)))) 
    (61603 (:alphabetical . (:lowercase ., (code-char 61603)))) 
    (61605 (:alphabetical . (:lowercase ., (code-char 61605)))) 
    (61614 (:alphabetical . (:lowercase ., (code-char 61614)))) 
    (61616  (:punctuation .,(punctuation-named (code-char 61616)))) ;; #\UF0B0
    (61617 (:alphabetical . (:lowercase ., (code-char 61617)))) 
    (61619 (:alphabetical . (:lowercase ., (code-char 61619)))) 
    (61620  (:punctuation .,(punctuation-named (code-char 61620)))) ;; #\UF0B4
    (61623 (:alphabetical . (:lowercase ., (code-char 61623)))) 
    (61627 (:alphabetical . (:lowercase .,(code-char 61627)))) ;;  "", #\UF0BB 
    (61655 (:alphabetical . (:lowercase .,(code-char 61655)))) ;; "", #\UF0D7
    (61656 (:alphabetical . (:lowercase ., (code-char 61656)))) 
    (61664 (:alphabetical . (:lowercase ., (code-char 61664)))) 
    (63729 (:alphabetical . (:lowercase ., (code-char 63729)))) 
    (63730 (:alphabetical . (:lowercase ., (code-char 63730)))) 
    (63731 (:alphabetical . (:lowercase ., (code-char 63731)))) 
    (64256 (:punctuation .,(punctuation-named (code-char 64256)))) ;; ﬀ
    (64257 (:alphabetical . (:lowercase ., (code-char 64257)))) ;;"ﬁ", (code = 64257)
    (64258 (:alphabetical . (:lowercase ., (code-char 64258)))) ;;"ﬂ", (code = 64258)
    (64259 (:alphabetical . (:lowercase ., (code-char 64259)))) ;; "ﬃ"
    (64979 (:alphabetical . (:lowercase ., (code-char 64979)))) ;; "﷓"
    (65080 (:punctuation .,(punctuation-named (code-char  65080)))) ;; "︸"
    (65087 (:alphabetical . (:lowercase ., (code-char 65087)))) 
    (65279 (:punctuation .,(punctuation-named (code-char  65279)))) ;; "﻿"
    (65285 (:punctuation .,(punctuation-named (code-char 65285)))) ;; #\FULLWIDTH_PERCENT_SIGN 
    (65286 (:punctuation .,(punctuation-named (code-char  65286)))) ;; "＆"
    (65288 (:punctuation  .,(punctuation-named (code-char 65288)))) ;;"（", (code = 65288)
    (65289 (:punctuation .,(punctuation-named (code-char 65289)))) ;;  #\FULLWIDTH_RIGHT_PARENTHESIS 
    (65291 (:punctuation .,(punctuation-named (code-char 65291)))) ;; #\FULLWIDTH_PLUS_SIGN
    (65292 (:punctuation .,(punctuation-named (code-char 65292)))) ;; #\FULLWIDTH_COMMA 
    (65293 (:punctuation  .,(punctuation-named (code-char 65293)))) ;;"－", (code = 65293)
    (65294 (:punctuation .,(punctuation-named (code-char  65294)))) ;; "．"
    (65306 (:punctuation .,(punctuation-named (code-char 65306)))) ;; #\FULLWIDTH_COLON 
    (65307 (:punctuation .,(punctuation-named (code-char 65307)))) ;; #\FULLWIDTH_SEMICOLON 
    (65308 (:punctuation .,(punctuation-named (code-char 65308)))) ;; #\FULLWIDTH_LESS-THAN_SIGN 
    (65310 (:punctuation .,(punctuation-named (code-char 65310)))) ;; #\FULLWIDTH_GREATER-THAN_SIGN 
    (65311 (:punctuation .,(punctuation-named (code-char  65311)))) ;; "？"
    (65325 (:punctuation .,(punctuation-named (code-char  65325)))) ;; "Ｍ"
    (65357 (:punctuation .,(punctuation-named (code-char  65357)))) ;; "ｍ"
    (65374 (:punctuation .,(punctuation-named (code-char 65374)))) ;; #\FULLWIDTH_TILDE 
    (65533 (:punctuation .,(punctuation-named (code-char 65533)))) ;; �

    ;; ddm 4/27/20
    (296 (:alphabetical . (:lowercase .,(code-char 296)))) ;; #\LATIN_CAPITAL_LETTER_I_WITH_TILDE 
    (297 (:alphabetical . (:lowercase .,(code-char 297)))) ;; #\LATIN_SMALL_LETTER_I_WITH_TILDE 
    (1004 (:alphabetical . (:lowercase .,(code-char 1004)))) ;; #\COPTIC_CAPITAL_LETTER_SHIMA 
    (1032 (:alphabetical . (:lowercase .,(code-char 1032)))) ;; #\CYRILLIC_CAPITAL_LETTER_JE 
    (3006 (:alphabetical . (:lowercase .,(code-char 3006)))) ;; #\TAMIL_VOWEL_SIGN_AA 
    (9426 (:alphabetical . (:lowercase .,(code-char 9426)))) ;; #\CIRCLED_LATIN_SMALL_LETTER_C 


    ;; rjb 3 May 2020
    (272 (:alphabetical . (:lowercase .,(code-char 272)))) ;; #\LATIN_CAPITAL_LETTER_D_WITH_STROKE 
    (316 (:alphabetical . (:lowercase .,(code-char 316)))) ;; #\LATIN_SMALL_LETTER_L_WITH_CEDILLA 
    (333 (:alphabetical . (:lowercase .,(code-char 333)))) ;; #\LATIN_SMALL_LETTER_O_WITH_MACRON 
    (356 (:alphabetical . (:lowercase .,(code-char 356)))) ;; #\LATIN_CAPITAL_LETTER_T_WITH_CARON 
    (360 (:alphabetical . (:lowercase .,(code-char 360)))) ;; #\LATIN_CAPITAL_LETTER_U_WITH_TILDE 
    (411 (:alphabetical . (:lowercase .,(code-char 411)))) ;; #\LATIN_SMALL_LETTER_LAMBDA_WITH_STROKE 
    (415 (:alphabetical . (:lowercase .,(code-char 415)))) ;; #\LATIN_CAPITAL_LETTER_O_WITH_MIDDLE_TILDE 
    (464 (:alphabetical . (:lowercase .,(code-char 464)))) ;; #\LATIN_SMALL_LETTER_I_WITH_CARON 
    (514 (:alphabetical . (:lowercase .,(code-char 514)))) ;; #\LATIN_CAPITAL_LETTER_A_WITH_INVERTED_BREVE 
    (515 (:alphabetical . (:lowercase .,(code-char 515)))) ;; #\LATIN_SMALL_LETTER_A_WITH_INVERTED_BREVE 
    (523 (:alphabetical . (:lowercase .,(code-char 523)))) ;; #\LATIN_SMALL_LETTER_I_WITH_INVERTED_BREVE 
    (553 (:alphabetical . (:lowercase .,(code-char 553)))) ;; #\LATIN_SMALL_LETTER_E_WITH_CEDILLA 
    (625 (:alphabetical . (:lowercase .,(code-char 625)))) ;; #\LATIN_SMALL_LETTER_M_WITH_HOOK 
    (651 (:alphabetical . (:lowercase .,(code-char 651)))) ;; #\LATIN_SMALL_LETTER_V_WITH_HOOK 
    (711 (:alphabetical . (:lowercase .,(code-char 711)))) ;; #\CARON 
    (728 (:alphabetical . (:lowercase .,(code-char 728)))) ;; #\BREVE 
    (820 (:alphabetical . (:lowercase .,(code-char 820)))) ;; #\COMBINING_TILDE_OVERLAY 
    (841 (:alphabetical . (:lowercase .,(code-char 841)))) ;; #\COMBINING_LEFT_ANGLE_BELOW 
    (849 (:alphabetical . (:lowercase .,(code-char 849)))) ;; #\COMBINING_LEFT_HALF_RING_ABOVE 
    (850 (:alphabetical . (:lowercase .,(code-char 850)))) ;; #\COMBINING_FERMATA 
    (851 (:alphabetical . (:lowercase .,(code-char 851)))) ;; #\COMBINING_X_BELOW 
    (852 (:alphabetical . (:lowercase .,(code-char 852)))) ;; #\COMBINING_LEFT_ARROWHEAD_BELOW 
    (904 (:alphabetical . (:lowercase .,(code-char 904)))) ;; #\GREEK_CAPITAL_LETTER_EPSILON_WITH_TONOS 
    (912 (:alphabetical . (:lowercase .,(code-char 912)))) ;; #\GREEK_SMALL_LETTER_IOTA_WITH_DIALYTIKA_AND_TONOS 
    (939 (:alphabetical . (:lowercase .,(code-char 939)))) ;; #\GREEK_CAPITAL_LETTER_UPSILON_WITH_DIALYTIKA 
    (974 (:alphabetical . (:lowercase .,(code-char 974)))) ;; #\GREEK_SMALL_LETTER_OMEGA_WITH_TONOS 
    (1000 (:alphabetical . (:lowercase .,(code-char 1000)))) ;; #\COPTIC_CAPITAL_LETTER_HORI 
    (1015 (:alphabetical . (:lowercase .,(code-char 1015)))) ;; #\GREEK_CAPITAL_LETTER_SHO 
    (1028 (:alphabetical . (:lowercase .,(code-char 1028)))) ;; #\CYRILLIC_CAPITAL_LETTER_UKRAINIAN_IE 
    (1034 (:alphabetical . (:lowercase .,(code-char 1034)))) ;; #\CYRILLIC_CAPITAL_LETTER_NJE 
    (1055 (:alphabetical . (:lowercase .,(code-char 1055)))) ;; #\CYRILLIC_CAPITAL_LETTER_PE 
    (1064 (:alphabetical . (:lowercase .,(code-char 1064)))) ;; #\CYRILLIC_CAPITAL_LETTER_SHA 
    (1137 (:alphabetical . (:lowercase .,(code-char 1137)))) ;; #\CYRILLIC_SMALL_LETTER_PSI 
    (1490 (:alphabetical . (:lowercase .,(code-char 1490)))) ;; #\HEBREW_LETTER_GIMEL 
    (1492 (:alphabetical . (:lowercase .,(code-char 1492)))) ;; #\HEBREW_LETTER_HE 
    (1493 (:alphabetical . (:lowercase .,(code-char 1493)))) ;; #\HEBREW_LETTER_VAV 
    (1496 (:alphabetical . (:lowercase .,(code-char 1496)))) ;; #\HEBREW_LETTER_TET 
    (1500 (:alphabetical . (:lowercase .,(code-char 1500)))) ;; #\HEBREW_LETTER_LAMED 
    (1502 (:alphabetical . (:lowercase .,(code-char 1502)))) ;; #\HEBREW_LETTER_MEM 
    (1503 (:alphabetical . (:lowercase .,(code-char 1503)))) ;; #\HEBREW_LETTER_FINAL_NUN 
    (1506 (:alphabetical . (:lowercase .,(code-char 1506)))) ;; #\HEBREW_LETTER_AYIN 
    (1512 (:alphabetical . (:lowercase .,(code-char 1512)))) ;; #\HEBREW_LETTER_RESH 
    (1545 (:alphabetical . (:lowercase .,(code-char 1545)))) ;; #\ARABIC-INDIC_PER_MILLE_SIGN 
    (1549 (:alphabetical . (:lowercase .,(code-char 1549)))) ;; #\ARABIC_DATE_SEPARATOR 
    (1601 (:alphabetical . (:lowercase .,(code-char 1601)))) ;; #\ARABIC_LETTER_FEH 
    (2845 (:alphabetical . (:lowercase .,(code-char 2845)))) ;; #\ORIYA_LETTER_JHA 
    (3008 (:alphabetical . (:lowercase .,(code-char 3008)))) ;; #\TAMIL_VOWEL_SIGN_II 
    (3355 (:alphabetical . (:lowercase .,(code-char 3355)))) ;; #\MALAYALAM_LETTER_CHA 
    (5007 (:alphabetical . (:lowercase .,(code-char 5007)))) ;; #\ETHIOPIC_SYLLABLE_PWE 
    (7015 (:alphabetical . (:lowercase .,(code-char 7015)))) ;; #\BALINESE_MUSICAL_SYMBOL_DAENG 
    (7016 (:alphabetical . (:lowercase .,(code-char 7016)))) ;; #\BALINESE_MUSICAL_SYMBOL_DEUNG 
    (7503 (:alphabetical . (:lowercase .,(code-char 7503)))) ;; #\MODIFIER_LETTER_SMALL_K 
    (7710 (:alphabetical . (:lowercase .,(code-char 7710)))) ;; #\LATIN_CAPITAL_LETTER_F_WITH_DOT_ABOVE 
    (7713 (:alphabetical . (:lowercase .,(code-char 7713)))) ;; #\LATIN_SMALL_LETTER_G_WITH_MACRON 
    (7745 (:alphabetical . (:lowercase .,(code-char 7745)))) ;; #\LATIN_SMALL_LETTER_M_WITH_DOT_ABOVE 
    (7779 (:alphabetical . (:lowercase .,(code-char 7779)))) ;; #\LATIN_SMALL_LETTER_S_WITH_DOT_BELOW 
    (7789 (:alphabetical . (:lowercase .,(code-char 7789)))) ;; #\LATIN_SMALL_LETTER_T_WITH_DOT_BELOW 
    (7804 (:alphabetical . (:lowercase .,(code-char 7804)))) ;; #\LATIN_CAPITAL_LETTER_V_WITH_TILDE 
    (7823 (:alphabetical . (:lowercase .,(code-char 7823)))) ;; #\LATIN_SMALL_LETTER_Y_WITH_DOT_ABOVE 
    (7843 (:alphabetical . (:lowercase .,(code-char 7843)))) ;; #\LATIN_SMALL_LETTER_A_WITH_HOOK_ABOVE 
    (7883 (:alphabetical . (:lowercase .,(code-char 7883)))) ;; #\LATIN_SMALL_LETTER_I_WITH_DOT_BELOW 
    (7885 (:alphabetical . (:lowercase .,(code-char 7885)))) ;; #\LATIN_SMALL_LETTER_O_WITH_DOT_BELOW 
    (7952 (:alphabetical . (:lowercase .,(code-char 7952)))) ;; #\GREEK_SMALL_LETTER_EPSILON_WITH_PSILI 
    (7956 (:alphabetical . (:lowercase .,(code-char 7956)))) ;; #\GREEK_SMALL_LETTER_EPSILON_WITH_PSILI_AND_OXIA 
    (7974 (:alphabetical . (:lowercase .,(code-char 7974)))) ;; #\GREEK_SMALL_LETTER_ETA_WITH_PSILI_AND_PERISPOMENI 
    (7984 (:alphabetical . (:lowercase .,(code-char 7984)))) ;; #\GREEK_SMALL_LETTER_IOTA_WITH_PSILI 
    (7990 (:alphabetical . (:lowercase .,(code-char 7990)))) ;; #\GREEK_SMALL_LETTER_IOTA_WITH_PSILI_AND_PERISPOMENI 
    (8003 (:alphabetical . (:lowercase .,(code-char 8003)))) ;; #\GREEK_SMALL_LETTER_OMICRON_WITH_DASIA_AND_VARIA 
    (8005 (:alphabetical . (:lowercase .,(code-char 8005)))) ;; #\GREEK_SMALL_LETTER_OMICRON_WITH_DASIA_AND_OXIA 
    (8048 (:alphabetical . (:lowercase .,(code-char 8048)))) ;; #\GREEK_SMALL_LETTER_ALPHA_WITH_VARIA 
    (8052 (:alphabetical . (:lowercase .,(code-char 8052)))) ;; #\GREEK_SMALL_LETTER_ETA_WITH_VARIA 
    (8053 (:alphabetical . (:lowercase .,(code-char 8053)))) ;; #\GREEK_SMALL_LETTER_ETA_WITH_OXIA 
    (8054 (:alphabetical . (:lowercase .,(code-char 8054)))) ;; #\GREEK_SMALL_LETTER_IOTA_WITH_VARIA 
    (8055 (:alphabetical . (:lowercase .,(code-char 8055)))) ;; #\GREEK_SMALL_LETTER_IOTA_WITH_OXIA 
    (8056 (:alphabetical . (:lowercase .,(code-char 8056)))) ;; #\GREEK_SMALL_LETTER_OMICRON_WITH_VARIA 
    (8057 (:alphabetical . (:lowercase .,(code-char 8057)))) ;; #\GREEK_SMALL_LETTER_OMICRON_WITH_OXIA 
    (8059 (:alphabetical . (:lowercase .,(code-char 8059)))) ;; #\GREEK_SMALL_LETTER_UPSILON_WITH_OXIA 
    (8060 (:alphabetical . (:lowercase .,(code-char 8060)))) ;; #\GREEK_SMALL_LETTER_OMEGA_WITH_VARIA 
    (8080 (:alphabetical . (:lowercase .,(code-char 8080)))) ;; #\GREEK_SMALL_LETTER_ETA_WITH_PSILI_AND_YPOGEGRAMMENI 
    (8145 (:alphabetical . (:lowercase .,(code-char 8145)))) ;; #\GREEK_SMALL_LETTER_IOTA_WITH_MACRON 
    (8161 (:alphabetical . (:lowercase .,(code-char 8161)))) ;; #\GREEK_SMALL_LETTER_UPSILON_WITH_MACRON 
    (8188 (:alphabetical . (:lowercase .,(code-char 8188)))) ;; #\GREEK_CAPITAL_LETTER_OMEGA_WITH_PROSGEGRAMMENI 
    (8189 (:alphabetical . (:lowercase .,(code-char 8189)))) ;; #\GREEK_OXIA 

    (8259 (:alphabetical . (:lowercase .,(code-char 8259)))) ;; #\HYPHEN_BULLET 
    (8279 (:alphabetical . (:lowercase .,(code-char 8279)))) ;; #\QUADRUPLE_PRIME 
    (8291 (:alphabetical . (:lowercase .,(code-char 8291)))) ;; #\INVISIBLE_SEPARATOR 
    (8308 (:alphabetical . (:lowercase .,(code-char 8308)))) ;; #\SUPERSCRIPT_FOUR 
    (8309 (:alphabetical . (:lowercase .,(code-char 8309)))) ;; #\SUPERSCRIPT_FIVE 
    (8310 (:alphabetical . (:lowercase .,(code-char 8310)))) ;; #\SUPERSCRIPT_SIX 
    (8311 (:alphabetical . (:lowercase .,(code-char 8311)))) ;; #\SUPERSCRIPT_SEVEN 
    (8312 (:alphabetical . (:lowercase .,(code-char 8312)))) ;; #\SUPERSCRIPT_EIGHT 
    (8321 (:alphabetical . (:lowercase .,(code-char 8321)))) ;; #\SUBSCRIPT_ONE 
    (8407 (:alphabetical . (:lowercase .,(code-char 8407)))) ;; #\COMBINING_RIGHT_ARROW_ABOVE 
    (8461 (:alphabetical . (:lowercase .,(code-char 8461)))) ;; #\DOUBLE-STRUCK_CAPITAL_H 
    (8465 (:alphabetical . (:lowercase .,(code-char 8465)))) ;; #\BLACK-LETTER_CAPITAL_I 
    (8497 (:alphabetical . (:lowercase .,(code-char 8497)))) ;; #\SCRIPT_CAPITAL_F 
    (8520 (:alphabetical . (:lowercase .,(code-char 8520)))) ;; #\DOUBLE-STRUCK_ITALIC_SMALL_I 
    (8521 (:alphabetical . (:lowercase .,(code-char 8521)))) ;; #\DOUBLE-STRUCK_ITALIC_SMALL_J 
    (8535 (:alphabetical . (:lowercase .,(code-char 8535)))) ;; #\VULGAR_FRACTION_THREE_FIFTHS 
    (8536 (:alphabetical . (:lowercase .,(code-char 8536)))) ;; #\VULGAR_FRACTION_FOUR_FIFTHS 
    (8539 (:alphabetical . (:lowercase .,(code-char 8539)))) ;; #\VULGAR_FRACTION_ONE_EIGHTH

    (19993 (:alphabetical . (:lowercase .,(code-char 19993)))) ;; #\U4E19 
    (19994 (:alphabetical . (:lowercase .,(code-char 19994)))) ;; #\U4E1A 
    (20004 (:alphabetical . (:lowercase .,(code-char 20004)))) ;; #\U4E24 
    (20037 (:alphabetical . (:lowercase .,(code-char 20037)))) ;; #\U4E45 
    (20046 (:alphabetical . (:lowercase .,(code-char 20046)))) ;; #\U4E4E 
    (20047 (:alphabetical . (:lowercase .,(code-char 20047)))) ;; #\U4E4F 
    (20057 (:alphabetical . (:lowercase .,(code-char 20057)))) ;; #\U4E59 
    (20070 (:alphabetical . (:lowercase .,(code-char 20070)))) ;; #\U4E66 
    (20111 (:alphabetical . (:lowercase .,(code-char 20111)))) ;; #\U4E8F 
    (20129 (:alphabetical . (:lowercase .,(code-char 20129)))) ;; #\U4EA1 
    (20134 (:alphabetical . (:lowercase .,(code-char 20134)))) ;; #\U4EA6 
    (20135 (:alphabetical . (:lowercase .,(code-char 20135)))) ;; #\U4EA7 
    (20140 (:alphabetical . (:lowercase .,(code-char 20140)))) ;; #\U4EAC 
    (20165 (:alphabetical . (:lowercase .,(code-char 20165)))) ;; #\U4EC5 
    (20170 (:alphabetical . (:lowercase .,(code-char 20170)))) ;; #\U4ECA 
    (20173 (:alphabetical . (:lowercase .,(code-char 20173)))) ;; #\U4ECD 
    (20174 (:alphabetical . (:lowercase .,(code-char 20174)))) ;; #\U4ECE 
    (20202 (:alphabetical . (:lowercase .,(code-char 20202)))) ;; #\U4EEA 
    (20204 (:alphabetical . (:lowercase .,(code-char 20204)))) ;; #\U4EEC 
    (20214 (:alphabetical . (:lowercase .,(code-char 20214)))) ;; #\U4EF6 
    (20215 (:alphabetical . (:lowercase .,(code-char 20215)))) ;; #\U4EF7 
    (20250 (:alphabetical . (:lowercase .,(code-char 20250)))) ;; #\U4F1A 
    (20255 (:alphabetical . (:lowercase .,(code-char 20255)))) ;; #\U4F1F 
    (20381 (:alphabetical . (:lowercase .,(code-char 20381)))) ;; #\U4F9D 
    (20405 (:alphabetical . (:lowercase .,(code-char 20405)))) ;; #\U4FB5 
    (20415 (:alphabetical . (:lowercase .,(code-char 20415)))) ;; #\U4FBF 
    (20419 (:alphabetical . (:lowercase .,(code-char 20419)))) ;; #\U4FC3 
    (20445 (:alphabetical . (:lowercase .,(code-char 20445)))) ;; #\U4FDD 
    (20505 (:alphabetical . (:lowercase .,(code-char 20505)))) ;; #\U5019 
    (20570 (:alphabetical . (:lowercase .,(code-char 20570)))) ;; #\U505A 
    (20581 (:alphabetical . (:lowercase .,(code-char 20581)))) ;; #\U5065 
    (20805 (:alphabetical . (:lowercase .,(code-char 20805)))) ;; #\U5145 
    (20811 (:alphabetical . (:lowercase .,(code-char 20811)))) ;; #\U514B 
    (20813 (:alphabetical . (:lowercase .,(code-char 20813)))) ;; #\U514D 
    (20844 (:alphabetical . (:lowercase .,(code-char 20844)))) ;; #\U516C 
    (20859 (:alphabetical . (:lowercase .,(code-char 20859)))) ;; #\U517B 
    (20877 (:alphabetical . (:lowercase .,(code-char 20877)))) ;; #\U518D 
    (20908 (:alphabetical . (:lowercase .,(code-char 20908)))) ;; #\U51AC 
    (20915 (:alphabetical . (:lowercase .,(code-char 20915)))) ;; #\U51B3 
    (20939 (:alphabetical . (:lowercase .,(code-char 20939)))) ;; #\U51CB 
    (20960 (:alphabetical . (:lowercase .,(code-char 20960)))) ;; #\U51E0 
    (21015 (:alphabetical . (:lowercase .,(code-char 21015)))) ;; #\U5217 
    (21017 (:alphabetical . (:lowercase .,(code-char 21017)))) ;; #\U5219 
    (21018 (:alphabetical . (:lowercase .,(code-char 21018)))) ;; #\U521A 
    (21019 (:alphabetical . (:lowercase .,(code-char 21019)))) ;; #\U521B 
    (21028 (:alphabetical . (:lowercase .,(code-char 21028)))) ;; #\U5224 
    (21033 (:alphabetical . (:lowercase .,(code-char 21033)))) ;; #\U5229 
    (21040 (:alphabetical . (:lowercase .,(code-char 21040)))) ;; #\U5230 
    (21046 (:alphabetical . (:lowercase .,(code-char 21046)))) ;; #\U5236 
    (21106 (:alphabetical . (:lowercase .,(code-char 21106)))) ;; #\U5272 
    (21151 (:alphabetical . (:lowercase .,(code-char 21151)))) ;; #\U529F 
    (21162 (:alphabetical . (:lowercase .,(code-char 21162)))) ;; #\U52AA 
    (21248 (:alphabetical . (:lowercase .,(code-char 21248)))) ;; #\U5300 
    (21253 (:alphabetical . (:lowercase .,(code-char 21253)))) ;; #\U5305 
    (21271 (:alphabetical . (:lowercase .,(code-char 21271)))) ;; #\U5317 
    (21306 (:alphabetical . (:lowercase .,(code-char 21306)))) ;; #\U533A 
    (21344 (:alphabetical . (:lowercase .,(code-char 21344)))) ;; #\U5360 
    (21364 (:alphabetical . (:lowercase .,(code-char 21364)))) ;; #\U5374 
    (21449 (:alphabetical . (:lowercase .,(code-char 21449)))) ;; #\U53C9 
    (21462 (:alphabetical . (:lowercase .,(code-char 21462)))) ;; #\U53D6 
    (21472 (:alphabetical . (:lowercase .,(code-char 21472)))) ;; #\U53E0 
    (21478 (:alphabetical . (:lowercase .,(code-char 21478)))) ;; #\U53E6 
    (21482 (:alphabetical . (:lowercase .,(code-char 21482)))) ;; #\U53EA 
    (21491 (:alphabetical . (:lowercase .,(code-char 21491)))) ;; #\U53F3 
    (21496 (:alphabetical . (:lowercase .,(code-char 21496)))) ;; #\U53F8 
    (21507 (:alphabetical . (:lowercase .,(code-char 21507)))) ;; #\U5403 
    (21508 (:alphabetical . (:lowercase .,(code-char 21508)))) ;; #\U5404 
    (21513 (:alphabetical . (:lowercase .,(code-char 21513)))) ;; #\U5409 
    (21537 (:alphabetical . (:lowercase .,(code-char 21537)))) ;; #\U5421 
    (21547 (:alphabetical . (:lowercase .,(code-char 21547)))) ;; #\U542B 
    (21679 (:alphabetical . (:lowercase .,(code-char 21679)))) ;; #\U54AF 
    (21708 (:alphabetical . (:lowercase .,(code-char 21708)))) ;; #\U54CC 
    (21709 (:alphabetical . (:lowercase .,(code-char 21709)))) ;; #\U54CD 
    (21830 (:alphabetical . (:lowercase .,(code-char 21830)))) ;; #\U5546 
    (21878 (:alphabetical . (:lowercase .,(code-char 21878)))) ;; #\U5576 
    (22218 (:alphabetical . (:lowercase .,(code-char 22218)))) ;; #\U56CA 
    (22266 (:alphabetical . (:lowercase .,(code-char 22266)))) ;; #\U56FA 
    (22269 (:alphabetical . (:lowercase .,(code-char 22269)))) ;; #\U56FD 
    (22278 (:alphabetical . (:lowercase .,(code-char 22278)))) ;; #\U5706 
    (22351 (:alphabetical . (:lowercase .,(code-char 22351)))) ;; #\U574F 
    (22495 (:alphabetical . (:lowercase .,(code-char 22495)))) ;; #\U57DF 
    (22788 (:alphabetical . (:lowercase .,(code-char 22788)))) ;; #\U5904 
    (22797 (:alphabetical . (:lowercase .,(code-char 22797)))) ;; #\U590D 
    (22799 (:alphabetical . (:lowercase .,(code-char 22799)))) ;; #\U590F 
    (22812 (:alphabetical . (:lowercase .,(code-char 22812)))) ;; #\U591C 
    (22833 (:alphabetical . (:lowercase .,(code-char 22833)))) ;; #\U5931 
    (22902 (:alphabetical . (:lowercase .,(code-char 22902)))) ;; #\U5976 
    (22914 (:alphabetical . (:lowercase .,(code-char 22914)))) ;; #\U5982 
    (22987 (:alphabetical . (:lowercase .,(code-char 22987)))) ;; #\U59CB 
    (23394 (:alphabetical . (:lowercase .,(code-char 23394)))) ;; #\U5B62 
    (23413 (:alphabetical . (:lowercase .,(code-char 23413)))) ;; #\U5B75 
    (23427 (:alphabetical . (:lowercase .,(code-char 23427)))) ;; #\U5B83 
    (23436 (:alphabetical . (:lowercase .,(code-char 23436)))) ;; #\U5B8C 
    (23452 (:alphabetical . (:lowercase .,(code-char 23452)))) ;; #\U5B9C 
    (23485 (:alphabetical . (:lowercase .,(code-char 23485)))) ;; #\U5BBD 
    (23500 (:alphabetical . (:lowercase .,(code-char 23500)))) ;; #\U5BCC 
    (23519 (:alphabetical . (:lowercase .,(code-char 23519)))) ;; #\U5BDF 
    (23547 (:alphabetical . (:lowercase .,(code-char 23547)))) ;; #\U5BFB 
    (23553 (:alphabetical . (:lowercase .,(code-char 23553)))) ;; #\U5C01 
    (23558 (:alphabetical . (:lowercase .,(code-char 23558)))) ;; #\U5C06 
    (23567 (:alphabetical . (:lowercase .,(code-char 23567)))) ;; #\U5C0F 
    (23572 (:alphabetical . (:lowercase .,(code-char 23572)))) ;; #\U5C14 
    (23578 (:alphabetical . (:lowercase .,(code-char 23578)))) ;; #\U5C1A 
    (23581 (:alphabetical . (:lowercase .,(code-char 23581)))) ;; #\U5C1D 
    (23601 (:alphabetical . (:lowercase .,(code-char 23601)))) ;; #\U5C31 
    (23614 (:alphabetical . (:lowercase .,(code-char 23614)))) ;; #\U5C3E 
    (23616 (:alphabetical . (:lowercase .,(code-char 23616)))) ;; #\U5C40 
    (23646 (:alphabetical . (:lowercase .,(code-char 23646)))) ;; #\U5C5E 
    (24037 (:alphabetical . (:lowercase .,(code-char 24037)))) ;; #\U5DE5 
    (24046 (:alphabetical . (:lowercase .,(code-char 24046)))) ;; #\U5DEE 
    (24050 (:alphabetical . (:lowercase .,(code-char 24050)))) ;; #\U5DF2 
    (24067 (:alphabetical . (:lowercase .,(code-char 24067)))) ;; #\U5E03 
    (24102 (:alphabetical . (:lowercase .,(code-char 24102)))) ;; #\U5E26 
    (24110 (:alphabetical . (:lowercase .,(code-char 24110)))) ;; #\U5E2E 
    (24178 (:alphabetical . (:lowercase .,(code-char 24178)))) ;; #\U5E72 
    (24207 (:alphabetical . (:lowercase .,(code-char 24207)))) ;; #\U5E8F 
    (24211 (:alphabetical . (:lowercase .,(code-char 24211)))) ;; #\U5E93 
    (24247 (:alphabetical . (:lowercase .,(code-char 24247)))) ;; #\U5EB7 
    (24314 (:alphabetical . (:lowercase .,(code-char 24314)))) ;; #\U5EFA 
    (24335 (:alphabetical . (:lowercase .,(code-char 24335)))) ;; #\U5F0F 
    (24352 (:alphabetical . (:lowercase .,(code-char 24352)))) ;; #\U5F20 
    (24378 (:alphabetical . (:lowercase .,(code-char 24378)))) ;; #\U5F3A 
    (24403 (:alphabetical . (:lowercase .,(code-char 24403)))) ;; #\U5F53 
    (24453 (:alphabetical . (:lowercase .,(code-char 24453)))) ;; #\U5F85 
    (24490 (:alphabetical . (:lowercase .,(code-char 24490)))) ;; #\U5FAA 
    (24494 (:alphabetical . (:lowercase .,(code-char 24494)))) ;; #\U5FAE 
    (24535 (:alphabetical . (:lowercase .,(code-char 24535)))) ;; #\U5FD7 
    (24565 (:alphabetical . (:lowercase .,(code-char 24565)))) ;; #\U5FF5 
    (24613 (:alphabetical . (:lowercase .,(code-char 24613)))) ;; #\U6025 
    (24658 (:alphabetical . (:lowercase .,(code-char 24658)))) ;; #\U6052 
    (24687 (:alphabetical . (:lowercase .,(code-char 24687)))) ;; #\U606F 
    (24800 (:alphabetical . (:lowercase .,(code-char 24800)))) ;; #\U60E0 
    (24910 (:alphabetical . (:lowercase .,(code-char 24910)))) ;; #\U614E 
    (25105 (:alphabetical . (:lowercase .,(code-char 25105)))) ;; #\U6211 
    (25110 (:alphabetical . (:lowercase .,(code-char 25110)))) ;; #\U6216 
    (25152 (:alphabetical . (:lowercase .,(code-char 25152)))) ;; #\U6240 
    (25165 (:alphabetical . (:lowercase .,(code-char 25165)))) ;; #\U624D 
    (25193 (:alphabetical . (:lowercase .,(code-char 25193)))) ;; #\U6269 
    (25196 (:alphabetical . (:lowercase .,(code-char 25196)))) ;; #\U626C 
    (25198 (:alphabetical . (:lowercase .,(code-char 25198)))) ;; #\U626E 
    (25200 (:alphabetical . (:lowercase .,(code-char 25200)))) ;; #\U6270 
    (25214 (:alphabetical . (:lowercase .,(code-char 25214)))) ;; #\U627E 
    (25226 (:alphabetical . (:lowercase .,(code-char 25226)))) ;; #\U628A 
    (25233 (:alphabetical . (:lowercase .,(code-char 25233)))) ;; #\U6291 
    (25252 (:alphabetical . (:lowercase .,(code-char 25252)))) ;; #\U62A4 
    (25324 (:alphabetical . (:lowercase .,(code-char 25324)))) ;; #\U62EC 
    (25353 (:alphabetical . (:lowercase .,(code-char 25353)))) ;; #\U6309 
    (25381 (:alphabetical . (:lowercase .,(code-char 25381)))) ;; #\U6325 
    (25490 (:alphabetical . (:lowercase .,(code-char 25490)))) ;; #\U6392 
    (25511 (:alphabetical . (:lowercase .,(code-char 25511)))) ;; #\U63A7 
    (25512 (:alphabetical . (:lowercase .,(code-char 25512)))) ;; #\U63A8 
    (25551 (:alphabetical . (:lowercase .,(code-char 25551)))) ;; #\U63CF 
    (25910 (:alphabetical . (:lowercase .,(code-char 25910)))) ;; #\U6536 
    (25918 (:alphabetical . (:lowercase .,(code-char 25918)))) ;; #\U653E 
    (25925 (:alphabetical . (:lowercase .,(code-char 25925)))) ;; #\U6545 
    (25937 (:alphabetical . (:lowercase .,(code-char 25937)))) ;; #\U6551 
    (25970 (:alphabetical . (:lowercase .,(code-char 25970)))) ;; #\U6572 
    (26086 (:alphabetical . (:lowercase .,(code-char 26086)))) ;; #\U65E6 
    (26195 (:alphabetical . (:lowercase .,(code-char 26195)))) ;; #\U6653 
    (26202 (:alphabetical . (:lowercase .,(code-char 26202)))) ;; #\U665A 
    (26222 (:alphabetical . (:lowercase .,(code-char 26222)))) ;; #\U666E 
    (26230 (:alphabetical . (:lowercase .,(code-char 26230)))) ;; #\U6676 
    (26292 (:alphabetical . (:lowercase .,(code-char 26292)))) ;; #\U66B4 
    (26395 (:alphabetical . (:lowercase .,(code-char 26395)))) ;; #\U671B 
    (26411 (:alphabetical . (:lowercase .,(code-char 26411)))) ;; #\U672B 
    (26426 (:alphabetical . (:lowercase .,(code-char 26426)))) ;; #\U673A 
    (26434 (:alphabetical . (:lowercase .,(code-char 26434)))) ;; #\U6742 
    (26446 (:alphabetical . (:lowercase .,(code-char 26446)))) ;; #\U674E 
    (26463 (:alphabetical . (:lowercase .,(code-char 26463)))) ;; #\U675F 
    (26465 (:alphabetical . (:lowercase .,(code-char 26465)))) ;; #\U6761 
    (26469 (:alphabetical . (:lowercase .,(code-char 26469)))) ;; #\U6765 
    (26495 (:alphabetical . (:lowercase .,(code-char 26495)))) ;; #\U677F 
    (26500 (:alphabetical . (:lowercase .,(code-char 26500)))) ;; #\U6784 
    (26579 (:alphabetical . (:lowercase .,(code-char 26579)))) ;; #\U67D3 
    (26666 (:alphabetical . (:lowercase .,(code-char 26666)))) ;; #\U682A 
    (26680 (:alphabetical . (:lowercase .,(code-char 26680)))) ;; #\U6838 
    (26893 (:alphabetical . (:lowercase .,(code-char 26893)))) ;; #\U690D 
    (26970 (:alphabetical . (:lowercase .,(code-char 26970)))) ;; #\U695A 
    (27010 (:alphabetical . (:lowercase .,(code-char 27010)))) ;; #\U6982 
    (27490 (:alphabetical . (:lowercase .,(code-char 27490)))) ;; #\U6B62 
    (27515 (:alphabetical . (:lowercase .,(code-char 27515)))) ;; #\U6B7B 
    (27531 (:alphabetical . (:lowercase .,(code-char 27531)))) ;; #\U6B8B 
    (27542 (:alphabetical . (:lowercase .,(code-char 27542)))) ;; #\U6B96 
    (27573 (:alphabetical . (:lowercase .,(code-char 27573)))) ;; #\U6BB5 
    (27597 (:alphabetical . (:lowercase .,(code-char 27597)))) ;; #\U6BCD 
    (27679 (:alphabetical . (:lowercase .,(code-char 27679)))) ;; #\U6C1F 
    (27687 (:alphabetical . (:lowercase .,(code-char 27687)))) ;; #\U6C27 
    (27688 (:alphabetical . (:lowercase .,(code-char 27688)))) ;; #\U6C28 
    (27695 (:alphabetical . (:lowercase .,(code-char 27695)))) ;; #\U6C2F 
    (27714 (:alphabetical . (:lowercase .,(code-char 27714)))) ;; #\U6C42 
    (27785 (:alphabetical . (:lowercase .,(code-char 27785)))) ;; #\U6C89 
    (27867 (:alphabetical . (:lowercase .,(code-char 27867)))) ;; #\U6CDB 
    (27927 (:alphabetical . (:lowercase .,(code-char 27927)))) ;; #\U6D17 
    (27963 (:alphabetical . (:lowercase .,(code-char 27963)))) ;; #\U6D3B 
    (27974 (:alphabetical . (:lowercase .,(code-char 27974)))) ;; #\U6D46 
    (27987 (:alphabetical . (:lowercase .,(code-char 27987)))) ;; #\U6D53 
    (28023 (:alphabetical . (:lowercase .,(code-char 28023)))) ;; #\U6D77 
    (28040 (:alphabetical . (:lowercase .,(code-char 28040)))) ;; #\U6D88 
    (28096 (:alphabetical . (:lowercase .,(code-char 28096)))) ;; #\U6DC0 
    (28145 (:alphabetical . (:lowercase .,(code-char 28145)))) ;; #\U6DF1 
    (28151 (:alphabetical . (:lowercase .,(code-char 28151)))) ;; #\U6DF7 
    (28165 (:alphabetical . (:lowercase .,(code-char 28165)))) ;; #\U6E05 
    (28176 (:alphabetical . (:lowercase .,(code-char 28176)))) ;; #\U6E10 
    (28216 (:alphabetical . (:lowercase .,(code-char 28216)))) ;; #\U6E38 
    (28304 (:alphabetical . (:lowercase .,(code-char 28304)))) ;; #\U6E90 
    (28340 (:alphabetical . (:lowercase .,(code-char 28340)))) ;; #\U6EB4 
    (28342 (:alphabetical . (:lowercase .,(code-char 28342)))) ;; #\U6EB6 
    (28436 (:alphabetical . (:lowercase .,(code-char 28436)))) ;; #\U6F14 
    (28982 (:alphabetical . (:lowercase .,(code-char 28982)))) ;; #\U7136 
    (29255 (:alphabetical . (:lowercase .,(code-char 29255)))) ;; #\U7247 
    (29275 (:alphabetical . (:lowercase .,(code-char 29275)))) ;; #\U725B 
    (29420 (:alphabetical . (:lowercase .,(code-char 29420)))) ;; #\U72EC 
    (29492 (:alphabetical . (:lowercase .,(code-char 29492)))) ;; #\U7334 
    (29699 (:alphabetical . (:lowercase .,(code-char 29699)))) ;; #\U7403 
    (29978 (:alphabetical . (:lowercase .,(code-char 29978)))) ;; #\U751A 
    (30001 (:alphabetical . (:lowercase .,(code-char 30001)))) ;; #\U7531 
    (30002 (:alphabetical . (:lowercase .,(code-char 30002)))) ;; #\U7532 
    (30072 (:alphabetical . (:lowercase .,(code-char 30072)))) ;; #\U7578 
    (30123 (:alphabetical . (:lowercase .,(code-char 30123)))) ;; #\U75AB 
    (30127 (:alphabetical . (:lowercase .,(code-char 30127)))) ;; #\U75AF 
    (30334 (:alphabetical . (:lowercase .,(code-char 30334)))) ;; #\U767E 
    (30446 (:alphabetical . (:lowercase .,(code-char 30446)))) ;; #\U76EE 
    (30452 (:alphabetical . (:lowercase .,(code-char 30452)))) ;; #\U76F4 
    (30528 (:alphabetical . (:lowercase .,(code-char 30528)))) ;; #\U7740 
    (30693 (:alphabetical . (:lowercase .,(code-char 30693)))) ;; #\U77E5 
    (30772 (:alphabetical . (:lowercase .,(code-char 30772)))) ;; #\U7834 
    (30789 (:alphabetical . (:lowercase .,(code-char 30789)))) ;; #\U7845 
    (30830 (:alphabetical . (:lowercase .,(code-char 30830)))) ;; #\U786E 
    (30862 (:alphabetical . (:lowercase .,(code-char 30862)))) ;; #\U788E 
    (30899 (:alphabetical . (:lowercase .,(code-char 30899)))) ;; #\U78B3 
    (31070 (:alphabetical . (:lowercase .,(code-char 31070)))) ;; #\U795E 
    (31119 (:alphabetical . (:lowercase .,(code-char 31119)))) ;; #\U798F 
    (31163 (:alphabetical . (:lowercase .,(code-char 31163)))) ;; #\U79BB 
    (31185 (:alphabetical . (:lowercase .,(code-char 31185)))) ;; #\U79D1 
    (31216 (:alphabetical . (:lowercase .,(code-char 31216)))) ;; #\U79F0 
    (31232 (:alphabetical . (:lowercase .,(code-char 31232)))) ;; #\U7A00 
    (31354 (:alphabetical . (:lowercase .,(code-char 31354)))) ;; #\U7A7A 
    (31361 (:alphabetical . (:lowercase .,(code-char 31361)))) ;; #\U7A81 
    (31435 (:alphabetical . (:lowercase .,(code-char 31435)))) ;; #\U7ACB 
    (31471 (:alphabetical . (:lowercase .,(code-char 31471)))) ;; #\U7AEF 
    (31526 (:alphabetical . (:lowercase .,(code-char 31526)))) ;; #\U7B26 
    (31532 (:alphabetical . (:lowercase .,(code-char 31532)))) ;; #\U7B2C 
    (31561 (:alphabetical . (:lowercase .,(code-char 31561)))) ;; #\U7B49 
    (31616 (:alphabetical . (:lowercase .,(code-char 31616)))) ;; #\U7B80 
    (31881 (:alphabetical . (:lowercase .,(code-char 31881)))) ;; #\U7C89 
    (31890 (:alphabetical . (:lowercase .,(code-char 31890)))) ;; #\U7C92 
    (31896 (:alphabetical . (:lowercase .,(code-char 31896)))) ;; #\U7C98 
    (31934 (:alphabetical . (:lowercase .,(code-char 31934)))) ;; #\U7CBE 
    (32032 (:alphabetical . (:lowercase .,(code-char 32032)))) ;; #\U7D20 
    (32420 (:alphabetical . (:lowercase .,(code-char 32420)))) ;; #\U7EA4 
    (32422 (:alphabetical . (:lowercase .,(code-char 32422)))) ;; #\U7EA6 
    (32431 (:alphabetical . (:lowercase .,(code-char 32431)))) ;; #\U7EAF 
    (32463 (:alphabetical . (:lowercase .,(code-char 32463)))) ;; #\U7ECF 
    (32466 (:alphabetical . (:lowercase .,(code-char 32466)))) ;; #\U7ED2 
    (32473 (:alphabetical . (:lowercase .,(code-char 32473)))) ;; #\U7ED9 
    (32477 (:alphabetical . (:lowercase .,(code-char 32477)))) ;; #\U7EDD 
    (32487 (:alphabetical . (:lowercase .,(code-char 32487)))) ;; #\U7EE7 
    (32493 (:alphabetical . (:lowercase .,(code-char 32493)))) ;; #\U7EED 
    (32500 (:alphabetical . (:lowercase .,(code-char 32500)))) ;; #\U7EF4 
    (32508 (:alphabetical . (:lowercase .,(code-char 32508)))) ;; #\U7EFC 
    (32553 (:alphabetical . (:lowercase .,(code-char 32553)))) ;; #\U7F29 
    (32570 (:alphabetical . (:lowercase .,(code-char 32570)))) ;; #\U7F3A 
    (32593 (:alphabetical . (:lowercase .,(code-char 32593)))) ;; #\U7F51 
    (32617 (:alphabetical . (:lowercase .,(code-char 32617)))) ;; #\U7F69 
    (32622 (:alphabetical . (:lowercase .,(code-char 32622)))) ;; #\U7F6E 
    (32650 (:alphabetical . (:lowercase .,(code-char 32650)))) ;; #\U7F8A 
    (32671 (:alphabetical . (:lowercase .,(code-char 32671)))) ;; #\U7F9F 
    (32928 (:alphabetical . (:lowercase .,(code-char 32928)))) ;; #\U80A0 
    (32946 (:alphabetical . (:lowercase .,(code-char 32946)))) ;; #\U80B2 
    (32954 (:alphabetical . (:lowercase .,(code-char 32954)))) ;; #\U80BA 
    (32963 (:alphabetical . (:lowercase .,(code-char 32963)))) ;; #\U80C3 
    (32966 (:alphabetical . (:lowercase .,(code-char 32966)))) ;; #\U80C6 
    (32974 (:alphabetical . (:lowercase .,(code-char 32974)))) ;; #\U80CE 
    (32986 (:alphabetical . (:lowercase .,(code-char 32986)))) ;; #\U80DA 
    (32990 (:alphabetical . (:lowercase .,(code-char 32990)))) ;; #\U80DE 
    (33008 (:alphabetical . (:lowercase .,(code-char 33008)))) ;; #\U80F0 
    (33014 (:alphabetical . (:lowercase .,(code-char 33014)))) ;; #\U80F6 
    (33018 (:alphabetical . (:lowercase .,(code-char 33018)))) ;; #\U80FA 
    (33073 (:alphabetical . (:lowercase .,(code-char 33073)))) ;; #\U8131 
    (33180 (:alphabetical . (:lowercase .,(code-char 33180)))) ;; #\U819C 
    (33218 (:alphabetical . (:lowercase .,(code-char 33218)))) ;; #\U81C2 
    (33267 (:alphabetical . (:lowercase .,(code-char 33267)))) ;; #\U81F3 
    (33268 (:alphabetical . (:lowercase .,(code-char 33268)))) ;; #\U81F4 
    (33391 (:alphabetical . (:lowercase .,(code-char 33391)))) ;; #\U826F 
    (33394 (:alphabetical . (:lowercase .,(code-char 33394)))) ;; #\U8272 
    (33395 (:alphabetical . (:lowercase .,(code-char 33395)))) ;; #\U8273 
    (33410 (:alphabetical . (:lowercase .,(code-char 33410)))) ;; #\U8282 
    (33455 (:alphabetical . (:lowercase .,(code-char 33455)))) ;; #\U82AF 
    (33459 (:alphabetical . (:lowercase .,(code-char 33459)))) ;; #\U82B3 
    (33495 (:alphabetical . (:lowercase .,(code-char 33495)))) ;; #\U82D7 
    (33519 (:alphabetical . (:lowercase .,(code-char 33519)))) ;; #\U82EF 
    (33527 (:alphabetical . (:lowercase .,(code-char 33527)))) ;; #\U82F7 
    (33609 (:alphabetical . (:lowercase .,(code-char 33609)))) ;; #\U8349 
    (33639 (:alphabetical . (:lowercase .,(code-char 33639)))) ;; #\U8367 
    (33647 (:alphabetical . (:lowercase .,(code-char 33647)))) ;; #\U836F 
    (33713 (:alphabetical . (:lowercase .,(code-char 33713)))) ;; #\U83B1 
    (33719 (:alphabetical . (:lowercase .,(code-char 33719)))) ;; #\U83B7 
    (33740 (:alphabetical . (:lowercase .,(code-char 33740)))) ;; #\U83CC 
    (33891 (:alphabetical . (:lowercase .,(code-char 33891)))) ;; #\U8463 
    (34411 (:alphabetical . (:lowercase .,(code-char 34411)))) ;; #\U866B 
    (34429 (:alphabetical . (:lowercase .,(code-char 34429)))) ;; #\U867D 
    (34558 (:alphabetical . (:lowercase .,(code-char 34558)))) ;; #\U86FE 
    (34562 (:alphabetical . (:lowercase .,(code-char 34562)))) ;; #\U8702 
    (34649 (:alphabetical . (:lowercase .,(code-char 34649)))) ;; #\U8759 
    (34656 (:alphabetical . (:lowercase .,(code-char 34656)))) ;; #\U8760 
    (34915 (:alphabetical . (:lowercase .,(code-char 34915)))) ;; #\U8863 
    (34917 (:alphabetical . (:lowercase .,(code-char 34917)))) ;; #\U8865 
    (34987 (:alphabetical . (:lowercase .,(code-char 34987)))) ;; #\U88AB 
    (34989 (:alphabetical . (:lowercase .,(code-char 34989)))) ;; #\U88AD 
    (35010 (:alphabetical . (:lowercase .,(code-char 35010)))) ;; #\U88C2 
    (35266 (:alphabetical . (:lowercase .,(code-char 35266)))) ;; #\U89C2 
    (35268 (:alphabetical . (:lowercase .,(code-char 35268)))) ;; #\U89C4 
    (35270 (:alphabetical . (:lowercase .,(code-char 35270)))) ;; #\U89C6 
    (35282 (:alphabetical . (:lowercase .,(code-char 35282)))) ;; #\U89D2 
    (35748 (:alphabetical . (:lowercase .,(code-char 35748)))) ;; #\U8BA4 
    (35768 (:alphabetical . (:lowercase .,(code-char 35768)))) ;; #\U8BB8 
    (35777 (:alphabetical . (:lowercase .,(code-char 35777)))) ;; #\U8BC1 
    (35782 (:alphabetical . (:lowercase .,(code-char 35782)))) ;; #\U8BC6 
    (35797 (:alphabetical . (:lowercase .,(code-char 35797)))) ;; #\U8BD5 
    (35813 (:alphabetical . (:lowercase .,(code-char 35813)))) ;; #\U8BE5 
    (35825 (:alphabetical . (:lowercase .,(code-char 35825)))) ;; #\U8BF1 
    (35828 (:alphabetical . (:lowercase .,(code-char 35828)))) ;; #\U8BF4 
    (35832 (:alphabetical . (:lowercase .,(code-char 35832)))) ;; #\U8BF8 
    (35835 (:alphabetical . (:lowercase .,(code-char 35835)))) ;; #\U8BFB 
    (35843 (:alphabetical . (:lowercase .,(code-char 35843)))) ;; #\U8C03 
    (35880 (:alphabetical . (:lowercase .,(code-char 35880)))) ;; #\U8C28 
    (35889 (:alphabetical . (:lowercase .,(code-char 35889)))) ;; #\U8C31 
    (36136 (:alphabetical . (:lowercase .,(code-char 36136)))) ;; #\U8D28 
    (36182 (:alphabetical . (:lowercase .,(code-char 36182)))) ;; #\U8D56 
    (36215 (:alphabetical . (:lowercase .,(code-char 36215)))) ;; #\U8D77 
    (36234 (:alphabetical . (:lowercase .,(code-char 36234)))) ;; #\U8D8A 
    (36328 (:alphabetical . (:lowercase .,(code-char 36328)))) ;; #\U8DE8 
    (36335 (:alphabetical . (:lowercase .,(code-char 36335)))) ;; #\U8DEF 
    (36801 (:alphabetical . (:lowercase .,(code-char 36801)))) ;; #\U8FC1 
    (36804 (:alphabetical . (:lowercase .,(code-char 36804)))) ;; #\U8FC4 
    (36817 (:alphabetical . (:lowercase .,(code-char 36817)))) ;; #\U8FD1 
    (36824 (:alphabetical . (:lowercase .,(code-char 36824)))) ;; #\U8FD8 
    (36828 (:alphabetical . (:lowercase .,(code-char 36828)))) ;; #\U8FDC 
    (36848 (:alphabetical . (:lowercase .,(code-char 36848)))) ;; #\U8FF0 
    (36864 (:alphabetical . (:lowercase .,(code-char 36864)))) ;; #\U9000 
    (36866 (:alphabetical . (:lowercase .,(code-char 36866)))) ;; #\U9002 
    (36873 (:alphabetical . (:lowercase .,(code-char 36873)))) ;; #\U9009 
    (36880 (:alphabetical . (:lowercase .,(code-char 36880)))) ;; #\U9010 
    (36890 (:alphabetical . (:lowercase .,(code-char 36890)))) ;; #\U901A 
    (36896 (:alphabetical . (:lowercase .,(code-char 36896)))) ;; #\U9020 
    (36947 (:alphabetical . (:lowercase .,(code-char 36947)))) ;; #\U9053 
    (36991 (:alphabetical . (:lowercase .,(code-char 36991)))) ;; #\U907F 
    (37051 (:alphabetical . (:lowercase .,(code-char 37051)))) ;; #\U90BB 
    (37096 (:alphabetical . (:lowercase .,(code-char 37096)))) ;; #\U90E8 
    (37117 (:alphabetical . (:lowercase .,(code-char 37117)))) ;; #\U90FD 
    (37197 (:alphabetical . (:lowercase .,(code-char 37197)))) ;; #\U914D 
    (37200 (:alphabetical . (:lowercase .,(code-char 37200)))) ;; #\U9150 
    (37210 (:alphabetical . (:lowercase .,(code-char 37210)))) ;; #\U915A 
    (37230 (:alphabetical . (:lowercase .,(code-char 37230)))) ;; #\U916E 
    (37232 (:alphabetical . (:lowercase .,(code-char 37232)))) ;; #\U9170 
    (37238 (:alphabetical . (:lowercase .,(code-char 37238)))) ;; #\U9176 
    (37240 (:alphabetical . (:lowercase .,(code-char 37240)))) ;; #\U9178 
    (37319 (:alphabetical . (:lowercase .,(code-char 37319)))) ;; #\U91C7 
    (37322 (:alphabetical . (:lowercase .,(code-char 37322)))) ;; #\U91CA 
    (38024 (:alphabetical . (:lowercase .,(code-char 38024)))) ;; #\U9488 
    (38047 (:alphabetical . (:lowercase .,(code-char 38047)))) ;; #\U949F 
    (38082 (:alphabetical . (:lowercase .,(code-char 38082)))) ;; #\U94C2 
    (38190 (:alphabetical . (:lowercase .,(code-char 38190)))) ;; #\U952E 
    (38271 (:alphabetical . (:lowercase .,(code-char 38271)))) ;; #\U957F 
    (38381 (:alphabetical . (:lowercase .,(code-char 38381)))) ;; #\U95ED 
    (38395 (:alphabetical . (:lowercase .,(code-char 38395)))) ;; #\U95FB 
    (38452 (:alphabetical . (:lowercase .,(code-char 38452)))) ;; #\U9634 
    (38468 (:alphabetical . (:lowercase .,(code-char 38468)))) ;; #\U9644 
    (38472 (:alphabetical . (:lowercase .,(code-char 38472)))) ;; #\U9648 
    (38480 (:alphabetical . (:lowercase .,(code-char 38480)))) ;; #\U9650 
    (38498 (:alphabetical . (:lowercase .,(code-char 38498)))) ;; #\U9662 
    (38534 (:alphabetical . (:lowercase .,(code-char 38534)))) ;; #\U9686 
    (38665 (:alphabetical . (:lowercase .,(code-char 38665)))) ;; #\U9709 
    (38706 (:alphabetical . (:lowercase .,(code-char 38706)))) ;; #\U9732 
    (38738 (:alphabetical . (:lowercase .,(code-char 38738)))) ;; #\U9752 
    (38745 (:alphabetical . (:lowercase .,(code-char 38745)))) ;; #\U9759 
    (38747 (:alphabetical . (:lowercase .,(code-char 38747)))) ;; #\U975B 
    (38754 (:alphabetical . (:lowercase .,(code-char 38754)))) ;; #\U9762 
    (38774 (:alphabetical . (:lowercase .,(code-char 38774)))) ;; #\U9776 
    (39034 (:alphabetical . (:lowercase .,(code-char 39034)))) ;; #\U987A 
    (39038 (:alphabetical . (:lowercase .,(code-char 39038)))) ;; #\U987E 
    (39118 (:alphabetical . (:lowercase .,(code-char 39118)))) ;; #\U98CE 
    (39318 (:alphabetical . (:lowercase .,(code-char 39318)))) ;; #\U9996 
    (39564 (:alphabetical . (:lowercase .,(code-char 39564)))) ;; #\U9A8C 
    (39588 (:alphabetical . (:lowercase .,(code-char 39588)))) ;; #\U9AA4 
    (39592 (:alphabetical . (:lowercase .,(code-char 39592)))) ;; #\U9AA8 
    (39635 (:alphabetical . (:lowercase .,(code-char 39635)))) ;; #\U9AD3 
    (40158 (:alphabetical . (:lowercase .,(code-char 40158)))) ;; #\U9CDE 
    (40654 (:alphabetical . (:lowercase .,(code-char 40654)))) ;; #\U9ECE 
    (40657 (:alphabetical . (:lowercase .,(code-char 40657)))) ;; #\U9ED1 
    (40667 (:alphabetical . (:lowercase .,(code-char 40667)))) ;; #\U9EDB 
    (40736 (:alphabetical . (:lowercase .,(code-char 40736)))) ;; #\U9F20 
    (44160 (:alphabetical . (:lowercase .,(code-char 44160)))) ;; #\HANGUL_SYLLABLE_GEOM 
    (44400 (:alphabetical . (:lowercase .,(code-char 44400)))) ;; #\HANGUL_SYLLABLE_GUN 
    (44592 (:alphabetical . (:lowercase .,(code-char 44592)))) ;; #\HANGUL_SYLLABLE_GI 
    (45208 (:alphabetical . (:lowercase .,(code-char 45208)))) ;; #\HANGUL_SYLLABLE_NA 
    (46041 (:alphabetical . (:lowercase .,(code-char 46041)))) ;; #\HANGUL_SYLLABLE_DONG 
    (47084 (:alphabetical . (:lowercase .,(code-char 47084)))) ;; #\HANGUL_SYLLABLE_REO 
    (47196 (:alphabetical . (:lowercase .,(code-char 47196)))) ;; #\HANGUL_SYLLABLE_RO 
    (48148 (:alphabetical . (:lowercase .,(code-char 48148)))) ;; #\HANGUL_SYLLABLE_BA 
    (49324 (:alphabetical . (:lowercase .,(code-char 49324)))) ;; #\HANGUL_SYLLABLE_SA 
    (49328 (:alphabetical . (:lowercase .,(code-char 49328)))) ;; #\HANGUL_SYLLABLE_SAN 
    (51060 (:alphabetical . (:lowercase .,(code-char 51060)))) ;; #\HANGUL_SYLLABLE_I 
    (51473 (:alphabetical . (:lowercase .,(code-char 51473)))) ;; #\HANGUL_SYLLABLE_JUNG 
    (51613 (:alphabetical . (:lowercase .,(code-char 51613)))) ;; #\HANGUL_SYLLABLE_JEUNG 
    (53076 (:alphabetical . (:lowercase .,(code-char 53076)))) ;; #\HANGUL_SYLLABLE_KO 
    (54645 (:alphabetical . (:lowercase .,(code-char 54645)))) ;; #\HANGUL_SYLLABLE_HAEG 
    (54840 (:alphabetical . (:lowercase .,(code-char 54840)))) ;; #\HANGUL_SYLLABLE_HO 
    (54980 (:alphabetical . (:lowercase .,(code-char 54980)))) ;; #\HANGUL_SYLLABLE_HU 
    (55094 (:alphabetical . (:lowercase .,(code-char 55094)))) ;; #\HANGUL_SYLLABLE_HYUGG 
    (55137 (:alphabetical . (:lowercase .,(code-char 55137)))) ;; #\HANGUL_SYLLABLE_HEUB 
    (56371 (:alphabetical . (:lowercase .,(code-char 56371)))) ;; #\UDC33 
    (56482 (:alphabetical . (:lowercase .,(code-char 56482)))) ;; #\UDCA2 
    (56495 (:alphabetical . (:lowercase .,(code-char 56495)))) ;; #\UDCAF 
    (56636 (:alphabetical . (:lowercase .,(code-char 56636)))) ;; #\UDD3C 
    (57026 (:alphabetical . (:lowercase .,(code-char 57026)))) ;; #\UDEC2 
    (57084 (:alphabetical . (:lowercase .,(code-char 57084)))) ;; #\UDEFC 
    (57395 (:alphabetical . (:lowercase .,(code-char 57395)))) ;; #\UE033 
    (57397 (:alphabetical . (:lowercase .,(code-char 57397)))) ;; #\UE035 
    (57398 (:alphabetical . (:lowercase .,(code-char 57398)))) ;; #\UE036 
    (57437 (:alphabetical . (:lowercase .,(code-char 57437)))) ;; #\UE05D 
    (57453 (:alphabetical . (:lowercase .,(code-char 57453)))) ;; #\UE06D 
    (57544 (:alphabetical . (:lowercase .,(code-char 57544)))) ;; #\UE0C8 
    (57682 (:alphabetical . (:lowercase .,(code-char 57682)))) ;; #\UE152 
    (57901 (:alphabetical . (:lowercase .,(code-char 57901)))) ;; #\UE22D 
    (57902 (:alphabetical . (:lowercase .,(code-char 57902)))) ;; #\UE22E 
    (57903 (:alphabetical . (:lowercase .,(code-char 57903)))) ;; #\UE22F 
    (57904 (:alphabetical . (:lowercase .,(code-char 57904)))) ;; #\UE230 
    (57913 (:alphabetical . (:lowercase .,(code-char 57913)))) ;; #\UE239 
    (57916 (:alphabetical . (:lowercase .,(code-char 57916)))) ;; #\UE23C 
    (57917 (:alphabetical . (:lowercase .,(code-char 57917)))) ;; #\UE23D 
    (60765 (:alphabetical . (:lowercase .,(code-char 60765)))) ;; #\UED5D 
    (60769 (:alphabetical . (:lowercase .,(code-char 60769)))) ;; #\UED61 
    (60785 (:alphabetical . (:lowercase .,(code-char 60785)))) ;; #\UED71 
    (61500 (:alphabetical . (:lowercase .,(code-char 61500)))) ;; #\UF03C 
    (61557 (:alphabetical . (:lowercase .,(code-char 61557)))) ;; #\UF075 
    (61650 (:alphabetical . (:lowercase .,(code-char 61650)))) ;; #\UF0D2 
    (63196 (:alphabetical . (:lowercase .,(code-char 63196)))) ;; #\UF6DC
    (302 (:alphabetical . (:lowercase .,(code-char  302))))    ;; "Į"
    (372 (:alphabetical . (:lowercase .,(code-char  372))))    ;; "Ŵ"
    (373 (:alphabetical . (:lowercase .,(code-char  373))))    ;; "ŵ"
    (397 (:alphabetical . (:lowercase .,(code-char  397))))    ;; "ƍ"
    (414 (:alphabetical . (:lowercase .,(code-char  414))))    ;; "ƞ"
    (501 (:alphabetical . (:lowercase .,(code-char  501))))    ;; "ǵ"
    (530 (:alphabetical . (:lowercase .,(code-char  530))))    ;; "Ȓ"
    (533 (:alphabetical . (:lowercase .,(code-char  533))))    ;; "ȕ"
    (541 (:alphabetical . (:lowercase .,(code-char  541))))    ;; "ȝ"
    (550 (:alphabetical . (:lowercase .,(code-char  550))))    ;; "Ȧ"
    (599 (:alphabetical . (:lowercase .,(code-char  599))))    ;; "ɗ"
    (708 (:alphabetical . (:lowercase .,(code-char  708))))    ;; "˄"
    (938 (:alphabetical . (:lowercase .,(code-char  938))))    ;; "Ϊ"
    (942 (:alphabetical . (:lowercase .,(code-char  942))))    ;; "ή"
    (1065 (:alphabetical . (:lowercase .,(code-char  1065))))  ;; "Щ"
    (1112 (:alphabetical . (:lowercase .,(code-char  1112))))  ;; "ј"
    (1256 (:alphabetical . (:lowercase .,(code-char  1256))))  ;; "Ө"
    (1547 (:alphabetical . (:lowercase .,(code-char  1547))))  ;; "؋"
    (1550 (:alphabetical . (:lowercase .,(code-char  1550))))  ;; "؎"
    (1569 (:alphabetical . (:lowercase .,(code-char  1569))))  ;; "ء"
    (1575 (:alphabetical . (:lowercase .,(code-char  1575))))  ;; "ا"
    (1576 (:alphabetical . (:lowercase .,(code-char  1576))))  ;; "ب"
    (1578 (:alphabetical . (:lowercase .,(code-char  1578))))  ;; "ت"
    (1580 (:alphabetical . (:lowercase .,(code-char  1580))))  ;; "ج"
    (1582 (:alphabetical . (:lowercase .,(code-char  1582))))  ;; "خ"
    (1583 (:alphabetical . (:lowercase .,(code-char  1583))))  ;; "د"
    (1585 (:alphabetical . (:lowercase .,(code-char  1585))))  ;; "ر"
    (1587 (:alphabetical . (:lowercase .,(code-char  1587))))  ;; "س"
    (1589 (:alphabetical . (:lowercase .,(code-char  1589))))  ;; "ص"
    (1590 (:alphabetical . (:lowercase .,(code-char  1590))))  ;; "ض"
    (1602 (:alphabetical . (:lowercase .,(code-char  1602))))  ;; "ق"
    (1604 (:alphabetical . (:lowercase .,(code-char  1604))))  ;; "ل"
    (1605 (:alphabetical . (:lowercase .,(code-char  1605))))  ;; "م"
    (1606 (:alphabetical . (:lowercase .,(code-char  1606))))  ;; "ن"
    (1607 (:alphabetical . (:lowercase .,(code-char  1607))))  ;; "ه"
    (1608 (:alphabetical . (:lowercase .,(code-char  1608))))  ;; "و"
    (1740 (:alphabetical . (:lowercase .,(code-char  1740))))  ;; "ی"
    (1831 (:alphabetical . (:lowercase .,(code-char  1831))))  ;; "ܧ"
    (1832 (:alphabetical . (:lowercase .,(code-char  1832))))  ;; "ܨ"
    (1834 (:alphabetical . (:lowercase .,(code-char  1834))))  ;; "ܪ"
    (1835 (:alphabetical . (:lowercase .,(code-char  1835))))  ;; "ܫ"
    (1839 (:alphabetical . (:lowercase .,(code-char  1839))))  ;; "ܯ"
    (1840 (:alphabetical . (:lowercase .,(code-char  1840))))  ;; "ܰ"
    (1841 (:alphabetical . (:lowercase .,(code-char  1841))))  ;; "ܱ"
    (1846 (:alphabetical . (:lowercase .,(code-char  1846))))  ;; "ܶ"
    (1848 (:alphabetical . (:lowercase .,(code-char  1848))))  ;; "ܸ"
    (1849 (:alphabetical . (:lowercase .,(code-char  1849))))  ;; "ܹ"
    (1850 (:alphabetical . (:lowercase .,(code-char  1850))))  ;; "ܺ"
    (1853 (:alphabetical . (:lowercase .,(code-char  1853))))  ;; "ܽ"
    (1855 (:alphabetical . (:lowercase .,(code-char  1855))))  ;; "ܿ"
    (1857 (:alphabetical . (:lowercase .,(code-char  1857))))  ;; "݁"
    (1861 (:alphabetical . (:lowercase .,(code-char  1861))))  ;; "݅"
    (1862 (:alphabetical . (:lowercase .,(code-char  1862))))  ;; "݆"
    (1865 (:alphabetical . (:lowercase .,(code-char  1865))))  ;; "݉"
    (1874 (:alphabetical . (:lowercase .,(code-char  1874))))  ;; "ݒ"
    (1877 (:alphabetical . (:lowercase .,(code-char  1877))))  ;; "ݕ"
    (1986 (:alphabetical . (:lowercase .,(code-char  1986))))  ;; "߂"
    (2009 (:alphabetical . (:lowercase .,(code-char  2009))))  ;; "ߙ"
    (2010 (:alphabetical . (:lowercase .,(code-char  2010))))  ;; "ߚ"
    (2024 (:alphabetical . (:lowercase .,(code-char  2024))))  ;; "ߨ"
    (2026 (:alphabetical . (:lowercase .,(code-char  2026))))  ;; "ߪ"
    (2216 (:alphabetical . (:lowercase .,(code-char  2216))))  ;; "ࢨ"
    (2272 (:alphabetical . (:lowercase .,(code-char  2272))))  ;; "࣠"
    (2273 (:alphabetical . (:lowercase .,(code-char  2273))))  ;; "࣡"
    (2869 (:alphabetical . (:lowercase .,(code-char  2869))))  ;; "ଵ"
    (2870 (:alphabetical . (:lowercase .,(code-char  2870))))  ;; "ଶ"
    (2871 (:alphabetical . (:lowercase .,(code-char  2871))))  ;; "ଷ"
    (2872 (:alphabetical . (:lowercase .,(code-char  2872))))  ;; "ସ"
    (2998 (:alphabetical . (:lowercase .,(code-char  2998))))  ;; "ஶ"
    (3046 (:alphabetical . (:lowercase .,(code-char  3046))))  ;; "௦"
    (3047 (:alphabetical . (:lowercase .,(code-char  3047))))  ;; "௧"
    (3049 (:alphabetical . (:lowercase .,(code-char  3049))))  ;; "௩"
    (3365 (:alphabetical . (:lowercase .,(code-char  3365))))  ;; "ഥ"
    (3398 (:alphabetical . (:lowercase .,(code-char  3398))))  ;; "െ"
    (3400 (:alphabetical . (:lowercase .,(code-char  3400))))  ;; "ൈ"
    (3407 (:alphabetical . (:lowercase .,(code-char  3407))))  ;; "൏"
    (7012 (:alphabetical . (:lowercase .,(code-char  7012))))  ;; "᭤"
    (7033 (:alphabetical . (:lowercase .,(code-char  7033))))  ;; "᭹"
    (7690 (:alphabetical . (:lowercase .,(code-char  7690))))  ;; "Ḋ"
    (7744 (:alphabetical . (:lowercase .,(code-char  7744))))  ;; "Ṁ"
    (7759 (:alphabetical . (:lowercase .,(code-char  7759))))  ;; "ṏ"
    (7776 (:alphabetical . (:lowercase .,(code-char  7776))))  ;; "Ṡ"
    (7787 (:alphabetical . (:lowercase .,(code-char  7787))))  ;; "ṫ"
    (7833 (:alphabetical . (:lowercase .,(code-char  7833))))  ;; "ẙ"
    (7893 (:alphabetical . (:lowercase .,(code-char  7893))))  ;; "ổ"
    (7922 (:alphabetical . (:lowercase .,(code-char  7922))))  ;; "Ỳ"
    (7992 (:alphabetical . (:lowercase .,(code-char  7992))))  ;; "Ἰ"
    (8122 (:alphabetical . (:lowercase .,(code-char  8122))))  ;; "Ὰ"
    (8219 (:alphabetical . (:lowercase .,(code-char  8219))))  ;; "‛"
    (8320 (:alphabetical . (:lowercase .,(code-char  8320))))  ;; "₀"
    (8518 (:alphabetical . (:lowercase .,(code-char  8518))))  ;; "ⅆ"
    (8519 (:alphabetical . (:lowercase .,(code-char  8519))))  ;; "ⅇ"
    (8537 (:alphabetical . (:lowercase .,(code-char  8537))))  ;; "⅙"
    (8548 (:alphabetical . (:lowercase .,(code-char  8548))))  ;; "Ⅴ"
    (8554 (:alphabetical . (:lowercase .,(code-char  8554))))  ;; "Ⅺ"
    (8629 (:alphabetical . (:lowercase .,(code-char  8629))))  ;; "↵"
    (8657 (:alphabetical . (:lowercase .,(code-char  8657))))  ;; "⇑"
    (8676 (:alphabetical . (:lowercase .,(code-char  8676))))  ;; "⇤"
    (8865 (:alphabetical . (:lowercase .,(code-char  8865))))  ;; "⊡"
    (8999 (:alphabetical . (:lowercase .,(code-char  8999))))  ;; "⌧"
    (9018 (:alphabetical . (:lowercase .,(code-char  9018))))  ;; "⌺"
    (9023 (:alphabetical . (:lowercase .,(code-char  9023))))  ;; "⌿"
    (9127 (:alphabetical . (:lowercase .,(code-char  9127))))  ;; "⎧"
    (9128 (:alphabetical . (:lowercase .,(code-char  9128))))  ;; "⎨"
    (9129 (:alphabetical . (:lowercase .,(code-char  9129))))  ;; "⎩"
    (9130 (:alphabetical . (:lowercase .,(code-char  9130))))  ;; "⎪"
    (9280 (:alphabetical . (:lowercase .,(code-char  9280))))  ;; "⑀"
    (9532 (:alphabetical . (:lowercase .,(code-char  9532))))  ;; "┼"
    (9644 (:alphabetical . (:lowercase .,(code-char  9644))))  ;; "▬"
    (9661 (:alphabetical . (:lowercase .,(code-char  9661))))  ;; "▽"
    (9664 (:alphabetical . (:lowercase .,(code-char  9664))))  ;; "◀"
    (9744 (:alphabetical . (:lowercase .,(code-char  9744))))  ;; "☐"
    (9746 (:alphabetical . (:lowercase .,(code-char  9746))))  ;; "☒"
    (9993 (:alphabetical . (:lowercase .,(code-char  9993))))  ;; "✉"
    (10012 (:alphabetical . (:lowercase .,(code-char  10012)))) ;; "✜"
    (10025 (:alphabetical . (:lowercase .,(code-char  10025)))) ;; "✩"
    (10064 (:alphabetical . (:lowercase .,(code-char  10064)))) ;; "❐"
    (10065 (:alphabetical . (:lowercase .,(code-char  10065)))) ;; "❑"
    (10799 (:alphabetical . (:lowercase .,(code-char  10799)))) ;; "⨯"
    (20061 (:alphabetical . (:lowercase .,(code-char  20061)))) ;; "九"
    (20234 (:alphabetical . (:lowercase .,(code-char  20234)))) ;; "伊"
    (21202 (:alphabetical . (:lowercase .,(code-char  21202)))) ;; "勒"
    (21443 (:alphabetical . (:lowercase .,(code-char  21443)))) ;; "參"
    (25991 (:alphabetical . (:lowercase .,(code-char  25991)))) ;; "文"
    (26149 (:alphabetical . (:lowercase .,(code-char  26149)))) ;; "春"
    (26408 (:alphabetical . (:lowercase .,(code-char  26408)))) ;; "木"
    (26454 (:alphabetical . (:lowercase .,(code-char  26454)))) ;; "杖"
    (26612 (:alphabetical . (:lowercase .,(code-char  26612)))) ;; "柴"
    (27047 (:alphabetical . (:lowercase .,(code-char  27047)))) ;; "榧"
    (27494 (:alphabetical . (:lowercase .,(code-char  27494)))) ;; "武"
    (27642 (:alphabetical . (:lowercase .,(code-char  27642)))) ;; "毺"
    (27721 (:alphabetical . (:lowercase .,(code-char  27721)))) ;; "汉"
    (28129 (:alphabetical . (:lowercase .,(code-char  28129)))) ;; "淡"
    (28271 (:alphabetical . (:lowercase .,(code-char  28271)))) ;; "湯"
    (28422 (:alphabetical . (:lowercase .,(code-char  28422)))) ;; "漆"
    (28681 (:alphabetical . (:lowercase .,(code-char  28681)))) ;; "瀉"
    (28879 (:alphabetical . (:lowercase .,(code-char  28879)))) ;; "烏"
    (29190 (:alphabetical . (:lowercase .,(code-char  29190)))) ;; "爆"
    (29572 (:alphabetical . (:lowercase .,(code-char  29572)))) ;; "玄"
    (30465 (:alphabetical . (:lowercase .,(code-char  30465)))) ;; "省"
    (30707 (:alphabetical . (:lowercase .,(code-char  30707)))) ;; "石"
    (32645 (:alphabetical . (:lowercase .,(code-char  32645)))) ;; "羅"
    (32925 (:alphabetical . (:lowercase .,(code-char  32925)))) ;; "肝"
    (32993 (:alphabetical . (:lowercase .,(code-char  32993)))) ;; "胡"
    (33125 (:alphabetical . (:lowercase .,(code-char  33125)))) ;; "腥"
    (33213 (:alphabetical . (:lowercase .,(code-char  33213)))) ;; "膽"
    (33521 (:alphabetical . (:lowercase .,(code-char  33521)))) ;; "英"
    (33589 (:alphabetical . (:lowercase .,(code-char  33589)))) ;; "茵"
    (33883 (:alphabetical . (:lowercase .,(code-char  33883)))) ;; "葛"
    (33894 (:alphabetical . (:lowercase .,(code-char  33894)))) ;; "葦"
    (33948 (:alphabetical . (:lowercase .,(code-char  33948)))) ;; "蒜"
    (33951 (:alphabetical . (:lowercase .,(code-char  33951)))) ;; "蒟"
    (33970 (:alphabetical . (:lowercase .,(code-char  33970)))) ;; "蒲"
    (33983 (:alphabetical . (:lowercase .,(code-char  33983)))) ;; "蒿"
    (34170 (:alphabetical . (:lowercase .,(code-char  34170)))) ;; "蕺"
    (34253 (:alphabetical . (:lowercase .,(code-char  34253)))) ;; "藍"
    (34277 (:alphabetical . (:lowercase .,(code-char  34277)))) ;; "藥"
    (34311 (:alphabetical . (:lowercase .,(code-char  34311)))) ;; "蘇"
    (34382 (:alphabetical . (:lowercase .,(code-char  34382)))) ;; "虎"
    (34662 (:alphabetical . (:lowercase .,(code-char  34662)))) ;; "蝦"
    (34914 (:alphabetical . (:lowercase .,(code-char  34914)))) ;; "衢"
    (35382 (:alphabetical . (:lowercase .,(code-char  35382)))) ;; "訶"
    (37326 (:alphabetical . (:lowercase .,(code-char  37326)))) ;; "野"
    (38515 (:alphabetical . (:lowercase .,(code-char  38515)))) ;; "陳"
    (39770 (:alphabetical . (:lowercase .,(code-char  39770)))) ;; "魚"
    (40635 (:alphabetical . (:lowercase .,(code-char  40635)))) ;; "麻"
    (40845 (:alphabetical . (:lowercase .,(code-char  40845)))) ;; "龍"
    (42933 (:alphabetical . (:lowercase .,(code-char  42933)))) ;; "ꞵ"
    (43861 (:alphabetical . (:lowercase .,(code-char  43861)))) ;; "ꭕ"
    (57380 (:alphabetical . (:lowercase .,(code-char  57380)))) ;; ""
    (57388 (:alphabetical . (:lowercase .,(code-char  57388)))) ;; ""
    (57390 (:alphabetical . (:lowercase .,(code-char  57390)))) ;; ""
    (57393 (:alphabetical . (:lowercase .,(code-char  57393)))) ;; ""
    (57394 (:alphabetical . (:lowercase .,(code-char  57394)))) ;; ""
    (57401 (:alphabetical . (:lowercase .,(code-char  57401)))) ;; ""
    (57441 (:alphabetical . (:lowercase .,(code-char  57441)))) ;; ""
    (57442 (:alphabetical . (:lowercase .,(code-char  57442)))) ;; ""
    (57444 (:alphabetical . (:lowercase .,(code-char  57444)))) ;; ""
    (57447 (:alphabetical . (:lowercase .,(code-char  57447)))) ;; ""
    (57459 (:alphabetical . (:lowercase .,(code-char  57459)))) ;; ""
    (60264 (:alphabetical . (:lowercase .,(code-char  60264)))) ;; ""
    (60707 (:alphabetical . (:lowercase .,(code-char  60707)))) ;; ""
    (60715 (:alphabetical . (:lowercase .,(code-char  60715)))) ;; ""
    (60750 (:alphabetical . (:lowercase .,(code-char  60750)))) ;; ""
    (61473 (:alphabetical . (:lowercase .,(code-char  61473)))) ;; ""
    (61474 (:alphabetical . (:lowercase .,(code-char  61474)))) ;; ""
    (61478 (:alphabetical . (:lowercase .,(code-char  61478)))) ;; ""
    (61479 (:alphabetical . (:lowercase .,(code-char  61479)))) ;; ""
    (61483 (:alphabetical . (:lowercase .,(code-char  61483)))) ;; ""
    (61486 (:alphabetical . (:lowercase .,(code-char  61486)))) ;; ""
    (61491 (:alphabetical . (:lowercase .,(code-char  61491)))) ;; ""
    (61493 (:alphabetical . (:lowercase .,(code-char  61493)))) ;; ""
    (61498 (:alphabetical . (:lowercase .,(code-char  61498)))) ;; ""
    (61502 (:alphabetical . (:lowercase .,(code-char  61502)))) ;; ""
    (61503 (:alphabetical . (:lowercase .,(code-char  61503)))) ;; ""
    (61513 (:alphabetical . (:lowercase .,(code-char  61513)))) ;; ""
    (61517 (:alphabetical . (:lowercase .,(code-char  61517)))) ;; ""
    (61521 (:alphabetical . (:lowercase .,(code-char  61521)))) ;; ""
    (61522 (:alphabetical . (:lowercase .,(code-char  61522)))) ;; ""
    (61550 (:alphabetical . (:lowercase .,(code-char  61550)))) ;; ""
 


    (8640 (:punctuation  .,(punctuation-named (code-char 8640)))) ;; #\RIGHTWARDS_HARPOON_WITH_BARB_UPWARDS 
    (8652 (:punctuation  .,(punctuation-named (code-char 8652)))) ;; #\RIGHTWARDS_HARPOON_OVER_LEFTWARDS_HARPOON 
    (8661 (:punctuation  .,(punctuation-named (code-char 8661)))) ;; #\UP_DOWN_DOUBLE_ARROW 
    (8705 (:punctuation  .,(punctuation-named (code-char 8705)))) ;; #\COMPLEMENT 
    (8736 (:punctuation  .,(punctuation-named (code-char 8736)))) ;; #\ANGLE 
    (8744 (:punctuation  .,(punctuation-named (code-char 8744)))) ;; #\LOGICAL_OR 
    (8754 (:punctuation  .,(punctuation-named (code-char 8754)))) ;; #\CLOCKWISE_CONTOUR_INTEGRAL 
    (8756 (:punctuation  .,(punctuation-named (code-char 8756)))) ;; #\THEREFORE 
    (8757 (:punctuation  .,(punctuation-named (code-char 8757)))) ;; #\BECAUSE 
    (8784 (:punctuation  .,(punctuation-named (code-char 8784)))) ;; #\APPROACHES_THE_LIMIT 
    (8788 (:punctuation  .,(punctuation-named (code-char 8788)))) ;; #\COLON_EQUALS 
    (8796 (:punctuation  .,(punctuation-named (code-char 8796)))) ;; #\DELTA_EQUAL_TO 
    (8868 (:punctuation  .,(punctuation-named (code-char 8868)))) ;; #\DOWN_TACK 
    (8898 (:punctuation  .,(punctuation-named (code-char 8898)))) ;; #\N-ARY_INTERSECTION 
    (8968 (:punctuation  .,(punctuation-named (code-char 8968)))) ;; #\LEFT_CEILING 
    (8969 (:punctuation  .,(punctuation-named (code-char 8969)))) ;; #\RIGHT_CEILING 
    (8988 (:punctuation  .,(punctuation-named (code-char 8988)))) ;; #\TOP_LEFT_CORNER 
    (8991 (:punctuation  .,(punctuation-named (code-char 8991)))) ;; #\BOTTOM_RIGHT_CORNER 
    (9004 (:punctuation  .,(punctuation-named (code-char 9004)))) ;; #\BENZENE_RING 
    (9148 (:punctuation  .,(punctuation-named (code-char 9148)))) ;; #\HORIZONTAL_SCAN_LINE-7 
    (9182 (:punctuation  .,(punctuation-named (code-char 9182)))) ;; #\TOP_CURLY_BRACKET 
    (9254 (:punctuation  .,(punctuation-named (code-char 9254)))) ;; #\SYMBOL_FOR_SUBSTITUTE_FORM_TWO 
    (9319 (:punctuation  .,(punctuation-named (code-char 9319)))) ;; #\CIRCLED_DIGIT_EIGHT 
    (9320 (:punctuation  .,(punctuation-named (code-char 9320)))) ;; #\CIRCLED_DIGIT_NINE 
    (9321 (:punctuation  .,(punctuation-named (code-char 9321)))) ;; #\CIRCLED_NUMBER_TEN 
    (9322 (:punctuation  .,(punctuation-named (code-char 9322)))) ;; #\CIRCLED_NUMBER_ELEVEN 
    (9323 (:punctuation  .,(punctuation-named (code-char 9323)))) ;; #\CIRCLED_NUMBER_TWELVE 
    (9324 (:punctuation  .,(punctuation-named (code-char 9324)))) ;; #\CIRCLED_NUMBER_THIRTEEN 
    (9673 (:punctuation  .,(punctuation-named (code-char 9673)))) ;; #\FISHEYE 
    (9687 (:punctuation  .,(punctuation-named (code-char 9687)))) ;; #\RIGHT_HALF_BLACK_CIRCLE 
    (9758 (:punctuation  .,(punctuation-named (code-char 9758)))) ;; #\WHITE_RIGHT_POINTING_INDEX 
    (10004 (:punctuation  .,(punctuation-named (code-char 10004)))) ;; #\HEAVY_CHECK_MARK 
    (10118 (:punctuation  .,(punctuation-named (code-char 10118)))) ;; #\DINGBAT_CIRCLED_SANS-SERIF_DIGIT_SEVEN 
    (10119 (:punctuation  .,(punctuation-named (code-char 10119)))) ;; #\DINGBAT_CIRCLED_SANS-SERIF_DIGIT_EIGHT 
    (10122 (:punctuation  .,(punctuation-named (code-char 10122)))) ;; #\DINGBAT_NEGATIVE_CIRCLED_SANS-SERIF_DIGIT_ONE 
    (10123 (:punctuation  .,(punctuation-named (code-char 10123)))) ;; #\DINGBAT_NEGATIVE_CIRCLED_SANS-SERIF_DIGIT_TWO 
    (10124 (:punctuation  .,(punctuation-named (code-char 10124)))) ;; #\DINGBAT_NEGATIVE_CIRCLED_SANS-SERIF_DIGIT_THREE 
    (10125 (:punctuation  .,(punctuation-named (code-char 10125)))) ;; #\DINGBAT_NEGATIVE_CIRCLED_SANS-SERIF_DIGIT_FOUR 
    (10126 (:punctuation  .,(punctuation-named (code-char 10126)))) ;; #\DINGBAT_NEGATIVE_CIRCLED_SANS-SERIF_DIGIT_FIVE 
    (10127 (:punctuation  .,(punctuation-named (code-char 10127)))) ;; #\DINGBAT_NEGATIVE_CIRCLED_SANS-SERIF_DIGIT_SIX 
    (10132 (:punctuation  .,(punctuation-named (code-char 10132)))) ;; #\HEAVY_WIDE-HEADED_RIGHTWARDS_ARROW 
    (10137 (:punctuation  .,(punctuation-named (code-char 10137)))) ;; #\HEAVY_RIGHTWARDS_ARROW 
    (10146 (:punctuation  .,(punctuation-named (code-char 10146)))) ;; #\THREE-D_TOP-LIGHTED_RIGHTWARDS_ARROWHEAD 
    (10300 (:punctuation  .,(punctuation-named (code-char 10300)))) ;; #\BRAILLE_PATTERN_DOTS-3456 
    (10754 (:punctuation  .,(punctuation-named (code-char 10754)))) ;; #\N-ARY_CIRCLED_TIMES_OPERATOR 
    (10848 (:punctuation  .,(punctuation-named (code-char 10848)))) ;; #\LOGICAL_AND_WITH_DOUBLE_UNDERBAR 
    (10869 (:punctuation  .,(punctuation-named (code-char 10869)))) ;; #\TWO_CONSECUTIVE_EQUALS_SIGNS 
    (10913 (:punctuation  .,(punctuation-named (code-char 10913)))) ;; #\DOUBLE_NESTED_LESS-THAN 
    (11374 (:punctuation  .,(punctuation-named (code-char 11374)))) ;; #\LATIN_CAPITAL_LETTER_M_WITH_HOOK 


    (61550 (:punctuation ., (punctuation-named (code-char 61550)))) ;; ""
    (61552 (:punctuation ., (punctuation-named (code-char 61552)))) ;; ""
    (61561 (:punctuation ., (punctuation-named (code-char 61561)))) ;; ""
    (61562 (:punctuation ., (punctuation-named (code-char 61562)))) ;; ""
    (61569 (:punctuation ., (punctuation-named (code-char 61569)))) ;; ""
    (61575 (:punctuation ., (punctuation-named (code-char 61575)))) ;; ""
    (61593 (:punctuation ., (punctuation-named (code-char 61593)))) ;; ""
    (61596 (:punctuation ., (punctuation-named (code-char 61596)))) ;; ""
    (61597 (:punctuation ., (punctuation-named (code-char 61597)))) ;; ""
    (61598 (:punctuation ., (punctuation-named (code-char 61598)))) ;; ""
    (61600 (:punctuation ., (punctuation-named (code-char 61600)))) ;; ""
    (61607 (:punctuation ., (punctuation-named (code-char 61607)))) ;; ""
    (61622 (:punctuation ., (punctuation-named (code-char 61622)))) ;; ""
    (61625 (:punctuation ., (punctuation-named (code-char 61625)))) ;; ""
    (61662 (:punctuation ., (punctuation-named (code-char 61662)))) ;; ""
    (61663 (:punctuation ., (punctuation-named (code-char 61663)))) ;; ""
    (61665 (:punctuation ., (punctuation-named (code-char 61665)))) ;; ""
    (61669 (:punctuation ., (punctuation-named (code-char 61669)))) ;; ""
    (61670 (:punctuation ., (punctuation-named (code-char 61670)))) ;; ""
    (61671 (:punctuation ., (punctuation-named (code-char 61671)))) ;; ""
    (61672 (:punctuation ., (punctuation-named (code-char 61672)))) ;; ""
    (61676 (:punctuation ., (punctuation-named (code-char 61676)))) ;; ""
    (61677 (:punctuation ., (punctuation-named (code-char 61677)))) ;; ""
    (61678 (:punctuation ., (punctuation-named (code-char 61678)))) ;; ""
    (61679 (:punctuation ., (punctuation-named (code-char 61679)))) ;; ""
    (61686 (:punctuation ., (punctuation-named (code-char 61686)))) ;; ""
    (61687 (:punctuation ., (punctuation-named (code-char 61687)))) ;; ""
    (61688 (:punctuation ., (punctuation-named (code-char 61688)))) ;; ""
    (61692 (:punctuation ., (punctuation-named (code-char 61692)))) ;; ""
    (63193 (:punctuation ., (punctuation-named (code-char 63193)))) ;; ""
    (63341 (:punctuation ., (punctuation-named (code-char 63341)))) ;; ""
    (63719 (:punctuation ., (punctuation-named (code-char 63719)))) ;; ""
    (65072 (:punctuation ., (punctuation-named (code-char 65072)))) ;; "︰"
    (65125 (:punctuation ., (punctuation-named (code-char 65125)))) ;; "﹥"

    (65105 (:punctuation  .,(punctuation-named (code-char 65105)))) ;; #\SMALL_IDEOGRAPHIC_COMMA

    
    ))




