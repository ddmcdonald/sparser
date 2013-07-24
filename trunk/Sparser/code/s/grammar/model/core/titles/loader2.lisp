;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1997,2011-2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "loader"
;;;   Module:  "model;core:titles:"
;;;  version:  2.0 March 2013

;; (4/19/92 v2.2) added title+miscl 
;; 1.0 (6/10/93 v2.3) completely revamped everything from scratch
;; 1.1 (1/6/94) moved [operations] late
;; 1.2 (1/18) added the grammar modules. (3/3) added another one for the core
;; 1.3 (3/15) moved the module definitions to where they belonged 
;;     (10/13) added [types of people].  (2/28/95) added [status printer]
;;     (5/17) added [area of responsibility]
;; 1.4 (12/6) moved over to [object1] with compositional titles. Bumped [operations] to 1
;;     (9/21/09) Put [area of responsibility] under *da* gate
;;     (2/21/11) Annotated the state of the dossiers.
;; 2.0 (3/18/13) Revamping them yet again. Commenting most everything out
;;      to bring them back gradually. 7/23/13 bumped [head-of] to 1 and
;;      put it back in. 

(in-package :sparser)


(gate-grammar *titles-core*
  (gload "titles;object2")
  (gload "titles;rules")  
  (gload "titles;head-of1")
  (gate-grammar *da*
    (gload "titles;area of responsibility")))
#|  wait until vetted
(gate-grammar *title-qualifiers*
  (gload "titles;status")
  (gload "titles;status printer"))

(gate-grammar *people*
  (gload "titles;types of people"))
|#

(gate-grammar *titles-core*
  (gload "titles;operations2")) ;; comes late so compiler will have seen the types

(defun titles-2d-stage-loader ()
  ;; called from Load-the-grammar when all the rest of the core
  ;; has been loaded and the other categories that these files
  ;; reference have been loaded. 
  (gate-grammar *titles-core*
    (gload "titles;title+co")
    ))


;; N.b.  All this has to be checked with the variations in PCT

#|  loaded from dossiers
(gload "dossiers;titles") ;; kept around, but all commented out and
   ;; not loaded. Has set of full titles as used back in 1990-1992
(gload "dossiers;title heads")
(gload "dossiers;title modifiers")
(gload "dossiers;title qualifiers") 
(gload "dossiers;title-abbreviations")  |#



#|  the set from spring 1991 -- many will go away/merge, none
     are yet vetted
(gload "titles;title CA1")
(gload "titles;title aux")

(gload "titles;title modifiers")
(gload "titles;title adj")
(gload "titles;title heads")
(gload "titles;title cases")

;;(gload "titles;board of directors")
;;  Use the one in PCT

(gload "titles;title+co")
(gload "titles;title+time")
(gload "titles;title+miscl")
(gload "titles;pers+title")

(gload "titles;plural title1")

(gload "resp;object")
(gload "resp;cases")
(gload "resp;rules")

(gload "titles;head of")
(gload "titles;stuff")

(gload "titles;post")   |#

