;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "colon-patterns""
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  July 2016

;; Broken out from pattern-gophers 7/19/15. After folding in edges
;; doing muli-colonn patterns 11/6/15. More abstraction 11/16.

(in-package :sparser)

; (p "endogenous C-RAF:B-RAF heterodimers.") -- works
; (p "KSR1:MARK3.") -- ditto

(defun resolve-colon-pattern (pattern start-pos end-pos)
  ;; called from ns-pattern-dispatch when the only puctuation is a colon
   (push-debug `(,pattern ,(treetops-between  start-pos end-pos)  ,start-pos ,end-pos))
  ;;(break "starting colon pattern: ~a" pattern)
  (cond
   ((null (member :colon (cdr (member :colon pattern))))
    (one-colon-ns-patterns pattern (treetops-between start-pos end-pos) start-pos end-pos))
   ((and (= 2 (count-if #'(lambda(x)(eq x :colon)) pattern))
         ;; typo probably: "of GLR-1::GFP in the VNC"
         (eq :colon (second  (member :colon pattern))))
    (multiple-value-bind (pattern1 edges1)
        (fix-doubled-colon pattern start-pos end-pos)
      ;; does not really do the right thing for
      ;; "BCG carrying either pVV16:: kasB _WT or pVV16:: kasB _T334A/T336A..."
      (one-colon-ns-patterns pattern1 edges1 start-pos end-pos)))
   (t
    (multi-colon-ns-patterns pattern start-pos end-pos))))

;;;-----------
;;; one colon
;;;-----------

(defun one-colon-ns-patterns (pattern edges start-pos end-pos) ;; have to get edges from above
  ;; called from resolve-colon-pattern
  (cond
   ((equal pattern '(:protein :colon :protein)) "KSR1:MARK3"
    (make-ns-pair 'protein (first edges) (third edges) start-pos end-pos))

   ((equal pattern '(:protein :colon :bio-entity)) 
    (make-protein-pair/convert-bio-entity start-pos end-pos :right))

   ((equal pattern '(:bio-entity :hyphen :protein))
    (make-protein-pair/convert-bio-entity start-pos end-pos :left))

   ((or (equal pattern '(:single-digit :colon :single-digit))
        (equal pattern '(:single-digit :colon :digits))
        (equal pattern '(:digits :colon :single-digit))
        (equal pattern '(:digits :colon :digits)))
    (make-number-colon-number-structure (first edges) (third edges)))

   ((or (equal pattern '(:lower :colon :full))
        (equal pattern '(:lower :colon :lower))
        (equal pattern '(:full :colon :full))
        (equal pattern '(:full :colon :lower)))
    (make-word-colon-word-structure (first edges) (third edges)))

   (*work-on-ns-patterns*
    (push-debug `(,pattern ,edges ,start-pos ,end-pos))
    (break "unknown NS pattern with one colon:~%  ~a" pattern))

   ;; fall through
   (t (tr :no-ns-pattern-matched)
      (reify-ns-name-and-make-edge start-pos end-pos))))


;;;---------------------
;;; more than one colon
;;;---------------------

(defun multi-colon-ns-patterns (pattern start-pos end-pos)
  ;; called from ns-patterns/edge-colon-edge when the only punctuation
  ;; in the sequence is colon. Do a divide and recombine
  (declare (special category::protein))
  (let* ((pos-tt-segments (divide-colon-sequence pattern start-pos end-pos))
         (segments (mapcar #'second pos-tt-segments)))
    (let ((pattern (convert-pattern-edges-to-labels pos-tt-segments)))
      (push-debug `(,pattern))
      (cond
       ;;/// wild-type check goes here
       ((memq :protein pattern)
        ;; Convert any bio-entity to a protein
        (when (memq :bio-entity pattern)
          (convert-bio-entity-to-protein segments))
        (let* ((proteins (loop for edge in segments
                            collect (edge-referent edge)))
               (collection (find-or-make-individual 'collection
                                                    :type category::protein
                                                    :items proteins))
               (i (if *description-lattice*
                      (find-or-make-lattice-description-for-collection collection)
                      collection))
               (edge (make-ns-edge
                      start-pos end-pos category::protein
                      :referent i :rule 'multi-colon-ns-patterns
                      :constituents segments
                      ;;:words (effective-words-given-edges start-pos end-pos)
                      ;; don't create gratuitout polywords
                      )))
          edge))
       (*work-on-ns-patterns*
        (push-debug `(,pattern ,(treetops-between start-pos end-pos) ,start-pos ,end-pos))
        ;; In localization: "in CHCl 3 /CH 3 OH/NH 4 OH/H 2 O(45:35:7:3)"
        (lsp-break "Another multi-colon pattern: ~a" pattern))
       (t
        (tr :no-ns-pattern-matched)
        (reify-ns-name-and-make-edge start-pos end-pos))))))


;;--- dividing the ns sequence by colon position

(defun divide-colon-sequence (pattern start-pos end-pos
                              &aux (tts (positions-and-treetops-between start-pos end-pos)))
  "Walks through the regions between colons, resolves the pattern for
   each one, returns the corresponding ilst of edges."
  ;; (lsp-break "divide-colon-sequence")
  (let (segment edge  segments )
    (push-debug `(,tts ,pattern ,start-pos ,end-pos))
    (loop for pos-tt in tts as pat in pattern
          unless (eq pat :colon)
          collect (list (car pos-tt) pat))))

(defun configure-and-analyze-sub-ns-sequence (start-pos end-pos)
  "Returns the edge made by the pattern resolver."
  (let ((pattern (sweep-ns-region start-pos end-pos)))
    (tr :segment-ns-pattern pattern)
    ;; Question is whether this is a simple pattern or one that
    ;; might motivate going all the way back to the master dispatch
    ;;//// punting on that for the moment. Need the right list
    (resolve-ns-pattern pattern start-pos end-pos)))



;;;------------------
;;; colon and hyphen
;;;------------------

;; endogenous C-RAF:B-RAF heterodimers
(defun divide-and-recombine-ns-pattern-with-colon (pattern pos-before pos-after)
  "Called from ns-pattern-dispatch when there are both colons and hyphens
   in the pattern"
  (let ((treetops (treetops-between pos-before pos-after)))
    (cond
     ((and (= (length treetops) 3) (loop for e in treetops always (edge-p e)))
      ;; nothing to do, there's already a parse of the consituents to either 
      ;; side of the colon
      (make-word-colon-word-structure (first treetops) (third treetops)))
     (*work-on-ns-patterns*
      (push-debug `(,treetops ,pattern))
      (break "colon+hyphen stub: have to construct one of the constituents"))
     (t ;; bail
      (reify-ns-name-and-make-edge pos-before pos-after)))))
