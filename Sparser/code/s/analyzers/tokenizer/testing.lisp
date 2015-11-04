;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:
;;; 
;;;     File:  "testing"
;;;   Module:  "analyzers;tokenizer:"
;;;  Version:  1.1 December 1995

;; 1.0 (9/15/92 v2.3) accomodates new tokenizing scheme.
;; 1.1 (1/6/95) brought the arguments up to date. 1/24 tweeked output
;;     (12/6) added 200-aaaa and corrected calls
;;     (9/18/09) Bumped the constant in test-word-lookup-speed from 2000 to
;;      200000 to avoid divide-by-zero trap on modern hardware.

(in-package :sparser)

; (test-speed-of-find-word)
; (test_tokenizer-fsa/speed *2k-the*)
;     zero's Finish-token
;
; (test_tokenizer-tokenizing/speed *2k-the*)
;     zero's Find-word

;(time-analysis *100-the*)
;(time-analysis *2k-the*)
;(time-analysis *200-aaaa*)

;;;-----------------
;;;  test strings
;;;-----------------

;;--- n.b. none of these have punctuation other than #\newline
;;     and none end in a #\space.  Neither condition having
;;     yet been implemented/debugged.

(defparameter   *tiny-string*
"Boe")

(defparameter   *short-string*
"Boeing Co. said the U.S. government has suspended the sale")


(defparameter *100-the*
" the the the the the the the the the the
the the the the the the the the the the
the the the the the the the the the the
the the the the the the the the the the
the the the the the the the the the the
the the the the the the the the the the
the the the the the the the the the the
the the the the the the the the the the
the the the the the the the the the the
the the the the the the the the the the")


(defparameter *2k-the*
  (let ( accumulating-string )
    (dotimes (i 20)
      (setq accumulating-string
            (concatenate 'string
                         *100-the*
                         accumulating-string)))
    accumulating-string )) 


(defparameter *200-aaaa* 
"aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa 
aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa aaaa")


(defparameter   *long-string*
"Boeing Co. said the U.S.
government has suspended the sale of
three Boeing 757-200 jetliners and six CH-47
Chinook helicopters to China.
   The sales were blocked under President
Bush's suspension of selling military products
to China in the wake of the Tiananmen
Square Massacre earlier this month.
   While the 757 jetliners are commercial
aircraft, the federal Office of Munitions
Control declined to grant export licenses,
because the jetliners are equipped with
navigational equipment that could have
military uses.
   All three aircraft were to be delivered
this month, two to Guangzhou Airlines and
one to Shanghai Airlines.  A Boeing spokesman
stressed that the deliveries have only
been \"suspended,\" and that \"we don't consider
these to be canceled orders.\"  Boeing
is appealing the suspension of the sale of
the 757s, which are valued at about $40 million")

(defparameter   *multi-buffer-string*
                   ;; the 1001th character is the "s" in "tranSport"
                   ;; in the line
                   ;;  "The six Chinook military transport helicopters,"
"Boeing Co. said the U.S.
government has suspended the sale of
three Boeing 757-200 jetliners and six CH-47
Chinook helicopters to China.
   The sales were blocked under President
Bush's suspension of selling military products
to China in the wake of the Tiananmen
Square Massacre earlier this month.
   While the 757 jetliners are commercial
aircraft, the federal Office of Munitions
Control declined to grant export licenses,
because the jetliners are equipped with
navigational equipment that could have
military uses.
   All three aircraft were to be delivered
this month, two to Guangzhou Airlines and
one to Shanghai Airlines.  A Boeing spokesman
stressed that the deliveries have only
been \"suspended,\" and that \"we don't consider
these to be canceled orders.\"  Boeing
is appealing the suspension of the sale of
the 757s, which are valued at about $40 million
each.  Chinese airlines ordered eight
other Boeing aircraft, but those deliveries
weren't impending.
   The six Chinook military transport helicopters,
valued at more than $100 million,
weren't scheduled to be delivered to the
People's Liberation Army until a few years
from now, a Boeing spokesman said.")


;;;------------------------------
;;; Output test on the tokenizer
;;;-----------------------------

(defun test_tokenizer (string)
  ;; displays the tokens in the string.
  (establish-character-source/string string)
  (initialize-tokenizer-state)
  (let ( word )
    (loop
      (if (eq (setq word (next-token))
              word::end-of-source)
        (return)
        (format t "~&~A~20,2t~A~%"
                word *capitalization-of-current-token*)))))

;;;-----------------------------------------------------------
;;;--------------------  Speed Tests -------------------------
;;;-----------------------------------------------------------

;;  (run-token-fsa)
(defun test-speed-of-Token-fsa (string)
  (let (t-start t-end t-total total-in-seconds tps )
    (setq t-start (get-internal-run-time))

    (establish-character-source/string string)
    (initialize-tokenizer-state)
    (let ((word-count 0))
      (loop
        (if (eq (run-token-fsa)
                word::end-of-source)
          (return)
          (incf word-count)))
    
      (setq t-end (get-internal-run-time)
            t-total (- t-end t-start)
            total-in-seconds (/ t-total
                                internal-time-units-per-second)
            tps (/ word-count
                   total-in-seconds))
      (format t "~&speed: ~4,1F  tokens/second" (float tps)))))


;;  (next-token)
(defun test-speed-of-Next-token (string)
  (let (t-start t-end t-total total-in-seconds tps
        (token-count 0))

    (setq t-start (get-internal-run-time))
    
    (establish-character-source/string string)
    (initialize-tokenizer-state)
    (loop
      (if (eq (next-token)
              word::end-of-source)
        (return)
        (incf token-count)))
    
    (setq t-end (get-internal-run-time)
          t-total (- t-end t-start)
          total-in-seconds (/ t-total
                              internal-time-units-per-second)
          tps (/ token-count
                 total-in-seconds))

    (format t "~&speed: ~4,1F  tokens/second" (float tps))))



;;;-----------------------------------------------------------
;;; Test_tokenizer-fsa/speed
;;;
;;; factors out the process of reading-out the entry list
;;; and doing the word lookup and capitalization computation
;;; by zeroing Finish-token
;;;-----------------------------------------------------------

(defun fake-finish-token (accumulated-entries length char-type)
  (declare (ignore accumulated-entries length char-type)))

(defun real-definition-of-finish-token (accumulated-entries length char-type)
  (declare (ignore accumulated-entries length char-type)))

(defun test_tokenizer-fsa/speed (string)

  ;; factors out the process of reading out the entry list
  ;; and doing the word lookup and capitalization computation

  (let (t-start t-end t-total total-in-seconds tps
        (token-count 0))

    (setf (symbol-function 'real-definition-of-finish-token)
          (symbol-function 'finish-token))
    (setf (symbol-function 'finish-token)
          (symbol-function 'fake-finish-token))

    (setq t-start (get-internal-run-time))
    
    (establish-character-source/string string)
    (initialize-tokenizer-state)
    (loop
      (if (eq (run-token-fsa)
              word::end-of-source)
        (return)
        (incf token-count)))
    
    (setq t-end (get-internal-run-time)
          t-total (- t-end t-start)
          total-in-seconds (/ t-total
                              internal-time-units-per-second)
          tps (/ token-count
                 total-in-seconds))

    (setf (symbol-function 'finish-token)
          (symbol-function 'real-definition-of-finish-token))

    (format t "~&speed: ~4,1F  tokens/second" (float tps))))


;;;-----------------------------------------------------------
;;; Test_tokenizer-tokenizing/speed
;;;
;;; factors out the process of reading out the entry list
;;; and doing the word lookup and capitalization computation
;;; by zeroing Find-word
;;;-----------------------------------------------------------

(defun fake-find-word (char-type)
  (declare (ignore char-type)))
(defun real-find-word (char-type)
  (declare (ignore char-type)))

(defun test_tokenizer-tokenizing/speed (string)
  (let (t-start t-end t-total total-in-seconds tps
        (token-count 0))

    (setf (symbol-function 'real-find-word)
          (symbol-function 'find-word))
    (setf (symbol-function 'find-word)
          (symbol-function 'fake-find-word))

    (setq t-start (get-internal-run-time))
    
    (establish-character-source/string string)
    (initialize-tokenizer-state)
    (loop
      (if (eq (run-token-fsa)
              word::end-of-source)
        (return)
        (incf token-count)))
    
    (setq t-end (get-internal-run-time)
          t-total (- t-end t-start)
          total-in-seconds (/ t-total
                              internal-time-units-per-second)
          tps (/ token-count
                 total-in-seconds))

    (setf (symbol-function 'find-word)
          (symbol-function 'real-find-word))

    (format t "~&speed: ~4,1F  tokens/second" (float tps))))


;;;--------------------------
;;; testing inner components
;;;--------------------------

(defun test-word-lookup-speed ()
  (let (t-start t-end t-total total-in-seconds tps)
    (setq t-start (get-internal-run-time))
    
    (setf (fill-pointer *word-lookup-buffer*) 3)
    (replace *word-lookup-buffer* "the")

    (dotimes (i 200000)
      (lookup-word-symbol))
    
    (setq t-end (get-internal-run-time)
          t-total (- t-end t-start)
          total-in-seconds (/ t-total
                              internal-time-units-per-second)
          tps (/ 200000
                 total-in-seconds))
    (format t "~&speed: ~4,1F  tokens/second" (float tps))))


(defun test-speed-of-Find-word ()
  (let (t-start t-end t-total total-in-seconds tps)
    (setq t-start (get-internal-run-time))
    
    (setf (fill-pointer *word-lookup-buffer*) 3)
    (replace *word-lookup-buffer* "the")

    (dotimes (i 2000)
      (find-word :alphabetical))
    
    (setq t-end (get-internal-run-time)
          t-total (- t-end t-start)
          total-in-seconds (/ t-total
                              internal-time-units-per-second)
          tps (/ 2000
                 total-in-seconds))
    (format t "~&speed: ~4,1F  tokens/second" (float tps))))

