;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "hyphen-subrs"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  November 2015

;; Broken out from several points 11/19/15

(in-package :sparser)

;;--- Obvious cases hard to state as a pattern
;;    given that we may have to fold up interior parts
;;    just as with slashes and colon.

(defun nospace-hyphen-specialist (pattern pos-before pos-after
                                  &aux (pt-list (positions-and-treetops-between pos-before pos-after)))
  (declare (special pattern pos-before pos-after pt-list))
  "Cleanup case in one-hyphen-ns-patterns when no defined pattern
   has matched. Usually a pattern should match, so we should focus
   on identifying new patterns and reduce what falls through to here."
  (cond
    ((= 3 (length pt-list))
     (let ((left-edge (second (first pt-list)))
           (right-edge (second (third pt-list))))
       (tr :hyphen-specialist left-edge right-edge)
       (or (composed-by-usable-rule left-edge right-edge)
           (unless (or (word-p left-edge) (word-p right-edge))
             ;; hyphenated structure assumes it has edges to work with
             (make-hyphenated-structure left-edge right-edge))
           (when *work-on-ns-patterns*
             (push-debug `(,(treetops-between pos-before pos-after)
                            ,pos-before ,pos-after)
                         (break "New three-edge hyphen case: ~a" pattern))
             (reify-ns-name-and-make-edge pos-before pos-after)))))
    (t
     ;; Must be multiple, unparsed items to either side of hyphen
     ;; E.g. "Figures S1A–S1D"
     ;; split down the middle, run the two parts through the 
     ;; pattern reifier, then combine them, same as we do
     ;; with slashes in this situation.
     (cond
       ((eq (car pattern) :hyphen) ;; it's initial
        ;; in "green fluorescent protein (GFP)-tagged ERK1"
        ;; the scanner won't cross the parentheses so we
        ;; get "-tagged"
        (resolve-initial-stranded-hyphen pattern pos-before pos-after))

       ((eq (car (last pattern)) :hyphen) ;; its final
        (resolve-trailing-stranded-hyphen pattern pos-before pos-after))

       (t

        (let* ((hyphen-pos (position :hyphen pattern))
               (first-half (resolve-hyphen-segment
                            pos-before
                            (first (nth hyphen-pos pt-list))))
               (second-half (resolve-hyphen-segment
                             (first (nth (+ 1 hyphen-pos) pt-list))
                             pos-after)))
          (declare (special hyphen-pos first-half second-half))
          (if (and first-half second-half)
              (make-hyphenated-structure first-half second-half)
              (if *work-on-ns-patterns*
                  (then
                    (push-debug `(,first-half ,second-half))    
                    (break "One of the patterns to either side of a hyphen ~
                        did not resolve."))
                  ;; If not working on it, completely punt
                  (reify-ns-name-and-make-edge pos-before pos-after)))))))))

;;/// This is surely the same a resolve-slash-segment so they should merge
(defun resolve-hyphen-segment (start-pos end-pos)
  (if (eq start-pos end-pos) ;; as in "...with β-, γ-, and α-catenins..."
    (then 
      (when *work-on-ns-patterns*
        (break "start-pos and end-pos are identical"))
      (throw :punt-on-nospace-without-resolution nil))
    (let ((single-edge (span-covered-by-one-edge? start-pos end-pos)))
      (or single-edge
          (let ((pattern (characterize-words-in-region start-pos end-pos)))
            (let ((*work-on-ns-patterns* nil)) ;; t))
              (declare (special *work-on-ns-patterns*))
              (let ((result (resolve-ns-pattern pattern start-pos end-pos)))
               (unless result 
                 (when *work-on-ns-patterns*
                   (break "no result on hyphen segment pattern: ~a" pattern)))
               result)))))))

;;;REPAIR THIS ONE
(defun try-to-resolve-uncovered-ns-edges (start-pos end-pos
                                          &aux (edges (treetops-between start-pos end-pos)))
  "One of the words in this span is not covered by an edge.
   It's a reasonable possibility that one of them corresponds to
   an unknown word that we've not dealt with yet. If so, deal with
   it now, and return the list of edges with that edge included."
  ;;//// This is called from one-hyphen-ns-patterns so there's
  ;; a lot implicit here 
  (declare (special *positions-with-unhandled-unknown-words*))
  (if *positions-with-unhandled-unknown-words*
    ;; less left-margin creep with this style
    (let ((left-side (find start-pos *positions-with-unhandled-unknown-words*))
          (right-side (find (chart-position-before end-pos)
                            *positions-with-unhandled-unknown-words*)))
      ;; those are positions
      (unless (or left-side right-side)
        ;; either we came from some where else and it's in the interior
        ;; or it's a different case
        ;;/// Add words argument to help in sorting this out
        (return-from try-to-resolve-uncovered-ns-edges edges))
      (let ((left-edge (when left-side
                         (handle-unknown-word-as-bio-entity left-side)))
            (right-edge (when right-side
                          (handle-unknown-word-as-bio-entity right-side))))
        (cond
         ((and left-edge right-edge)
          (cons left-edge (tail-cons right-edge edges)))
         (left-edge
          (cons left-edge edges))
         (right-edge
          (tail-cons right-edge edges)))))
    edges))
