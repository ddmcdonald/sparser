;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "punctuation"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   1.4 June 2015

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


(defparameter *out-of-band-punctuation*
  '(
    (code-char 772)
    (code-char 894)

    (code-char 8197) ;; whitespace?
    (code-char 8201)
    (code-char 8202)

    (code-char 8208)
    (code-char 8213)
    (code-char 8218) ;;"‚", (code = 8218)

    (code-char 8226) ;;"•", (code = 8226)
    (code-char 8230) ;;"…", (code = 8230)
    (code-char 8232) ;;"", (code = 8232)
    (code-char 8240) ;;"‰", (code = 8240)
    (code-char 8242) ;; "prime"

    (code-char 8243) ;;"″", (code = 8243)
    (code-char 8451) ;;"℃", (code = 8451)
    (code-char 8482) ;;"™", (code = 8482)
    (code-char 8491) ;; "Å"
    (code-char 8545) ;;"Ⅱ", (code = 8545)    (code-char 
    (code-char 8593) ;;"↑", (code = 8593)
    ;;(code-char 8594) ;; rightwards arrow  see below
    (code-char 8595) ;;"↓", (code = 8595)
    (code-char 8596) ;;"↔", (code = 8596)
    (code-char 8706) ;;"∂", (code = 8706)
    (code-char 8722)
    (code-char 8734) ;;"∞", (code = 8734)
    (code-char 8776) ;;"≈", (code = 8776)
    (code-char 8781) ;;"≍", (code = 8781)


    (code-char 8804) ;;  "≤"
    (code-char 8805) ;;"≥", (code = 8805)
    (code-char 8806) ;;"≦", (code = 8806)
    (code-char 8901) ;;"⋅", (code = 8901)
    (code-char 10878) ;;"⩾", (code = 10878)

    (code-char 64257) ;;"ﬁ", (code = 64257) ;; alphabetical
    (code-char 64258) ;;"ﬂ", (code = 64258)

    (code-char 65288) ;;"（", (code = 65288)
    (code-char 65293) ;;"－", (code = 65293)
    ))

(defun add-punctuation-chars ()
  (dolist (form *out-of-band-punctuation*)
    (let* ((character (eval form))
           (namestring (char-name character))
           (symbol (intern namestring *word-package*)))
      (format t "~&~a ~a" (cadr form) character)
      (define-punctuation/expr symbol character))))

(add-punctuation-chars)



;; NOTE: the encodings of unicode characters are in HEX, so #\+2192 is 5894 decimal
;;  while the alist (*entries-for-out-of-band-characters*) for out-of-band characters
;;  uses decimal encoding, so in alphabet.lisp we need (8594 ;; rightwards arrow
;;   (:punctuation . ,(punctuation-named #\U+2192)))
;; Also note difference is choices for Allegro and CCL
;; //// where does SBCL come down on this? 


#+allegro (define-punctuation rightwards-arrow (code-char #x2192))
#-allegro (define-punctuation rightwards-arrow #\U+2192)

