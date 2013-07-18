;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2011-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:titles:"
;;;  version:  2.0 July 2013

;; initiated 6/10/93 v2.3.  Moved out the print macro 1/6/94 to help the
;; compiler.  1/18 added title-heads and title-modifiers
;; 1.0 (3/17) Redesigned the object so that heads and modifiers and such
;;   could be done seriously.
;;   (12/7/95) actually doing it -- making the 3/17 stub work.
;; 1.1 (1/31/99) pulled the old-style indexing statement from title so that
;;    they could be assembled using lattice-points. 
;;    (3/17/05) Added np-common-noun/one-of-several schema to titlex2
;; 1.2 (2/21/11) Added abbreviated-title for things like CEO. 
;; 2.0 (3/18/13) Redid everything.
;;     (7/17/13) added age+title, which is odd

(in-package :sparser)

;;;---------------------------
;;; two word-level categories
;;;---------------------------

(define-category  title
  :specializes modifier
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))

(define-category  title-modifier
  :instantiates self
  :specializes nil
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:adjective name))

(define-category title-status
  :instantiates self
  :specializes nil ;; ?? All status terms have uniform impact?
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:adjective name))
#|
 This handled "former", which predominately appears in this
function. The other reading I can think of it "the former .. the later".
Need to see how it distributes and what its actual frequency is.

Meaning:  If someone is a "former" <position>? then at some time
in the past they actually held the position.  We can ask 
"when were they the <p>".

|#

;;;------------------------
;;; one composite category
;;;------------------------

(define-category modified-title
  :specializes title
  :instantiates title
  :rule-label title
  :binds ((base-title . title)
          (modifier . (:or title title-modifier))
          (locale . country))
  ;; What else can anchor a title to a place?
  ;; If we make it location will a rule over referents
  ;; do the trick?
  :index (:permanent :sequential-keys base-title modifier)
  :realization ((:tree-family premodifier-creates-type
                 :mapping ((type . :self)
                           (head-var . base-title)
                           (modifier-var . modifier)
                           (np . title)
                           (np-head . (title title-modifier))
                           (modifier . (title title-modifier))))
                (:tree-family premodifier-adds-property
                 :mapping ((property . locale)
                           (modifier . country)
                           (np-head . (title title-modifier))))))


;; title-qualifiers in dossiers/title-qualifiers are more versatile
;; words than just their relationship to titles: 
;;  "acting" "current" "former" "(the) late", "retired"
;  Dropping them on the floor for the moment -- see operation2

;; Except for "former", which KWIC on the COCA shows always with
;; a title except for vs. "the later". Arbitrarily call it a
;; title-status to let others stay dropped on the flore. 
;; They might work well with  modifier-adds-head-dependent-property

(define-category qualified-title
  :specializes title
  :instantiates title
  :rule-label title
  :binds ((title . (:or title modified-title))
          (qualifier . title-status))
  :index (:permanent :sequential-keys title qualifier)
  :realization (:tree-family premodifier-creates-type
                :mapping ((type . :self)
                          (head-var . title)
                          (modifier-var . qualifier)
                          (np . :self)
                          (modifier . title-status)
                          (np-head . (title modified-title)))))


;;;---------------------------
;;; Titles with abbreviations
;;;---------------------------

(define-category abbreviated-title
  :instantiates title
  :specializes title
  :rule-label title
  :binds ((abbreviation)
          (full-form . title))
  :index (:permanent :key abbreviation)
  :realization (:common-noun abbreviation))

(defun define-abbreviated-title (abbreviation/s &key full)
  (declare (ignore full))
  ;; The full form will want to be parsed, which is too much for today
  (unless (stringp abbreviation/s)
    (break "Stub: extend define-abbreviated-title to take a list"))
  (let ((word (define-word/expr abbreviation/s)))
    (define-individual 'abbreviated-title :abbreviation word)))



;;; oddities

(define-category age+title
  :specializes title
  :binds ((title . (:or title modified-title qualified-title)) ;; use CLOS ?
          (age . age))
  :index (:permanent :sequential-keys title age))




#|
(define-category  title ;; overwrites the placeholder at the top of this file
  :instantiates self
  :specializes nil
  :binds ((base-title)  ;; (:or title title-base-word single-word-title)
          (modifier . title-modifier)
          (responsibility))
  :realization ((:tree-family  modifier-specializes-adjective
                 :mapping ((adjp . title)
                           (modifier . title-modifier)
                           (adjective . (title-base-word title))
                           (specialized-type . title)
                           (base . base-title)
                           (specializer . modifier)))
                (:tree-family  np-common-noun/one-of-several
                 ;; for "a <title>" -- subtypes the object as 'indefinite'
                 :mapping ((np . :self)
                           (np-head . :self)))))


|#

