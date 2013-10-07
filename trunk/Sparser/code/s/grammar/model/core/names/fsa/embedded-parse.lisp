;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "embedded parse"
;;;   Module:  "model;core:names:fsa:"
;;;  version:  0.8 October 2013

;; initiated 5/21/93 v2.3
;; 0.1 (6/9) revising the alg. because it's intended to be top-edges and
;;      was ignoring edges made during the scan
;; 0.2 (12/13) changed the call to word-fsas to avoid recursion on PNF
;; 0.3 (2/2/95) put in a trap for when a polyword takes it beyond the limits
;;      it was passed in by the scan
;; 0.4 (5/3) Replaced break in case of fsa taking the parse beyond its
;;      endpoint by a set on the global *PNF-end-of-span*.
;; 0.5 (5/4) hit a case of :multiple-initial-edges in the single-non-word-edge
;;      case and patched around it.
;; 0.6 (12/29/95) added a full edge-parse to accomodate the change that makes
;;      titles parsed items rather than polywords.
;;     (5/26/13) added some traces. 
;; 0.7 (8/18/13) Reordered polyword check before edge check: "Deputy Chief of 
;;      Staff", where CoS is a polyword. 
;; 0.8 (10/1/13) Reorganized single-nonword-edge-starts-at a bit and stubbed out
;;      a choice between the two versions of "New York"

(in-package :sparser)


;;;--------
;;; driver
;;;--------

(defun parse-from-within-pnf (from-pos to-pos)

  ;; called from c&r-multi-word-span (in earlier design was called
  ;; from classification-fsa which does make for finer grain work.)
  ;; The words in the region have been scanned and their boundaries
  ;; introduced by the initial pass that collected up the capitalized
  ;; sequence.  We know there's more than one word in this region
  ;; because the one-word case is handled by a different routine.

  (pfwpnf from-pos to-pos)
  (parse-between-boundaries from-pos to-pos)
  nil ) ;; return value is value of premature-termination?


;;;-------------------
;;; recursive routine
;;;-------------------

(defun pfwpnf (pos-before final-pos)
  ;; "parse from within PNF"
  ;; 1st check for word-fsas, which most likely will be polywords
  ;; if there's none, see if the word at this position has an
  ;; interpretation (= introduces any edges).  If there's already
  ;; an edge there (e.g. introduced during the scan in interaction
  ;; with punctuation) then walk over them rather than re-process
  ;; their constituent words.

  (tr :pfwpnf pos-before final-pos)

  (multiple-value-bind (word pos-after)
                       (next-word pos-before)
    (when (consp word)
      (if *debug-pnf*
        (break "Stub: Multiple words start at p~A:~%  ~A"
               (pos-array-index pos-before) word)
        (setq word (first word))))

    (let ((where-word-fsa-ends
               (do-word-fsas/only-known word pos-before))
          (edge (single-nonword-edge-starts-at pos-before)))
      (cond
       (where-word-fsa-ends  ;; some word-fsa completed
        (tr :pfwpnf/fsa-succeeded word where-word-fsa-ends)
        (cond
         ((eq where-word-fsa-ends final-pos)
          :done )
         ((position-precedes final-pos where-word-fsa-ends)
          ;; we've gone past the span that the scan
          ;; delimited, presumably because the fsa was
          ;; a polyword.  The trouble is that this change
          ;; in the end of the sequence has to be appreciated
          ;; by the caller. 
          (setq *pnf-end-of-span* where-word-fsa-ends)
          :done )
         (t
          (pfwpnf where-word-fsa-ends final-pos))))

       (edge
        (let ((where-edge-ends-at (pos-edge-ends-at edge)))
          (tr :pfwpnf-edge edge)
          (if (eq final-pos where-edge-ends-at)
            :done
            (pfwpnf where-edge-ends-at final-pos))))    
       (t            
        (intro-edges-fwpnf
         word pos-before pos-after final-pos))))))



(defun intro-edges-fwpnf (word pos-before next-pos final-pos)
  (install-terminal-edges word pos-before next-pos)
  (if (eq next-pos final-pos)
    :done
    (pfwpnf next-pos final-pos)))


;;;--------------------------
;;; edge-checking subroutine
;;;--------------------------

(defun single-nonword-edge-starts-at (position)
  ;; Called from pfwpnf -- return the preferred edge if there are
  ;; several to choose from. Note that this is coming right after
  ;; a call to look for FSAs (e.g. polywords) starting at this
  ;; position, and they may have let to some edges. 
  (let* ((ev (pos-starts-here position))
         (top-node (ev-top-node ev)))
    (when top-node
      (let* ((e0 (elt (ev-edge-vector ev) 0))
             (e-max (highest-edge ev))       ;; evade problem with
             (edges (edges-between position  ;; multiple-initial-edges
                                   (pos-edge-ends-at e-max))))
        (cond
         ((= 1 (ev-number-of-edges ev))
          (let ((edge (ev-top-node ev)))
            (if (not (word-p (edge-category edge)))
              edge
              nil)))

         ((edges-all-chain position :start)
          (if (eq top-node :multiple-initial-edges)
            (highest-edge ev)
            top-node ))

         ((and (= (length edges) 2)
               (edge-for-literal? e0))
          (elt (ev-edge-vector ev) 1))

         (t
          (let ((prefix 
                 ;;/// 6/19/93 hits on "Messrs.", which has three edges
                 ;; of identical length: "messrs", preson-prefix, and
                 ;; name-word
                 (find 'category::person-prefix
                       edges
                       :key #'(lambda (e)
                                (cat-symbol (edge-category e))))))
            (or prefix
                (city-vs-state edges) ;; returns the edge itself
                (else
                 (push-debug `(,ev ,top-node ,edges))
                 (break "PFWPNF: Stub -- another case to do"))))))))))

(defun city-vs-state (edges)
  ;; if there's both a city and a state in the set of edges,
  ;; prefer the state. May only occur for New York. 
  (second edges)) ;; total hack. Works in the presenting case
  




