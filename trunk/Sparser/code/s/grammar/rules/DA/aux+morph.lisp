;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "aux+morph"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  May 1995

;; initiated 5/5/95.  Added to ...5/12

(in-package :sparser)


(define-debris-analysis-rule  have+morph
  :pattern ( have
             (:morph :ends-in-ed) )
             
  :action  (:make-edge-over-whole-span unknown-verb
              (:daughter second)))


(define-debris-analysis-rule  freq-adv+morph
  :pattern ( frequency-of-event
             (:morph :ends-in-ed) )
             
  :action  (:make-edge-over-whole-span unknown-verb
              (:daughter second)))

