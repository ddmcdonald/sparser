;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2017 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "verbs"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  December 2018

;; Broken out of vocabulary 3/7/17. General verbs moved to dossier 12/18/18.

(in-package :sparser)

;; (p "Add another block to the row")

(define-category add-block-to
  :specializes add-to
  ;;:mixins (move-something-verb with-specified-location)
  :restrict ((goal built-out-of-bricks)) ;; on with-specified-location
  :documentation "This is the 'add' where we're extending
    a structure that's under construction. The 'to' picking out
    the assemblage is always present, even if it's been
    omitted as obvious."
  :realization
    (:verb "add"
     :etf (svol)
     :s agent
     :o theme
     :loc-pp-complement (on
                         at
                         to) ;; "... to the row" via adjoin-pp-to-vg
      :mumble ("add" svo1o2 :s agent :o1 theme :o2 location)))

