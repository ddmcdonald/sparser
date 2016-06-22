;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "interface"
;;;   Module:  "derivation-trees"
;;;  version:  June 2016

;; initated 6/21/16

(in-package :mumble)


;;;-----------------------------------
;;; using CLP in generation direction
;;;-----------------------------------

(defun realize-via-category-linked-phrase (category i)
  "Look up the CLP that's linked to the category and use it
   to make a DTN to realize the individual"
  (let* ((clp (sp::get-tag :mumble category))
         (lp (linked-phrase clp))
         (map (parameter-variable-map clp))
         (dtn (make-dtn :referent i
                        :resource lp)))
    (loop for pvp in map
       as variable = (corresponding-variable pvp)
       as parameter = (corresponding-parameter pvp)
       as value = (sp::value-of variable i)
       do (make-complement-node parameter value dtn))
    ;; That spead individuals and other Sparser stuff
    ;; across the parameters of the phrase
    dtn))
           
