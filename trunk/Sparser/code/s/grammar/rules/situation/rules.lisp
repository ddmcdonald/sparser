;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "rules"
;;;            grammar/rules/situation/
;;;  version:  May 2014

;; Initiated 3/20/14 to collect all the cases, the grammar, from the
;; individual files into one place. Incremental extensions through
;; 5/12/14. 

(in-package :sparser)

;;;----------------
;;; the indexicals
;;;----------------

(define-indexical-variable current-np-referent)
(define-indexical-variable current-vg-referent)

(define-indexical-variable subject)
(define-indexical-variable verb)
(define-indexical-variable object)


;;-- If there's one indexical per state as a starting draft,
;; then we can predefine the association.

(defun indexical-for-state (state)
  ;; called from incorporate-referent-into-the-situation when the
  ;; state changes within a segment, which it must since all 
  ;; segments start out in :inital-state.
  (case (name state)
    (:assembling-np (get-indexical-variable 'current-np-referent))
    (:assembling-vg (get-indexical-variable 'current-vg-referent))
    (:subject-seen (get-indexical-variable 'subject))
    (:verb-seen (get-indexical-variable 'verb))
    (:np-complement-seen (get-indexical-variable 'object))
    (otherwise
     (error "The state ~a is not (yet) associated with an indexical"
            state))))

(defun activate-initial-indexical (edge peg)
  ;; called from incorporate-referent-into-the-situation when
  ;; we're starting a new phrase (phrase-state = :initial-state).
  ;; Look at the form of the edge to get an indication
  ;; of what the new phrase's category will be, then consult
  ;; the sentence state to determine what to set up
  (let ((form (edge-form edge))
        (state (sentential-state)))
    (cond
     ((or (modifier-category? edge) ;;/// "two", "every"
          (noun-category? edge))
      (activate-current-np-referent peg))
     ((or (aux/modal-category? edge)
          (verb-category? edge))
      (activate-current-vg-referent peg))
     (t (push-debug `(,edge ,peg))
        (break "New case in activate-initial-indexical:~
             ~%  form = ~a sentence-state = ~a"
               form state)))))


;;;--------------------------------------------------------------
;;; What variable (predicate) goes on the peg for a given object
;;;--------------------------------------------------------------

(defun add-referent-to-peg (referent peg)
  ;; A staging point for reworking this dispatch/lookup.
  ;; called from incorporate-referent-into-the-situation when it
  ;; is not the phrasal head being added.
  (push-debug `(,referent ,peg))
  (let ((type (cat-symbol (category-of referent))))
    (add-to-peg type referent peg)))

(defmethod add-to-peg ((type symbol) ;;(eql 'category::color))
                       (value t) ;; premature?
                       (peg t)) ;; ditto
  (push-debug `(,type ,peg ,value))
  (let ((variable ;; a real one
         (lookup-variable-for-value-type type)))
    (bind-variable-on-peg peg variable value)))

(defun lookup-variable-for-value-type (symbol)
  ;;/// This is a total hack since it should be done by inverting
  ;; the rule's mapping. Probably easily added to the schema.
  (case symbol
    (category::have ;; any pre-head auxiliary
     (find-variable-in-category 'aspect 'event))
    (category::color
     (find-variable-in-category 'color 'physical-surface))
    (category::car-manufacturer ;; generalize to maker-of-artifacts
     (find-variable-in-category 'made-by 'artifact))
    (otherwise
     (push-debug `(,symbol))
     (break "No variable associated with the category symbol ~a"
            symbol))))


;;;--------
;;; states
;;;--------
;;  Define before mention is easy on the code.
;;  Forward ref. is tricky w/o knowing the level of the state

;;--- NPs

(define-state :assembling-np phrase ;; "Ford" (but actually "ford")
  ((proper-noun :assembling-np)
   ))

(define-state :initial-state phrase ;; "black"
  ((adjective :assembling-np)
   (verb+s :assembling-vg) ;; "has" when not a head
   (number :assembling-np)
   ))

;;--- VGs

(define-state :assembling-vg phrase
  ((verb+s :assembling-vg)
   ))



;;--- sentence level

;; inital -> subject-seen -> verb-seen -> np-complement-seen

(define-state :np-complement-seen sentence nil)

(define-state :verb-seen sentence
  ((proper-noun :np-complement-seen)))

(define-state :subject-seen sentence
  ((vg :verb-seen)))

(define-state :initial-sentence-state sentence
  ((np :subject-seen)))


;;;------------------
;;; Additional rules
;;;------------------

;;---- Syntactic rules
;; These can't be allowed out 'into the wild' except under
;; very controlled cirumstances since they can overgenerate
;; and introduce ambiguity.

;; All the good stuff is in the compose methods

(def-syntax-rule (proper-noun proper-noun) ;; "ford suv"
                 :head :right-edge ; 
  :form n-bar ;; requires a determiner 
  :referent (:head right-edge)) ;; modifer ??  classifier ??
  

(def-syntax-rule (adjective n-bar) ;; "black suv"
                 :head :right-edge
  :form np ;;/// cutting corners
  :referent (:head right-edge))


(def-syntax-rule (np vg)
                 :head :right-edge
  :form subj+verb
  :referent (:head right-edge))


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

              


