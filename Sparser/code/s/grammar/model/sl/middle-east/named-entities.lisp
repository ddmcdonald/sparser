;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "sl;middle-east"
;;;   version:   August 2013

;; initiated 5/23/13. Extended through 8/1/13

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

    (define-company "Atomic Energy Organization") ;; abbrevation ???
    ;; Full phrase in the iranian-commander article is
    ;; "Iran's Atomic Energy Organization" but don't see IAEO anywhere

) ;; closes with all permanent


;;---- Patch up
#|  All the words in the companies that aren't already in the known vocabulary
will not be pulled from Comlex when they're encountered in the text, e.g. in
"nuclear scientist", so they won't have any bracket information. 

|#

;;---- Months

;;some Iranian months from javan-online -- ordering is bogus because for that
;;  we'd have to look them up.
;;"the months that start on the 21st November and end on 20th January"
(define-month "Azar" 1)
(define-month "Dey" 2)
(define-month "Mordad" 3)

;;numbers precede months in european style
;;also used in javan-online.txt, an iranian news article
;;this is the rule we want, but there is an ordering issue
;;when parsing "21 Dey of the year 90"
;;the parser first merges "Dey" and "of the year 90" as a date
;;then the rule for amount -> number time kicks in
#|(def-cfr date (number month)
  :form np
  :referent (:instantiate-individual date
             :with (month right-edge day left-edge)))|#

;;instead we'll use this rule for now until that issue is fixed
(def-cfr date (number date)
  :form np
  :referent (:head right-edge
             :bind (day . left-edge)))
