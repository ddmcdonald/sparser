;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2014-2017 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "punctuation"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   February 2017

;; 1.0 (9/21/92 v2.3) added everything else, in ascii order
;; 1.1 (4/9/93) moved newline to required
;; 1.2 (9/26/94) added some globals for quick reference to some of these
;;     (10/19) added another one, 10/24/94 ditto
;;     (7/20/14) Added a parameter for hyphen\
;;     (1/8/15) constant for semicolon.
;; 1.3 (1/29/15) moved out the constants to their own file
;;     Added (define-punctuation rightwards_arrow #\U+2192) for →
;;     (4/23/15) underbar? Wrong programming language. Changed it.
;; 1.4 (6/5/15) Revived old way of mass-generation of punction for the
;;      massive extension of out-of-band characters in alphabet
;;     (12/22/15) pulled period out to required words and handled
;;      duplication of the arrow character.

(in-package :sparser)


(define-punctuation tab  #\tab)             ;; ascii 9
(define-punctuation linefeed #\Linefeed)    ;; 10
(define-punctuation new-page #\Page)        ;; 12
;; newline, #13, is defined in grammar/rules/words/required.lisp
(define-punctuation  exclamation-point   #\! )   ;; 33
(define-punctuation  double-quote        #\" )   ;; 34
(define-punctuation  sharp-sign          #\# )   ;; 35
(define-punctuation  dollar-sign         #\$ )   ;; 36
(define-punctuation  percent-sign        #\% )   ;; 37
(define-punctuation  and-sign            #\& )   ;; 38
(define-punctuation  single-quote        #\' )   ;; 39
(define-punctuation  open-paren          #\( )   ;; 40
(define-punctuation  close-paren         #\) )   ;; 41
(define-punctuation  asterisk            #\* )   ;; 42
(define-punctuation  plus-sign           #\+ )   ;; 43
(define-punctuation  comma               #\, )   ;; 44
(define-punctuation  hyphen              #\- )   ;; 45
;; period, #46, is defined in grammar/rules/words/required.lisp
(define-punctuation  forward-slash       #\/ )   ;; 47

(define-punctuation  colon               #\: )   ;; 58
(define-punctuation  semi-colon          #\; )   ;; 59
(define-punctuation  open-angle-bracket  #\< )   ;; 60
(define-punctuation  equal-sign          #\= )   ;; 61
(define-punctuation  close-angle-bracket #\> )   ;; 62
;; question mark, #63, defined in the require words
(define-punctuation  ampersand           #\@ )   ;; 64


(define-punctuation  open-square-bracket   #\[ )   ;; 91
(define-punctuation  backward-slash        #\\ )   ;; 92
(define-punctuation  close-square-bracket  #\] )   ;; 93
(define-punctuation  caret                 #\^ )   ;; 94
(define-punctuation  under-bar             #\_ )   ;; 95
(define-punctuation  back-quote            #\` )   ;; 96

(define-punctuation  open-curly-bracket  #\{ )   ;; 123
(define-punctuation  vertical-bar        #\| )   ;; 124
(define-punctuation  close-curly-bracket #\} )   ;; 125
(define-punctuation  tilda               #\~ )   ;; 126

(define-punctuation  euro_sign (code-char 128)) ;; 128

(define-punctuation  copyright_sign #\Copyright_Sign) ;; 169
(define-punctuation  left-pointing-double-angle-quotation_mark #\Left-Pointing_Double_Angle_Quotation_Mark) ;; 171
(define-punctuation not_sign #\NOT_SIGN) ;; 172
(define-punctuation  registered_sign #\Registered_Sign) ;; 174

(define-punctuation  plus-minus (code-char 177)) ;; 177 plus-minus #\±

(define-punctuation  acute-accent #\Acute_Accent) ;; 180
(define-punctuation  middle-dot #\Middle_Dot) ;; 183
(define-punctuation  masculine-ordinal-indicator   #\Masculine_Ordinal_Indicator) ;; 186
(define-punctuation  right-pointing-double-angle-quotation-mark #\Right-Pointing_Double_Angle_Quotation_Mark) ;; 187
(define-punctuation  vulgar_fraction_one_half   #\Vulgar_Fraction_One_Half) ;; 189
(define-punctuation  vulgar-Fraction-One-Quarter #\Vulgar_Fraction_One_Quarter)
(define-punctuation  vulgar_fraction_three_quarters   #\Vulgar_Fraction_Three_Quarters) ;; 190
(define-punctuation  Inverted-Question-Mark #\Inverted_Question_Mark) ;; 191
(define-punctuation  latin_capital_letter_a_with_ring_above   #\Latin_Capital_Letter_A_With_Ring_Above) ;; 197
(define-punctuation  Multiplication-Sign #\Multiplication_Sign) ;; 215
(define-punctuation  latin_small_letter_sharp_s   #\Latin_Small_Letter_Sharp_S) ;; 223
(define-punctuation  latin_small_letter_a_with_acute   #\Latin_Small_Letter_A_With_Acute) ;; 225
(define-punctuation  latin_smalL_letter_a_with_tilde   #\Latin_Small_Letter_A_With_Tilde) ;; 227
(define-punctuation  latin_small_letter_a_with_diaeresis   #\Latin_Small_Letter_A_With_Diaeresis) ;; 228
(define-punctuation  latin_small_letter_e_with_grave   #\Latin_Small_Letter_E_With_Grave) ;; 232 
(define-punctuation  latin_small_letter_e_with_acute   #\Latin_Small_Letter_E_With_Acute) ;; 233
(define-punctuation  latin_small_letter_e_with_diaeresis   #\Latin_Small_Letter_E_With_Diaeresis) ;; 235
(define-punctuation  latin_small_letter_i_with_grave   #\Latin_Small_Letter_I_With_Grave) ;; 236
(define-punctuation  latin_small_letter_i_with_acute   #\Latin_Small_Letter_I_With_Acute) ;; 237
(define-punctuation  latin_small_letter_o_with_circumflex   #\Latin_Small_Letter_O_With_Circumflex) ;; 244
(define-punctuation  latin_small_letter_o_with_diaeresis   #\Latin_Small_Letter_O_With_Diaeresis) ;; 246
(define-punctuation  division-sign       #\÷ )   ;; 247
(define-punctuation  latin_small_letter_o_with_stroke   #\Latin_Small_Letter_O_With_Stroke) ;; 248
(define-punctuation  latin_small_letter_u_with_diaeresis   #\Latin_Small_Letter_U_With_Diaeresis) ;; 252
(define-punctuation  greek_capital_letter_delta   #\Greek_Capital_Letter_Delta) ;; 916



(defparameter *out-of-band-punctuation*
  '(
    (code-char 339) ;; "œ" #\Latin_Small_Ligature_Oe 
    (code-char 697) ;; "ʹ" #\Modifier_Letter_Prime
    (code-char 710) ;; "ˆ" #\Modifier_Letter_Circumflex_Accent
    (code-char 729) ;;
    (code-char 772) ;; #\Combining_Macron
    (code-char 776) ;; #\Combining_Diaeresis
    (code-char 834) ;; "͂" #\Combining_Greek_Perispomeni
    (code-char 894) ;; #\Dot_Above
    ;; (code-char 916) ;; #\Greek_Capital_Letter_Delta
    ;;(code-char 919) ;; "Η" #\Greek_Capital_Letter_Eta
    ;;(code-char 922) ;; "Κ" #\Greek_Capital_Letter_Kappa
    ;;(code-char 931) ;; "Σ"#\Greek_Capital_Letter_Sigma
    ;;(code-char 958) ;; "ξ" #\Greek_Small_Letter_Xi
    ;;(code-char 965) ;; "υ" #\Greek_Small_Letter_Upsilon
    ;;(code-char 966) ;; "φ" #\Greek_Small_Letter_Phi

    (code-char 1013)

    (code-char 8194) ;; en_space
    (code-char 8197) ;; four-per-em_space

    (code-char 8201) ;; thin_space U2009
    (code-char 8202) ;; hair_space 
    (code-char 8203) ;; zero width space
    
    (code-char 8208) ;; #\hyphen
    (code-char 8209) ;; #\NON-BREAKING_HYPHEN
    (code-char 8212) ;; em dash, html: &mdash;
    (code-char 8213) ;;"―"
    (code-char 8216) ;; left single quote
    (code-char 8217) ;; right single quote
    (code-char 8218) ;;"‚", (code = 8218)
    (code-char 8220) ;; left double quote
    (code-char 8221) ;; right double quote
    (code-char 8226) ;;"•", (code = 8226)
    (code-char 8230) ;;"…", (code = 8230)
    (code-char 8232) ;;"", (code = 8232)
    (code-char 8240) ;;"‰", (code = 8240)
    (code-char 8242) ;; "prime"
    (code-char 8243) ;;"″", (code = 8243)
    (code-char 8260) ;; "⁄" #\U+2044

    (code-char 8446) ;;"ℒ", (code = 8446)
    (code-char 8451) ;;"℃", (code = 8451)
    (code-char 8466) ;;"ℒ", (code = 8466)
    (code-char 8482) ;;"™", (code = 8482)
    (code-char 8486) ;;"Ω" #\U+2126 
    (code-char 8491) ;; "Å"
    (code-char 8499) ;;"ℳ" #\U+2133
    (code-char 8531) ;;"⅓" (code = 8531)
    (code-char 8545) ;;"Ⅱ" (code = 8545)
    (code-char 8592) ;;"←" #\U+2190
    (code-char 8593) ;;"↑", (code = 8593)
    ;;(code-char 8594) ;; rightwards arrow  -- defined at end of file
    (code-char 8595) ;;"↓", (code = 8595)
    (code-char 8596) ;;"↔", (code = 8596) #\left_right_arrow

    (code-char 8704) ;; "∀" #\FOR_ALL
    (code-char 8707) ;; "∃" #\there_exists
    (code-char 8706) ;; "∂", (code = 8706)
    (code-char 8710) ;;"∆" #\U+2206
    (code-char 8712) ;; "∈" #\U+2208
    (code-char 8714) ;; "∊"
    (code-char 8721) ;; "∑"
    (code-char 8722) ;; ""−" #\U+2212 Minus sign
    (code-char 8727) ;; "∗" #\U+2217
    (code-char 8734) ;;"∞", (code = 8734)
    (code-char 8739) ;; "∣", (code = 8734)
    (code-char 8743) ;; "∧" #\U+2227
    (code-char 8745) ;; "∩" #\U+2229
    (code-char 8747) ;; "∫"
    (code-char 8758) ;; ratio  #\U+2236
    (code-char 8764) ;;#\∼ 
    (code-char 8765) ;; #\reversed_tilda
    (code-char 8776) ;;"≈", (code = 8776)
    (code-char 8781) ;;"≍", (code = 8781)

    (code-char 8800) ;; "≠"
    (code-char 8804) ;;  "≤"
    (code-char 8805) ;;"≥", (code = 8805)
    (code-char 8806) ;;"≦", (code = 8806)
    (code-char 8810) ;; "≪" #\U+226B
    (code-char 8811) ;; "≫" #\U+226B
    (code-char 8839) ;; "⊇" #\U+2287
    (code-char 8900) ;; "⋄"
    (code-char 8901) ;;"⋅", (code = 8901)
    (code-char 8902) ;;"⋆" (code = 8902)
    (code-char 8942) 
    (code-char 8943) ;; "⋯"

    (code-char 9415) ;; "Ⓡ" #\circled_latin_capital_letter_r
    (code-char 9633) ;; "□"
    (code-char 9642) ;; "▪"
    (code-char 9651) ;; "△" #\U+25B3
    (code-char 9652) ;; "▴" #\U+25B4
    (code-char 9653) ;; "▵"
    (code-char 9658) ;; "►" #\U+2605
    (code-char 9663) ;; "▿" #\U+25BF
    (code-char 9674) ;; "◊" #\U+25CA
    (code-char 9675) ;; "○" #\U+25CB
    (code-char 9733) ;; "★" #\U+25CB
    (code-char 9792) ;; "♀" #\U+2640
    (code-char 9794) ;; "♂" #\U+2642
    (code-char 9830) ;; "♦"
    (code-char 10794) ;; "⨪" #\U+2A2A
    (code-char 10877) ;; "⩽"
    (code-char 10878) ;;"⩾", (code = 10878)

    (code-char 64257) ;;"ﬁ", (code = 64257) ;; alphabetical
    (code-char 64258) ;;"ﬂ", (code = 64258)
    (code-char 65288) ;;"（", (code = 65288)
    (code-char 65293) ;;"－", (code = 65293)

    (code-char 119967) ;; "풟"
    
    ))

(defgeneric add-punctuation-char (identifier)
  (:documentation "Create a punctuation word for the
     identified character. Useful for doing them b7
     had when entering new characters")
  (:method ((form list)) ;; e.g. '(code-char 65293)
    (assert (= 2 (length form)))
    (assert (fboundp (car form)))
    (let ((character (eval form)))
      (assert (characterp character))
      (add-punctuation-char character)))
  (:method ((char character))
    (let* ((namestring (char-name char))
           (symbol (intern namestring *word-package*)))
      (define-punctuation/expr symbol char))))


(defun add-punctuation-chars ()
  (dolist (form *out-of-band-punctuation*)
    (add-punctuation-char form)))

(add-punctuation-chars) ;; evaluate all the definitions



;; NOTE: the encodings of unicode characters are in HEX, so #\+2192 is 5894 decimal
;;  while the alist (*entries-for-out-of-band-characters*) for out-of-band characters
;;  uses decimal encoding, so in alphabet.lisp we need (8594 ;; rightwards arrow
;;   (:punctuation . ,(punctuation-named #\U+2192)))
;; Also note difference is choices for Allegro and CCL
;; //// where does SBCL come down on this? 

#+allegro (define-punctuation rightwards-arrow (code-char #x2192))
#-allegro (define-punctuation rightwards-arrow #\U+2192)

