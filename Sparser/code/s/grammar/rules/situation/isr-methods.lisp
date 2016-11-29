;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "ISR-methods"
;;;            grammar/rules/situation/
;;;  version:  November 2015

;; Broken out from the rule file 11/30/15 to hold the composition
;; methods that are based on the categories defined by the ISR
;; sublanguage. 

(in-package :sparser)

;;;----------------
;;; work functions
;;;----------------

(defun transfer-bindings (old new)
  ;; Go through the bindings on the old individual, which we are
  ;; dropping on the floor (perhaps because we replaced a abstract
  ;; with a concrete), to the new.
  ;; /// With more information, we would know which bindings should
  ;; be kept with the old (e.g. name), but now to be safe just making
  ;; all new bindings with the value of their body changed.
  ;; Ignoring bound-in's because those are most likely to be
  ;; intrinsic to the old individual. 
  (push-debug `(,old ,new))
  (let* ((bindings-from-new (indiv-binds new)) ;; unlikely
         (bindings-from-old
          (loop for b in (indiv-binds old)
            collect (bind-variable/expr (binding-variable b)
                                  (binding-value b)
                                  (binding-body b))))
         (bindings (if bindings-from-new
                     (append bindings-from-new
                             bindings-from-old)
                     bindings-from-old)))
    (setf (indiv-binds new) bindings)
    (values new old))) ;; dispense with return value when debugged


;;;---------
;;; methods
;;;---------
;; These depend on the categories that the reference being already
;; defined. Barring a substantial reorganization of the load order
;; it's simplest to include them here. 

;; "ford suv"
(def-k-method compose ((mgfr category::maker-of-artifacts)
                       (head category::car-type))
  "If the head (the kind argument) is abstract, then we need to
   make it concrete since a car manufacturers are makers of artifacts
   and those are always physical."
  (tr :c3-composing mgfr head)
  (when (itypep head 'named-type)
    (add-relation 'type-of-product mgfr head) ;; Ford makes trucks
    (let ((physical-equivalent (value-of 'type-of category::car-type)))
      (tr :changing-type-of head physical-equivalent)
      (let ((new (clone-individual-changing-type
                  head physical-equivalent)))
        (transfer-bindings head new)
        (setq head new))))
  ;; or call-compose on the new version of the head, which is going
  ;; to be an artifact
  (add-relation 'made-by head mgfr)
  head)


;; red + physical
(def-k-method compose ((color category::color) (obj category::motor-vehicle)) ;;physical-surface))
  ;;/////////// pifflewart. Mixins need to be integrated into shadows
  ;;     by some means or another.
  ;;// probably should be physical, but not clear how quite
  ;; to conceptualize, e.g., the plastic of the car body or
  ;; the clay of the statue. Do these things attribute directly
  ;; to physical, or to an intermediary that holds these properties
  (tr :c3-composing color obj)
  (add-relation 'color obj color)
  obj)

;; "black ford"
(def-k-method compose ((color category::color) (obj category::car-manufacturer))
  ;; a car-manufacturer is not something that has a color
  ;; so we do nothing here, and assume that the color will be
  ;; taken up by something else
  (tr :c3-composing color obj)
  obj)

(def-k-method compose ((aux category::have) (e category::perdurant))
  ;; corresponds to a form rule. Not clear there's anything to do
  ;; at the situation level that wasn't done with the subtype already
  (tr :c3-composing aux e)
  (when (referential-category-p e)
    ;; This lets the suv get bound as the theme of "enter"
    (setq e (make/individual e nil)))
  e)


;; can-change-location + move
(def-k-method compose ((theme category::can-change-location) (e category::move))
  (tr :c3-composing theme e)
  ;; This is run by referent-from-rule as alternative to the
  ;; realization specified by the rule. Returns the edge referent
  ;;/// in current protocol theme won't be bound, but might be
  (bind-variable 'theme theme e)
  e)

#| move: when-bound(theme) 
  ;; we know that this is same as when-bound(can-change-location
  ;; Trigger probably goes down in the binding operation itself
           assert (moved theme) 
   moved(x) :: present-location -> former-location
     when (null present-location)
       -> instantiate an event-relative location: before(move-event)
|#
  ;; This gets us right into event transitions and situation chaining
  ;; since location(suv) is a functor, so putting it off
  

(def-k-method compose ((e category::move) (loc category::container))
  (tr :c3-composing e loc)
#| move: when-bound(to-location)
     assert: (moved-to theme to-location)
|#
  (let ((theme (value-of 'theme e)))
    (unless theme
      (error "We lost the theme binding somewhere"))
    (add-relation 'present-location theme loc)
    (break "note individuals")
    e))
