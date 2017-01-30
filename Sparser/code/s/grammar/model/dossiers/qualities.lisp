;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "modifiers"
;;;    Module:   "model;dossiers:"
;;;   Version:   January 2017

;; Moved out of the definition files 1/11/17

(in-package :sparser)

;;--- color
(define-color "black") ;; all :+ by default
(define-color "white")
(define-color "red")
(define-color "yellow")
(define-color "blue")
(define-color "green")

;;--- size
(define-size "big" :dir :+)
(define-size "little" :dir :-)

(define-size "large" :dir :+)
(define-size "small" :dir :-)

;;--- height
(define-height "short" :dir :-)
(define-height "tall" :dir :+)

;;(define-height "high" :dir :+) ;; not quite the same thing
;;(define-height "low" :dir :-)
;;  separable task of coersing to a state

;;--- width
(define-width "narrow" :dir :-)
(define-width "wide" :dir :+)

;;--- length
(define-length "long" :dir :+)
(define-length "short" :dir :-)


#|
;; quality
(define-comparative "better") ;; good, well
(define-comparative "worse") ;; bad

------- "more"
 more broadly
a more definitive analysis of
 more lung tumors than 
is more sensitive to 
is more effective than 
may be somewhat more resistant to
 a more physiologically relevant cell type
(load-test 746
 "Because a combination of rapamycin and BAY43-9006
 is more effective at inhibiting melanoma cell proliferation
 than either drug alone, ...)
were more common in
was suppressed more effectively by

|#
