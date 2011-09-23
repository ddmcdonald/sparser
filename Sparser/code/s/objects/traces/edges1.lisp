;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990-2005  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: edges1.lisp 110 2007-08-27 18:36:52Z dmcdonal $
;;; 
;;;     File:  "edges"
;;;   Module:  "objects;traces:"
;;;  Version:  1.2 August 2007

;; initiated 8/90
;; 10/30/91 added *trace-paired-punctuation*. 6/18/92 added *trace-terminal-edges*
;; 1.0 (3/8/93 v2.3) tweeked definition of :multiply-succeeded to allow for
;;       multiple completions
;;       5/7 added cases for marching, 5/15 added case in check organizers.
;;       5/5/94 added functions for turning both sets on/off
;; 1.1 (5/12) added traces for brackets introduced from edges
;;     (9/28) tweeked traces for check
;;     (12/29) added more at the beginning of Multiply and its dispatch
;; 1.2 (12/30) cleaned up and added cases for syntax rules
;;     (2/9/05) Adding traces for multiplying referent categories. 4/1 added one
;;      for mulitiple completions.
;;     (8/21/07) Added cases for threading through multiply to debug its rebuild.

(in-package :sparser)


(defun trace-edges ()             ;; for meta-point
  (setq *trace-check-edges* t
        *trace-edge-creation* t
        *parse-edges* t))

(defun untrace-edges ()
  (setq *trace-check-edges* nil
        *trace-edge-creation* nil
        *parse-edges* nil))


;;;-----------------------------------------------------------
;;; the creation operation -- in the individual edge routines
;;;-----------------------------------------------------------

(defun trace-edge-creation ()
  (setq *trace-edge-creation* t))

(defun untrace-edge-creation ()
  (setq *trace-edge-creation* nil))

#| n.b. these haven't been converted to TR format yet |#

;;;---------------------
;;; the Check operation
;;;---------------------

(defun trace-edge-check ()
  (setq *trace-check-edges* t))

(defun untrace-edge-check ()
  (setq *trace-check-edges* nil))


;;;---------------------------------------------------
;;; details (e.g. threading of the multiply operation
;;;---------------------------------------------------

(defparameter *trace-edge-multiplication* nil)

(defun trace-edge-multiplication ()
  (setq *trace-edge-multiplication* t))

(defun untrace-edge-multiplication ()
  (setq *trace-edge-multiplication* nil))



;;--- w/in Multiply-edges

(deftrace :multiply-edges (left-edge right-edge)
  ;; called at the top of Multiply-edges before the check
  (when *trace-check-edges*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge))
          (left-label (edge-category left-edge))
          (right-label (edge-category right-edge)))
      (trace-msg "[Multiply] Checking (e~A+e~A)  ~A + ~A"
                 left# right# left-label right-label))))


(deftrace :right-side-is-composite ()
  ;; called from Multiply-edges for this special case
  (when *trace-check-edges*
    (trace-msg "   The right edge has a composite-referent.")))

(deftrace :using-ids-of-left-referent (left-edge left-ref-category)
  ;; called from mult/right-composite
  (when *trace-check-edges*
    (trace-msg "  No right-looking ids on ~a,~
              ~%  but there are on the category of its referent: ~a"
               (edge-category left-edge) left-ref-category)))

(deftrace :trying-category-in-composite (category)
  ;; called from mult/right-composite
  (when *trace-check-edges*
    (trace-msg "    trying ~a" category)))



(deftrace :right-edge-is-dotted (right-edge)
  ;; called from Multiply-edges for this special case
  (when *trace-check-edges*
    (trace-msg "   but the right edge, e~A, is dotted and can't possibly combine"
               (edge-position-in-resource-array right-edge))))

(deftrace :both-have-category-ids ()
  ;; called from Multiply-categories
  (when *trace-check-edges*
    (trace-msg "[Multiply]    both labels have some ids")))

(deftrace :only-L/R-has-category-ids (left-category-ids right-category-ids)
  ;; called from Multiply-categories
  (when *trace-check-edges*
    (if left-category-ids
      (trace-msg "[Multiply]    only the left has category ids")
      (trace-msg "[Multiply]    only the right has category ids"))))


(deftrace :only-left-category-has-ids ()
  ;; called from Multiply-edges in its dispatch
  (when *trace-check-edges*
    (trace-msg "   only the left label has any ids")))

(deftrace :but-left-has-no-form-id ()
  (when *trace-check-edges*
    (trace-msg "   but it doesn't have a form id~
              ~%      so we can't look at the right form label")))


(deftrace :only-right-category-has-ids ()
  ;; called from Multiply-edges in its dispatch
  (when *trace-check-edges*
    (trace-msg "   only the right label has any ids")))

(deftrace :but-right-has-no-form-id ()
  (when *trace-check-edges*
    (trace-msg "   but it doesn't have a form id~
              ~%      so we can't look at the left form label")))



(deftrace :no-ids-on-either-edge ()
  ;; called from Multiply-edges in its dispatch
  (when *trace-check-edges*
    (trace-msg "   but neither label has category or form combinations")))



;;--- for multiplying referent categories

(deftrace :multiplying-referent-categories ()
  (when *trace-check-edges*
    (trace-msg "Edge labels did not complete, so looking at referents")))

(deftrace :referent-categories-to-check (left-categories right-categories)
  (when *trace-check-edges*
    (trace-msg "  The left referent has the categories: ~a~
              ~%  The right has ~a" left-categories right-categories)))

(deftrace :multiply-edges-by-referent-category (left-category right-category
                                                left-edge right-edge)
  (when *trace-check-edges*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge)))
      (trace-msg "Checking (e~a+e~a)  ~a + ~a"
                 left# right# left-category right-category))))



;;--- Checks on form labels

(deftrace :checking-form-label-category-rules ()
    (when *trace-check-edges*
      (trace-msg "[Multiply] one of the edges' form labels has category ids")))

(deftrace :cat-ids-on-right-form-label (left-edge right-edge)
  (when *trace-check-edges*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge))
          (left-label (edge-category left-edge))
          (right-label (edge-form right-edge)))
      (trace-msg "[Multiply] Checking (e~A+e~A)  ~A + ~A"
		 left# right# left-label right-label))))

(deftrace :cat-ids-on-left-form-label (left-edge right-edge)
  (when *trace-check-edges*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge))
	  (left-label (edge-form left-edge))
	  (right-label (edge-category right-edge)))
      (trace-msg "[Multiply] Checking (e~A+e~A)  ~A + ~A"
		 left# right# left-label right-label))))

(deftrace :neither-has-category-on-form-ids ()
  (when *trace-check-edges*
    (trace-msg "[Multiply] neither of the edges' form labels has category ids")))





;;--- elsewhere

(deftrace :multiply-succeeded (rule left-edge right-edge)
  ;; called inside Multiply-edges on the succeed side
  (declare (ignore left-edge right-edge))
  (when *trace-check-edges*
    (if (listp rule)
      (then
        (trace-msg "[Multiply]    more than one rule succeeded:")
        (dolist (r rule)
          (format t "~&[Multiply]       ~A~%" r)))
      (else
        (format *trace-stream*
                "[Multiply]    it succeeded with ~A~
              ~%      " (symbol-name (cfr-symbol rule)))
        (princ-cfr rule *trace-stream*)
        (terpri)))))


(deftrace :multiply-failed (left-edge right-edge)
  ;; called from check-for-form-rule when neither edge has
  ;; a form id
  (when *trace-check-edges*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge)))
      (declare (ignore left# right#))
      (trace-msg "   which do not combine"))))



(deftrace :both-right-and-left-label-ids ()
  (when *trace-check-edges*
    (trace-msg "[Multiply]    both edges have category combinations")))

(deftrace :neither-category-id ()
  (when *trace-check-edges*
    (trace-msg "   neither edge has a category combination")))

(deftrace :neither-form-id ()
  (when *trace-check-edges*
    (trace-msg "   neither edge has a form combination")))


(deftrace :no-right-category-id ()
  (when *trace-check-edges*
    (trace-msg "   no category combinations for the right edge")))

(deftrace :no-left-form-id ()
  (when *trace-check-edges*
    (trace-msg "   and no form combinations for the left edge")))




(deftrace :no-left-category-label-id ()
  (when *trace-check-edges*
    (trace-msg "   no category combinations for the left edge")))

(deftrace :no-right-form-id ()
  (when *trace-check-edges*
    (trace-msg "   and no form combinations for the right edge")))



(deftrace :left-form-id (left-edge right-edge)
  ;; called from check-for-form-rule when the left edge has a form id
  (when *trace-check-edges*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge))
          (left-form-label (edge-form left-edge))
          (right-label (edge-category right-edge)))
      (trace-msg "Trying ~A (form) + ~A   (e~A+e~A)"
                 left-form-label right-label left# right#))))



(deftrace :right-form-id (left-edge right-edge)
  ;; called from check-for-form-rule when the right edge has a form id
  (when *trace-check-edges*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge))
          (right-form-label (edge-form right-edge))
          (left-label (edge-category left-edge)))
      (trace-msg "Trying ~A + ~A (form)   (e~A+e~A)"
                 left-label right-form-label left# right#))))




(deftrace :left-form-id-succeeded (rule left-edge right-edge)
  (when *trace-check-edges*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge))
          (new-label (cfr-category rule)))
      (declare (ignore left# right#))
      (trace-msg "   which succeeded (~A)" new-label))))


(deftrace :right-form-id-succeeded (rule left-edge right-edge)
  (when *trace-check-edges*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge))
          (new-label (cfr-category rule)))
      (declare (ignore left# right#))
      (trace-msg "   which succeeded (~A)" new-label))))


(deftrace :left-form-id-failed (left-edge right-edge)
  (when *trace-check-edges*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge)))
      (declare (ignore left# right#))
      (trace-msg "   which do not compose"))))

;;//// revise through out
(deftrace :right-form-id-failed (left-edge right-edge)
  (when *trace-check-edges*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge)))
      (declare (ignore left# right#))
      (trace-msg "   which do not compose"))))


;;--- pure syntax checks

(deftrace :looking-for-syntactic-combination ()
  ;; called from Check-form-form
  (when *trace-check-edges*
    (trace-msg "   Looking for purely syntactic combinations")))


(deftrace :both-form-labels-have-ids ()
  ;; called from Check-form-form
  (when *trace-check-edges*
    (trace-msg "     The form labels on both edges have ids")))


(deftrace :syntactic-combination-succeeded (rule)
  ;; called from Check-form-form
  (when *trace-check-edges*
    (trace-msg "        which succeeded (~A)"
               (cfr-symbol rule))))

(deftrace :syntactic-combination-failed ()
  ;; called from Check-form-form
  (when *trace-check-edges*
    (trace-msg "        which do not compose")))



(deftrace :no-form-id-on-right-form-label ()
  ;; called from Check-form-form
  (when *trace-check-edges*
    (trace-msg "     but the form label on the right edge ~
                has no form id")))

(deftrace :no-form-id-on-left-form-label ()
  ;; called from Check-form-form
  (when *trace-check-edges*
    (trace-msg "     but the form label on the left edge ~
                has no form id")))

(deftrace :neither-form-label-has-form-ids ()
  ;; called from Check-form-form
  (when *trace-check-edges*
    (trace-msg "     but the form labels on both edge ~
                do not have form ids")))


(deftrace :no-rules-mention-right-form-label (label)
  ;; called from Check-form-form
  (when *trace-check-edges*
    (trace-msg "     but the right form label (~A)~
              ~%       has no left-looking rules"
               (cat-symbol label))))

(deftrace :no-rules-mention-left-form-label (label)
  ;; called from Check-form-form
  (when *trace-check-edges*
    (trace-msg "     but the left form label (~A)~
              ~%       has no right-looking rules"
               (cat-symbol label))))


(deftrace :no-form-label-on-right-edge (e)
  ;; called from Check-form-form
  (when *trace-check-edges*
    (trace-msg "     but the right edge (e~A)~
              ~%       has no form label"
              (edge-position-in-resource-array e))))

(deftrace :no-form-label-on-left-edge (e)
  ;; called from Check-form-form
  (when *trace-check-edges*
    (trace-msg "     but the left edge (e~A)~
              ~%       has no form label"
              (edge-position-in-resource-array e))))
               



;;;--------------
;;; making edges
;;;--------------


(deftrace :completed-default-binary-edge (edge left right rule)
  ;; called from make-default-binary-edge
  (when *trace-check-edges*
    (trace-msg "  creating e~A  from e~A + e~A via ~A"
               (edge-position-in-resource-array edge)
               (edge-position-in-resource-array left)
               (edge-position-in-resource-array right)
               (symbol-name (cfr-symbol rule)))))



;;;------------------------
;;; the Marching operation
;;;------------------------

(def-trace-parameter *parse-edges*   "phrase structure parsing"
  "traces the process walking through the chart")

;(setq *parse-edges* t)
;(setq *parse-edges* nil)


(deftrace :left-boundary-reached ()
  ;; called from March-back-from-the-right/segment
  (when *parse-edges*
    (trace-msg "[March] Reached the left segment boundary")))

(deftrace :went-beyond-left-boundary ()
  ;; called from March-back-from-the-right/segment
  (when *parse-edges*
    (trace-msg "[March] Somehow overshot the left boundary")))


(deftrace :looking-right-from (position)
  ;; called from March-back-from-the-right/segment
  (when *parse-edges*
    (trace-msg "[March] Looking rightward for an edge ending at p~A"
               (pos-token-index position))))

(deftrace :seg-march/nothing-there ()
  ;; called from March-back-from-the-right/segment
  (when *parse-edges*
    (trace-msg "[March]     There was no edge there")))

(deftrace :seg-march/multiple-end-at (ev)
  ;; called from March-back/segment/2
  (when *parse-edges*
    (trace-msg "[March]     Multiple edges end at p~A."
               (pos-token-index (ev-position ev)))))
    ;;/// add list of the edges

(deftrace :seg-march/single-ends-at (edge)
  ;; called from March-back/segment/2
  (declare (ignore position))
  (when *parse-edges*
    (trace-msg "[March]     ~A ends there."
               edge)))

(deftrace :edge-starts-at-seg-boundary (edge)
  ;; called from Do-single/left
  (when *parse-edges*
    (trace-msg "[March] ~A starts on the segment boundary"
               edge)))

(deftrace :looking-right-for-adjacent-edge (position edge)
  ;; called from Do-single/left
  (when *parse-edges*
    (trace-msg "[March] Looking leftwards from p~A for an edge ~
                adjacent to e~A"
               (pos-token-index position)
               (edge-position-in-resource-array edge))))



;;;----------------------------------
;;; within the Check routines proper
;;;----------------------------------

(deftrace :multiple-completions (already-completed new-completion)
  (when *parse-edges*
    (trace-msg "Already completed rule ~A~
                ~%   and also completing ~A"
               already-completed new-completion)))

(deftrace :ignoring-multple-form-rule (form-rule already-completed-rule)
  (when *parse-edges*
    (trace-msg "Ignoring form rule ~a~
                ~%   in favor of ~a"
               form-rule already-completed-rule)))


;;;-----------------------------------------------
;;; boundaries introduced from edges during march
;;;-----------------------------------------------

(deftrace :new-edge-assigns-brackets (edge assignment)
  (when *trace-network*
    (trace-msg "Newly created edge ~A~
                ~%   introduces boundaries: ~A"
               edge assignment)))


(deftrace :redundant-assignments-to-left ()
  (when *trace-network*
    (trace-msg "   But its starting brackets overlap with the ~
                left segment boundary")))

(deftrace :redundant-assignments-to-right ()
  (when *trace-network*
    (trace-msg "   But its ending brackets  overlap with the ~
                right segment boundary")))



;;;-----------------------------
;;; introduction over terminals
;;;-----------------------------

(deftrace :making-edge-over-digit-sequence (edge)
  (when *trace-check-edges*
    (trace-msg "introducing edge over digits:~%  ~A" edge)))

(deftrace :making-edge-over-unknown-word/morph (edge)
  (when *trace-check-edges*
    (trace-msg "introducing edge because of word's morphology:~
                ~%  ~A" edge)))


(deftrace :word-has-n-single-term-rules (word list-of-cfrs)
  (when *trace-check-edges*
    (trace-msg "The word \"~A\" has ~A single-term rules:~
                ~%  ~A" (word-pname word) (length list-of-cfrs)
               list-of-cfrs)))

(deftrace :making-edge-over-literal (edge)
  (when *trace-check-edges*
    (trace-msg "introducing edge over literal:~
                ~%  ~A" edge)))

(deftrace :making-single-term-edge (edge)
  (when *trace-check-edges*
    (trace-msg "introducing single-term edge:~
                ~%  ~A" edge)))


;;;----------------
;;; old parameters
;;;----------------

(defparameter *trace-edge-resource* nil)

(defparameter *trace-edge-just-done* nil)

(defparameter *trace-terminal-edges* nil)

(defparameter *trace-paired-punctuation* nil)



;;; details in creating references

(defparameter *trace-referent-creation*  nil)

(defun trace-referent-creation ()
  (setq *trace-referent-creation* t))

(defun untrace-referent-creation ()
  (setq *trace-referent-creation* nil))

(deftrace :ref-unary-rule (edge rule)
  (when *trace-referent-creation*
    (trace-msg "Doing referent for ~a~%    using ~a" edge rule)))

(deftrace :rule-field-is-a-list ()
  (when *trace-referent-creation*
    (trace-msg "Rule field is a list")))

(deftrace :direct-referent (rule-field)
  (when *trace-referent-creation*
    (trace-msg "Direct referent: ~a" rule-field)))

(deftrace :simple-unary-dispatch (rule-field)
  (when *trace-referent-creation*
    (trace-msg "Dispatching: ~a" rule-field)))

(deftrace :instantiated-an-individual (i)
  (when *trace-referent-creation*
    (trace-msg "Instantiated ~a" i)))

(deftrace :ref-returning-individual (i)
  (when *trace-referent-creation*
    (trace-msg "Referent is the individual ~a" i)))


;;;------------------------------------------------------
;;; threading of the calls within the multiply operation
;;;------------------------------------------------------

;; :multiply-edges (near the top) is the entry point

(deftrace :muliply-categories ()
  (when *trace-edge-multiplication*
    (trace-msg "[Multiply threading] Called muliply-categories")))

(deftrace :mult/ids-on-form-label ()
  (when *trace-edge-multiplication*
    (trace-msg "[Multiply threading] Called mult/ids-on-form-label")))

(deftrace :try-mult/left-category-right-form_category-id ()
  (when *trace-edge-multiplication*
    (trace-msg "[Multiply threading] Called try-mult/left-category-right-form_category-id")))

(deftrace :mult/right-category-left-form_category-id ()
  (when *trace-edge-multiplication*
    (trace-msg "[Multiply threading] Called try-mult/right-category-left-form_category-id")))
  

(deftrace :mult/check-form-options ()
  (when *trace-edge-multiplication*
    (trace-msg "[Multiply threading] Called mult/check-form-options")))

(deftrace :check-for-either-form-rule ()
  (when *trace-edge-multiplication*
    (trace-msg "[Multiply threading] Called check-for-either-form-rule")))

(deftrace :mult/just-Left-ids ()
  (when *trace-edge-multiplication*
    (trace-msg "[Multiply threading] Called mult/just-Left-ids")))

(deftrace :mult/just-Right-ids ()
  (when *trace-edge-multiplication*
    (trace-msg "[Multiply threading] Called mult/just-Right-ids")))


