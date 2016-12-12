;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995,2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "directional rules"
;;;   Module:  "model;core:places:"
;;;  version:  December 2016

;; initiated in 1/9/95

(in-package :sparser)


(def-cfr direction ("to" direction)    ;; "to the left"
  :form np
  :referent (:daughter right-edge))


(def-cfr from-direction ("from" direction)
  ;;///// replace with schema
  :form np
  :referent (:daughter right-edge))


(def-cfr direction ("the" direction)   ;; "the left"
  ;; This overgenerates (*"the westwards"), but since that phrase
  ;; won't be produced it's moot. 
  :form np
  :referent (:daughter right-edge))


;;--- of-complement ("south of the Lee exit")

(define-additional-realization relative-location
  ;; category defined in places/relational)
  (:tree-family simple-of-complement
   :mapping ((np-item . prep)
             (of-item . ground)
             (np . location)
             (complement . location)
             (base-np . direction) ;; compass-point
                ;; some directions as well, but not all
             (result-type . relative-location))))
