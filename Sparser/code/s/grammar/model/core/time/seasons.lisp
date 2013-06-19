;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "seasons"
;;;   Module:  "model;core:time:"
;;;  version:  June 2013

;; Initated 6/11/13. Worked over 6/12: Added an index specification
;; to the category, dropped the abbreviation (see dossiers/seasons),
;; shrank the defining function down by using a define-or-find to
;; do the heavy lifting and setting the position in year as a separate
;; operation. Added some citation texts to help figure out where to 
;; place these in the type-lattice

;;;------------
;;; the object
;;;------------

(define-category  season
  :specializes time
  :instantiates self
  :rule-label time ;;rule-label time sets the syntactic label as "time"
  :binds ((name :primitive word)
          (abbreviation :primitive word) ;; really? I'm skeptical
          (position-in-year . ordinal))
  :index (:permanent :key name)
  :realization (:common-noun name ))

;;;-----------
;;; citations
;;;-----------
#|

This pattern is the same one that we get for months
and years, and would hold for periods in the day ("morning", 
"evening") for the most part. 

"Spring"
"spring"
"early spring"  -- mid
"late Spring"
"last spring"  -- next


Maybe these are specific to seasons (among stuff in time)

"spring has started"
-- is (almost) over



|#

;;;------
;;; form
;;;------

(defun define-season (string integer)
  ;; The define-or-find does the conversion of the string
  ;; into a word and creates the two rules that go with
  ;; being a common noun (i.e. singular and plural forms)
  ;; with the season individual as their referent
  (let ((season (define-or-find-individual
                    'season :name string))
        (ordinal (nth-ordinal integer)))
    (bind-variable 'position-in-year ordinal season)       
    season ))
