;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,2016  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "title-co"
;;;    Module:   grammar/model/core/titles/
;;;   Version:   July 2016

;; initiated 6/11/93 v2.3, used a few rules from the original version
;; of 2/91 v1.8.1, but with Krisp semantics.

(in-package :sparser)


#|  Combinations of titles and companies where the title will be
    the head of the result.  |#


;;;---------------------------
;;; [title] [prep.] [company]
;;;---------------------------

(def-cfr title (title at-company)
  :form np
  :referent (:instantiate-individual position-at-co
             :with (title left-edge
                    company right-edge)))

(def-cfr title (title from-company)
  :form np
  :referent (:instantiate-individual position-at-co
             :with (title left-edge
                    company right-edge)))

(def-cfr title (title in-company)
  :form np
  :referent (:instantiate-individual position-at-co
             :with (title left-edge
                    company right-edge)))

#| Duplicates rule created by the realization of
   position-at-co in sl/pct/position-object
(def-cfr title (title of-company)
  :form np
  :referent (:instantiate-individual position-at-co
             :with (title left-edge
                    company right-edge))) |#

(def-cfr title (title with-company)
  :form np
  :referent (:instantiate-individual position-at-co
             :with (title left-edge
                    company right-edge)))

