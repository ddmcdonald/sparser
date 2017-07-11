;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "temporally-localized"
;;;   Module:  "model;core:kinds:"
;;;  version:  October 2016

;; pulled out of terms-to-move 9/2/16


(in-package :sparser)

   ;; 10/11/16 The bottom of these three categories
    ;; is mixed into the definition of perdurant.
    ;; Consequently it is very easy to get circular class
    ;; relationships that blow up. This should NOT be
    ;; a specialization of Top, but we have to think
    ;; through what to do. Inheriting from 'relation' as
;; this did originally leads to a circular lattice


;;(mark-as-form-category category::event-relation)





