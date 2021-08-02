;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1995,2014-2021  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "forest scan"
;;;   Module:  "analyzers;traversal:"
;;;  Version:  July 2021

;; initiated 5/7/94 v2.3
;; 0.1 (10/24) it was attempting to do checks with words rather than literals
;; 0.2 (12/5) debugged it on :multiple-initial-edges.  Fleshed out a stub 2/2/95
;;     (3/7/07) Added debugging information - left scan can get into a loop
;;     (7/28/14) experimented with alternatives, but didn't change anything.
;; 0.3 (9/10/14) Parser had been ignoring words, so it misses rules with 
;;     literals in them like measurement -> number + "fold". 9/11/14 ripped out
;;     some of that because the actual problem was upstream and kept edges
;;     from being put over the literals. 
;; 0.4 (12/10/14) Made try-combination-to-the-left/bounded throw if it
;;     encountered a word. 
;; 0.5 (1/9/15) Changed the return value to include the edge as well as the layout
;; 0.6 (6/2/15) Cloned the entry point so that we could have a different
;;      version with a different rule policy. 8/7/15 did it again for
;;      parse-between-parentheses-boundaries

(in-package :sparser)

;;;-------
;;; cases
;;;-------

(defparameter *rules-firing-within-ns-span* nil
  "If non-nil, accumulate all the rules that ever fire in a no-space context")

(defun parse-between-nospace-scan-boundaries (left-bound right-bound)
  "Called from collect-no-space-segment-into-word to look for
  a parse between where the no-space sequence starts and where
  it ends. The problem we have is that in the cases where we want a rule
  to apply, it will typically involve searching multiple interpretations
  of words and edges over literals and such."
  (let ((coverage (coverage-over-region left-bound right-bound))
        (*allow-pure-syntax-rules* nil)
        (*allow-form-rules* nil))
    (declare (special *allow-pure-syntax-rules* *allow-form-rules*))
    ;; (push-debug `(,left-bound ,right-bound))
    (tr :ns-parse-between-bounds left-bound right-bound coverage)
    (case coverage
      (:one-edge-over-entire-segment
       (values coverage (edge-between left-bound right-bound)))
      (:all-contiguous-edges
       (cond
         ((= 2 (length (treetops-between left-bound right-bound)))
          (let* ((edge (try-all-contiguous-edge-combinations left-bound right-bound))
                 (new-coverage (coverage-over-region left-bound right-bound)))
            (values new-coverage edge)))
         (t (let* ((edge (parse-all-options-in-region left-bound right-bound))
                   (new-coverage (coverage-over-region left-bound right-bound)))
              (values new-coverage edge)))))
      (:otherwise
       coverage))))


(defparameter *parse-between-parentheses-action* t) ;; is it permited

(defun parse-between-parentheses-boundaries (left-bound right-bound)
  "The traversal action that sets this in motion is
   sweep-to-span-parentheses (in multi-scan) which is called during
   sentence-processing-core (no-brackets-protocol) as the last step
   before the chunker is called and the later parsing actions invoked.
   Consequently in order to parse this region we have to first invoke
   the chunker and have the chunks handled before we can do proper parsing.
      This isn't specific to parenthese, just a punctuation pair that
   is handled by do-paired-punctionation-interior, the proximate caller."
  (when *parse-between-parentheses-action*
    (let ((*readout-segments-inline-with-text* nil)
          (chunks (find-chunks/bounded left-bound right-bound)))
      ;; Blocking pts's call to print-segment-and-pending-out-of-segment-word
      ;; by turning off its flag because that would lead to very confusing
      ;; printing of the segments. Right now though (9/2/20) we completely
      ;; lose any display of the segments structure of these spans
      (declare (special *readout-segments-inline-with-text*))
      ;; We're parsing the chunks online, so we just run them
      ;; here. Using subroutine from identify-chunks
      (handle-chunks chunks)
      (parse-all-options-in-region left-bound right-bound))))



(defun parse-between-boundaries (left-bound right-bound)
  ;; the caller has determined that there the two positions aren't
  ;; the same and that there's some chance of there being an edge
  ;; across the whole span, e.g. Evaluate-angle-bracket-interior
  (push-debug `(,left-bound ,right-bound)) ;(break "parse-between")
  (let ((edge (catch :done-parsing-region
                (parse-from-to/topmost left-bound right-bound))))
    (let ((layout (analyze-segment-layout
                   ;; /// it ought to be possible to keep a running model of this
                   ;; rather than have to recalculate it here
                   left-bound right-bound)))
      (values layout
              edge))))


;;;----------------------------------
;;; an unassuming triple application
;;;----------------------------------

(defun parse-all-options-in-region (start-pos end-pos &optional used-triples)
  "Rewritten as a loop following whack-a-rule-cycle pattern as in drivers/forest/edge-search"
  (declare (special *executed-triples*))
  ;; trace goes here
  (clrhash *rules-for-pairs*)
  (clrhash *executed-triples*)
  ;;(format t "~&~%~%start parse-all-options-in-region") (tts)
  ;;(break "run treetop-in-segment")
  (let ((loop-index 0)
        pairs   triples  edge  triples-to-try )
    (declare (special *rules-for-pairs* *executed-triples*))
    (loop
       (setq pairs (adjacent-edges-in-region start-pos end-pos))
       ;;(format t "~&~%Cycle ~a~%  ~a pairs~%" (incf loop-index) (length pairs))
       (setq triples (when pairs (form-triples-from-pairs pairs)))
       ;;(format t "~&  ~a raw triples~%" (length triples))
       (setq triples-to-try (when triples (region-filter-for-already-executed triples)))
       ;;(format t "~&  ~a filtered triples~%" (length triples-to-try))
       ;;(push-debug `(,triples-to-try))
       (if triples-to-try
         (let ((triple-to-use (select-triple-for-region triples-to-try)))
           (let ((edge (execute-triple triple-to-use)))
             ;;(format t "~&edge = ~a~%  for ~a~%" edge (format-triple triple-to-use))
             ;; When there's no edge still have to provide a value, else the filter
             ;;  will see a nil and think it's ok to use this triple again
             (setf (gethash triple-to-use *executed-triples*) (or edge triple-to-use))
             #+ignore(break "End of cycle ~a" loop-index)))
         (return)))))

(defun region-filter-for-already-executed (triples)
  ;; straight copy of the one in edge-search
  (declare (special *executed-triples*))
  (loop for triple in triples
     unless (gethash triple *executed-triples*)
     collect triple))

(defun form-triples-from-pairs (pairs)
  (loop for pair in pairs
     as rule = (rule-for-region-edge-pair pair)
     when rule
     collect (make-edge-triple (car pair) (cadr pair) rule)))

(defun rule-for-region-edge-pair (pair)
  "Modeled on rule-for-edge-pair in whack-a-rule. Uses the cache
   but drops its applicability checks"
  (declare (special *rules-for-pairs*))
  (multiple-value-bind (cached-rule pair-seen)
      (gethash pair *rules-for-pairs*)
    (let ((rule (if pair-seen
                  cached-rule
                  (setf (gethash pair *rules-for-pairs*)
                        (multiply-edges (car pair) (second pair))))))
      rule)))

(defun select-triple-for-region (triples)
  ;; select-best-triple is close to this. Depending on
  ;; the region we may have different criteria
  (car triples))

(defun adjacent-edges-in-region (start-pos end-pos)
  (let ((tt-or-ev-in-region (treetops-in-segment start-pos end-pos))
        (current-position start-pos))
    (flet ((next-position (ev-or-edge)
             (etypecase ev-or-edge
               (edge (pos-edge-ends-at ev-or-edge))
               (edge-vector (chart-position-after current-position))
               (word (chart-position-after current-position))))
           (form-every-pair (left-list right-list) ;; cf. form-all-pairs
             (let ( pairs )
               (loop for left in left-list
                  do (loop for right in right-list
                        do (push `(,left ,right) pairs)))
               pairs)))
      ;; prime the pump
      (let* ((ev-or-edge (pop tt-or-ev-in-region))
             next-pos left-edges right-edges pairs )
        (loop
          (setq left-edges
                (etypecase ev-or-edge
                  (edge (list ev-or-edge))
                  (edge-vector (all-edges-on ev-or-edge))
                  (word nil)))
           (setq next-pos (next-position ev-or-edge))
           ;;(lsp-break "next-pos = ~a" next-pos)
           (when (eq next-pos end-pos)
             (return))
           (setq ev-or-edge (pop tt-or-ev-in-region))
           (setq right-edges
                 (etypecase ev-or-edge
                   (edge (list ev-or-edge))
                   (edge-vector (all-edges-on ev-or-edge))
                   (word nil)))
           (when (and left-edges right-edges)
             (setq pairs
                   (append (form-every-pair left-edges right-edges)
                           pairs)))
           (unless tt-or-ev-in-region
             (return)))
        pairs))))

   


;;;---------------------------------------------------
;;; between-boundaries topmost edges parsing protocol
;;;---------------------------------------------------

(defun parse-from-to/topmost (left-bound right-pos)
  "Called recursively to march leftwards"
  (let ((right-edge (left-treetop-at/edge right-pos)))
    ;; Returns the topmost edge if there is one, 
    ;; otherwise returns the word that ends there.
    ;; N.b. This ignores multiple edges over a single word,
    ;; so another alternative is adapting find-rightmost-edge
    ;; to also return words . 
    (if right-edge
      (let ((left-pos-of-right-edge
             (etypecase right-edge
               (edge (pos-token-index
                      (pos-edge-starts-at right-edge)))
               (word (pos-token-index
                      (chart-position-before right-pos))))))
        ;; is there something to parse? If not then throw back
        ;; to the top (parse-between-boundaries). 
        (if (> left-pos-of-right-edge
               (pos-token-index left-bound))
          (try-combination-to-the-left/bounded left-bound right-edge)
          (throw :done-parsing-region nil)))
      (throw :done-parsing-region nil))))


(defun try-combination-to-the-left/bounded (left-bound right-edge)
  (let* ( multiple-on-right?
         (middle-pos
          (etypecase right-edge
            (edge (pos-edge-starts-at right-edge))
            (edge-vector
             (setq multiple-on-right? t)
             (chart-position-before (ev-position right-edge)))
            (word
             ;; if there's not a pretermal edge over this word
             ;; then we're not going to get a parse, so bail now.
             (throw :done-parsing-region nil)))))

    (when (eq middle-pos left-bound)
      (throw :done-parsing-region right-edge))
    (when (< (pos-token-index middle-pos)
	     (pos-token-index left-bound))
      (error "Bad threading - middle-pos (~a) is the left of the left-bound (~a)"
	     middle-pos left-bound))

    (if multiple-on-right?
      (pbb-multiple-on-right/looking-left right-edge middle-pos left-bound)
      (pbb-single-right/looking-left right-edge middle-pos left-bound))))


(defun pbb-single-right/looking-left (right-edge middle-pos left-bound)
  (let ((left-item (span-ending-at middle-pos)))
    ;; returns an edge, a word, or an edge-vector if there are multiple
    ;; initial edges over a single word.
    (let ((new-edge
           (etypecase left-item
             (edge (check-one-one left-item right-edge))
             (edge-vector
              (check-many-one left-item ;;(pos-ends-here middle-pos)
                              right-edge))
             (word nil))))
      (if new-edge
        (try-combination-to-the-left/bounded left-bound new-edge)
        ;(break "Stub: no edge formed")
        (parse-from-to/topmost left-bound middle-pos)))))


(defun pbb-multiple-on-right/looking-left (right-vector middle-pos left-bound)
  ;; We're walking from the right, where there are multiple edges.
  ;; We see if there's an edge just to the left and get it checked
  ;; accordingly.
  (let ((left-item (span-ending-at middle-pos)))
    (let ((new-edge
           (etypecase left-item
             (edge (check-one-many left-item right-vector))
             (word nil)
             (edge-vector
              (check-many-many left-item
                               right-vector)))))
      (if new-edge
        (try-combination-to-the-left/bounded left-bound new-edge)
        (parse-from-to/topmost left-bound middle-pos)))))


;;;----------------------------
;;; All-edges for special case
;;;----------------------------

(defun try-all-contiguous-edge-combinations (start-pos end-pos)
  "Tailored for parsing between the boundaries of a span of no-space tokens
   for the very particular but common case of two adjacent edges. Returns
   the first edge it can find trying all edges."
  ;; Note that this solves a single specific problem, which is
  ;; arranging for the cs rules in be.lisp and the other that handle
  ;; apostrophe are able to run.
  (declare (special *rules-firing-within-ns-span*))
  (let* ((*allow-pure-syntax-rules* nil)
         (*allow-form-rules* nil)
         (tt (treetops-between start-pos end-pos))
         (left-treetop (car tt)))
    (when (edge-p left-treetop)
      (let* ((middle-position (pos-edge-ends-at left-treetop))
             (edges-ending-there (all-edges-on (pos-ends-here middle-position)))
             (edges-starting-there (all-edges-on (pos-starts-here middle-position)))
             rule )
        (declare (special *allow-pure-syntax-rules* *allow-form-rules*))
        (let ((edge
               (catch :succeeded
                 (dolist (left-edge edges-ending-there)
                   (dolist (right-edge edges-starting-there)
                     (setq rule (multiply-edges left-edge right-edge))
                     (when rule
                       (when *rules-firing-within-ns-span*
                         (pushnew rule *rules-firing-within-ns-span*))
                       (throw :succeeded
                         (make-completed-binary-edge left-edge right-edge rule))))))))
          edge)))))


