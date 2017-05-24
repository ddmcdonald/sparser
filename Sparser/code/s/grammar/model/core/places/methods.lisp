;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "methods"
;;;   Module:  "model;core:places:"
;;;  version:  May 2017.

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
  ;; Called by interpret-pp-adjunct-to-np
  (declare (special *subcat-test*))
  (if *subcat-test*
    ;; given this specific a pattern, if we get here
    ;; then the interpretation/rule will go through
    t
    (else
      (tr :has-location+location np pp)
      (let ((i (bind-variable 'location pp np)))
        i))))



;;--- spatial-operator

(defun make-relative-location/revise-parent (operator place)
  "shared subroutine. Construct and return the relative-location
   individual. Relable the parent edges as a 'location'."
  (let ((i (find-or-make-individual 'relative-location
                                    :prep operator
                                    :ground place)))
    (revise-parent-edge :category (category-named 'location))
    i))


;; Designed for phrases like "on the table",  or "the top block"
(def-k-method compose ((operator category::spatial-operator)
                       (place category::has-location)) ;; e.g. 'object'
  (declare (special *subcat-test* category::pp))
  (if *subcat-test*
    t
    (else
      (tr :spatial-operator+endurant operator place)
      (let ((form (edge-form (parent-edge-for-referent))))
        (cond
          ((np-category? form) ;; called from noun-noun-compound
           ;; "the bottom block"
           (let ((head (bind-variable 'location operator place)))
             head))
          ((eq form category::pp)
           (make-relative-location/revise-parent operator place))
          (t
           (push-debug `(,operator ,place))
           (error "Unanticipated form on parent edge: ~a" form)))))))


;; "next to it"
(def-k-method compose ((operator category::spatial-operator)
                       (place category::pronoun/inanimate))
  (if *subcat-test*
    t
    (else
      (tr :spatial-operator+pronoun operator place)
      (make-relative-location/revise-parent operator place))))


;; for "at the right end of the row"
(def-k-method compose ((operator category::spatial-operator)
                       (place category::location))
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :spatial-operator+location operator place)
      (make-relative-location/revise-parent operator place))))


;; "at the end"
(def-k-method compose ((operator category::spatial-operator)
                       (place category::dependent-location))
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :spatial-operator+dependent-location operator place)
      (make-relative-location/revise-parent operator place))))



(defun add-dependent-location (operator head)
  "Called in noun-noun-compound when the qualifier ('operator')
   is a dependent-location such as 'bottom' or 'end'."
  (lsp-break "call to add-dependent-location")
  (bind-variable 'location operator head))

#|     Too confusing for the generator since it only has the one
       realization pattern which presupposes the ground variable
   We make an instance of object-dependent-location that is
   open in the value for its ground variable (which eventually
   will be bound when we get a pp complement like 'of the row'),
   and make that the value of the location variable of the head.
   Returns the head to be the referent of the edge."
  (let ((i (find-or-make-individual 'object-dependent-location
                                    :prep operator)))
    (setq head (bind-variable 'location i head))
    head)) |#



;;--- direction

(def-k-method compose ((qualifier category::direction)
                       (head category::dependent-location))
  ;; as in "the left side of ...". We get that in noun-noun-compound
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :direction+dependent-location qualifier head)
      (let ((i (find-or-make-individual 'orientation-dependent-location
                                        :prep qualifier
                                        :ground head)))
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
        (let ((i (find-or-make-individual 'orientation-dependent-location
                                          :prep head
                                          :ground ground)))
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
