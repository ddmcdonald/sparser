;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "pronouns"
;;;   Module:  "objects;traces:"
;;;  Version:  September 2013

;; Initiated 9/1/13.

(in-package :sparser)

(defparameter *tracing-pronouns* nil
  "Gate for pronoun-related traces.")

(defun trace-pronouns ()
  (setq *tracing-pronouns* t))

(defun untrace-pronouns ()
  (setq *tracing-pronouns* nil))


;;--- completion actions

(deftrace :seek-person-for-pronoun (e)
  (when *tracing-pronouns*
    (trace-msg "Looking for a referent for ~s on e~a at p~a (~a)"
               (edge-left-daughter e) (edge-position-in-resource-array e)
               (pos-token-index (pos-edge-starts-at e))
               (pos-array-index (pos-edge-starts-at e)))))

(deftrace :no-discourse-entries-for-people ()
  (when *tracing-pronouns*
    (trace-msg "  No usable discourse entries for people")))

(deftrace :interpreting-ne-discourse-entry-as-person (ne)
  (when *tracing-pronouns*
    (trace-msg "  Interpreting named-object as person: ~a" ne)))

(deftrace :subverting-pn-edge (e caategory referent)
  (when *tracing-pronouns*
    (trace-msg "  Replacing the label of e~a with ~a~
             ~%    and its referent with ~a"
                (edge-position-in-resource-array e) caategory referent)))