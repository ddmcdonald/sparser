;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994.1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ordinals"
;;;   Module:  "model;dossiers:"
;;;  version:  May 1995

;; broken out of [numbers;ordinals] 1/7/94. 5/13/95 added 'permanent' wrapper

(in-package :sparser)

(define-with-all-instances-permanent
  (define-ordinal "first"  1)
  (define-ordinal "second" 2  :roman-numeral "II")
  (define-ordinal "third"  3  :roman-numeral "III")
  (define-ordinal "fourth" 4)   ;;predictable from morph. decomp. ???
  (define-ordinal "fifth"  5)   ;; ditto
  (define-ordinal "sixth"  6)   ;; ditto
  (define-ordinal "seventh" 7)  ;; ditto
  (define-ordinal "eighth" 8)   ;; ditto
  (define-ordinal "ninth"  9)   ;; ditto if you drop the "e"
  (define-ordinal "tenth" 10)    ;; ditto
  (define-ordinal "eleventh" 11) ;; ditto
  (define-ordinal "twelfth" 12)
  (define-ordinal "thirteenth" 13)
  (define-ordinal "fourteenth" 14)
  (define-ordinal "fifteenth"  15)
  (define-ordinal "sixteenth"  16)
  (define-ordinal "seventeenth" 17)
  (define-ordinal "eighteenth" 18)
  (define-ordinal "nineteenth" 19)
  (define-ordinal "twentieth"  20)
  (define-ordinal "thirtieth"  30)
  (define-ordinal "fortieth"   40)
  (define-ordinal "fiftieth"   50)
  (define-ordinal "sixtieth"   60)
  (define-ordinal "seventieth" 70)
  (define-ordinal "eightieth"  80)
  (define-ordinal "nintieth"   90)
  (define-ordinal "hundredth" 100)
  (define-ordinal "thousandth" 1000)
  (define-ordinal "millionth" 1000000)
  (define-ordinal "billionth" 1000000000) )

