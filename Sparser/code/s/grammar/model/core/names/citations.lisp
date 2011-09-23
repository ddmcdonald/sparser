;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "citations"
;;;   Module:  "model;core:names:"
;;;  version:  May 1995

;; initiated 5/15/95. Extended ..5/22

(in-package :sparser)


;(p "the U.K. Ministry of Defense")
(define-citation "the U.K. Ministry of Defense"
  (1 COMPANY 9))


;(p "BDM Technologies Inc. of McLean, Va.")
(define-citation "BDM Technologies Inc. of McLean, Va."
  (1 COMPANY 5)
  (5 OF-LOCATION 10))


;(p "International Resources Group of Washington, D.C.")
(define-citation "International Resources Group of Washington, D.C."
  (1 COMPANY 4)
  (4 OF-LOCATION 11))


;(p "Aydin Corp. and Comsat Laboratories")
(define-citation "Aydin Corp. and Comsat Laboratories"
  (1 COMPANY 4)
  (4 "and" 5)
  (5 COMPANY 7))


;(p "Paul J. Shinderman of Research Inc. Shinderman retired")
(define-citation "Paul J. Shinderman of Research Inc. Shinderman retired"
  (1 PERSON 5)
  (5 OF-COMPANY 9)
  (9 JOB-EVENT 11))


;(p "Martin Marietta Services Group of Cherry Hill, N.J., will")
  ;; This city is done on the fly but the fact that the company
  ;; ends in a kind of company liscenses the 'of' to swallow the
  ;; rest of the cap.seq. up to the comma.
 


#| (p "Martin Marietta Services Group aaa 
Martin and Westinghouse also")

   This 'and' goes through Make-collection-of-uncategorized-names
   and gets reinterpreted as companies later.
|#
(define-citation "Martin Marietta Services Group aaa 
Martin and Westinghouse also"
  (1 COMPANY 5)
  (5 "aaa" 6)
  (6 COMPANY 9)
  (9 FREQUENCY-OF-EVENT 10))


#| (p "John Reichmuth, Roxanne Reeves, Steve Kerns, Wilson Haddow and Angela 
Hey have joined Input's Commercial Programs Research Team.")  |#

;(p "the U.S. National Heart, Lung and Blood Institute")

