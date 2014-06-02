;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "months"
;;;   Module:  "model;dossiers:"
;;;  Version:  May 2014

;; broken out as its own file 10/20/94 v2.3.
;; 5/27/14 Added number of days. 

(in-package :sparser)


(define-month "January"   1 31 "Jan")
(define-month "February"  2 28 "Feb") ;; hackup leap year
(define-month "March"     3 31 "Mar")
(define-month "April"     4 30 "Apr")
(define-month "May"       5 31)
(define-month "June"      6 30 "Jun")
(define-month "July"      7 31 "Jul")
(define-month "August"    8 31 "Aug")
(define-month "September" 9 30 "Sept")
(define-month "October"  10 31 "Oct")
(define-month "November" 11 30 "Nov")
(define-month "December" 12 31 "Dec")


