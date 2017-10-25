;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "methods"
;;;   Module:  "model;core:places:"
;;;  version:  October 2017.

;; N.b. This file is loaded late after all categories have been defined.
;; It is for location-oriented compose methods

(in-package :sparser)

;; Track with (trace-methods)

;;;------------------------------------------------------------------------------
;;; Methods used by syntax functions that appreciate the spatial operators &such
;;;------------------------------------------------------------------------------

;;--- has-location

;; "the block on the table"
(def-k-method compose ((np category::has-location)
                       (pp category::location))
  "Binds the location variable of an object that is defined to
   have a location (any 'object'). Called by interpret-pp-adjunct-to-np
   in the first clause of its 'or'."
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :has-location+location np pp)
      (let ((i (bind-variable 'location pp np)))
        i))))



;;--- simple prepositional location operators

(defun make-relative-location/revise-parent (operator place)
  "shared subroutine. Construct and return the relative-location
   individual. Relabel the parent edge as a 'location'."
  (let ((i (bind-variable 'ground place operator)))
    (revise-parent-edge :category (category-named 'location))
    i))


;; Designed for phrases like "on the table",  or "the top block"
(def-k-method compose ((op category::relative-location)  ;;  spatial-operator)
                       (place category::has-location)) ;; e.g. 'object'
  (declare (special *subcat-test* category::pp))
  (if *subcat-test*
    t
    (else
      (tr :spatial-operator+endurant op place)
      (let ((form (edge-form (parent-edge-for-referent))))
        (cond
          ((np-category? form) ;; called from noun-noun-compound
           (add-dependent-location op place))  ;; "the bottom block"
          ((eq form category::pp)
           (make-relative-location/revise-parent op place))
          (t
           (push-debug `(,op ,place))
           (error "Unanticipated form on parent edge: ~a" form)))))))


;; "next to it"
(def-k-method compose ((operator category::relative-location)
                       (place category::pronoun/inanimate))
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :spatial-operator+pronoun operator place)
      (make-relative-location/revise-parent operator place))))


;; for "at the right end of the row"
(def-k-method compose ((operator category::relative-location)
                       (place category::location))
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :spatial-operator+location operator place)
      (make-relative-location/revise-parent operator place))))


;; "at the end"
(def-k-method compose ((op category::relative-location)  ;; spatial-operator)
                       (place category::dependent-location))
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :spatial-operator+dependent-location op place)
      (make-relative-location/revise-parent op place))))




;;--- direction

(def-k-method compose ((qualifier category::direction)
                       (head category::dependent-location))
  ;; as in "the left side of ...". We get that in noun-noun-compound
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :direction+dependent-location qualifier head)
      (let ((i (bind-variable 'ground head qualifier)))
        (revise-parent-edge :category (category-named 'location))
        i))))

(def-k-method compose ((qualifier category::direction)
                       (head category::multiple-dependent-location))
  ;; "left side" is just a variant on 'side' that picks out one of them
  ;; though on the language side it's a slippy slope if we know much more
  ;; than that in the description we create.
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :direction+multiple-dependent-location qualifier head)
      (let ((modified (bind-variable 'modifier qualifier head)))
        modified))))

(def-k-method compose ((head category::direction) ;; np + pp
                       (ground category::object))
  ;; (p/s "the left of the row")
  (declare (special *subcat-test*))
  (or (when *subcat-test* t)
      (else
        (tr :direction+object head ground)
        (let ((i (bind-variable 'ground ground head)))
          (revise-parent-edge :category (category-named 'location))
          i))))


;;;---------------------------------------
;;; traces of when a method is being used
;;;---------------------------------------

(defparameter *trace-methods* nil)
(defun trace-methods ()
  (setq *trace-methods* t))
(defun untrace-methods ()
  (setq *trace-methods* nil))

(deftrace :spatial-operator+endurant (operator place)
  (when *trace-methods*
    (trace-msg "Composing spatial-operator(~a) & endurant(~a)"
               operator place)))

(deftrace :spatial-operator+location (operator place)
  (when *trace-methods*
    (trace-msg "Composing spatial-operator(~a) & location(~a)"
               operator place)))

(deftrace :spatial-operator+pronoun (operator place)
  (when *trace-methods*
    (trace-msg "Composing spatial-operator(~a) & pronoun(~a)"
               operator place)))

(deftrace :spatial-operator+dependent-location (operator place)
  (when *trace-methods*
    (trace-msg "Composing spatial-operator(~a) & dependent-location(~a)"
                operator place)))

(deftrace :has-location+location (np pp)
  (when *trace-methods*
    (trace-msg "Composing has-location(~a) & location(~a)" np pp)))

(deftrace :direction+dependent-location (qualifier head)
  (when *trace-methods*
    (trace-msg "Composing direction(~a) & dependent-location(~a)"
               qualifier head)))

(deftrace :direction+multiple-dependent-location (qualifier head)
  (when *trace-methods*
    (trace-msg "Composing direction(~a) & multiple-dependent-location(~a)"
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
#|
(deftrace : (np pobj)
  (when *trace-syntactic-composition*
    (trace-msg ""  np pobj)))

(deftrace : (np pobj)
  (when *trace-syntactic-composition*
    (trace-msg ""  np pobj)))
|#
