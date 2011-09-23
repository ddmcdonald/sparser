;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "kinds of companies"
;;;   Module:  "model;dossiers:"
;;;  version:  0.2 January 1995

;; initiated 5/23/93 v2.3, copying most words from companies;corp cases
;; but with drastically different conceptualization.
;; 0.1 (1/20/94) distributed many of the cases to other dossiers
;; 0.2 (1/16/95) broke out "group" and "program"

(in-package :sparser)


(define-kind-of-company  "agency")
(define-kind-of-company  "authority")
(define-kind-of-company  "bank")
(define-kind-of-company  "center")
(define-kind-of-company  "chain")
(define-kind-of-company  "college")
(define-kind-of-company  "commission")
(define-kind-of-company  "conglomerate")
(define-kind-of-company  "exchange")
(define-kind-of-company  "foundation")
(define-kind-of-company  "institute")
(define-kind-of-company  "league")
(define-kind-of-company  "magazine")
(define-kind-of-company  "newspaper")
(define-kind-of-company  "magazine")
(define-kind-of-company  "office")
(define-kind-of-company  "retailer")
(define-kind-of-company  "school")
(define-kind-of-company  "shop")
(define-kind-of-company  "store")
(define-kind-of-company  "university")


#|  these need to be vague
(define-kind-of-company  "group")
(define-kind-of-company  "program")  |#



#|
(define-company-indicator "AB"  :always-full-caps t)
(define-company-indicator "Advertising")
(define-company-indicator "Airline")
(define-company-indicator "Airlines")
(define-company-indicator "Airways")
(define-company-indicator "American")
(define-company-indicator "Americas")
(define-company-indicator "Associated")
(define-company-indicator "Bancorp")
(define-company-indicator "Banque")
(define-company-indicator "Beverages")
(define-company-indicator "Board")
(define-company-indicator "Broadcasting")
(define-company-indicator "Brothers"   :abbreviations '("Bros"))
(define-company-indicator "Classics")
(define-company-indicator "Club")
(define-company-indicator "Communications")
(define-company-indicator "Consolidated")
(define-company-indicator "County")
(define-company-indicator "Distribution")
(define-company-indicator "Electronics")
(define-company-indicator "Enterprises")
(define-company-indicator "Entertainment")
(define-company-indicator "Equity")
(define-company-indicator "Federal")
(define-company-indicator "Film")
(define-company-indicator "Films")
(define-company-indicator "Financial")
(define-company-indicator "Food")
(define-company-indicator "Foods")
(define-company-indicator "Foundation")
(define-company-indicator "Fund")
(define-company-indicator "Health")
(define-company-indicator "Herald")
(define-company-indicator "Industries")
(define-company-indicator "Industrial")
(define-company-indicator "Information")
(define-company-indicator "International")
(define-company-indicator "Institution")
(define-company-indicator "Insurance")
(define-company-indicator "Investments")
(define-company-indicator "Laboratories")
(define-company-indicator "Logic")
(define-company-indicator "Machine")
(define-company-indicator "Management")
(define-company-indicator "Medical")
(define-company-indicator "Motor")
(define-company-indicator "Motors")
(define-company-indicator "Museum")
(define-company-indicator "Mutual")
(define-company-indicator "Network")
(define-company-indicator "National")
(define-company-indicator "News")
(define-company-indicator "Observer")
(define-company-indicator "Partners")
(define-company-indicator "Products")
(define-company-indicator "Programming")
(define-company-indicator "Realty")
(define-company-indicator "Research")
(define-company-indicator "Sales")
(define-company-indicator "Services")
(define-company-indicator "Systems")
(define-company-indicator "Technology")
(define-company-indicator "Technologies")
(define-company-indicator "Telecommunications")
(define-company-indicator "Television")
(define-company-indicator "Tool")
(define-company-indicator "TV"  :always-full-caps t)
(define-company-indicator "United")
(define-company-indicator "Venture")
(define-company-indicator "World")
(define-company-indicator "Worldwide")

(define-company-indicator "Eastern")
(define-company-indicator "Western")
(define-company-indicator "Northern")
(define-company-indicator "Southern")
|#


;; 1/24
(define-kind-of-company "consortium")

;; 4/11
(define-kind-of-company "army")

;; 4/11
(define-kind-of-company "ministry")

;; 4/30
(define-kind-of-company "Council")

;; 5/4
(define-kind-of-company "Chamber")

;; 5/21
(define-kind-of-company "laboratories")

;; 5/22
(define-kind-of-company "group")

;; 5/22
(define-kind-of-company "Bureau")

;; 5/22
(define-kind-of-company "administration")

;; 5/29
(define-kind-of-company "Corps")

;; 5/29
(define-kind-of-company "service")

;; 11/9
(define-kind-of-company "journal")

