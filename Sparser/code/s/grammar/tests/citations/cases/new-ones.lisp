;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "new ones"
;;;   Module:  "grammar;tests:citations:cases:"
;;;  version:  April 1994

;; initiated 11/4/93 v2.3. 
;; Gleaned into [systematically organized]: 4/24/94

#|  Citations taken from the menu are appended to this file, and
    are periodically moved to the [systematically organized] file. |#

(in-package :sparser)


(define-citation "the U.K. Ministry of Defense"
  (1 COMPANY 9))

(define-citation "BDM Technologies Inc. of McLean, Va."
  (1 COMPANY 5)
  (5 OF-LOCATION 10))

(define-citation "International Resources Group of Washington, D.C."
  (1 NAME 4)
  (4 OF-NAME 11))

(define-citation "Aydin Corp. and Comsat Laboratories"
  (1 COMPANY 4)
  (4 "and" 5)
  (5 COMPANY 7))
#|  loops are confused
(define-citation "Paul J. Shinderman of Research Inc. Shinderman retired"
  (1 PERSON 5)
  (5 OF-COMPANY 9)
  (9 JOB-EVENT 11))  |#

(define-citation "International Resources Group of Washington, D.C."
  (1 COMPANY 4)
  (4 OF-LOCATION 11))

(define-citation "Martin Marietta Services Group aaa 
Martin and Westinghouse also"
  (1 COMPANY 5)
  (5 "aaa" 6)
  (6 COMPANY 9)
  (9 FREQUENCY-OF-EVENT 10))

(define-citation "the U.K. Ministry of Defense"
  (1 "the" 2)
  (2 COMPANY 9))

