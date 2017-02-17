;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "methods"
;;;   Module:  "model;core:places:"
;;;  version:  February 2017

;; broken out from operators 11/18/16

(in-package :sparser)

;;;------------------------------------------------------------------------------
;;; Methods used by syntax functions that appreciate the spatial operators &such
;;;------------------------------------------------------------------------------

;; "the block on the table" 
(def-k-method compose ((np category::has-location) (pp category::location))
  "Identifies the location of something that can have one"
  (declare (special *subcat-test*))
  (if *subcat-test*
    ;; given this specific a pattern, if we get here
    ;; then the interpretation/rule will go through
    t
    (let ((i (bind-variable 'location pp np)))
      ;;(format t "~&i = ~a~%" i)
      i)))

;; 
(def-k-method compose ((operator category::spatial-operator)
                       (place category::has-location)) ;; any 'object'
  ;; Designed for phrases like "on the table",  or "the top block"
  (declare (special *subcat-test* category::pp))
  (if *subcat-test*
    t
    (else
      (tr :spatial-operator+endurant)
      (let ((form (edge-form (parent-edge-for-referent))))
        (cond
          ((np-category? form) ;; called from noun-noun-compound
           ;; "the bottom block"
           (let ((head (bind-variable 'location operator place)))
             head))
          ((eq form category::pp)
           (let ((i (find-or-make-individual 'relative-location
                                             :prep operator
                                             :ground place)))
             (revise-parent-edge :category (category-named 'location))
             i))
          (t
           (push-debug `(,operator ,place))
           (error "Unanticipated form on parent edge: ~a" form)))))))

(defun add-dependent-location (operator head)
  "Called in noun-noun-compound when the qualifier ('operator')
   is a dependent-location such as 'bottom' or 'end'."
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


(def-k-method compose ((operator category::spatial-operator)
                       (place category::location))
  ;; for "at the right end of the row"
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :spatial-operator+location)
      (let ((i (find-or-make-individual 'relative-location
                                        :prep operator
                                        :ground place)))
        (revise-parent-edge :category (category-named 'location))
        i))))

;; "at the end"
(def-k-method compose ((operator category::spatial-operator)
                       (place category::dependent-location))
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :spatial-operator+dependent-location)
      (let ((i (find-or-make-individual 'relative-location
                                        :prep operator
                                        :ground place)))
        (revise-parent-edge :category (category-named 'location))
        i))))

;; "the block on the table"
(def-k-method compose ((np category::has-location)
                       (pp category::location))
  ;; Called by interpret-pp-adjunct-to-np
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :has-location+location)
      (let ((i (bind-variable 'location pp np)))
        i))))

(def-k-method compose ((qualifier category::direction)
                       (head category::dependent-location))
  ;; as in "the left side of ...". We get that in noun-noun-compound
  (declare (special *subcat-test*))
  (if *subcat-test*
    t
    (else
      (tr :direction+dependent-location)
      (lsp-break "direction + dependent-location")
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
      (tr :direction+multiple-dependent-location)
      (let ((modified (bind-variable 'modifier qualifier head)))
        modified))))
 


;;; traces to determine when/whether a method is being used

(defparameter *debug-compose* nil)
(defun compose-debugging-on ()
  (setq *debug-compose* t))
(defun compose-debugging-off ()
  (setq *debug-compose* nil))

(deftrace :spatial-operator+endurant ()
  (when *debug-compose*
    (trace-msg "Composing spatial-operator & endurant")))

(deftrace :spatial-operator+location ()
  (when *debug-compose*
    (trace-msg "Composing spatial-operator & location")))

(deftrace :spatial-operator+dependent-location ()
  (when *debug-compose*
    (trace-msg "Composing spatial-operator & dependent-location")))

(deftrace :has-location+location ()
  (when *debug-compose*
    (trace-msg "Composing has-location & location")))

(deftrace :direction+dependent-location ()
  (when *debug-compose*
    (trace-msg "Composing direction & dependent-location")))

(deftrace :direction+multiple-dependent-location ()
  (when *debug-compose*
    (trace-msg "Composing direction & multiple-dependent-location")))
