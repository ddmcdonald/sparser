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

) ;; closes with all permanent

;;some Iranian months from javan-online
;;"the months that start on the 21st November and end on 20th January"
(define-month "azar" 1)
(define-month "dey" 2)
