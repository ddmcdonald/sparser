;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "patches"
;;;   Module:  "model;sl:JV:"
;;;  version:  September 1991

;; initiated 7/23, estended 9/17, 10/2

(in-package :sparser)


;;------- geography

(def-cfr country ( "the" country )   ;; "the [United States]"
  :referent (:daughter right-edge))


(define-country "North America" :adjective "North American")
(define-country "South America" :adjective "South American")



;;------- adverbs

(def-category not-yet :lattice-position :non-terminal)

(def-cfr adverb ( "not" "yet" )         ;; Yoshinoya
  :form adverb
  :referent not-yet)


(def-cfr adverb ( mvb/plan "to" )       ;; Yoshinoya
  :form  interposed-raising-verb
  :referent (:daughter left-edge))



;;------- company stuff

(def-cfr by-company ( "by" company )    ;; Yoshinoya
  :form pp
  :referent (:daughter right-edge))


(def-cfr CoDescription ( "major" company-head/s ))
(def-cfr CoDescription ( "major" company-head ))


(def-csr comma-name comma-company :left-context ThisCo
  :referent (:find-or-make-object
             find-or-make/company right-edge))

(def-cfr company  ( ThisCO comma-company )
  :referent (:daughter right-edge))



(def-cfr DefCo  ( company-possessive company-head )
  :referent (:daughter right-edge))
  ;; have to workout how to promulgate the information that
  ;; this gives us about the interrelationships of the
  ;; companies -- this denotation is just a stopgap that
  ;; has the right dominance relation.


(define-category parent-company)

(def-cfr company-head  ( "parent" "company" )
  :referent parent-company )

(def-cfr company  ( DefCo comma-company )
  :referent (:daughter right-edge ))

