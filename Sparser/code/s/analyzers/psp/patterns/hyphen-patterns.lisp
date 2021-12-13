;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2016,2021  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "hyphen-patterns"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  August 2021

;; Broken out from patterns 7/20/15. 11/2/15 fanout from converting
;; edge patterns early. 

(in-package :sparser)

;;;-------------------------------------
;;; patterns for sequences with hyphens
;;;-------------------------------------

;; (trace-scan-patterns)
;; (setq *work-on-ns-patterns* t)

;;--- Entry point

(defun resolve-hyphen-pattern (pattern start-pos end-pos)
  "Called from ns-pattern-dispatch when no edge in the span covers
   more than one edge and hyphen(s) is the only punctuation."
  ;; (push-debug `(,pattern ,words ,edges ,hyphen-positions ,start-pos ,end-pos))
  ;; (break "starting hyphen pattern: ~a" pattern)
  (let ((edges (treetops-between start-pos end-pos))
        (hyphen-count 0))
    (when (not (eq (length edges) (length pattern)))
      (push-debug `(,pattern ,start-pos ,end-pos))
      (warn-or-error "pattern is longer than set of edges! ~s longer than ~s in ~s"
                     pattern edges
                     (extract-characters-between-positions start-pos end-pos)))
    (dolist (item pattern)
      (when (eq item :hyphen ) (incf hyphen-count)))
    (case hyphen-count
      (1 (one-hyphen-ns-patterns pattern start-pos end-pos))
      (2 (two-hyphen-ns-patterns pattern start-pos end-pos))
      (otherwise
       (cond
        (*work-on-ns-patterns*
         (push-debug `(,pattern ,edges ,start-pos ,end-pos))
         (error "Write the code for ~a hyphens in a no-space sequence" 
                hyphen-count))
        (t
         (reify-ns-name-and-make-edge start-pos end-pos)))))))


;;--- One hyphen

(defun one-hyphen-ns-patterns (pattern start-pos end-pos
                               &aux (edges (treetops-between start-pos end-pos)))
  (tr :ns-one-hyphen-patterns)
  (tr :ns-edge-pattern pattern)
  (unless (= 3 (length edges))
            ;; if we allow trailing or leading hyphens then
            ;; this is wrong. Also produced the wrong edges when applied
            ;; to "p53-"
    (setq edges (try-to-resolve-uncovered-ns-edges start-pos end-pos)))

  (let* ((left-edge (first edges))
         (rel-edge
          (when (and left-edge (edge-p left-edge)) ;; rule out words
            (loop for i in (ev-edges (pos-ends-here end-pos))
               when (and (edge-referent i) ;; "anti-p53" #87 in ASPP2
                         (second-imposes-relation-on-first?
                          (edge-referent left-edge) (edge-referent i) i ))
               do (return i)))))
    ;; The code above is intended to catch cases like "isoform-specific"
    ;; where the lexeme "specific" has two definitions one of which is an
    ;; obsolete one from the core, and another of which has a subcat frame
    ;; and satisfies second-imposes-relation-on-first

    (cond
      ((= 2 (length pattern))
      (cond
       ;; the cases of -adjective and -verb+ed should be handled here, not by 
       ;; composed-by-usable-rule, which makes "MAPK-dependent" be a protein
       ((equal pattern '(:lower :hyphen)) ;; "mono- "
        (resolve-trailing-stranded-hyphen pattern start-pos end-pos))
       ((eq (car pattern) :hyphen)
        (resolve-initial-stranded-hyphen pattern start-pos end-pos))
       ((eq (second pattern) :hyphen)
        (resolve-trailing-stranded-hyphen pattern start-pos end-pos))
       (t (error "One hyphen NS: shouldn't be able to get here"))))        


      ((and rel-edge (= 3 (length edges)))  ;; "Dimerization-independent" ERK #1
       (unless (likely-spurious-hyphen (first edges) (third edges))
         ;; if that condition is true we drop the hyphen on the floor
         (do-relation-between-first-and-second
             (when (edge-p (first edges))
               (edge-referent (first edges)))
           (edge-referent rel-edge)
           (first edges)
           rel-edge)))
     
     ((equal pattern '(:lower :hyphen :protein))
      (resolve-protein-prefix (first edges) (third edges) start-pos end-pos))
     
     ((equal pattern '(:protein :hyphen :protein))
      (make-protein-pair (first edges) (third edges) start-pos end-pos))
     
     ((equal pattern '(:protein :hyphen :bio-entity)) ;; RAS-ASSP
      (make-protein-pair/convert-bio-entity start-pos end-pos :right))
     
     ((equal pattern '(:bio-entity :hyphen :protein)) ;; ??
      (make-protein-pair/convert-bio-entity start-pos end-pos :left))
     
     ((equal pattern '(:protein :hyphen :lower)) ;; EGFR-positive
      (resolve-protein-hyphen-word start-pos end-pos))
     
     ((equal pattern '(:full :hyphen :protein)) ;; "the PI3KC2β RBD-Ras complex"
      (make-pair-with-protein (first edges) (third edges) start-pos end-pos))
     
     ((equal pattern '(:protein :hyphen :digits)) ;; GAP–334 Jan# 2
      ;;/// should be something better for a case lke this if we know
      ;; something about the the siginificane of the number
      (make-bio-pair (first edges) (third edges) start-pos end-pos))

     ((equal pattern '(:protein :hyphen  ;; "BRAF-V600E"
                       :single-cap :digits :single-cap))
      (let ((point-mutation (reify-point-mutation (cddr edges)
                             (chart-position-before
                              (chart-position-before
                               (chart-position-before end-pos)))
                             end-pos)))
        (make-edge-over-mutated-protein (first edges) point-mutation
                                        start-pos end-pos)))
     
     ((equal pattern `(:amino-acid :hyphen :digits))
      (reify-residue (first edges) (third edges) start-pos end-pos))
     
     ((and *work-on-ns-patterns*
           (memq :protein pattern)) ;; :protein :hyphen :kinase PI3–Kinase
      (push-debug `(,edges ,start-pos ,end-pos))
      (break "new hypen pattern with protein: ~a" pattern))
     
     ((or (equal pattern '(:full :hyphen :single-lower)) ;; TGF-b
          (equal pattern '(:capitalized :hyphen :single-digit)) ;; Sur-8, Bcl-2
          (equal pattern '(:full :hyphen :digits)) ;; "CI-1040" actually a drug
          (equal pattern '(:full :hyphen :single-digit :single-lower)) ;; IL-1a
          (equal pattern '(:full :hyphen :single-digit :single-digit)))
                          ;;/// IL-1a -bug somewhere
      ;; We accept these as terms that won't deccompose or involve
      ;; a rule. Experience may show that to be false, but it's a start
      (reify-ns-name-and-make-edge start-pos end-pos))
     
     ((or (equal pattern '(:full :hyphen :full))
          (equal pattern '(:capitalized :hyphen :full)) ;; Rho-GDI
          (equal pattern '(:full :hyphen :capitalized)))
      (if (= 3 (length edges))
        (resolve-hyphen-between-two-terms pattern start-pos end-pos)
        (when *work-on-ns-patterns*
          ;; happens in Cure articles As-HCC where HCC is not a defined word
          (break "Hyphen: more than three edges: ~a" edges)))) ;;/// two, not three on "HPB-ALL"
     
     ((equal pattern '(:full :hyphen :lower)) ;; "GTP-bound" "EGFR-positive"
      (resolve-hyphen-between-two-words pattern start-pos end-pos))
     
     ((equal pattern '(:single-cap :hyphen :lower)) ;; Y-box
      (when *work-on-ns-patterns*
        (break "stub :single-cap :hyphen :lower"))
      (reify-ns-name-and-make-edge start-pos end-pos))
     
     ((equal pattern '(:little-p :hyphen :single-cap :digits)) ;; p-S311
      (let ((amino-acid (single-letter-word-for-amino-acid? (third edges)))
            (digits (fourth edges)))
        (cond
         (amino-acid
          (reify-p-residue-and-make-edge start-pos end-pos amino-acid digits))
         (*work-on-ns-patterns*
          (push-debug `(,edges ,pattern ,start-pos ,end-pos))
          (break "Little p for unknown type"))
         (t (nospace-hyphen-specialist pattern start-pos end-pos)))))
     
     ((eq :no-space-prefix (car pattern))
      (compose-salient-hyphenated-literals pattern start-pos end-pos))
     
     ((equal pattern '(:lower :hyphen :lower)) ;; "high-activity"
      (let ((*inhibit-big-mech-interpretation* t))
        (declare (special *inhibit-big-mech-interpretation*))
        (resolve-hyphen-between-two-words pattern start-pos end-pos)))
     
     ((equal pattern '(:single-digit :hyphen :single-digit)) ;; "6-8" in a reference
      ;; 4/14/16 Appears to be a bug in the state space of digit-FSA that keeps
      ;; it from handling these.
      (make-hyphenated-number (first edges) (third edges)))   

     ((equal pattern '(:digits :hyphen :digits)) ;; "824-832"
      ;; This should be caught by the digit-fsa, but if it's not
      ;; this forestalls it going out as a bio-entity.
      (make-hyphenated-number (first edges) (third edges)))
     
     ((and *work-on-ns-patterns*
           (memq :hyphen pattern))
      (cond
        ((equal pattern '(:single-digit :single-lower :hyphen :bio-entity)) ;; "4a-phorbol"
         (lsp-break "label type of entity, e.g. '4a-phorbo'"))
        ((equal pattern '(:number :hyphen :lower)) ;; "12,13-dicanoate"
         ;; problem is that dicanoate doesn't have any interpretation/edge
         (lsp-break "Sort out adequate scheme for final word"))
        (t
         (push-debug `(,pattern ,start-pos ,end-pos))
         (break "New hyphen pattern to resolve: ~a" pattern))))
     
     (t (nospace-hyphen-specialist pattern start-pos end-pos)))))


;;--- two hyphens

(defun two-hyphen-ns-patterns (pattern start-pos end-pos
                               &aux (words (effective-words-given-edges start-pos end-pos)))
  ;; Just enough to form some sort of constituent and not break
  (tr :ns-two-hyphen-patterns)
  (cond
   ((or (equal pattern '(:full :hyphen :lower :hyphen :capitalized)) ;; GAP–to–Ras
        (equal pattern '(:full :hyphen :lower :hyphen :full)))
    (cond
     ((eq (third words) (word-named "to"))
      ;;//// needs a specialization to appreciate what's going on
      (or (when *work-on-ns-patterns* (break "Make special pattern for 'to'"))
          (resolve-hyphen-between-three-words pattern start-pos end-pos)))
     ((eq 5 (length words)) ;; three words minus two hyphens      
      (resolve-hyphen-between-three-words pattern start-pos end-pos))
     (*work-on-ns-patterns*
      (push-debug `(,pattern ,words ,start-pos ,end-pos))
      (break "more two-hyphen 1st pattern case: ~a" pattern))
     (t (reify-ns-name-and-make-edge start-pos end-pos))))

   ((eq 5 (length words)) ;; three words minus two hyphens      
    (resolve-hyphen-between-three-words pattern start-pos end-pos))

   (*work-on-ns-patterns*
      (push-debug `(,pattern ,words ,start-pos ,end-pos))
      (break "another two-hyphen case: ~a" pattern))

   (t  
    (reify-ns-name-and-make-edge start-pos end-pos))))


;;;------------------------------------------------
;;; code to deal with ("resolve") a hyphen pattern
;;;------------------------------------------------

(defun resolve-protein-hyphen-word (start-pos end-pos
                                    &aux (edges (treetops-between start-pos end-pos)))
  ;; pattern is (:protein :hyphen :lower)) e.g. EGFR-positive
  (let* ((protein-edge (first edges))
         (protein-ref (edge-referent protein-edge))
         (word-edge (third edges))
         (word-ref (when (edge-p word-edge) ;; null in CD8-ve
                     (edge-referent word-edge))))
    (or (when (edge-p word-edge)
          (composed-by-usable-rule protein-edge word-edge))
        ;; remove call to (do-relation-between-first-and second -- handled above
        (when *work-on-ns-patterns*
          (push-debug `(,protein-edge ,word-edge ,start-pos ,end-pos))
          (break "New case in resolving protein + word: ~
                ~%  protein = ~a  word = ~a" protein-ref word-ref))
        (when (edge-p word-edge)
          (tr :defaulting-two-word-hyphen)
          (package-qualifying-pair protein-edge word-edge)))))


(defun resolve-hyphen-between-two-words (pattern pos-before pos-after
                                         &aux (words (effective-words-given-edges pos-before pos-after)))
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

    (cond
     ((composed-by-usable-rule left-edge right-edge)) ;; runs for side-effects

     ((some-word-is-a-salient-hyphenated-literal words)
      (compose-salient-hyphenated-literals pattern  pos-before pos-after));; "re-activate"

     ((second-imposes-relation-on-first? left-ref right-ref right-edge)
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
        (make-ns-pair (edge-category left-edge) left-edge right-edge pos-before pos-after))
       (t
        ;; make a structure if all else fails
        ;; but first alert to anticipated cases not working
        (tr :defaulting-two-word-hyphen)
        (make-hyphenated-structure left-edge right-edge))))
     
     (*work-on-ns-patterns*
      (push-debug `(,left-edge ,right-edge ,pattern ,words))
      (break "One of the 'edges' is actualy a (undefined?) word"))

     (t ;; bail
      (reify-ns-name-and-make-edge pos-before pos-after)))))


;; RAS-ASSP or RAS/ASSP
(defun resolve-hyphen-between-two-terms (pattern pos-before pos-after)
  "Called from one-hyphen-ns-patterns and also from one-slash-ns-patterns
   when the pattern is (:full :forward-slash :full)
   It's likely that the two connected words are names,
   so we won't assume that they might be connected by rules
   but more like some generalized meaning between the two. "
  (declare (ignore pattern)
           (special category::protein))
  (tr :resolve-hyphen-between-two-terms (effective-words-given-edges pos-before pos-after))
  (let ((edges (treetops-between pos-before pos-after)))

    (unless (= 3 (length edges))
      ;; If we're called from one-hyphen-ns-patterns we've
      ;; handled this. Hitting this implies there's another
      ;; path in here that isn't reacting to the edge count
      (tr :resolve-hyphen-b/w-two-words/missing-an-edge (car edges) (third edges))
      (throw :punt-on-nospace-without-resolution nil))
    (let* ((left (first edges))
           (right (third edges))
           (left-ref (when (edge-p left) (edge-referent left)))
           (right-ref (when (edge-p right) (edge-referent right))))
      (cond
        ((or (not (edge-p (first edges)))(not (edge-p (third edges))))
         nil)
        ((not (or (individual-p left-ref) (category-p left-ref)))
         (make-bio-pair left right pos-before pos-after))

        ((and
          (itypep left-ref '(:or protein    ;; includes bio-family
                             small-molecule ;; GTP-GDP ???
                             nucleotide))
          (itypep right-ref '(:or protein    ;; includes bio-family
                              small-molecule ;; GTP-GDP ???
                              nucleotide)))
         (make-protein-pair left right pos-before pos-after))

        ((itypep left-ref 'amino-acid)
         (reify-amino-acid-pair pos-before pos-after))

        (t ;;(break "two-terms default")
         (make-bio-pair left right pos-before pos-after))))))


(defun resolve-hyphen-between-three-words (pattern pos-before pos-after)
  ;; Should look for standard patterns, especially on the
  ;; middle word. ///Postponing that effort so we can make some
  ;; progress. E.g GAP–to–Ras
  (declare (special pos-before pos-after)(ignore pattern))

  ;;(tr :resolve-hyphens-between-three-words words)
  (let* ((left-edge (right-treetop-at/edge pos-before))
         (right-edge (left-treetop-at/edge pos-after))
         (middle-edge (right-treetop-at/edge 
                       (chart-position-after
                        (if (edge-p left-edge)
                            (pos-edge-ends-at left-edge)
                            (chart-position-after pos-before))))))
    (cond
      ((or (not (edge-p left-edge))
           (not (edge-p middle-edge))
           (not (edge-p right-edge)))
       (when *work-on-ns-patterns*
         (break "non-edge in make-hyphenated-triple, ~s ~s ~s" 
                left-edge middle-edge right-edge))
       ;;(tr :resolve-hyphen-b/w-two-words/missing-an-edge left-edge right-edge)
       ;;(throw :punt-on-nospace-without-resolution nil)
       ;; 10/27/16 if we punt the last item of the sequence will compose
       ;; with the text that follows it. Making the polyword bio-entity
       ;; seems the better choice.
       (reify-ns-name-and-make-edge pos-before pos-after))
      (t
       (make-hyphenated-triple left-edge middle-edge right-edge)))))
