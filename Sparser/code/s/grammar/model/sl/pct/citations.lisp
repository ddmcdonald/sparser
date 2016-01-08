;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "citations"
;;;   Module:  "model;sl:pct:"
;;;  version:  March 1994

;; initiated 6/11/93 v2.3.  10/7/94 added [board of directors]   10/12 added
;; [title+company].  Redid calls as logical 3/18/95

(in-package :sparser)

#|

Preposed titles:

(p "President Clinton")
  works

(p "Foo Corp. President Clinton")
  This doesn't work --- the period is stranded.

e3    COMPANY                 1 "foo corp" 3
e4                               "PERIOD"
e8    PERSON                  4 "president clinton" 6



(p "Foo Corp.  ... Foo President Clinton")
   This might eliminate that problem, but the 'name word interpretation'
   routine is clearly not working.
                                
e3    COMPANY                 1 "foo corp ." 4
e4                               "PERIOD"
e5                               "PERIOD"
e6                               "PERIOD"
e7    NAME-WORD               7 "foo" 8
e11   PERSON                  8 "president clinton" 10

