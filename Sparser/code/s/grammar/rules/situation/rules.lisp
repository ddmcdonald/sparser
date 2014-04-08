;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "rules"
;;;            grammar/rules/situation/
;;;  version:  March 2014

;; Initiated 3/20/14 to collect all the cases, the grammar, from the
;; individual files into one place.

(in-package :sparser)

;;;----------------
;;; the indexicals
;;;----------------

(define-indexical-variable current-np-referent)
(define-indexical-variable current-vg-referent)

(define-indexical-variable subject)


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
   ))

;;--- VGs

(define-state :assembling-vg phrase
  ((verb+s :assembling-vg)
   ))



;;--- sentence level

;; inital -> subject-seen -> verb-seen -> np-complement-seen

(define-state :subject-seen sentence nil)

(define-state :initial-sentence-state sentence
  ((np :subject-seen)))


;;;------------------
;;; Additional rules
;;;------------------

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


;;;---------
;;; methods
;;;---------
;; These depend on the categories that the reference being already
;; defined. Barring a substantial reorganization of the load order
;; it's simplest to include them here. 

(def-k-method compose ((mgfg car-manufacturer) (kind car-type))
  (push-debug `(,mgfg ,kind))
  (break "got here - compose"))



