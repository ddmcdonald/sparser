;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "traces"
;;;   Module:  "model;core:places:"
;;;  version:  April 2019

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
    (trace-msg "Method: relative-location(~a) & has-location(~a)"
               operator place)))

(deftrace :relative-location+pronoun (operator place)
  (when *trace-methods*
    (trace-msg "Method: relative-location(~a) & pronoun(~a)"
               operator place)))

(deftrace :multi-dependent-location+partonomic (operator place)
  (when *trace-methods*
    (trace-msg "Method: multi-dependent-location(~a) & partonomic(~a)"
               operator place)))

(deftrace :relative-location+location (operator place)
  (when *trace-methods*
    (trace-msg "Method: relative-location(~a) & location(~a)"
               operator place)))

(deftrace :direction+multiple-dependent-location (qualifier head)
  (when *trace-methods*
    (trace-msg "Method: direction(~a) & multiple-dependent-location(~a)"
               qualifier head)))

(deftrace :relative-location+object-dependent-location (operator place)
  (when *trace-methods*
    (trace-msg "Method: relative-location(~a) & object-dependent-location(~a)"
               operator place)))

(deftrace :number+part-of-a-sequence (index item)
  (when *trace-methods*
    (trace-msg "Method: compose number (~a) + part-of-sequence (~a)"
               index item)))

(deftrace :ordinal+part-of-a-sequence (index item)
  (when *trace-methods*
    (trace-msg "Method: compose ordinal (~a) + part-of-sequence (~a)"
               index item)))



(deftrace :has-location+location (np pp)
  (when *trace-methods*
    (trace-msg "Method: has-location(~a) & location(~a)" np pp)))

(deftrace :direction+dependent-location (qualifier head)
  (when *trace-methods*
    (trace-msg "Method: direction(~a) & dependent-location(~a)"
               qualifier head)))

(deftrace :part-of-a-sequence+partonomic (part whole)
  (when *trace-methods*
    (trace-msg "Method: part-of-a-sequence(~a) + partonomic(~a)"
               part whole)))

(deftrace :sequencer+part-of-a-sequence (er seq)
  (when *trace-methods*
    (trace-msg "Method: sequencer(~a) + part-of-a-sequence(~a)"
               er seq)))


(deftrace :direction+object (head ground)
  (when *trace-methods*
    (trace-msg "Method: direction (i~a) & object (i~a)"
               (indiv-uid head) (indiv-uid ground))))

(deftrace :collection+items (index item)
   (when *trace-methods*
     (trace-msg "Method: index (i~a) & item (i~a)"
                (indiv-uid index) (indiv-uid item))))

(deftrace :between+collection (op bounds)
  (when *trace-methods*
    (trace-msg "Method: operator (i~a) + collection (i~a)"
               (indiv-uid op) (indiv-uid bounds))))

(deftrace :fraction+note (fraction note)
   (when *trace-methods*
     (trace-msg "Method: fraction (i~a) & note (i~a)"
                (indiv-uid fraction) (indiv-uid note))))

(deftrace :below+note (below note)
   (when *trace-methods*
     (trace-msg "Method: below (i~a) & note (i~a)"
                (indiv-uid below) (indiv-uid note))))


;;--- For related syntax-functions functions.

(defparameter *trace-syntactic-composition* nil)
(defun trace-composition ()
  (setq *trace-syntactic-composition* t))
(defun untrace-composition ()
  (setq *trace-syntactic-composition* nil))

(deftrace :np+pp/np-is-partonomic (np pobj) ;; "a row of two blocks"
  (when *trace-syntactic-composition*
    (trace-msg "Compose: np a dependent location pobj is partonomic: ~a + ~a" np pobj)))

(deftrace :np-pp-of-np-partonomic (np pobj)
  (when *trace-syntactic-composition*
    (trace-msg "Compose np+pp: The partomomic np ~a gets ~a as a part"  np pobj)))


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
