;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2022 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "methods"
;;;   Module:  "model;core:places:"
;;;  version:  March 2022

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
   in the first clause of its 'or'. As in that function, also have to check
   that no other binding site wants the location"
  (declare (special *subcat-test*))
  (if *subcat-test* ; use valid-method to have this checked
    (and (not (location-in-locative-context? pp))
         (eq (edge-form-name (right-edge-for-referent)) 'pp))
    (else
      (tr :has-location+location np pp)
      (let ((i (bind-variable 'location pp np)))
        i))))



;;--- prepositional location operators

;; "on the table"

#+ignore
;; but not "in the presence of RAS" or "on the other hand" -- this
;;  method is far too unselective you can't locally determine that a
;;  PP should be interpreted as a relative location the governing head
;;  (that takes the PP as a dependent) may have constraints on how it
;;  interprets a particular preposition
(def-k-method compose ((op category::relative-location)
                       (place category::has-location))
  "Spatio(-temoral) prepositions are specializations of relative-location.
   The intended target of 'has-location' is anything that inherits from object."
  (declare (special *subcat-test* category::pp))
  (if *subcat-test*
    (not (itypep place 'bio-scalar)) ; aspp2 #44
    (else
      (unless (itypep place 'bio-scalar)
        (tr :relative-location+has-location op place)
        (let ((form (edge-form (parent-edge-for-referent))))
          (cond
            ((np-category? form) ;; called from noun-noun-compound
             (add-dependent-location op place)) ;;?? "the bottom block"
            ((eq form category::pp)
             (make-relative-location/revise-parent op place))
            (t
             (push-debug `(,op ,place))
             (error "Unanticipated form on parent edge: ~a" form))))))))

;; "next to it"
(def-k-method compose ((op category::relative-location)
                       (place category::pronoun/inanimate))
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :relative-location+pronoun op place)
      (make-relative-location/revise-parent op place))))


;; "the end of the row", "the top block"
(def-k-method compose ((op category::multi-dependent-location)
                       (place category::partonomic))
  "The 'of' case is called from interpret-pp-adjunct-to-np"
  (declare (special *subcat-test* *in-scope-of-np+pp*))
  (if *subcat-test*
    t
    (else
      (let ((form (edge-form (parent-edge-for-referent))))
        (cond
          (*in-scope-of-np+pp* ;; head is the op
           (make-relative-location/revise-parent op place))
          ((np-category? form) ;; head is the place
           ;; binds op to location variable of the 'place'
           (add-dependent-location op place))  ;; "the bottom block"
          (t
           (tr :multi-dependent-location+partonomic op place)
           ;; make bind the ground and make it a location
           (make-relative-location/revise-parent op place)))))))



;; "the left end"
(def-k-method compose ((qualifier category::direction)
                       (head category::multi-dependent-location))
  ;; Used in noun-noun-compound as the first option
  ;; "left side" is just a variant on 'side' that picks out one of them
  ;; though on the language side it's a slippy slope if we know much more
  ;; than that in the description we create.
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :direction+multiple-dependent-location qualifier head)
      (let ((j (bind-variable 'qualifier qualifier head)))
        j))))
2

;; "on the bottom"
(def-k-method compose ((op category::relative-location)
                       (place category::object-dependent-location))
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :relative-location+object-dependent-location op place)
      (make-relative-location/revise-parent op place))))



;; "at the end"  "past the forest boundary"
(def-k-method analyze-pp ((operator category::relative-location)
                          (place category::location))
  (declare (special *subcat-test*))
  (unless (itypep place 'bio-location) ; aspp2 #16, dry-run #30
    (if *subcat-test*
      (not (itypep place 'bio-location))
      (else
        (tr :relative-location+location operator place)
        (make-relative-location/revise-parent operator place)))))

;; "put another green block [on the block]" ...
(def-k-method analyze-pp ((operator category::on)
                          (thing category::object))
  "Is it possible to 'reach back' from make-pp to the verb to see
   whether is subcategorizes for location. The verb is there, but we'd
   have to climb over things to get there w/o a pointer from the scan
   that's done right after chunking."
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :relative-location+object operator thing)
      (make-relative-location/revise-parent operator thing))))
                        


;;-----------------


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


