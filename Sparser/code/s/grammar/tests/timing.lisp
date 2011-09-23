;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "timing"
;;;   Module:  "grammar;tests:"
;;;  version:  January 1995

;; initiated 1/6/95. added *200-aaa* 1/24.
;; 0.1 (12/12) Commented out everything on the chance that it's what's caused
;;      a 'bogus object' Lisp death.

(in-package :sparser)

;;;-----------------------------------------------
;;;  strings with minimal amounts of processing
;;;  to be run on run-string-for-timing(<string>)
;;;-----------------------------------------------


#|  A relatively recently constructed fast of this file (delta 2 weeks)
 killed off the whole Lisp/Mac while ostensibly executing the def-cfr
 'a test' form  and trying to manipulate a 'bogus object'. I suspect the
 monster strings as getting distorted somehow, so I'm keeping them
 commented out -- they can be vivified online when one is actually doing
 a session of timing trials.


;; an unknown word

(defparameter *2k-aaa*            ;; 8,200 characters long
  (let ( accumulating-string )
    (dotimes (i 200)
      (setq accumulating-string
            (concatenate 'string
                         " aaa aaa aaa aaa aaa
aaa aaa aaa aaa aaa
"
                         accumulating-string)))
    accumulating-string))


(defparameter *200-aaa*
  (let ( accumulating-string )
    (dotimes (i 20)
      (setq accumulating-string
            (concatenate 'string
                         " aaa aaa aaa aaa aaa
aaa aaa aaa aaa aaa
"
                         accumulating-string)))
    accumulating-string))



(defparameter *2k-vice*
  (let ( accumulating-string )
    (dotimes (i 200)
      (setq accumulating-string
            (concatenate 'string
                         " vice vice vice vice vice
vice vice vice vice vice
"
                         accumulating-string)))
    accumulating-string))



(defparameter *1k-a-vice-president*     ;; 8,600 characters
  (let ( accumulating-string )
    (dotimes (i 100)
      (setq accumulating-string
            (concatenate 'string
                         " a vice president a vice president
a  vice president a vice president a vice president
"
                         accumulating-string)))
    accumulating-string))



(def-cfr test ("ta" "tb"))

(def-cfr test ("a" test))


(defparameter *500-a-test*     ;; 8,600 characters
  (let ( accumulating-string )
    (dotimes (i 50)
      (setq accumulating-string
            (concatenate 'string
                         " a ta tb a ta tb
a  ta tb a ta tb a ta tb
"
                         accumulating-string)))
    accumulating-string))
|#

