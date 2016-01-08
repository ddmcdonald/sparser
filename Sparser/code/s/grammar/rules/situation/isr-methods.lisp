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

                                ;;/// generalize to named-type ?
(def-k-method compose ((mgfr make-artifacts) (head car-type))
  "If the head (the kind argument) is abstract, then we need to
   make it concrete since a car manufacturers are makers of artifacts
   and those are always physical."
  (push-debug `(,mgfr ,head))
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
(def-k-method compose ((color color) (obj motor-vehicle)) ;;physical-surface))
  ;;/////////// pifflewart. Mixins need to be integrated into shadows
  ;;     by some means or another.
  ;;// probably should be physical, but not clear how quite
  ;; to conceptualize, e.g., the plastic of the car body or
  ;; the clay of the statue. Do these things attribute directly
  ;; to physical, or to an intermediary that holds these properties
  (push-debug `(,color ,obj))
  (add-relation 'color obj color)
  obj)

(def-k-method compose ((aux have) (e event))
  ;; corresponds to a form rule. Not clear there's anything to do
  ;; at the situation level that wasn't done with the subtype already
  (declare (ignore aux))
  ;;(push-debug `(,e)) (break "bindings on e ?")
  (when (referential-category-p e)
    ;; This lets the suv get bound as the theme of "enter"
    (setq e (make/individual e nil)))
  e)


;; can-change-location + move
(def-k-method compose ((theme can-change-location) (e move))
  (push-debug `(,theme ,e)) ;;(break "e has theme?")
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
  e )

(def-k-method compose ((e move) (loc container))
  (push-debug `(,e ,loc)) ;; (setq e (car *) loc (cadr *))
#| move: when-bound(to-location)
     assert: (moved-to theme to-location)
|#
  (let ((theme (value-of 'theme e)))
    (unless theme
      (error "We lost the theme binding somewhere"))
    (add-relation 'present-location theme loc)
    e))
