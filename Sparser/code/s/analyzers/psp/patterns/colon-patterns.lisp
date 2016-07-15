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

(defun resolve-colon-pattern (pattern words edges 
                              colon-positions start-pos end-pos)
  ;; called from ns-pattern-dispatch when the only puctuation is a colon
   (push-debug `(,pattern ,words ,edges ,colon-positions ,start-pos ,end-pos))
  ;;(break "starting colon pattern: ~a" pattern)
  (cond
   ((null (cdr colon-positions))
    (one-colon-ns-patterns
     pattern words edges colon-positions start-pos end-pos))
   ((and (= 2 (length colon-positions))
         ;; typo probably: "of GLR-1::GFP in the VNC"
         (adjacent-positions (car colon-positions) (cadr colon-positions)))
    (multiple-value-bind (pattern1 edges1)
                         (fix-doubled-colon pattern edges)
      (one-colon-ns-patterns pattern1 words edges1 colon-positions start-pos end-pos)))
   (t
    (multi-colon-ns-patterns
     pattern words edges colon-positions start-pos end-pos))))

;;;-----------
;;; one colon
;;;-----------

(defun one-colon-ns-patterns (pattern words edges colon-positions start-pos end-pos)
  ;; called from resolve-colon-pattern
  (cond
   ((equal pattern '(:protein :colon :protein)) "KSR1:MARK3"
    (make-ns-pair 'protein (first edges) (third edges)
                  words start-pos end-pos))

   ((equal pattern '(:protein :colon :bio-entity)) 
    (make-protein-pair/convert-bio-entity
     start-pos end-pos edges words :right))

   ((equal pattern '(:bio-entity :hyphen :protein))
    (make-protein-pair/convert-bio-entity
     start-pos end-pos edges words :left))

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
    (push-debug `(,pattern ,edges ,words ,colon-positions ,start-pos ,end-pos))
    ;;  (setq pattern (nth 0 *) edges (nth 1 *) words (nth 2 *) colon-positions (nth 3 *) start-pos (nth 4 *) end-pos (nth 5 *))
    (break "unknown NS pattern with one colon:~%  ~a" pattern))

   ;; fall through
   (t (tr :no-ns-pattern-matched)
      (reify-ns-name-and-make-edge words start-pos end-pos))))


;;;---------------------
;;; more than one colon
;;;---------------------

(defun multi-colon-ns-patterns (pattern words edges colon-positions start-pos end-pos)
  ;; called from ns-patterns/edge-colon-edge when the only punctuation
  ;; in the sequence is colon. Do a divide and recombine
  (declare (special category::protein))
  ;; (push-debug `(,words ,edges ,colon-positions ,start-pos ,end-pos))
  ;; (setq pattern (nth 0 *) words (nth 1 *) edges (nth 2 *) colon-positions (nth 3 *) pos-before (nth 4 *) pos-after (nth 5 *))
  (let ((segments (divide-colon-sequence
                    words colon-positions start-pos end-pos)))
    (push-debug `(,segments)) ;;/// merge when debugged
    (let ((pattern (convert-pattern-edges-to-labels segments)))
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
                      :constituents segments :words words)))
          edge))
       (*work-on-ns-patterns*
        (push-debug `(,pattern ,edges ,words ,colon-positions ,start-pos ,end-pos))
        ;; In localization: "in CHCl 3 /CH 3 OH/NH 4 OH/H 2 O(45:35:7:3)"
        (lsp-break "Another multi-colon pattern: ~a" pattern))
       (t
        (tr :no-ns-pattern-matched)
        (reify-ns-name-and-make-edge words start-pos end-pos))))))


;;--- dividing the ns sequence by colon position

(defun divide-colon-sequence (words colon-positions start-pos end-pos)
  "Walks through the regions between colons, resolves the pattern for
   each one, returns the corresponding ilst of edges."
  (let ((seg-start start-pos)
        (colons (copy-list colon-positions)) ;; just for debugging
        (seg-end (pop colon-positions))
        edge  segments )
    (push-debug `(,words ,colons ,start-pos ,end-pos))
    (loop
      (setq edge (span-covered-by-one-edge? seg-start seg-end))
      (if edge 
        (push edge segments)
        (let ((result (configure-and-analyze-sub-ns-sequence words seg-start seg-end)))
          ;;(lsp-break "result = ~a" result)
          (push result segments)))
      (when (eq seg-end end-pos)
        (return))
      (setq seg-start (chart-position-after seg-end))
      (if colon-positions
        (setq seg-end (pop colon-positions))
        (setq seg-end end-pos)))
    (nreverse segments)))

(defun configure-and-analyze-sub-ns-sequence (words start-pos end-pos)
  "Returns the edge made by the pattern resolver."
  (let ((pattern (sweep-ns-region start-pos end-pos))
        (edges (treetops-between start-pos end-pos)))
    (tr :segment-ns-pattern pattern)
    ;; Question is whether this is a simple pattern or one that
    ;; might motivate going all the way back to the master dispatch
    ;;//// punting on that for the moment. Need the right list
    (resolve-ns-pattern pattern words edges start-pos end-pos)))

;;/// move to characterize-words
(defun sweep-ns-region (start-pos end-pos)
  "Returns a pattern based on the words and edges over those words.
   Knows a great deal about what kinds of edges are just mechanical
   and replaces those with a characterization of the word they're
   over to more easily fit into the pattern tests."
  ;;//// When we do a major revision of the style of NS revision
  ;; this should be merged somehow with characterize-words-in-region 
  ;; so patterns can be put in the right form earlier -- like at top
  ;; of ns-pattern-dispatch, though that wants the positions.
  (let ((treetops (treetops-between start-pos end-pos))
        pattern-elements )
    ;;/// That sweep was designed for simplistic parsing and ignores
    ;; things like multiple edges. May need a tailored one
    (unless (every #'edge-p treetops)
      (push-debug `(,start-pos ,end-pos ,treetops))
      (break "Not every treetop is an edge: ~a" treetops))

    (flet ((label-for-pattern (edge)
             (let* ((label (cat-symbol (edge-category edge)))
                    (position (pos-edge-starts-at edge))
                    (word (word-under-edge edge))
                    (pname (word-pname word)))
               (cond
                ((eq label 'category::number)
                 (if (= 1 (length pname)) :single-digit :digits))
                ((eq label 'category::bio-entity)
                 (characterize-word-type position word))
                ((search (symbol-name '#:-kind) (symbol-name label))
                 (characterize-word-type position word))
                ((memq label '(protein wild-type))
                 ;;(eq label 'protein) 
                 label)
                ;;//// need to look for massive set of cases
                ;; since we don't want to return something the
                ;; patterns won't recognize. Protein is an obvious
                ;; case, but what else?
                (t (characterize-word-type position word))))))
      (loop for tt in treetops
        collect (if (one-word-long? tt)
                  (label-for-pattern tt)
                  (push (edge-category tt) pattern-elements))))))

;;;------------------
;;; colon and hyphen
;;;------------------

;; endogenous C-RAF:B-RAF heterodimers
(defun divide-and-recombine-ns-pattern-with-colon (pattern words edges
                                                   colon-positions hyphen-positions 
                                                   pos-before pos-after)
  (declare (ignore hyphen-positions colon-positions))
  ;;(push-debug `(,hyphen-positions ,colon-positions ,pos-before ,pos-after ,words ,pattern))

  (let ((treetops (treetops-between pos-before pos-after)))
    (cond
     ((= (length treetops) 3)
      ;; nothing to do, there's already a parse of the consituents to either 
      ;; side of the colon
      (make-word-colon-word-structure (first treetops) (third treetops)))
     (*work-on-ns-patterns*
      (push-debug `(,treetops ,pattern ,edges))
      (break "colon+hyphen stub: have to construct one of the constituents"))
     (t ;; bail
      (reify-ns-name-and-make-edge words pos-before pos-after)))))
