;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "rules"
;;;   Module:  "model;core:names:companies:subsid:"
;;;  version:  May 1991      (v1.8.5)

(in-package :CTI-source)

;;;----------------------------------------
;;; hack to fit into the parser's protocol
;;;----------------------------------------

#|  Since we look for determiners and rewrite the head as a phrase
before we look for any rightward extensions, we need some rule such
as this one to fake the parser into waiting an looking for extensions
rather than moving to the forest level in the middle of a subsidiary
phrase |#

;(def-cfr subsidiary-head (subsidiary-head subsidiary-head)
;  :referent (:daughter right-edge))
;
; Obviated 5/27 by the protocol change that stops forest-level
; parsing as soon as a rightmost edge is formed that can be
; extended.

;;;------------------------------
;;; N-bars that denote companies
;;;------------------------------

(def-cfr subsidiary-co  ( name subsidiary-head )
  :referent (:composite subsidiary/name+type-of-unit
                        left-edge right-edge))

(def-cfr subsidiary-co  ( company subsidiary-head )
  :referent (:composite subsidiary/company+type-of-unit
                        left-edge right-edge))


(def-cfr subsidiary-co ("a" subsidiary-co)
  :referent (:daughter right-edge))



;;;---------------------------
;;; determiners and modifiers
;;;---------------------------

(def-cfr subsidiary-phrase ("a" subsidiary-head)
  :referent (:daughter right-edge))

(def-cfr subsidiary-phrase ("an" subsidiary-head)
  :referent (:daughter right-edge))

(def-cfr subsidiary-phrase ("another" subsidiary-head)
  :referent (:daughter right-edge))

(def-cfr subsidiary-phrase ("other" subsidiary-head)
  :referent (:daughter right-edge))


(def-cfr subsidiary-phrase  (country subsidiary-head)
  :referent (:composite unit+company
                        right-edge left-edge))

(def-cfr subsidiary-phrase  (company-possessive subsidiary-head)
  :referent (:composite unit+company
                        right-edge left-edge))


(def-cfr subsidiary-phrase ("a" subsidiary-phrase)
  :referent (:daughter right-edge))

(def-cfr subsidiary-phrase ("an" subsidiary-phrase)
  :referent (:daughter right-edge))

(def-cfr subsidiary-phrase ("another" subsidiary-phrase)
  :referent (:daughter right-edge))

(def-cfr subsidiary-phrase ("other" subsidiary-phrase)
  :referent (:daughter right-edge))

(def-cfr subsidiary-phrase ( "the" subsidiary-phrase)
  :referent (:daughter right-edge))



;;;-----------------------
;;; companies as adjuncts
;;;-----------------------

(def-cfr subsidiary (subsidiary-phrase of-company)
  :referent (:daughter right-edge))



;;;------------
;;; ThisSubsid
;;;------------

(def-cfr ThisSubsid ( "the" subsidiary-head )
  :referent (:daughter right-edge))

(def-cfr ThisSubsid ("this" subsidiary-head)
  :form  NP
  :referent (:daughter right-edge))


(def-cfr ThisSubsid (ThisSubsid of-company)
  :form  NP
  :referent (:find-object
             find-or-make/subsidiary left-edge right-edge))

(def-cfr ThisSubsid (ThisSubsid of-ThisCo)
  :form  NP
  :referent (:find-object
             find-or-make/subsidiary left-edge right-edge))


;;;--------------------------------
;;; set up for larger compositions
;;;--------------------------------

(def-cfr of-subsidiary ("of" subsidiary-phrase)
  :referent (:daughter right-edge))

(def-cfr of-subsidiary ("of" subsidiary-co)
  :referent (:daughter right-edge))

(def-cfr of-subsidiary ("of" ThisSubsid)
  :referent (:daughter right-edge))


(def-cfr comma-subsidiary ("," subsidiary)
  :referent (:daughter right-edge))

(def-cfr comma-subsidiary-phrase ("," subsidiary-phrase)
  :referent (:daughter right-edge))

(def-cfr comma-subsidiary-co ("," subsidiary-co)
  :referent (:daughter right-edge))

(def-cfr comma-ThisSubsid ("," ThisSubsid)
  :referent (:daughter right-edge))



;;;-------------------------------------------------------
;;; incorporating into larger phrases to denote a company
;;;-------------------------------------------------------

#|  (find-or-make/subsidiary subsidiary company)  |#

(def-cfr company (company-possessive subsidiary-co)
  :referent (:find-object
             find-or-make/subsidiary right-edge left-edge))

(def-cfr company (subsidiary-co company)
  :referent (:find-object
             find-or-make/subsidiary left-edge right-edge))



(def-cfr company (company comma-subsidiary)
  :referent (:find-object
             find-or-make/subsidiary left-edge right-edge))

(def-cfr company (company comma-subsidiary-phrase)
  :referent (:find-object
             find-or-make/subsidiary left-edge right-edge))

(def-cfr company (company comma-subsidiary-co)
  :referent (:find-object
             find-or-make/subsidiary left-edge right-edge))

(def-cfr company (company comma-ThisSubsid)
  :referent (:find-object
             find-or-make/subsidiary left-edge right-edge))



;; n.b. these are usually "Group"'s -- formed as companies on
;;    the basis of the internal evidence, with no distinction
;;    as to the company-type involved.  Something comparable
;;    might happen with newspapers
;;
(def-cfr company (company at-company)
  :referent (:find-object
             find-or-make/subsidiary left-edge right-edge))

(def-cfr company (subsidiary-co of-company)
  :referent (:find-object
             find-or-make/subsidiary left-edge right-edge))



(def-cfr company (company-possessive company)
  :referent (:find-object
             find-or-make/subsidiary right-edge left-edge))



(def-cfr company (subsidiary-phrase comma-company)
  :referent (:find-object
             find-or-make/subsidiary right-edge left-edge))

