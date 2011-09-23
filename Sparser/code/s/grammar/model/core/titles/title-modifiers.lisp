;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "title modifiers"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  April 1991      system version 1.8.4

(in-package :CTI-source)

;;;---------------
;;; defining form
;;;---------------

(defun define-title-modifier (string)
  (let ((word    (resolve/make string))
        (uc-word (resolve/make (string-capitalize string))))

    (define-cfr category::title `(,word ,category::title)
      :referent '(:merge lookup/title
                         left-edge right-edge))

    (define-cfr category::title/plural `(,word ,category::title/plural)
      :referent '(:merge lookup/title
                         left-edge right-edge))

    (define-cfr category::title/caps `(,uc-word ,category::title/caps)
      :referent '(:merge lookup/title
                         left-edge right-edge))
    ))

;;;-------
;;; cases
;;;-------

(define-title-modifier "administrative")
(define-title-modifier "advertising")
(define-title-modifier "assistant")
(define-title-modifier "associate")
(define-title-modifier "center")
(define-title-modifier "chief")
(define-title-modifier "coordinating")
(define-title-modifier "corporate")
(define-title-modifier "creative")
(define-title-modifier "credit")
(define-title-modifier "department")
(define-title-modifier "deputy")
(define-title-modifier "district")
(define-title-modifier "division")
(define-title-modifier "divisional")
(define-title-modifier "executive")
(define-title-modifier "financial")
(define-title-modifier "finance")
(define-title-modifier "full")
(define-title-modifier "general")
(define-title-modifier "group")
(define-title-modifier "independent")
(define-title-modifier "interim")
(define-title-modifier "international")
(define-title-modifier "investment")
(define-title-modifier "joint")
(define-title-modifier "managing")
(define-title-modifier "marketing")
(define-title-modifier "nonexecutive")
(define-title-modifier "office")
(define-title-modifier "operations")
(define-title-modifier "outside")
(define-title-modifier "presiding")
(define-title-modifier "program")
(define-title-modifier "public")
(define-title-modifier "research")
(define-title-modifier "sector")
(define-title-modifier "senior")
(define-title-modifier "special")
(define-title-modifier "staff")
(define-title-modifier "vice")


;;--- oddities

(def-cfr Class-N  ("Class" single-capitalized-letter))
(def-cfr title (Class-N title)
  :referent (:daughter right-edge))


;;;---------------------------------
;;; categories taken over wholesale
;;;---------------------------------

;; 5/27 -- pulled these rules because they were the only ones
;; that extended company heads, and we now want a defCo to
;; parse up to its determiner while at the segment level
;; so that we can go on to look for its rightward adjuncts
;; without first going to the forest level and prematurely
;; rolling up something that it adjoined to itself.
;;
;(def-cfr title (company-head title)
;  :referent (:merge lookup/title left-edge right-edge))
;
;(def-cfr title (company-head/s title)
;  :referent (:merge lookup/title left-edge right-edge))
;
;(def-cfr title (company-head/er title)
;  :referent (:merge lookup/title left-edge right-edge))

(def-cfr title (country title)
  :referent (:daughter right-edge))

