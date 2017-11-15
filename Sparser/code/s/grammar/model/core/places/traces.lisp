;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "traces"
;;;   Module:  "model;core:places:"
;;;  version:  November 2017.

;; For trace functions about location. Initially mostly the methods

(in-package :sparser)


;;;---------------------------------------
;;; traces of when a method is being used
;;;---------------------------------------

(defparameter *trace-methods* nil)
(defun trace-methods ()
  (setq *trace-methods* t))
(defun untrace-methods ()
  (setq *trace-methods* nil))

(deftrace :relative-location+has-location (operator place)
   (when *trace-methods*
    (trace-msg "Composing relative-location(~a) & has-location(~a)"
               operator place)))

(deftrace :relative-location+pronoun (operator place)
  (when *trace-methods*
    (trace-msg "Composing relative-location(~a) & pronoun(~a)"
               operator place)))

(deftrace :multi-dependent-location+partonomic (operator place)
  (when *trace-methods*
    (trace-msg "Composing multi-dependent-location(~a) & partonomic(~a)"
               operator place)))

(deftrace :relative-location+location (operator place)
  (when *trace-methods*
    (trace-msg "Composing relative-location(~a) & location(~a)"
               operator place)))

(deftrace :direction+multiple-dependent-location (qualifier head)
  (when *trace-methods*
    (trace-msg "Composing direction(~a) & multiple-dependent-location(~a)"
               qualifier head)))

(deftrace :relative-location+object-dependent-location (operator place)
  (when *trace-methods*
    (trace-msg "Composing relative-location(~a) & object-dependent-location(~a)"
                operator place)))



(deftrace :has-location+location (np pp)
  (when *trace-methods*
    (trace-msg "Composing has-location(~a) & location(~a)" np pp)))

(deftrace :direction+dependent-location (qualifier head)
  (when *trace-methods*
    (trace-msg "Composing direction(~a) & dependent-location(~a)"
               qualifier head)))


(deftrace :direction+object (head ground)
  (when *trace-methods*
    (trace-msg "Composing direction (i~a) & object (i~a)"
               (indiv-uid head) (indiv-uid ground))))


;;--- For related syntax-functions functions.

(defparameter *trace-syntactic-composition* nil)
(defun trace-composition ()
  (setq *trace-syntactic-composition* t))
(defun untrace-composition ()
  (setq *trace-syntactic-composition* nil))

(deftrace :np+pp/np-is-partonomic (np pobj) ;; "a row of two blocks"
  (when *trace-syntactic-composition*
    (trace-msg "Compose: np is partonomic ~a + ~a" np pobj)))

(deftrace :compose-other-of (np pobj result)
  (when *trace-syntactic-composition*
    (trace-msg "Compose: unflagged method over ~a + ~a produced ~a"  np pobj result)))

(deftrace :add-dependent-location (operator head) 
  ;; called in add-dependent-location -- "bottom block"
  (when *trace-syntactic-composition*
    (trace-msg "Compose: adding operator ~a as location on ~a"  operator head)))

(deftrace :make-object-dependent-location (operator object)
  ;; called for "the bottom of the stack"
  (when *trace-syntactic-composition*
    (trace-msg "Compose: binding ~a as ground of ~a" object operator)))

(deftrace :np-pp-composition (np pp)
  ;; First case in interpret-pp-adjunct-to-np
  (when *trace-syntactic-composition*
    (trace-msg "Compose: applied ~a and ~a" np pp)))

(deftrace :composed-qualifier-with-head (qualifier head result)
  (when *trace-syntactic-composition*
    (trace-msg "Compose: applied ~a and ~a to produce ~a"
               qualifier head result)))
#|
(deftrace : (np pobj)
  (when *trace-syntactic-composition*
    (trace-msg ""  np pobj)))

(deftrace : (np pobj)
  (when *trace-syntactic-composition*
    (trace-msg ""  np pobj)))
|#
