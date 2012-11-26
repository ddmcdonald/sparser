;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "U.S. States"
;;;   Module:  "model;dossiers:"
;;;  version:  March 1994

;; initiated 3/10/94 v2.3

(in-package :sparser)

#|  When the short form has one final period it goes under the
    keyword ":abbreviations".  If it has two periods ("N.Y.") then
    it won't work right as an abbreviation because PNF will see the
    first period and treat it as an initial.  Instead we want it
    defined as a polyword, thereby preempting the interpretation
    as an initial, so we put it user ":aliases".  |#

(define-us-state "Alabama"
                 :abbreviations '("Ala" "AL"))

(define-us-state "Alaska"
                 :abbreviations '("AK"))

(define-us-state "Arizona"
                 :abbreviations '("Ariz" "AZ"))

(define-us-state "Arkanses"
                 :abbreviations '("Ark" "AR"))

(define-us-state "California"
                 :abbreviations '("Calif" "CA"))

(define-us-state "Colorado"
                 :abbreviations '("Colo" "CO"))

(define-us-state "Connecticut"
                 :abbreviations '("Conn" "CT"))

(define-us-state "Deleware"
                 :abbreviations '("Del" "DE"))

(define-us-state "Florida"
                 :abbreviations '("Fla" "FL"))

(define-us-state "Georgia"
                 :abbreviations '("GA"))

(define-us-state "Hawaii" :abbreviations '("HI"))

(define-us-state "Idaho"
                 :abbreviations '("Ida" "ID"))

(define-us-state "Illinois"
                 :abbreviations '("Ill" "IL"))

(define-us-state "Indiana"
                 :abbreviations '("Ind" "IN"))

(define-us-state "Iowa"
                 :abbreviations '("IA"))

(define-us-state "Kansas"
                 :abbreviations '("Kans" "Kan" "KS"))

(define-us-state "Kenntucky"
                 :abbreviations '("Ky" "Ken" "KY"))

(define-us-state "Louisiana"
                 :abbreviations '("LA"))

(define-us-state "Maine"
                 :abbreviations '("ME"))

(define-us-state "Maryland"
                 :abbreviations '("MD"))

(define-us-state "Massachusetts"
                 :abbreviations '("Mass" "MA"))

(define-us-state "Michigan"
                 :abbreviations '("Mich" "MI"))

(define-us-state "Minnesota"
                 :abbreviations '("Minn" "MN"))

(define-us-state "Mississippi"
                 :abbreviations '("Miss" "MS"))

(define-us-state "Missouri"
                 :abbreviations '("MO"))

(define-us-state "Montana"
                 :abbreviations '("Mont" "MT"))

(define-us-state "Nebraska"
                 :abbreviations '("Nebr" "Neb" "NE"))

(define-us-state "Nevada"
                 :abbreviations '("Nev" "NV"))

(define-us-state "New Hampshire"
                 :aliases '("NH"))

(define-us-state "New Jersey"
                 :aliases '("NJ"))

(define-us-state "New Mexico"
                 :aliases '("N.Mex." "NM"))

(define-us-state "New York"
                 :aliases '("NY"))

(define-us-state "North Carolina"
                 :aliases '("NC"))

(define-us-state "North Dakota"
                 :aliases '("N.Dak." "ND"))

(define-us-state "Ohio" :abbreviations '("OH"))

(define-us-state "Oklahoma"
                 :abbreviations '("Okla" "OK"))

(define-us-state "Oregon"
                 :abbreviations '("Ore" "Oreg" "OR"))

(define-us-state "Pennsylvania"
                 :abbreviations '("Penn" "PA"))

(define-us-state "Rhode Island"
                 :aliases '("R.I."))

(define-us-state "South Carolina"
                 :aliases '("S.C."))

(define-us-state "South Dakota"
                 :aliases '("S.D." "S.Dak."))

(define-us-state "Tennessee"
                 :abbreviations '("Tenn"))

(define-us-state "Texas"
                 :abbreviations '("Tex"))

(define-us-state "Utah")

(define-us-state "Vermont"
                 :abbreviations '("VT"))

(define-us-state "Virginia"
                 :abbreviations '("VA"))

(define-us-state "Washington"
                 :abbreviations '("Wash" "WA"))

(define-us-state "Washington D.C."
                 :aliases '("District of Columbia" "D.C."))

(define-us-state "West Virginia"
                 :aliases '("W.Va" "WV"))

(define-us-state "Wisconsin"
                 :abbreviations '("Wis" "WI"))

(define-us-state "Wyoming"
                 :abbreviations '("Wyo" "WY"))


