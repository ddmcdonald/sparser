;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013,2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "seasons"
;;;   Module:  "model;core:time:"
;;;  version:  November 2021

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
  :mixins (cyclic)
  :binds ((name :primitive word)
          (position-in-year . ordinal))
  :index (:permanent :key name :get)
  :lemma (:common-noun "season")
  :realization (:common-noun name ))

(fixed-at-runtime '(position-in-year) 'season)

;;;------
;;; form
;;;------

;; Individual seasons are defined in the seasons file in dossiers

(defun define-season (string integer)
  ;; The define-or-find does the conversion of the string
  ;; into a word and creates the two rules that go with
  ;; being a common noun (i.e. singular and plural forms)
  ;; with the season individual as their referent
  (let* ((ordinal (nth-ordinal integer))
         (season (define-or-find-individual 'season
                     :name string
                     :position-in-year ordinal)))
    season ))

;;-- functions

(defun get-season (name)
  (if *description-lattice*
    (get-by-name category::season name)
    (find-individual 'season :name name)))


;;-- thread into a sequence

(defvar *season-names*
  '("summer"
    ("fall" "autumn")
    "winter"
    "spring"))

(defun make-seasons-sequence ()
  "Adds previous/next bindings to the individual seasons
   and specifies when they wrap"
  (let* ((the-seasons
          (loop for season-exp in *season-names*
             when (stringp season-exp) collect (get-season season-exp)
             when (consp season-exp)
             collect (loop for s in season-exp
                        collect (get-season s))))
         (sequence (create-sequence the-seasons)))
    (old-bind-variable 'sequence sequence category::season)
    (old-bind-variable 'cycle-length 4 category::season)
    (thread-sequence sequence)))



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
