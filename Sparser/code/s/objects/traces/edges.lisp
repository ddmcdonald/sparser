;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990-2005,2013-2019  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "edges"
;;;   Module:  "objects;traces:"
;;;  Version:  March 2019

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
;;     (3/8/13) Added *trace-do-edge* which is used outside of the tr machinery in
;;      drivers/chart/psp/march-seg and presumably elsewhere. Moved out the forest
;;      traces to traces/treetops. 4/20/15 wrote trace-rules-source-and-validity

(in-package :sparser)

;; Candidate replacement for trace-edges that focuses on
;; what rules are being offered up
(defun trace-multiply ()
  (trace-rules)
  (trace-rule-source)
  (trace-rules-validity))
(defun untrace-multiply ()
  (untrace-rules)
  (untrace-rule-source)
  (untrace-rules-validity))


(defun trace-edges ()
  (setq *trace-check-edges* t
        *trace-do-edge* t 
        *trace-edge-creation* t
        *parse-edges* t))

(defun untrace-edges ()
  (setq *trace-check-edges* nil
         *trace-do-edge* nil
        *trace-edge-creation* nil
        *parse-edges* nil))

(defun trace-parse-edges ()
  (setq *parse-edges* t))
(defun untrace-parse-edges ()
  (setq *parse-edges* nil))

(defvar *trace-rules* nil
  "For the muliplications threading labels to rules")
(defun trace-rules ()
  (setq *trace-rules* t))
(defun untrace-rules ()
  (setq *trace-rules* nil))

(defvar *trace-rule-source* nil
  "What kind of rule was found")
(defun trace-rule-source ()
  (setq *trace-rule-source* t))
(defun untrace-rule-source ()
  (setq *trace-rule-source* nil))



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
  ;; called at the top of Multiply-categories
  (when (or *trace-rule-source*
            *trace-check-edges* *trace-edge-multiplication*
            *trace-rules-source-and-validity*)
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge)))
      (trace-msg "Checking e~A+e~A"
                 left# right#))))

#|
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
|#

#|
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
|#


;;--- multiply-categories

(deftrace :try-category-labels (left-label right-label)
  ;; called from try-these-labels-for-a-semantic-rule
  (when *trace-rules*
    (trace-msg "[category] trying ~a + ~a"
               (pname left-label) (pname right-label))))

(deftrace :multiply-succeeded (rule)
  ;; called from lookup-semantic-rule-given-ids
  (when *trace-rules*
    ;; Was code here that considered the possibility that multply
    ;; returned a list, but it wrote to the trace stream directly
    ;; and in CCL anyway that's not coming through
    (when (listp rule) ;; so ignoring it
      (setq rule (car rule)))
    (trace-msg "[category]  They succeeded ~A"
               (symbol-name (cfr-symbol rule)))))

(deftrace :multiply-failed ()
  ;; called from lookup-semantic-rule-given-ids
  (when *trace-rules*
    (trace-msg "[category]  which do not combine")))

(deftrace :one-or-both/does-not-have-category-multiplier (left-label-id right-label-id)
  ;; called from multiply-categories
  (when *trace-rules*
    (let ((statement
           (cond ((and (null left-label-id) (null right-label-id))
                  "neither has a rule id")
                 ((null left-label-id)
                  "the left label doesn't have a category multiplication id")
                 ((null right-label-id)
                  "the right label doesn't have a category multiplication id")
                 (t (error "shouldn't get here")))))
      (trace-msg "[category] ~a" statement))))
    
(deftrace :only-L/R-has-category-ids (left-category-ids right-category-ids)
  (declare (ignore right-category-ids))
  ;; called from Multiply-categories
  (when *trace-rules*
    (if left-category-ids
      (trace-msg "[category]    only the left has category ids")
      (trace-msg "[category]    only the right has category ids"))))



;;--- form rules

(deftrace :multiply-form (left-edge right-edge)
  ;; called from multiply-form-category
  (when *trace-rules*
    (trace-msg "[form] Looking for form rules to compose e~a with e~a"
               (edge-position-in-resource-array left-edge)
               (edge-position-in-resource-array right-edge))))

(deftrace :checking-form-label-category-rules ()
  ;; called from multiply-form-category
  (when *trace-rules*
    (trace-msg "[form] at least one of the edges' form labels composes with category-labels")))
    
(deftrace :neither-has-category-id ()
  ;; called from multiply-form-category
  (when *trace-rules*
    (trace-msg "[form] neither form label has a category combination")))


(deftrace :left-form/right-category-succeeded (rule)
  ;; called from look-for-either-form-rule
  (when *trace-rules*
    (trace-msg "[form] ~a returned by multiplying the left form against the right category"
               rule)))

(deftrace :right-form/left-category-succeeded (rule)
  ;; called from look-for-either-form-rule
  (when *trace-rules*
    (trace-msg "[form] ~a returned by multiplying the right form against the left category"
               rule)))

(deftrace :form-multiply-failed (left-edge right-edge)
  ;; called from look-for-either-form-rule
  (when *trace-rules*
    (trace-msg "[form] there is no form rule that combines e~a and e~a"
               (edge-position-in-resource-array left-edge)
               (edge-position-in-resource-array right-edge))))



(deftrace :left-form-id (left-edge right-edge)
  ;; called from look-left-for-form-rule
  (when *trace-rules*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge))
          (left-form-label (edge-form left-edge))
          (right-label (edge-category right-edge)))
      (trace-msg "[form] form label ~a looking rightward ~
                 for a rule combining it with ~a (e~A+e~A)"
                 left-form-label right-label left# right#))))

(deftrace :left-form-id-succeeded (rule left-edge right-edge)
  ;; called from look-left-for-form-rule
  (when *trace-rules*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge)))
      (trace-msg "[form] form rule ~a returned for e~a + e~a"
                 rule left# right#))))

(deftrace :left-form-id-failed (left-edge right-edge)
  ;; called from look-left-for-form-rule
  (when *trace-rules*
    (let ((left-form-label (edge-form left-edge))
          (right-label (edge-category right-edge)))
      (trace-msg "[form] no form rule combines ~a with ~a"
                 left-form-label right-label))))




(deftrace :right-form-id (left-edge right-edge)
  ;; called from look-right-for-form-rule when the right edge has a form id
  (when *trace-rules*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge))
          (right-form-label (edge-form right-edge))
          (left-label (edge-category left-edge)))
      (trace-msg "[form] form label ~a looking leftward ~
                  for rule combining it with ~a (e~A+e~A)"
                 right-form-label left-label left# right#))))

(deftrace :right-form-id-succeeded (rule left-edge right-edge)
  ;; called from look-right-for-form-rule
  (when *trace-rules*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge)))
      (trace-msg "[form] form rule ~a returned for e~a + e~a"
                 rule left# right#))))

(deftrace :right-form-id-failed (left-edge right-edge)
  (when *trace-rules*
    (let ((left# (edge-position-in-resource-array left-edge))
          (right# (edge-position-in-resource-array right-edge)))
      (trace-msg "[form] no form rule combines e~a with e~a"
                  left# right#))))


;;--- Syntactic rules

(deftrace :looking-for-syntactic-combination ()
  ;; called from multiply-form-form
  (when *trace-rules*
    (trace-msg "[syn] Looking for purely syntactic combinations")))

(deftrace :both-form-labels-have-ids (left-form-label right-form-label)
  ;; called from multiply-form-form
  (when *trace-rules*
    (trace-msg "[syn] Both form labels (~a ~a) have form ids"
               (cat-symbol left-form-label)
               (cat-symbol right-form-label))))

(deftrace :syntactic-combination-succeeded (rule)
  ;; called from multiply-form-form
  (when *trace-rules*
    (trace-msg "[syn] which compose (~A)"
               (cfr-symbol rule))))

(deftrace :syntactic-combination-failed ()
  ;; called from multiply-form-form
  (when *trace-rules*
    (trace-msg "[syn] which do not compose")))


(deftrace :no-form-id-on-right-form-label ()
  ;; called from multiply-form-form
  (when *trace-rules*
    (trace-msg "[syn] but the form label on the right edge ~
                has no form id")))

(deftrace :no-form-id-on-left-form-label ()
  ;; called from multiply-form-form
  (when *trace-rules*
    (trace-msg "[syn]  but the form label on the left edge ~
                has no form id")))

(deftrace :neither-form-label-has-form-ids ()
  ;; called from multiply-form-form
  (when *trace-rules*
    (trace-msg "[syn] but the form labels on both edge ~
                do not have form ids")))


(deftrace :no-rules-mention-right-form-label (label)
  ;; called from multiply-form-form
  (when *trace-rules*
    (trace-msg "[syn] but the right form label (~A)~
              ~%    has no left-looking rules"
               (cat-symbol label))))

(deftrace :no-rules-mention-left-form-label (label)
  ;; called from multiply-form-form
  (when *trace-rules*
    (trace-msg "[syn] but the left form label (~A)~
              ~%     has no right-looking rules"
               (cat-symbol label))))


(deftrace :no-form-label-on-right-edge (e)
  ;; called from multiply-form-form
  (when *trace-rules*
    (trace-msg "[syn] but the right edge (e~A)~
              ~%    has no form label"
              (edge-position-in-resource-array e))))

(deftrace :no-form-label-on-left-edge (e)
  ;; called from multiply-form-form
  (when *trace-rules*
    (trace-msg "[syn] but the left edge (e~A)~
              ~%     has no form label"
              (edge-position-in-resource-array e))))
               


;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



    
(deftrace :no-ids-on-either-edge ()
  ;; called from Multiply-edges in its dispatch
  (when *trace-check-edges*
    (trace-msg "   but neither label has category or form combinations")))





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





;;--- elsewhere



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









(deftrace :left-form-id-succeeded (rule left-edge right-edge)
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


;;;-------------------------------
;;; in the best-edge calculations
;;;-------------------------------

(deftrace :interpeting-chunk (chunk from-right?)
  (declare (special *trace-chunker*))
  ;; called from interp-big-mech-chunk
  (when (or *parse-edges* *trace-chunker*)
    (trace-msg "Parsing the chunk ~a ~a"
               chunk
               (if from-right? "from the right"
                   "from the left"))))

(deftrace :pairs-in-segment (pairs)
  ;; called from collect-triples-in-segment
  (when *parse-edges*
    (let ((length (length pairs)))
      (case length
        (0 
         (trace-msg "The segment has no edge-pairs"))
        (1
         (trace-msg "The segment has 1 edge-pair: ~a"
                    (format-edge-pair (car pairs))))
        (otherwise
         (trace-msg "The segment has ~a edge-pairs:~{ ~a~}"
                    length
                    (loop for p in pairs
                       collect (format-edge-pair p))))))))

(deftrace :find-rule-for-edge-pair (left right)
  ;; called from segment-rule-check
  (when *parse-edges*
    (trace-msg "Checking for rule composing e~a and e~a"
               (edge-position-in-resource-array left)
               (edge-position-in-resource-array right))))

(deftrace :not-using-rule/verb-in-np-context (rule)
  ;; called from segment-rule-check
  (when *parse-edges*
    (trace-msg "  NP context. Ruling out verb-centric rule ~a" rule)))

(deftrace :found-rule-for-pair (rule)
  ;; called from segment-rule-check
  (when *parse-edges*
    (trace-msg "  found ~a" rule)))

(deftrace :no-rule-for-pair ()
  ;; called from segment-rule-check
  (when *parse-edges*
    (trace-msg "  no rule found")))

(deftrace :segment-starts-with-NP-specifier (triple)
  ;; called from collect-triples-in-segment
  (when *parse-edges*
    (trace-msg "NP segment starts with specifier: ~a"
               (format-triple triple))))

(deftrace :n-triples-apply (triples)
  ;; called from select-best-triple
  (when *parse-edges*
    (let ((length (length triples)))
      (case length
        (0
         (trace-msg "There are no triples to choose from"))
        (1
         (trace-msg "There is 1 triple: ~a"
                    (format-triple (car triples))))
        (otherwise
         (trace-msg "There are ~a triples to choose from:~{~&  ~a~}"
                    length
                    (loop for tr in triples
                       collect (format-triple tr))))))))

(deftrace :non-syntactic-rules-used? (list-of-triples)
  ;; called from select-best-triple
  (when *parse-edges*
    (let ((length (length list-of-triples)))
      (case length
        (0
         (trace-msg "All use syntactic rules"))
        (otherwise
         (trace-msg "Some use non-syntactic rules"))))))

(deftrace :n-priority-triples (triples)
  ;; called from select-best-triple
  (when *parse-edges*
    (trace-msg "Selecting from ~a priority triples:~{~&  ~a~}"
               (length triples) triples)))

(deftrace :n-default-triples (triples)
  ;; called from select-best-triple
  (when *parse-edges*
    (trace-msg "Selecting from ~a default triples:~{~&  ~a~}"
               (length triples) triples)))

(deftrace :selecting-first-for-adjg ()
  ;; called from select-best-triple
  (when *parse-edges*
    (trace-msg "Selecting the leftmost triple")))

(deftrace :selected-best-triple (triple)
  ;; called from select-best-triple
  (when *parse-edges*
    (let ((rule (car triple))
          (left (cadr triple))
          (right (caddr triple)))
      (trace-msg "Selecting ~a" (format-triple triple)))))
                 
#|
Applying ~a to compose e~a and e~a"
               (rule-number-string rule)
               (edge-position-in-resource-array left)
               (edge-position-in-resource-array right) |#

(deftrace :triple-led-to-edge (edge)
  (when *parse-edges*
    (trace-msg "  creating ~a" edge)))





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
  (when (or *trace-morphology* *trace-check-edges*)
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

(defvar *trace-multiply-threading* nil
  "Matches the function calls")
(defun trace-multiply-threading ()
  (setq *trace-multiply-threading* t))
(defun untrace-multiply-threading ()
  (setq *trace-multiply-threading* nil))


(deftrace :muliply-categories ()
  (when *trace-multiply-threading*
    (trace-msg "[Multiply threading] Called muliply-categories")))

(deftrace :mult/ids-on-form-label ()
  (when *trace-multiply-threading*
    (trace-msg "[Multiply threading] Called mult/ids-on-form-label")))

(deftrace :try-mult/left-category-right-form_category-id ()
  (when *trace-multiply-threading*
    (trace-msg "[Multiply threading] Called try-mult/left-category-right-form_category-id")))

(deftrace :mult/right-category-left-form_category-id ()
  (when *trace-multiply-threading*
    (trace-msg "[Multiply threading] Called try-mult/right-category-left-form_category-id")))
  
(deftrace :mult/check-form-options ()
  (when *trace-multiply-threading*
    (trace-msg "[Multiply threading] Called mult/check-form-options")))

(deftrace :check-for-either-form-rule ()
  (when *trace-multiply-threading*
    (trace-msg "[Multiply threading] Calling look-for-either-form-rule")))

(deftrace :mult/just-Left-ids ()
  (when *trace-multiply-threading*
    (trace-msg "[Multiply threading] Called mult/just-Left-ids")))

(deftrace :mult/just-Right-ids ()
  (when *trace-multiply-threading*
    (trace-msg "[Multiply threading] Called mult/just-Right-ids")))


;;;-----------------------
;;; inside multiply-edges
;;;-----------------------

;;--- toplevel divide by rule-type

(deftrace :found-semantic-rule (rule)
  (when *trace-rule-source*
    (trace-msg "Found semantic rule ~a" rule)))

(deftrace :no-semantic-rule ()
  (when *trace-rule-source*
    (trace-msg "No rule based on semantic labels")))

(deftrace :found-rule-of-form (rule)
  (when *trace-rule-source*
    (trace-msg "Found form rule ~a" rule)))

(deftrace :no-rule-of-form ()
  (when *trace-rule-source*
    (trace-msg "No form rule")))

(deftrace :found-syntactic-rule (rule)
  (when *trace-rule-source*
    (trace-msg " Found syntactic rule ~a" rule)))

(deftrace :no-syntactic-rule ()
  (when *trace-rule-source*
    (trace-msg "No syntactic rule")))



;;--- rule validity ---

(defvar *trace-rule-validity* nil
  "Goes with the 'validity' check on identified rules")

(defun trace-rules-validity ()
  (setq *trace-rule-validity* t)
  (report-form-check-blocks)
  (trace-subcat-rule))

(defun untrace-rules-validity ()
  (setq *trace-rule-validity* nil)
  (unreport-form-check-blocks)
  (untrace-subcat-rule))


;;-- the report in multiply-edges
(deftrace :rule-is-valid ()
  (when *trace-rule-validity*
    (trace-msg " and it's valid")))

(deftrace :rule-is-invalid ()
  (when *trace-rule-validity*
    (trace-msg " it's not valid")))

;;-- appropriate form check by validate-rule-form
(defun report-form-check-blocks ()
  (setq *report-form-check-blocks* t))
(defun unreport-form-check-blocks ()
  (setq *report-form-check-blocks* t))


(deftrace :consistent-with-chunk (chunk)
  ;; Called from validate-rule-result-form-against-chunk
  (when *trace-rule-validity*
    (trace-msg "Checking against chunk ~a" chunk)))

(deftrace :is-consistent-with-chunk (right-edge)
  ;; Called from validate-rule-result-form-against-chunk
  (when *trace-rule-validity*
    (trace-msg " e~a is consistent"
               (edge-position-in-resource-array right-edge))))

(deftrace :is-not-consistent-with-chunk (right-edge)
  (when *trace-rule-validity*
    (trace-msg " e~a is not consistent"
               (edge-position-in-resource-array right-edge))))

;;-- methods say the rule applies
(defvar *trace-test-subcat-rule* nil)
(defun trace-subcat-rule ()
  (setq *trace-test-subcat-rule* t))
(defun untrace-subcat-rule ()
  (setq *trace-test-subcat-rule* nil))

(deftrace :subcat-rule-setup (rule left-referent right-referent function)
  ;; called from test-subcat-rule
  (when *trace-test-subcat-rule*
    (trace-msg "[subcat-test] Does ~a pass the subcat-test in ~a~
              ~%     with arguments  ~a and ~a ?"
               (cfr-symbol rule) function
               left-referent right-referent)))

(deftrace :subcat-text/yes ()
  ;; called from test-subcat-rule
  (when *trace-test-subcat-rule*
    (trace-msg "[subcat-test]  yes")))

(deftrace :subcat-text/no ()
  ;; called from test-subcat-rule
  (when *trace-test-subcat-rule*
    (trace-msg "[subcat-test]  no")))

(deftrace :failed-subcat-restriction (item sc-pattern)
  ;; called from find-subcat-var
  (when *trace-test-subcat-rule*
    (trace-msg "[subcat-test]  ~a is not itypep ~a"
               item (subcat-restriction sc-pattern))))

