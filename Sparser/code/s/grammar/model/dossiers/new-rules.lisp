;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995-2005  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "new rules"
;;;   module:  "dossiers;"
;;;  Version:  accumulating from April 12th, 1995

#|  This file is appended to by the Define-rule facility if no specific
    dossier file is indicated.   It is intended as a repository that
    will periodically be emptied out as the rules are moved to more
    systematically organized files.  |#

;; 4/8/05 Accommodated change to pp-after-np schema
;; 7/5/07 Gated the title realization.

(in-package :sparser)


#|  5/29 -- this is incomplete, and the items missing from the
            mapping force it to make screwie rules  
(define-realization position-at-co
         classifier-head/of/prep
         ((np . TITLE)
          (modifier . COMPANY)
          (np-head . TITLE)
          (result-type . POSITION-AT-CO)
          (classifier . (COMPANY SUBSIDIARY-TYPE))
          (base . (TITLE QUALIFIED-TITLE))))        |#



;; 6/14/95
;; company-activity-word ->  kind-of-subsidiary company-activity-word

(define-realization company
         premodifier-creates-subtype
         ((np-head . company-activity-word)
          (noun . kind-of-subsidiary)
          (np-head . company-activity-word)
          (subtype . (location company))))


;; 6/14/95
;; for-company-activity ->  "for" company-activity-word

(define-realization for-company-activity
         transparent-pp
         ((complement . company-activity-word)
          (preposition . "for")
          (pp . for-company-activity)))



;; 12/18/95
;; at-company ->  "at" subsidiary-company

(define-realization at-company
         transparent-pp
         ((complement . subsidiary-company)
          (preposition . "at")
          (pp . at-company)))


;; 12/18/95
;; for-company-activity ->  "for" company-activity-word

(define-realization for-company-activity
         transparent-pp
         ((complement . company-activity-word)
          (preposition . "for")
          (pp . for-company-activity)))


;; 12/26/95
;; in-financial-data ->  "in" financial-data

(define-realization in-financial-data
         transparent-pp
         ((complement . financial-data)
          (preposition . "in")
          (pp . in-financial-data)))


;; 1/17/96
;; comma-capitalized-word ->  COMMA capitalized-word
;; company ->  company comma-capitalized-word

(define-realization company
         appositive
         ((appositive . capitalized-word)
          (np . company)
          (appositive-field . (location company))))


;; 3/13/96
;; title ->  title for-company-activity

(when *titles*
(define-realization title
         pp-after-np
         ((pp . for-company-activity)
          (prep . "for")
          (prep-head . company-activity)
          (np . title)
          (pp-head-field . (responsibility title))))
)


#|  The indexing info gets an error in DECODE-FOR-FIND-&-INDEX
    presumably because the terms aren't produced as keywords
;; 3/29/1996
(define-category  Company-Descriptor
  :instantiates Company-Descriptor
  :specializes  Kind-Of-Company/Phrase
  :index (PERMANENT SEQUENTIAL-KEYS BASE MODIFIER)
  :realization
     (:tree-family MODIFIER-CREATES-SUBTYPE
      :mapping ((result-category . company-descriptor)
                (n-bar . kind-of-company)
                (subtyping-modifier . company-activity-word)
                (np-head . kind-of-company))))

;; 3/29/1996
(define-category  company-descriptor
  :instantiates company-descriptor
  :specializes  kind-of-company/phrase
  :index (permanent sequential-keys base modifier)
  :realization
     (:tree-family modifier-creates-individual
      :mapping ((head . kind-of-company)
                (modifier . activity)
                (result-category . company-descriptor)
                (n-bar . kind-of-company)
                (subtyping-modifier . "publishing")
                (np-head . "group"))))  |#


;; 6/19/96
;; comma-company-descriptor ->  comma company-descriptor
;; company ->  company comma-company-descriptor

(define-realization company
         appositive
         ((np . company)
          (appositive . company-descriptor)
          (comma-/appositive . comma-company-descriptor)
          (appositive-field . (description be))))


;; 6/27/96
;; comma-company-descriptor ->  comma company-descriptor
;; company ->  company comma-company-descriptor


;; 6/27/96
;; comma-company-descriptor ->  comma company-descriptor
;; company ->  company comma-company-descriptor

(define-realization company
         appositive
         ((appositive . company-descriptor)
          (np . company)
          (appositive-field . (description be))))
