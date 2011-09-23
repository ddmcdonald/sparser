;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "directional rules"
;;;   Module:  "model;core:places:"
;;;  version:  January 1995

;; initiated in 1/9/95

(in-package :sparser)


(def-cfr direction ("the" direction)    ;; "the left"
  :form np
  :referent (:daughter right-edge))


(def-cfr direction ("to" direction)    ;; "to the left"
  :form np
  :referent (:daughter right-edge))

