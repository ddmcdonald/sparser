;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2011-2013,2016,2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:titles:"
;;;  version:  September 2019

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
;;     (7/17/13) added age+title, though it's odd. (9/18/13) Added 
;;     kind-of-company as a title modifier: "university (professor)"
;;     but doesn't work if the title head word has been swallowed by
;;     a person, but that's not the rule's fault.  

(in-package :sparser)

#| Words we think of a titles, particularly those in the
title-heads dossier, have a double life as refering to 
people who have that title. The plurals always are best thought
of a role-based-person's, as are nps with these words as their
head ('the journalists'). A bare, singlular title is most like
best considered as a title rather than a kind of person. |#

;;;-----------------------
;;; word-level categories
;;;-----------------------

(define-category  title
  :specializes role-based-person ;; modifier
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :lemma (:common-noun "title")
  :realization (:common-noun name)
  :documentation "Simple words ('actuary', 'advisor' ...)
    in the title-heads dossier. Also the polywords in
    the dossier titles. The polywords are an intrinsically
    limited approach, but they get around limitations
    in getting the frequent compound forms by rule")

;; This is a general issue for which I don't have a comfortable
;; sense of how to conceptualize it. There are references to the
;; notion of a title, or characterizing something as being a title
;; and that phenomenon is ubiquitous. 
;;    "Haj Aqa [honorific title, like Sir]"
;;                 -- this doesn't work
(define-category generic-title
  :specializes title
  :rule-label title
  :realization (:common-noun "title"))


(define-category  title-modifier
  :instantiates self
  :specializes modifier
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:adjective name)
  :documentation "'adjunct', 'assistant' -- dossier is
    title-modifiers. Take their specific meaning from
    the titles at their heads")

(define-category title-status
  :instantiates self
  :specializes modifier ;; inadequate for modeling
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:adjective name)
  :documentation "'former', 'ex' in title-qualifiers")
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
          (locale . country)
          (area-of-responsibility) ;; unclear if there's a common root here
          (time))
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
                           (modifier . (title title-modifier kind-of-company))))
                (:tree-family premodifier-adds-property
                 :mapping ((property . locale)
                           (modifier . country)
                           (np-head . (title title-modifier))))))

(defun convert-to-modified-title (title var-name)
  ;; called from sort-out-passessive+title when it wants to add
  ;; a binding to the title and determines that it has only a
  ;; simple title in it's hands and so no place to put it unless
  ;; we coerce the title into category that has the needed
  ;; variable. 
  ;;//// Might want to bury this within the the call to bind-variable
  ;; And then make it a method specific to the category
  (unless (itypep title 'title)
    (error "Argument is not a title individual.~% ~a  ~a"
           (type-of title) title))
  (let ((subcategory (subtype-with-variable var-name category::title)))
    (unless subcategory
      (push-debug `(,title ,var-name))
      (error "subtype-with-variable could not find a subcategory ~
              of ~a that bound the variable ~a"
             category::title var-name))
    (coerce-individual title subcategory)
    title))


(defun coerce-individual (i new-category)
  "Change the type of this individual to be this new category,
   which is a subcategory of its present type."
  ;;//// Probably have to hack this individual's shaddow too
  (setf (indiv-type i) (cons new-category (cdr (indiv-type i))))
  i)


(defun subtype-with-variable (var-name category)
  "Does any of the sub-categories of this category bind a variable
   with this name?  Note that presently look only one level deep
   and don't recurse on the subcategories."
  (when (symbolp category)
    (setq category (category-named category)))
  (let* ((top-lp (cat-lattice-position category))
         (subtypes-alist (lp-subtypes top-lp)))
    ;; breadth first, see if we can find it in one level
    (dolist (pair subtypes-alist)
      (let* ((c (car pair))
             (variables (cat-slots c)))
        (dolist (v variables)
          (when (eq (var-name v) var-name)
            (return-from subtype-with-variable c)))))))


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
          (qualifier . (:or title-status calculated-time)))
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

#| Stray ph




|#
