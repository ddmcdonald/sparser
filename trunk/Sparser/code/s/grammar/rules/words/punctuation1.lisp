;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "punctuation"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   1.2 January 2015

;; 1.0  (9/21/92 v2.3) added everything else, in ascii order
;; 1.1  (4/9/93) moved newline to required
;; 1.2  (9/26/94) added some globals for quick reference to some of these
;;      (10/19) added another one, 10/24/94 ditto
;;      (7/20/14) Added a parameter for hyphen\
;;      (1/8/15) constant for semicolon.
;; 1.3  (1/29/15) moved out the constants to their own file
;; added (define-punctuation rightwards_arrow #\U+2192) for →
;; NOTE: the encodings of unicode characters are in HEX, so #\+2192 is 5894 decimal
;;  while the alist (*entries-for-out-of-band-characters*) for out-of-band characters 
;;  uses decimal encoding, so in alphabet.lisp we need
;;(8594 ;; rightwards arrow
;;   (:punctuation . ,(punctuation-named #\U+2192))) 

(in-package :sparser)


(define-punctuation tab  #\tab)             ;; ascii 9
(define-punctuation linefeed #\Linefeed)    ;; 10
(define-punctuation new-page #\Page)        ;; 12

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
(define-punctuation  period              #\. )   ;; 46
(define-punctuation  forward-slash       #\/ )   ;; 47

(define-punctuation  colon               #\: )   ;; 58
(define-punctuation  semi-colon          #\; )   ;; 59
(define-punctuation  open-angle-bracket  #\< )   ;; 60
(define-punctuation  equal-sign          #\= )   ;; 61
(define-punctuation  close-angle-bracket #\> )   ;; 62
(define-punctuation  question-mark       #\? )   ;; 63
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

(define-punctuation rightwards_arrow #\U+2192) 

