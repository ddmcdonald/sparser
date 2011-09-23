;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "rules"
;;;   Module:  "grammar;rules:SGML:"
;;;  Version:  September 1995

;; initiated 10/19/91, tweeked 10/21,10/30. fixed typo 10/31.
;; Added html 9/20/95

(in-package :sparser)

;;;------
;;; sgml
;;;------

(define-interior-of-paired-punctuation :angle-brackets
  :lhs SGML-tag/start
  :rhs ( SGML-label )
  :form  section-marker
  :referent :the-single-edge )


(def-cfr SGML-label/end  ( forward-slash  SGML-label )
  :form section-marker )

(define-interior-of-paired-punctuation :angle-brackets
  :lhs SGML-tag/end
  :rhs ( SGML-label/end )
  :form  section-marker
  :referent :right-daughter )


;;;------
;;; html
;;;------

(def-cfr html-tag/end  ( forward-slash  html-tag )
  :form section-marker
  :referent (:daughter right-edge))


(define-interior-action  (category-named 'html-tag)
                         :angle-brackets
                         'do-html-tag )

(define-interior-action  (category-named 'html-tag/end)
                         :angle-brackets
                         'do-html-tag/end )

