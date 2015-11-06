;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "hyphen-patterns"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  July 2015

;; Broken out from patterns 7/20/15. 11/2/15 fanout from converting
;; edge patterns early. 

(in-package :sparser)

;;;-------------------------------------
;;; patterns for sequences with hyphens
;;;-------------------------------------

;; (trace-scan-patterns)
;; (setq *work-on-ns-patterns* t)

(defun resolve-hyphen-pattern (pattern words hyphen-positions start-pos end-pos)
  ;; Called from ns-pattern-dispatch when no edge in the span covers
  ;; more than one edge and hyphen(s) is the only punctuation
  ;; (push-debug `(,pattern ,words ,hyphen-positions ,start-pos ,end-pos))
  ;; (break "starting hyphen pattern: ~a" pattern)
  (let ((hyphen-count 0))
    (dolist (item pattern)
      (when (eq item :hyphen ) (incf hyphen-count)))
    (case hyphen-count
      (1 (one-hyphen-ns-patterns
          pattern words hyphen-positions start-pos end-pos))
      (2 (two-hyphen-ns-patterns
          pattern words hyphen-positions start-pos end-pos))
      (otherwise
       (cond
        (*work-on-ns-patterns*
         (push-debug `(,pattern ,words ,hyphen-positions ,start-pos ,end-pos))
         (error "Write the code for ~a hyphens in a no-space sequence" 
                hyphen-count))
        (t
         (reify-ns-name-and-make-edge words start-pos end-pos)))))))


(defun one-hyphen-ns-patterns (pattern words hyphen-positions 
                               start-pos end-pos)
  (tr :ns-one-hyphen-patterns)
  (tr :ns-edge-pattern pattern)
  (cond
   ((or (equal pattern '(:full :hyphen :single-lower)) ;; TGF-b
        (equal pattern '(:capitalized :hyphen :single-digit)) ;; Sur-8, Bcl-2
        (equal pattern '(:full :hyphen :digits)) ;; "CI-1040" actually a drug
        (equal pattern '(:full :hyphen :single-digit :single-lower)) ;; IL-1a
        (equal pattern '(:full :hyphen :single-digit :single-digit))) ;;/// IL-1a -bug somewhere
    ;; We accept these as terms that won't deccompose or involve
    ;; a rule. Experience may show that to be false, but it's a start
    (reify-ns-name-and-make-edge words start-pos end-pos))

   ((equal pattern '(:protein :hyphen :bio-entity))
    (make-protein-pair/convert-bio-entity
     start-pos end-pos nil words :right))

   ((or (equal pattern '(:full :hyphen :full))  ;; RAS-ASSP
        (equal pattern '(:capitalized :hyphen :full)) ;; Rho-GDI
        (equal pattern '(:full :hyphen :capitalized)))
    (resolve-hyphen-between-two-terms pattern words start-pos end-pos))

   ((equal pattern '(:full :hyphen :lower)) ;; "GTP-bound" "EGFR-positive"
    (resolve-hyphen-between-two-words pattern words start-pos end-pos))

   ((equal pattern '(:single-cap :hyphen :lower)) ;; Y-box
    (when *work-on-ns-patterns*
      (break "stub :single-cap :hyphen :lower"))
    (reify-ns-name-and-make-edge words start-pos end-pos))

   ((equal pattern '(:little-p :hyphen :single-cap :digits)) ;; p-S311
    (let ((amino-acid (single-letter-word-for-amino-acid? (third words)))
          (digits (fourth words)))
      (cond
       (amino-acid
        (reify-p-residue-and-make-edge start-pos end-pos amino-acid digits))
       (*work-on-ns-patterns*
        (push-debug `(,words ,pattern ,start-pos ,end-pos))
        (break "Little p for unknown type"))
       (t (nospace-hyphen-specialist words pattern hyphen-positions start-pos end-pos)))))

   ((eq :no-space-prefix (car pattern))
    (compose-salient-hyphenated-literals 
     pattern words start-pos end-pos))

   ((equal pattern '(:lower :hyphen :lower)) ;; "high-activity"
    (let ((*inhibit-big-mech-interpretation* t))
      (declare (special *inhibit-big-mech-interpretation*))
      (resolve-hyphen-between-two-words pattern words start-pos end-pos)))

   ((equal pattern '(:single-digit :hyphen :single-digit)) ;; "6-8" in a reference
    (when *work-on-ns-patterns*
      (break "digit hyphen digit on ~a" words)))

   ((equal pattern '(:lower :hyphen)) ;; "mono- "
    (resolve-stranded-hyphen pattern words start-pos end-pos))

   ((and *work-on-ns-patterns*
         (memq :hyphen pattern))
    (push-debug `(,pattern ,start-pos ,end-pos))
    (break "New hyphen pattern to resolve: ~a" pattern))

   (t (nospace-hyphen-specialist words pattern hyphen-positions start-pos end-pos))))



(defun two-hyphen-ns-patterns (pattern words hyphen-positions start-pos end-pos)
  ;; Just enough to form some sort of constituent and not break
  (declare (ignore hyphen-positions))
  (tr :ns-two-hyphen-patterns)
  (cond
   ((or (equal pattern '(:full :hyphen :lower :hyphen :capitalized)) ;; GAP–to–Ras
        (equal pattern '(:full :hyphen :lower :hyphen :full)))
    (cond
     ((eq (third words) (word-named "to"))
      ;;//// needs a specialization to appreciate what's going on
      (or (when *work-on-ns-patterns* (break "Make special pattern for 'to'"))
          (resolve-hyphen-between-three-words pattern words start-pos end-pos)))
     (t
      (resolve-hyphen-between-three-words pattern words start-pos end-pos))))
   (t  
    (resolve-hyphen-between-three-words pattern words start-pos end-pos))))


(defun resolve-hyphen-between-two-words (pattern words
                                         pos-before pos-after)
  ;; Called from one-hyphen-ns-patterns
  ;; Have to distinguish between anticipated cases where the edges would
  ;; compose except for the hypen between the words and cases 
  ;; like "Sur-8" where it's the name of a protein
  ;; Also called from ns-patterns/edge-hyphen-edge for some patterns.
  (declare (special category::verb+ed))
  ;;(push-debug `(,pos-before ,pos-after ,pattern))
  (tr :resolve-hyphen-between-two-words words)
  (let* ((left-edge (right-treetop-at/edge pos-before))
         (right-edge (left-treetop-at/edge pos-after))
         (left-ref (when (edge-p left-edge)
                     (edge-referent left-edge)))
         (right-ref (when (edge-p right-edge)
                      (edge-referent right-edge))))
    (when (or (word-p left-edge)
              (word-p right-edge))
      ;; The left-edge is frequently a word, in e.g. 
      ;; "stimuli-specific", "receptor-ligand"
      ;; The correct thing to do (see note below on blocked case)
      ;; is to see what the right edge (assuming it is one) assumes
      ;; as the type of its subject, and on-the-fly define this
      ;; word as one of those and update all the local variable
      ;; and make a real edge.
      ;;    Time not being a luxury we'll punt, which puts
      ;; debris in the chart but that's better than a weird polyword
      (tr :resolve-hyphen-b/w-two-words/missing-an-edge left-edge right-edge)
      (throw :punt-on-nospace-without-resolution nil))

    ;; lifted from nospace-hyphen-specialist
    ;;(push-debug `(,left-edge ,right-edge)) ;;(break "???")
    (let* ((rule (or (multiply-edges left-edge right-edge)
                     (multiply-edges right-edge left-edge)))
           ;; We only want rules that create real relationships.
           ;; There will always be a syntactic rule, so that rules
           ;; out the possibility of looking for a salient literal
           ;; which would be Very Bad since they are informative.
           ;; Form rules are half generic, particularly for adjective
           ;; so I'm ruling those out too.
           (usable-rule (unless (syntactic-rule? rule)
                          (unless (form-rule? rule)
                            rule))))
      (push-debug `(,left-edge ,left-ref ,right-edge ,right-ref))
      ;; (setq left-edge (car *) left-ref (cadr *) right-edge (caddr *) right-ref (cadddr *))
      ;;(lsp-break "which path?")
      (cond
       (usable-rule ;; "GTP-bound"
        (tr :ns-found-usable-rule rule)
        (let ((edge (make-completed-binary-edge left-edge right-edge rule)))
          (revise-form-of-nospace-edge-if-necessary edge right-edge)
          (tr :two-word-hyphen-edge edge)))

       ((some-word-is-a-salient-hyphenated-literal words)
        (compose-salient-hyphenated-literals ;; "re-activate"
         pattern words pos-before pos-after))

       ((second-imposes-relation-on-first? right-ref right-edge)
        (do-relation-between-first-and-second
         left-ref right-ref left-edge right-edge))

       ((and (edge-p left-edge)
             (edge-p right-edge))
        ;; if either is a word then the assumptions of 
        ;; make-hyphenated-structure that it has edges to work with
        ;; and we should really fall through and fail the ns search.
        (cond
         ((equal pattern '(:full :hyphen :lower))
          ;; Then the first one is probably a bio-entity so we'll
          ;; use it as the source of the category
          (make-ns-pair (edge-category left-edge) left-edge right-edge
                        words pos-before pos-after))
         (t
          ;; make a structure if all else fails
          ;; but first alert to anticipated cases not working
          (tr :defaulting-two-word-hyphen)
          (make-hyphenated-structure left-edge right-edge))))
     
       (*work-on-ns-patterns*
        (push-debug `(,left-edge ,right-edge ,pattern ,words))
        (break "One of the 'edges' is actualy a (undefined?) word"))
       (t ;; bail
        (reify-ns-name-and-make-edge words pos-before pos-after))))))


;; RAS-ASSP
(defun resolve-hyphen-between-two-terms (pattern words
                                         pos-before pos-after)
  ;; Called from one-hyphen-ns-patterns
  ;; It's likely that the two connected words are names,
  ;; so we won't assume that they might be connected by rules
  ;; but more like some generalized meaning between the two. 
  ;; (N.b. also used with the separator is a slash)
  (declare (ignore pattern))
  (tr :resolve-hyphen-between-two-terms words)
  (let* ((left-edge (right-treetop-at/edge pos-before))
         (right-edge (left-treetop-at/edge pos-after))
         (left-ref (edge-referent left-edge))
         (right-ref (edge-referent right-edge)))
    (unless (edge-p right-edge)
      (break "the right-edge in resolve-hyphen-between-two-terms ~
              is ~s, not an edge"
             right-edge))
    (cond
     ((not ;; might be a word 
       (or (individual-p left-ref) 
           (category-p left-ref)))
      (make-bio-pair left-ref right-ref words
                     left-edge right-edge
                     pos-before pos-after))
     ((or (itypep left-ref 'protein)
          ;;(itypep left-ref 'bio-family) covered by itypep protein ; RAS-GTP
          (itypep left-ref 'small-molecule) ;; GTP-GDP ???
          (itypep left-ref 'nucleotide))
      (make-protein-pair left-ref right-ref words
                         left-edge right-edge
                         pos-before pos-after))
     ((itypep left-ref 'amino-acid)
      (reify-amino-acid-pair words pos-before pos-after))
     (t ;(break "two-terms default")
      (make-bio-pair left-ref right-ref words
                     left-edge right-edge
                     pos-before pos-after)))))

(defun resolve-hyphen-between-three-words (pattern words
                                           pos-before pos-after)
  ;; Should look for standard patterns, especially on the
  ;; middle word. ///Postponing that effort so we can make some
  ;; progress. E.g GAP–to–Ras
  (declare (special words pos-before pos-after)(ignore pattern))
  (tr :resolve-hyphens-between-three-words words)
  (let ((left-edge (right-treetop-at/edge pos-before))
        (right-edge (left-treetop-at/edge pos-after))
        (middle-edge (right-treetop-at/edge 
                      (chart-position-after 
                       (chart-position-after pos-before)))))
    (cond
     ((or (not (edge-p left-edge))
          (not (edge-p middle-edge))
          (not (edge-p right-edge)))
      (when *work-on-ns-patterns*
        (break "non-edge in make-hyphenated-triple, ~s ~s ~s" 
               left-edge middle-edge right-edge)))
     (t
      (make-hyphenated-triple left-edge middle-edge right-edge)))))