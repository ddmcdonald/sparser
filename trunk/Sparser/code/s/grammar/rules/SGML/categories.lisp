;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994,1995,1996 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "categories"
;;;   Module:  "grammar;rules:SGML:"
;;;  Version:  September 1995

;; initiated 10/19/91, tweeked 10/21,10/30. fixed typo 10/31.
;; Added section-marker 5/22/92.  Added html category set 9/20/95
;; Fixed a typo 1/8/96.

(in-package :sparser)


(define-category section-marker)
  ;; needed for the mechanics of defining sgml tags


;;;-----------------------------------------
;;; These are what go over the whole phrase
;;;-----------------------------------------

(def-category SGML-tag/start :lattice-position :non-terminal)
(def-category SGML-tag/end   :lattice-position :non-terminal)

;;;----------------------------------------------------
;;; These labels are for spanning the tag words,
;;; not the whole tag phrase within its angle brackets 
;;;----------------------------------------------------

(def-category SGML-label :lattice-position :non-terminal)



;;;------
;;; HTML
;;;------

;;--- the top of the lattice -- not instantiated, just specialized

(define-category  html-markup-element
  :instantiates nil
  :specializes nil )


(define-category  html-attribute
  :instantiates nil
  :specializes html-markup-element
  :binds ((attribute-value)
          (tag html-tag))
  :index (:temporary :key tag))



(define-category  html-tag   ;; also just specialized, and an anchor
  :instantiates nil         ;; for the discourse history
  :specializes html-markup-element )


(define-category  paired-html-tag
  :instantiates html-tag
  :specializes html-tag
  :binds ((attributes . html-attribute)
          (contents)
          (start-index . (:primitive number))
          (end-index . (:primitive number))
          (interior-start . (:primitive number))
          (interior-end . (:primitive number))
          (start-action)
          (end-action)))


(define-category  empty-html-tag
  :instantiates html-tag
  :specializes html-tag
  :binds ((attributes . html-attribute)
          (start-index . (:primitive number))
          (end-index . (:primitive number))
          (interior-start . (:primitive number))
          (action)))

