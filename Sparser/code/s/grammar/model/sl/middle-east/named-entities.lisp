;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "sl;middle-east"
;;;   version:   July 2013

;; initiated 5/23/13. Extended through 7/22/13

(in-package :sparser)

(define-with-all-instances-permanent

    (define-person "Binyamin Netanyahu") ;; :nicknames ("Bibi")
    ;; first name also spelled "Binyamin"  

    (define-company "Israeli Defense Forces" :aliases '("IDF") :takes-the t)

    (define-company "International Atomic Energy Agency" :aliases '("IAEA") :takes-the t)

    (define-company "American Foreign Relations Council" :takes-the t)

    (define-company "Nuclear Energy Organization" :takes-the t)
    ;; This one matters, since it's in construction with a title that
    ;; wants to make it a person:
    ;; "Fereydun Abbasi, the director the Nuclear Energy Organization"

) ;; closes with all permanent



;;some Iranian months from javan-online -- ordering is bogus because for that
;;  we'd have to look them up.
;;"the months that start on the 21st November and end on 20th January"
(define-month "Azar" 1)
(define-month "Dey" 2)
(define-month "Mordad" 3)

