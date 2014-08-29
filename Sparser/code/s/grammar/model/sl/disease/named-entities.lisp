;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "named-entities"
;;;    Module:   "sl;disease:"
;;;   version:   August 2014

;; initiated 5/6/13
;; updated 28/8/14--added WHO, Doctors Without Borders


(in-package :sparser)

(define-with-all-instances-permanent

    ;; "company" isn't right for most of these, but it will do 
    ;; agreed, should perhaps have "organization" category?
    (define-company '("United" "Nations") :aliases '("U.N.") :takes-the t)
    (define-company '("World" "Health" "Organization") :aliases '("W.H.O."))
    ;;medical group operating throughout the world: Doctors Without Borders
    ;;also French name is used in English news articles as well
    ;;since it is actually a French based organization
    ;;Médecins Sans Frontières--won't work yet because of special characters?
    (define-company '("Doctors" "Without" "Borders"))

) ;; closes with all permanent