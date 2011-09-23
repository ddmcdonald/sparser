;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "embedded parse"
;;;   Module:  "model;core:names:fsa:"
;;;  version:  0.6 December 1995

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
;; 0.6 (12/29) added a full edge-parse to accomodate the change that makes
;;      titles parsed items rather than polywords.

(in-package :sparser)


;;;--------
;;; driver
;;;--------

(defun parse-from-within-pnf (from-pos to-pos)

  ;; called from Classification-fsa
  ;; The words in the region have been scanned and their boundaries
  ;; introduced by the initial pass that collected up the capitalized
  ;; sequence.  We know there's more than one word in this region
  ;; because the one-word case is handled by a different routine.

  (pfwpnf from-pos to-pos)
  (parse-between-boundaries from-pos to-pos)
  nil )


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

  (multiple-value-bind (word pos-after)
                       (next-word pos-before)
    (when (consp word)
      (if *debug-pnf*
        (break "Stub: Multiple words start at p~A:~%  ~A"
               (pos-array-index pos-before) word)
        (setq word (first word))))

    (let ((edge (single-nonword-edge-starts-at pos-before)))
      (if edge
        (let ((where-edge-ends-at (pos-edge-ends-at edge)))
          (if (eq final-pos where-edge-ends-at)
            :done
            (pfwpnf where-edge-ends-at final-pos)))

        (let ((where-word-fsa-ends
               (do-word-fsas/only-known word pos-before)))
          
          (if where-word-fsa-ends  ;; some word-fsa completed
            (cond
             ((eq where-word-fsa-ends
                  final-pos)
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
              (pfwpnf where-word-fsa-ends final-pos)))
            
            (intro-edges-fwpnf
             word pos-before pos-after final-pos)))))))



(defun intro-edges-fwpnf (word pos-before next-pos final-pos)
  (install-terminal-edges word pos-before next-pos)
  (if (eq next-pos final-pos)
    :done
    (pfwpnf next-pos final-pos)))


;;;--------------------------
;;; edge-checking subroutine
;;;--------------------------

(defun single-nonword-edge-starts-at (position)
  (let* ((ev (pos-starts-here position))
         (top-node (ev-top-node ev)))
    
    (when top-node
      ;; usually there won't be
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

       (t
        (let* ((e0 (elt (ev-edge-vector ev) 0))
               (e-max (highest-edge ev))       ;; evade problem with
               (edges (edges-between position  ;; multiple-initial-edges
                                    (pos-edge-ends-at
                                     e-max))))

          (cond
           ((and (= (length edges) 2)
                 (edge-for-literal? e0))
            (elt (ev-edge-vector ev) 1))

           (t
            ;; this case shouldn't happen when all that's happened
            ;; here was the cap-seq scan, so it's a not-designed-for
            ;; bug
            ;(break "PNF: more than one edge starts at p~A~
            ;        and they're not on a chain"
            ;       (pos-token-index position))
            ;;/// 6/19 hits on "Messrs.", which has three edges
            ;; of identical length: "messrs", preson-prefix, and
            ;; name-word
            
            (let ((foo
                   (find 'category::person-prefix
                         edges
                         :key #'(lambda (e)
                                  (cat-symbol
                                   (edge-category e))))))
              (if foo
                foo
                (else
                  (break "Stub: another case to do")
                  :foo )))))))))))

