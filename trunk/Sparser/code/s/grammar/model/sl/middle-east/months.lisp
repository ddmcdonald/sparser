;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "months"
;;;    Module:   "sl;middle-east"
;;;   version:   September 2013

;; broken out from named-entities 9/3/13

(in-package :sparser)

;; Some Iranian months from javan-online -- ordering is bogus because for that
;; we'd actually have to look them up.
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
