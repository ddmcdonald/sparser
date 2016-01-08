;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991 David D. McDonald & the Brandeis - NMSU/CRL
;;;                    "Tipster" project  -- all rights reserved
;;;
;;;     File:  "make jv"
;;;   Module:  "grammar;gl:entries:"    ("generative lexicon")
;;;  version:  November 1991    v2.1

;; initiated 11/17, tweeked Thanksgiving weekend

(in-package :CTI-source)


;; This rule should come out of the co-specification ??
;;
(def-cfr event/agent (establish venture)
  :form VP
  :referent (:daughter left-edge
             :bindings
                 (:object   left-edge
                  :variable thing-established
                  :value    right-edge)

                 (:object    right-edge
                  :variable  establishment-event
                  :value     left-edge)))

