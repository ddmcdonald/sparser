;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1996, 2016 D. McDonald  -- all rights reserved
;;; 
;;;     File:  "categories"
;;;   Module:  "grammar;rules:SGML:"
;;;  Version:  March 2016

;; initiated 10/19/91, tweeked 10/21,10/30. fixed typo 10/31.
;; Added section-marker 5/22/92.  Added html category set 9/20/95
;; Fixed a typo 1/8/96.

(in-package :sparser)


(define-category section-marker
  :specializes original-document-structure)
  ;; needed for the mechanics of defining sgml tags


;;;-----------------------------------------
;;; These are what go over the whole phrase
;;;-----------------------------------------

(define-category SGML-tag/start
  :specializes original-document-structure)
(define-category SGML-tag/end
  :specializes original-document-structure)


;;;----------------------------------------------------
;;; These labels are for spanning the tag words,
;;; not the whole tag phrase within its angle brackets 
;;;----------------------------------------------------

(define-category SGML-label
  :specializes original-document-structure)




;;;------
;;; HTML
;;;------

;;--- the top of the lattice -- not instantiated, just specialized

(define-category  html-markup-element
  :instantiates nil
  :specializes original-document-structure )


(define-category  html-attribute
  :instantiates nil
  :specializes html-markup-element
  :binds ((attribute-value)
          (tag html-tag))
  :index (:temporary :key tag))



(define-category  html-tag   ;; also just specialized, and an anchor
  :binds ((attributes . html-attribute)
          (start-index . (:primitive number))
          (end-index . (:primitive number))
          (interior-start . (:primitive number)))
  :instantiates nil         ;; for the discourse history
  :specializes html-markup-element )


(define-category  paired-html-tag
  :instantiates html-tag
  :specializes html-tag
  :binds ((contents)
          (interior-end . (:primitive number))
          (start-action)
          (end-action)))

(define-category  empty-html-tag
  :instantiates html-tag
  :specializes html-tag
  :binds ((action)))

