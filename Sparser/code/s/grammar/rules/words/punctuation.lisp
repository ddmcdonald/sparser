;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2014-2020 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "punctuation"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   March 2020

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


(define-punctuation tab-char  #\tab)             ;; ascii 9
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

(define-punctuation  british-pound-sign (code-char 163))
(define-punctuation  currency-sign (code-char 164))
(define-punctuation  yen-sign (code-char 165))

(define-punctuation  copyright_sign #\Copyright_Sign) ;; 169
(define-punctuation  ordinal-indicator #\FEMININE_ORDINAL_INDICATOR) ;; 170
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

    (code-char 128)
    (code-char 169)
    (code-char 171) 
    (code-char 172) ;; #\NOT_SIGN
    (code-char 174)
    (code-char 177) ;;//////////////////////////////////////// #\±
    (code-char 180) 
    (code-char 183) 
    (code-char 186)
    (code-char 187) ;;#\Right-Pointing_Double_Angle_Quotation_Mark
    (code-char 188) ;;#\Vulgar_Fraction_One_Quarter
    (code-char 189) ;;#\Vulgar_Fraction_One_Half
    (code-char 190) ;;#\Vulgar_Fraction_Three_Quarters
    (code-char 191) ;;#\Inverted_Question_Mark
    (code-char 215) ;;#\Multiplication_Sign
    (code-char 247) ;; #\Division_Sign)))
    (code-char 339) ;; "œ" #\Latin_Small_Ligature_Oe 
    (code-char 697) ;; "ʹ" #\Modifier_Letter_Prime
    (code-char 707) ;; ˃
    (code-char 710) ;; "ˆ" #\Modifier_Letter_Circumflex_Accent
    (code-char 714) ;;     "ˊ"
    (code-char 729) ;; "˙", (code = 729)  ;; #\Dot_Above
    (code-char 729) ;; #\*)) ;;"˙", (code = 729)  ;; #\Dot_Above
    (code-char 730) ;; #\Ring_Above
    (code-char 731) ;; "˛"
    (code-char 732) ;; #\small_tilde
    (code-char 732) ;;"˜"  ;; #\Small_Tilde
    (code-char 739) ;; "ˣ" #\MODIFIER_LETTER_SMALL_X
    (code-char 768) ;; #\COMBINING_GRAVE_ACCENT
    (code-char 769) ;; #\Combining_Acute_Accent
    (code-char 772) ;; #\Combining_Macron
    (code-char 776) ;; #\Combining_Diaeresis
    (code-char 807) ;; ̧
    (code-char 817) ;; ̱
    (code-char 824) ;; "̸"
    (code-char 834) ;; "͂" #\Combining_Greek_Perispomeni
    (code-char 834) ;;";", (code = 894)    
    (code-char 884) ;; "ʹ"
    (code-char 894) ;; #\Dot_Above
    (code-char 894) ;;";", (code = 894)
    (code-char 900) ;; #\GREEK_TONOS
    (code-char 900) ;;΄
    (code-char 903) ;; ·
    (code-char 916) ;; #\Greek_Capital_Letter_Delta "Δ" (:greek . (:uppercase ;;  redefining as punctuation to see if       ;; that makes it easier to deal with cases where it's being       ;; used at the beginning of an item to denote "change" -- as in       ;; ΔΨ for membrane potential
    ;; (code-char 916) ;; #\Greek_Capital_Letter_Delta
    ;;(code-char 919) ;; "Η" #\Greek_Capital_Letter_Eta
    ;;(code-char 922) ;; "Κ" #\Greek_Capital_Letter_Kappa
    ;;(code-char 931) ;; "Σ"#\Greek_Capital_Letter_Sigma
    ;;(code-char 958) ;; "ξ" #\Greek_Small_Letter_Xi
    ;;(code-char 965) ;; "υ" #\Greek_Small_Letter_Upsilon
    ;;(code-char 966) ;; "φ" #\Greek_Small_Letter_Phi



    (code-char 1013) ;; "ϵ"
    (code-char 1523) ;; ׳
    (code-char 1546) ;; #\ARABIC-INDIC_PER_TEN_THOUSAND_SIGN
    (code-char 7484) ;; ᴼ
    (code-char 7527) ;; ᵧ
    (code-char 7529) ;; ᵩ
    (code-char 8004) ;; #\GREEK_SMALL_LETTER_OMICRON_WITH_PSILI_AND_OXIA
    (code-char 8125) ;;      "᾽"
    (code-char 8194) ;; en_space
    (code-char 8195) ;; em_space
    (code-char 8195) ;;  #\EM_SPACE      
    (code-char 8196) ;;  
    (code-char 8197) ;;" ", (code = 8197)  ;; #\FOUR-PER-EM_SPACE
    (code-char 8200) ;; #\PUNCTUATION_SPACE
    (code-char 8201) ;;" ", (code = 8201)  ;; #\THIN_SPACE
    (code-char 8202) ;;" ", (code = 8202)   ;; #\hair_space
    (code-char 8203) ;; zero width space
    (code-char 8206) ;;‎
    (code-char 8207) ;;‏
    (code-char 8208) ;;"‐"  ;; #\HYPHEN
    (code-char 8209) ;;"‑"   ;; #\NON-BREAKING_HYPHEN
    (code-char 8210) ;;‒
    (code-char 8212) ;; em dash, html: &mdash;
    (code-char 8213) ;;"―", (code = 8213)
    (code-char 8214) ;; #\DOUBLE_VERTICAL_LINE
    (code-char 8215) ;; #\DOUBLE_LOW_LINE
    (code-char 8216) ;; left single quote
    (code-char 8217) ;; right single quote
    (code-char 8218) ;;"‚", (code = 8218)
    (code-char 8220) ;; left double quote
    (code-char 8221) ;; right double quote
    (code-char 8222) ;; #\DOUBLE_LOW-9_QUOTATION_MARK
    (code-char 8224) ;; †
    (code-char 8225) ;; ‡
    (code-char 8226) ;;"•", (code = 8226)
    (code-char 8229) ;;#\TWO_DOT_LEADER
    (code-char 8230) ;;"…", (code = 8230)
    (code-char 8231) ;; ‧
    (code-char 8232) ;;"", (code = 8232)
    (code-char 8234) ;; "‪"
    (code-char 8239) ;; 
    (code-char 8240) ;;"‰", (code = 8240)
    (code-char 8242) ;; prime
    (code-char 8243) ;;"″", (code = 8243)
    (code-char 8244) ;; #\TRIPLE_PRIME
    (code-char 8245) ;;‵
    (code-char 8249) ;;‹
    (code-char 8250) ;; "›"
    (code-char 8251) ;; #\REFERENCE_MARK
    (code-char 8257) ;; ⁁
    (code-char 8260) ;; "⁄" #\U+2044
    (code-char 8270) ;; ⁎
    (code-char 8289) ;; ⁡
    (code-char 8290) ;;"⁢"
    (code-char 8313) ;; "⁹" #\SUPERSCRIPT_NINE
    (code-char 8322) ;; ₂
    (code-char 8323) ;; ₃
    (code-char 8356) ;; #\LIRA_SIGN 
    (code-char 8364) ;; #\EURO_SIGN
    (code-char 8401) ;; #\COMBINING_RIGHT_HARPOON_ABOVE
    (code-char 8446) ;;"ℒ", (code = 8446)
    (code-char 8451) ;;"℃", (code = 8451)
    (code-char 8462) ;; "ℎ", #\PLANCK_CONSTANT
    (code-char 8464) ;; #\SCRIPT_CAPITAL_I 
    (code-char 8466) ;;"ℒ", (code = 8466)
    (code-char 8467) ;; ℓ
    (code-char 8470) ;; #\NUMERO_SIGN 
    (code-char 8471) ;;℗
    (code-char 8482) ;;"™", (code = 8482)
    (code-char 8486) ;;"Ω" #\U+2126 
    (code-char 8490) ;; #\KELVIN_SIGN
    (code-char 8491) ;; "Å" ;; angstrom symbol
    (code-char 8499) ;;"ℳ" #\U+2133
    (code-char 8528) ;; #\VULGAR_FRACTION_ONE_SEVENTH
    (code-char 8531) ;;"⅓" (code = 8531)
    (code-char 8532) ;;"⅔"
    (code-char 8535) ;; #\VULGAR_FRACTION_THREE_FIFTHS 
    (code-char 8536) ;; #\VULGAR_FRACTION_FOUR_FIFTHS 
    (code-char 8537) ;; "⅙"
    (code-char 8538) ;;  #\VULGAR_FRACTION_FIVE_SIXTHS
    (code-char 8539) ;; #\VULGAR_FRACTION_ONE_EIGHTH
    (code-char 8540) ;; #\VULGAR_FRACTION_THREE_EIGHTHS
    (code-char 8541) ;; #\VULGAR_FRACTION_FIVE_EIGHTHS 
    (code-char 8544) ;; #\ROMAN_NUMERAL_ONE
    (code-char 8545) ;;"Ⅱ", (code = 8545)
    (code-char 8546) ;; #\ROMAN_NUMERAL_THREE
    (code-char 8547) ;; #\ROMAN_NUMERAL_FOUR
    (code-char 8548) ;; #\ROMAN_NUMERAL_FIVE
    (code-char 8549) ;; #\ROMAN_NUMERAL_SIX
    (code-char 8550) ;; #\ROMAN_NUMERAL_SEVEN
    (code-char 8551) ;; #\ROMAN_NUMERAL_EIGHT
    (code-char 8552) ;; #\ROMAN_NUMERAL_NINE
    (code-char 8553) ;; #\ROMAN_NUMERAL_TEN
    (code-char 8554) ;; #\ROMAN_NUMERAL_ELEVEN "Ⅺ"
    (code-char 8560) ;; #\SMALL_ROMAN_NUMERAL_ONE 
    (code-char 8561) ;; #\SMALL_ROMAN_NUMERAL_TWO 
    (code-char 8562) ;; #\SMALL_ROMAN_NUMERAL_THREE 
    (code-char 8563) ;; #\SMALL_ROMAN_NUMERAL_FOUR 
    (code-char 8569) ;; ⅹ
    (code-char 8592) ;;"←" #\left_right_arrow
    (code-char 8593) ;;"↑", (code = 8593)
    (code-char 8594) ;; rightwards arrow
    (code-char 8595) ;;"↓", (code = 8595)
    (code-char 8596) ;;"↔", (code = 8596) #\left_right_arrow
    (code-char 8597) ;; #\UP_DOWN_ARROW 
    (code-char 8614) ;; #\RIGHTWARDS_ARROW_FROM_BAR
    (code-char 8640) ;; #\RIGHTWARDS_HARPOON_WITH_BARB_UPWARDS 
    (code-char 8644) ;;⇄
    (code-char 8652) ;; #\RIGHTWARDS_HARPOON_OVER_LEFTWARDS_HARPOON 
    (code-char 8656) ;; #\LEFTWARDS_DOUBLE_ARROW
    (code-char 8658) ;; #\RIGHTWARDS_DOUBLE_ARROW
    (code-char 8660) ;; ⇔ ;; #\left_right_double_arrow
    (code-char 8661) ;; #\UP_DOWN_DOUBLE_ARROW 
    (code-char 8669) ;; "⇝"
    (code-char 8672) ;; #\LEFTWARDS_DASHED_ARROW
    (code-char 8673) ;; #\UPWARDS_DASHED_ARROW 
    (code-char 8674) ;; #\RIGHTWARDS_DASHED_ARROW 
    (code-char 8675) ;; #\DOWNWARDS_DASHED_ARROW 
    (code-char 8676) ;; "⇤"
    (code-char 8677) ;; #\RIGHTWARDS_ARROW_TO_BA
    (code-char 8680) ;; #\RIGHTWARDS_WHITE_ARROW 
    (code-char 8704) ;; "∀" #\FOR_ALL
    (code-char 8705) ;; #\COMPLEMENT 
    (code-char 8706) ;; "∂", (code = 8706)
    (code-char 8707) ;; "∃" #\there_exists
    (code-char 8709) ;; #\EMPTY_SET
    (code-char 8710) ;;"∆" #\U+2206
    (code-char 8711) ;;   #\nabla ;; ∇
    (code-char 8712) ;; "∈" #\U+2208
    (code-char 8713) ;; #\NOT_AN_ELEMENT_OF
    (code-char 8714) ;; "∊"
    (code-char 8714) ;;"∊", (code = 8714)
    (code-char 8715) ;; ∋
    (code-char 8719) ;; "∏" #\N-ARY_PRODUCT
    (code-char 8721) ;; "∑"
    (code-char 8722) ;; ""−" #\U+2212 Minus sign
    (code-char 8723) ;; #\MINUS-OR-PLUS_SIGN 
    (code-char 8725) ;; ∕
    (code-char 8726) ;; "∖"
    (code-char 8727) ;; "∗" #\U+2217
    (code-char 8728) ;;∘
    (code-char 8729) ;; 
    (code-char 8729) ;; #\BULLET_OPERATOR ;; ∇
    (code-char 8730) ;; #\SQUARE_ROOT
    (code-char 8732) ;;
    (code-char 8733) ;; #\PROPORTIONAL_TO
    (code-char 8734) ;;"∞", (code = 8734)
    (code-char 8736) ;; #\ANGLE 
    (code-char 8737) ;; ∡
    (code-char 8739) ;;"∣", (code = 8739)
    (code-char 8741) ;; ∥
    (code-char 8743) ;; "∧" #\U+2227
    (code-char 8744) ;; #\LOGICAL_OR 
    (code-char 8745) ;; "∩" #\U+2229
    (code-char 8746) ;; #\UNION
    (code-char 8747) ;; "∫"
    (code-char 8748) ;; "∬"
    (code-char 8749) ;; "∭"
    (code-char 8754) ;; #\CLOCKWISE_CONTOUR_INTEGRAL 
    (code-char 8756) ;; #\THEREFORE 
    (code-char 8757) ;; #\BECAUSE 
    (code-char 8758) ;; ratio  #\U+2236
    (code-char 8759) ;; ∷
    (code-char 8760) ;; ∸
    (code-char 8764) ;;#\∼ 
    (code-char 8765) ;; #\reversed_tilda
    (code-char 8771) ;;≃
    (code-char 8773) ;; ≅
    (code-char 8776) ;;"≈", (code = 8776)
    (code-char 8780) ;; #\ALL_EQUAL_TO
    (code-char 8781) ;;"≍", (code = 8781)
    (code-char 8784) ;; #\APPROACHES_THE_LIMIT 
    (code-char 8788) ;; #\COLON_EQUALS 
    (code-char 8793) ;; ≙
    (code-char 8796) ;; #\DELTA_EQUAL_TO 
    (code-char 8800) ;; "≠"
    (code-char 8801) ;; #\IDENTICAL_TO
    (code-char 8802) ;; "≢"
    (code-char 8804) ;;  "≤"
    (code-char 8805) ;;"≥", (code = 8805)
    (code-char 8806) ;;"≦", (code = 8806)
    (code-char 8807) ;; #\GREATER-THAN_OVER_EQUAL_TO
    (code-char 8810) ;; "≪" #\U+226B
    (code-char 8811) ;; "≫" #\U+226B
    (code-char 8818) ;; "≲"
    (code-char 8819) ;; ≳
    (code-char 8826) ;; #\PRECEDES
    (code-char 8827) ;; #\SUCCEEDS
    (code-char 8834) ;; ⊂
    (code-char 8835) ;; #\SUPERSET_OF
    (code-char 8838) ;; ⊆
    (code-char 8839) ;; "⊇" #\U+2287
    (code-char 8840) ;; "⊈"
    (code-char 8851) ;; #\SQUARE_CAP 
    (code-char 8852) ;; #\SQUARE_CUP 
    (code-char 8853) ;; ⊕
    (code-char 8855) ;; ⊗
    (code-char 8857) ;; #\⊙
    (code-char 8865) ;; "⊡"
    (code-char 8867) ;; ⊣
    (code-char 8868) ;; #\DOWN_TACK 
    (code-char 8869) ;; #\UP_TACK
    (code-char 8895) ;;⊿
    (code-char 8896) ;; #\N-ARY_LOGICAL_AND
    (code-char 8898) ;; #\N-ARY_INTERSECTION 
    (code-char 8899) ;; "⋃"
    (code-char 8900) ;; "⋄"
    (code-char 8900) ;;"⋅", (code = 8901)
    (code-char 8901) ;;"⋅", (code = 8901)
    (code-char 8902) ;;"⋆" (code = 8902)
    (code-char 8907) ;; #\LEFT_SEMIDIRECT_PRODUCT 
    (code-char 8920) ;; #\VERY_MUCH_LESS-THAN 
    (code-char 8921) ;; #\VERY_MUCH_GREATER-THAN
    (code-char 8942) ;; "▪"
    (code-char 8943) ;; "⋯"
    (code-char 8945) ;; "⋱"
    (code-char 8968) ;; #\LEFT_CEILING 
    (code-char 8969) ;; #\RIGHT_CEILING 
    (code-char 8970) ;; ⌊
    (code-char 8971) ;; ⌋
    (code-char 8984) ;; #\PLACE_OF_INTEREST_SIGN 
    (code-char 8988) ;; #\TOP_LEFT_CORNER 
    (code-char 8991) ;; #\BOTTOM_RIGHT_CORNER 
    (code-char 9001) ;; 〈
    (code-char 9002) ;; 〉
    (code-char 9003) ;; #\ERASE_TO_THE_LEFT 
    (code-char 9004) ;; #\BENZENE_RING 
    (code-char 9005) ;; #\CYLINDRICITY 
    (code-char 9013) ;; #\COUNTERSINK 
    (code-char 9021) ;; #\APL_FUNCTIONAL_SYMBOL_CIRCLE_STILE 
    (code-char 9024) ;; #\APL_FUNCTIONAL_SYMBOL_BACKSLASH_BAR 
    (code-char 9076) ;; #\APL_FUNCTIONAL_SYMBOL_RHO 
    (code-char 9082) ;;⍺
    (code-char 9115) ;; #\LEFT_PARENTHESIS_UPPER_HOOK 
    (code-char 9121) ;; #\LEFT_SQUARE_BRACKET_UPPER_CORNER 
    (code-char 9122) ;; #\LEFT_SQUARE_BRACKET_EXTENSION 
    (code-char 9123) ;; #\LEFT_SQUARE_BRACKET_LOWER_CORNER
    (code-char 9124) ;; #\RIGHT_SQUARE_BRACKET_UPPER_CORNER
    (code-char 9126) ;; #\RIGHT_SQUARE_BRACKET_LOWER_CORNER 
    (code-char 9135) ;; #\HORIZONTAL_LINE_EXTENSION 
    (code-char 9148) ;; #\HORIZONTAL_SCAN_LINE-7 
    (code-char 9161) ;; #\DENTISTRY_SYMBOL_LIGHT_DOWN_AND_HORIZONTAL 
    (code-char 9182) ;; #\TOP_CURLY_BRACKET 
    (code-char 9183) ;; "⏟"
    (code-char 9251) ;; #\OPEN_BOX
    (code-char 9252) ;; #\SYMBOL_FOR_NEWLINE
    (code-char 9254) ;; #\SYMBOL_FOR_SUBSTITUTE_FORM_TWO 
    (code-char 9312) ;; #\CIRCLED_DIGIT_ONE
    (code-char 9313) ;; #\CIRCLED_DIGIT_TWO
    (code-char 9314) ;; #\CIRCLED_DIGIT_THREE
    (code-char 9315) ;; "④"
    (code-char 9316) ;; "⑤"
    (code-char 9317) ;; "⑥"
    (code-char 9318) ;; "⑦"
    (code-char 9319) ;; #\CIRCLED_DIGIT_EIGHT 
    (code-char 9320) ;; #\CIRCLED_DIGIT_NINE 
    (code-char 9321) ;; #\CIRCLED_NUMBER_TEN 
    (code-char 9322) ;; #\CIRCLED_NUMBER_ELEVEN 
    (code-char 9323) ;; #\CIRCLED_NUMBER_TWELVE 
    (code-char 9324) ;; #\CIRCLED_NUMBER_THIRTEEN 
    (code-char 9415) ;; "Ⓡ" #\circled_latin_capital_letter_r
    (code-char 9424) ;; #\CIRCLED_LATIN_SMALL_LETTER_A 
    (code-char 9425) ;; #\CIRCLED_LATIN_SMALL_LETTER_B 
    (code-char 9427) ;; #\CIRCLED_LATIN_SMALL_LETTER_D 
    (code-char 9428) ;; #\CIRCLED_LATIN_SMALL_LETTER_E 
    (code-char 9429) ;; #\CIRCLED_LATIN_SMALL_LETTER_F 
    (code-char 9430) ;; #\CIRCLED_LATIN_SMALL_LETTER_G 
    (code-char 9431) ;; #\CIRCLED_LATIN_SMALL_LETTER_H 
    (code-char 9432) ;; #\CIRCLED_LATIN_SMALL_LETTER_I 
    (code-char 9433) ;; #\CIRCLED_LATIN_SMALL_LETTER_J 
    (code-char 9434) ;; #\CIRCLED_LATIN_SMALL_LETTER_K 
    (code-char 9472) ;; "─"
    (code-char 9474) ;;│
    (code-char 9524) ;;┴
    (code-char 9552) ;; ═
    (code-char 9553) ;;║
    (code-char 9587) ;; #\BOX_DRAWINGS_LIGHT_DIAGONAL_CROSS "╳"
    (code-char 9617) ;; #\LIGHT_SHADE
    (code-char 9618) ;; #\MEDIUM_SHADE
    (code-char 9632) ;; #\BLACK_SQUARE
    (code-char 9633) ;; "□"
    (code-char 9642) ;; "▪" ;; "□"
    (code-char 9643) ;; #\WHITE_SMALL_SQUARE
    (code-char 9650) ;; ▲
    (code-char 9651) ;; "△" #\U+25B3
    (code-char 9652) ;; "▴" #\U+25B4
    (code-char 9653) ;; "▵"
    (code-char 9654) ;;▶
    (code-char 9656) ;; ▸
    (code-char 9658) ;; "►" #\U+2605
    (code-char 9658) ;;""►", (code = 9658)
    (code-char 9659) ;; #\WHITE_RIGHT-POINTING_POINTER
    (code-char 9660) ;;▼
    (code-char 9662) ;; #\BLACK_DOWN-POINTING_SMALL_TRIANGLE 
    (code-char 9663) ;; "▿" #\U+25BF
    (code-char 9666) ;; #\BLACK_LEFT-POINTING_SMALL_TRIANGLE 
    (code-char 9670) ;;◆
    (code-char 9671) ;; #\WHITE_DIAMOND 
    (code-char 9673) ;; #\FISHEYE 
    (code-char 9674) ;; "◊" #\U+25CA
    (code-char 9675) ;; "○" #\U+25CB
    (code-char 9679) ;; ●
    (code-char 9687) ;; #\RIGHT_HALF_BLACK_CIRCLE 
    (code-char 9702) ;;◦
    (code-char 9723) ;; ◻
    (code-char 9724) ;; #\BLACK_MEDIUM_SQUARE 
    (code-char 9733) ;;"★"
    (code-char 9734) ;; ☆
    (code-char 9745) ;; #\BALLOT_BOX_WITH_CHECK 
    (code-char 9755) ;; #\BLACK_RIGHT_POINTING_INDEX 
    (code-char 9758) ;; #\WHITE_RIGHT_POINTING_INDEX
    (code-char 9792) ;; "♀" #\U+2640
    (code-char 9794) ;; "♂" #\U+2642
    (code-char 9824) ;; #\BLACK_SPADE_SUIT 
    (code-char 9829) ;; #\BLACK_HEART_SUIT 
    (code-char 9830) ;; "♦"
    (code-char 9839) ;; #\MUSIC_SHARP_SIGN


    (code-char 10003) ;; #\CHECK_MARK 
    (code-char 10004) ;; #\HEAVY_CHECK_MARK 
    (code-char 10005) ;; #\MULTIPLICATION_X
    (code-char 10008) ;; #\HEAVY_BALLOT_X
    (code-char 10022) ;; #\BLACK_FOUR_POINTED_STAR 
    (code-char 10031) ;; "✯"
    (code-char 10033) ;; #\HEAVY_ASTERISK 
    (code-char 10061) ;; #\SHADOWED_WHITE_CIRCLE 
    (code-char 10063) ;; #\LOWER_RIGHT_DROP-SHADOWED_WHITE_SQUARE 
    (code-char 10070) ;; #\BLACK_DIAMOND_MINUS_WHITE_X 
    (code-char 10074) ;; #\HEAVY_VERTICAL_BAR 
    (code-char 10102) ;; #\DINGBAT_NEGATIVE_CIRCLED_DIGIT_ONE 
    (code-char 10103) ;; #\DINGBAT_NEGATIVE_CIRCLED_DIGIT_TWO 
    (code-char 10104) ;; #\DINGBAT_NEGATIVE_CIRCLED_DIGIT_THREE 
    (code-char 10105) ;; #\DINGBAT_NEGATIVE_CIRCLED_DIGIT_FOUR 
    (code-char 10108) ;; #\DINGBAT_NEGATIVE_CIRCLED_DIGIT_SEVEN 
    (code-char 10112) ;; #\DINGBAT_CIRCLED_SANS-SERIF_DIGIT_ONE 
    (code-char 10113) ;; #\DINGBAT_CIRCLED_SANS-SERIF_DIGIT_TWO 
    (code-char 10114) ;; #\DINGBAT_CIRCLED_SANS-SERIF_DIGIT_THREE 
    (code-char 10115) ;; #\DINGBAT_CIRCLED_SANS-SERIF_DIGIT_FOUR 
    (code-char 10116) ;; #\DINGBAT_CIRCLED_SANS-SERIF_DIGIT_FIVE 
    (code-char 10117) ;; #\DINGBAT_CIRCLED_SANS-SERIF_DIGIT_SIX 
    (code-char 10118) ;; #\DINGBAT_CIRCLED_SANS-SERIF_DIGIT_SEVEN 
    (code-char 10119) ;; #\DINGBAT_CIRCLED_SANS-SERIF_DIGIT_EIGHT 
    (code-char 10122) ;; #\DINGBAT_NEGATIVE_CIRCLED_SANS-SERIF_DIGIT_ONE 
    (code-char 10123) ;; #\DINGBAT_NEGATIVE_CIRCLED_SANS-SERIF_DIGIT_TWO 
    (code-char 10124) ;; #\DINGBAT_NEGATIVE_CIRCLED_SANS-SERIF_DIGIT_THREE 
    (code-char 10125) ;; #\DINGBAT_NEGATIVE_CIRCLED_SANS-SERIF_DIGIT_FOUR 
    (code-char 10126) ;; #\DINGBAT_NEGATIVE_CIRCLED_SANS-SERIF_DIGIT_FIVE 
    (code-char 10127) ;; #\DINGBAT_NEGATIVE_CIRCLED_SANS-SERIF_DIGIT_SIX 
    (code-char 10132) ;; #\HEAVY_WIDE-HEADED_RIGHTWARDS_ARROW 
    (code-char 10137) ;; #\HEAVY_RIGHTWARDS_ARROW 
    (code-char 10140) ;; #\HEAVY_ROUND-TIPPED_RIGHTWARDS_ARROW 
    (code-char 10146) ;; #\THREE-D_TOP-LIGHTED_RIGHTWARDS_ARROWHEAD 
    (code-char 10147) ;; #\THREE-D_BOTTOM-LIGHTED_RIGHTWARDS_ARROWHEAD 
    (code-char 10152) ;; #\HEAVY_CONCAVE-POINTED_BLACK_RIGHTWARDS_ARROW 
    (code-char 10216) ;; ⟨
    (code-char 10217) ;; ⟩
    (code-char 10229) ;; 'LONG LEFTWARDS ARROW'
    (code-char 10230) ;; "⟶"
    (code-char 10233) ;; "⟹"
    (code-char 10300) ;; #\BRAILLE_PATTERN_DOTS-3456 
    (code-char 10625) ;; "⦁"
    (code-char 10731) ;; #\BLACK_LOZENGE 
    (code-char 10744) ;; #\BIG_SOLIDUS 
    (code-char 10754) ;; #\N-ARY_CIRCLED_TIMES_OPERATOR 
    (code-char 10761) ;; #\N-ARY_TIMES_OPERATOR 
    (code-char 10794) ;; "⨪" #\U+2A2A
    (code-char 10812) ;; #\INTERIOR_PRODUCT 
    (code-char 10815) ;; ⨿
    (code-char 10848) ;; #\LOGICAL_AND_WITH_DOUBLE_UNDERBAR 
    (code-char 10869) ;; #\TWO_CONSECUTIVE_EQUALS_SIGNS 
    (code-char 10877) ;;"⩽", (code = 10878)
    (code-char 10878) ;;"⩾", (code = 10878)
    (code-char 10913) ;; #\DOUBLE_NESTED_LESS-THAN 
    (code-char 11361) ;; #\LATIN_SMALL_LETTER_L_WITH_DOUBLE_BAR 
    (code-char 11373) ;; Ɑ
    (code-char 11374) ;; #\LATIN_CAPITAL_LETTER_M_WITH_HOOK 
    (code-char 11396) ;; #\COPTIC_CAPITAL_LETTER_GAMMA 
    (code-char 119967) ;; "풟"
    (code-char 12288)  ;; 　
    (code-char 12289)  ;;、
    (code-char 12290)  ;; 。
    (code-char 12296)  ;; 〈
    (code-char 12297)  ;; 〉
    (code-char 12298)  ;; #\LEFT_DOUBLE_ANGLE_BRACKET 
    (code-char 12298) ;; #\LEFT_DOUBLE_ANGLE_BRACKET 
    (code-char 12299)  ;; #\RIGHT_DOUBLE_ANGLE_BRACKET
    (code-char 12299) ;; #\RIGHT_DOUBLE_ANGLE_BRACKET 
    (code-char 12300)  ;; #\LEFT_CORNER_BRACKET 
    (code-char 12301)  ;; #\RIGHT_CORNER_BRACKET 
    (code-char 12304)  ;; 【
    (code-char 12305)  ;; 】
    (code-char 12308)  ;; #\LEFT_TORTOISE_SHELL_BRACKET 
    (code-char 12309)  ;; #\RIGHT_TORTOISE_SHELL_BRACKET 
    (code-char 13212)  ;; "㎜"
    (code-char 19977)  ;; "三"
    (code-char 55349)  ;; "�"
    (code-char 56348)  ;; "�"
    (code-char 56361)  ;; "�"
    (code-char 56364)  ;; "�"
    (code-char 56465)  ;; "�"
    (code-char 56592)  ;; "�"
    (code-char 56635)  ;; "�"
    (code-char 56650)  ;; "�"
    (code-char 57083)  ;; "�"
    (code-char 57088)  ;; "�"
    (code-char 57091)  ;; "�"
    (code-char 57305)  ;; "�"
    (code-char 61472)  ;; #\UF020
    (code-char 61508)  ;; #\UF044
    (code-char 61537)  ;; #\UF061
    (code-char 61538)  ;; #\UF062
    (code-char 61549)  ;; #\UF06D
    (code-char 61550)  ;; ""
    (code-char 61552)  ;; ""
    (code-char 61561)  ;; ""
    (code-char 61562)  ;; ""
    (code-char 61566)  ;; #\UF07E
    (code-char 61569)  ;; ""
    (code-char 61575)  ;; ""
    (code-char 61593)  ;; ""
    (code-char 61596)  ;; ""
    (code-char 61597)  ;; ""
    (code-char 61598)  ;; ""
    (code-char 61600)  ;; ""
    (code-char 61607)  ;; ""
    (code-char 61616)  ;; #\UF0B0
    (code-char 61620)  ;; #\UF0B4
    (code-char 61622)  ;; ""
    (code-char 61625)  ;; ""
    (code-char 61662)  ;; ""
    (code-char 61663)  ;; ""
    (code-char 61665)  ;; ""
    (code-char 61669)  ;; ""
    (code-char 61670)  ;; ""
    (code-char 61671)  ;; ""
    (code-char 61672)  ;; ""
    (code-char 61676)  ;; ""
    (code-char 61677)  ;; ""
    (code-char 61678)  ;; ""
    (code-char 61679)  ;; ""
    (code-char 61686)  ;; ""
    (code-char 61687)  ;; ""
    (code-char 61688)  ;; ""
    (code-char 61692)  ;; ""
    (code-char 63193)  ;; ""
    (code-char 63341)  ;; ""
    (code-char 63719)  ;; ""
    (code-char 64256)  ;; ﬀ
    (code-char 64257)  ;;"ﬁ", (code = 64257) ;; alphabetical
    (code-char 64258)  ;;"ﬂ", (code = 64258)
    (code-char 65072)  ;; "︰"
    (code-char 65080)  ;; "︸"
    (code-char 65105)  ;; #\SMALL_IDEOGRAPHIC_COMMA 
    (code-char 65117)  ;; #\SMALL_LEFT_TORTOISE_SHELL_BRACKET 
    (code-char 65118)  ;; #\SMALL_RIGHT_TORTOISE_SHELL_BRACKET 
    (code-char 65120)  ;; #\SMALL_AMPERSAND 
    (code-char 65124)  ;; #\SMALL_LESS-THAN_SIGN 
    (code-char 65125)  ;; "﹥"
    (code-char 65279)  ;; "﻿"
    (code-char 65285)  ;; #\FULLWIDTH_PERCENT_SIGN 
    (code-char 65286)  ;; "＆"
    (code-char 65288)  ;;"（", (code = 65288)
    (code-char 65289)  ;;  #\FULLWIDTH_RIGHT_PARENTHESIS
    (code-char 65290)  ;; #\FULLWIDTH_ASTERISK 
    (code-char 65291)  ;; #\FULLWIDTH_PLUS_SIGN
    (code-char 65292)  ;; #\FULLWIDTH_COMMA 
    (code-char 65293)  ;;"－", (code = 65293)
    (code-char 65294)  ;; "．"
    (code-char 65306)  ;; #\FULLWIDTH_COLON 
    (code-char 65307)  ;; #\FULLWIDTH_SEMICOLON 
    (code-char 65308)  ;; #\FULLWIDTH_LESS-THAN_SIGN 
    (code-char 65310)  ;; #\FULLWIDTH_GREATER-THAN_SIGN 
    (code-char 65311)  ;; "？"
    (code-char 65325)  ;; "Ｍ"
    (code-char 65357)  ;; "ｍ"
    (code-char 65374)  ;; #\FULLWIDTH_TILDE 
    (code-char 65381)  ;; #\HALFWIDTH_KATAKANA_MIDDLE_DOT 
    (code-char 65381) ;; #\HALFWIDTH_KATAKANA_MIDDLE_DOT 
    (code-char 65533)  ;; �


    ))

(defgeneric add-punctuation-char (identifier)
  (:documentation "Create a punctuation word for the
     identified character. Useful for doing them by
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

    ;;(code-char 8594) ;; rightwards arrow  -- defined at end of file
