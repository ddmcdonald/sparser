;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1994,1995,1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "autodef tableau"
;;;   module:  "model;core:"
;;;  Version:  0.4 January 1996

;; initiated 1/17/94 v2.3. Renamed one of the categories 3/15.
;; 3/24 added in the object salience order for the use of the contents view
;; in the workbench
;; 0.1 (4/23) switched to using Category-named in the references to categories in
;;      *object-salience-order*.
;;     (5/27) added adjuncts -- 1st case of three levels
;; 0.2 (7/22) commented out title cases that don't yet make sense
;;     (9/28) added co activity words.  (10/24) added comparatives and units of measure
;; 0.3 (11/17) subdivided approximators
;;     (3/4) added job events.  (4/12) added adverbs and adjectives.  (7/26) added
;;     kind-of-company/phrase. (9/20) added html  
;; 0.4 (12/8) put in the full set of titles.  
;;     (12/22...1/2/96) put in ERN categories. (1/5) added inc-term

(in-package :sparser)


;;;---------------------------------------------------
;;; data schema for defining words from the workbench
;;;---------------------------------------------------

(define-autodef-tableau
  (job-event
     get-position
     leave-position )
  (company-financials
     financial-data
     fin-dat-qualifier
     (change-in-amount-verb
        change-in-amount-verb/up
        change-in-amount-verb/down)
     announce-a-financial-datum-verb
     financial-datum-value-verb
     hack-comparative-marker
     )
  (html-markup-element
     (html-tag
        paired-html-tag
        empty-html-tag )
     html-attribute )
  (content-word
     verb
     adverb
     adjective )
  (modifier
     frequency-of-event
     (sequencer
        sequencer/determiner
        sequencer/preposition )
     (approximator
        approximator/determiner
        approximator/adverbial )
     comparative )
  (title
     single-word-title
     title-base-word
     title-modifier
     title-qualifier )
  (company
     kind-of-company
     kind-of-company/phrase
     kind-of-subsidiary
     company-generalization-word
     company-activity-word
     generic-co-word
     co-activity-nominal/er
     inc-term)
  (location
     location-description
     kind-of-location
     city
     country
     region )
  unit-of-measure
  )


;;;-----------------------------------------------------------
;;; data schema for sorting object types in the contents view
;;;-----------------------------------------------------------

(defparameter *object-salience-order*
  `((,(category-named 'company) . 10)
    (,(category-named 'person) . 11)

    (,(category-named 'job-event) . 20)

    (,(category-named 'financial-report) . 30)
    (,(category-named 'financial-data) . 31)
    (,(category-named 'financial-data-with-value) . 32)
    (,(category-named 'time-anchored-financial-datum) . 33)
    (,(category-named 'company-anchored-financial-datum) . 34)
    (,(category-named 'change-in-value-of-fin-dat) . 35)

    (,(category-named 'title) . 140)
    (,(category-named 'qualified-title) . 141)
    (,(category-named 'title-qualifier) . 142)
    ))

#|    (,(category-named 'name) . 7)
    (,(category-named 'initial) . 8)
    (,(category-named 'person-prefix) . 9)
    (,(category-named 'generic-co-word) . 10)
    (,(category-named 'inc-term) . 11)
    (,(category-named 'single-capitalized-letter) . 12)
    (,(category-named 'collection) . 13)
    (,(category-named 'be) . 14)
    ))
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . )
    (,category:: . ) |#

