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
                 :abbreviations '("Ala"))

(define-us-state "Alaska")

(define-us-state "Arizona"
                 :abbreviations '("Ariz"))

(define-us-state "Arkanses"
                 :abbreviations '("Ark"))

(define-us-state "California"
                 :abbreviations '("Calif"))

(define-us-state "Colorado"
                 :abbreviations '("Colo"))

(define-us-state "Connecticut"
                 :abbreviations '("Conn"))

(define-us-state "Deleware"
                 :abbreviations '("Del"))

(define-us-state "Florida"
                 :abbreviations '("Fla"))

(define-us-state "Georgia"
                 :abbreviations '("Ga"))

(define-us-state "Hawaii")

(define-us-state "Idaho"
                 :abbreviations '("Ida"))

(define-us-state "Illinois"
                 :abbreviations '("Ill"))

(define-us-state "Indiana"
                 :abbreviations '("Ind"))

(define-us-state "Iowa"
                 :abbreviations '("Ia"))

(define-us-state "Kansas"
                 :abbreviations '("Kans" "Kan"))

(define-us-state "Kenntucky"
                 :abbreviations '("Ky" "Ken"))

(define-us-state "Louisiana"
                 :abbreviations '("La"))

(define-us-state "Maine"
                 :abbreviations '("Me"))

(define-us-state "Maryland"
                 :abbreviations '("Md"))

(define-us-state "Massachusetts"
                 :abbreviations '("Mass" "MA"))

(define-us-state "Michigan"
                 :abbreviations '("Mich"))

(define-us-state "Minnesota"
                 :abbreviations '("Minn"))

(define-us-state "Mississippi"
                 :abbreviations '("Miss"))

(define-us-state "Missouri"
                 :abbreviations '("Mo"))

(define-us-state "Montana"
                 :abbreviations '("Mont"))

(define-us-state "Nebraska"
                 :abbreviations '("Nebr" "Neb"))

(define-us-state "Nevada"
                 :abbreviations '("Nev"))

(define-us-state "New Hampshire"
                 :aliases '("N.H."))

(define-us-state "New Jersey"
                 :aliases '("N.J."))

(define-us-state "New Mexico"
                 :aliases '("N.Mex." "N.M."))

(define-us-state "New York"
                 :aliases '("N.Y."))

(define-us-state "North Carolina"
                 :aliases '("N.C."))

(define-us-state "North Dakota"
                 :aliases '("N.Dak." "N.D."))

(define-us-state "Ohio")

(define-us-state "Oklahoma"
                 :abbreviations '("Okla"))

(define-us-state "Oregon"
                 :abbreviations '("Ore" "Oreg"))

(define-us-state "Pennsylvania"
                 :abbreviations '("Penn" "Pa"))

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
                 :abbreviations '("Vt"))

(define-us-state "Virginia"
                 :abbreviations '("Va"))

(define-us-state "Washington"
                 :abbreviations '("Wash"))

(define-us-state "Washington D.C."
                 :aliases '("District of Columbia" "D.C."))

(define-us-state "West Virginia"
                 :aliases '("W.Va"))

(define-us-state "Wisconsin"
                 :abbreviations '("Wis"))

(define-us-state "Wyoming"
                 :abbreviations '("Wyo"))


