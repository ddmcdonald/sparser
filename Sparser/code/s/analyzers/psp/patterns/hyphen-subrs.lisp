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
;;    just as with slashes and colong.

(defun nospace-hyphen-specialist (words edges pattern hyphen-position/s 
                                  pos-before pos-after)
  ;; Cleanup case in one-hyphen-ns-patterns when no defined pattern
  ;; has matched. Usually a pattern should match, so we should
  ;; trap these before we get here. 
  ;(push-debug `(,edges ,pattern))
  ;(lsp-break "call to nospace-hyphen-specialist")
  (cond
   ((= 3 (length edges))
    (let ((left-edge (first edges))
          (right-edge (third edges)))
      (tr :hyphen-specialist left-edge right-edge)
      (or (composed-by-usable-rule left-edge right-edge)
          (unless (or (word-p left-edge) (word-p right-edge))
            ;; hyphenated structure assumes it has edges to work with
            (make-hyphenated-structure left-edge right-edge))
          (when *work-on-ns-patterns*
            (push-debug `(,edges ,pos-before ,pos-after ,words))
            (break "New three-edge hyphen case: ~a" pattern))
          (reify-ns-name-and-make-edge 
               (words-between pos-before pos-after) 
               pos-before pos-after))))
   (t
    ;; Must me multiple, unparsed items to either side of hyphen
    ;; E.g. "Figures S1A–S1D"
    ;; split down the middle, run the two parts through the 
    ;; pattern reifier, then combine them.
    (let ((hyphen-pos (car hyphen-position/s)))
      (cond
       ((eq hyphen-pos pos-before) ;; it's initial
        ;; in "green fluorescent protein (GFP)-tagged ERK1"
        ;; the scanner won't cross the parentheses so we
        ;; get "-tagged"
        (resolve-initial-stranded-hyphen 
         pattern words pos-before pos-after))

       ((eq hyphen-pos pos-after) ;; its final
        (resolve-stranded-hyphen 
         pattern words pos-before pos-after))

       (t
        (let ((first-half (resolve-hyphen-segment 
                           edges pos-before hyphen-pos))
              (second-half (resolve-hyphen-segment 
                            edges (chart-position-after hyphen-pos) pos-after)))
          (if (and first-half second-half)
            (make-hyphenated-structure first-half second-half)
            (if *work-on-ns-patterns*
              (then
                (push-debug `(,first-half ,second-half))    
                (break "One of the patterns to either side of a hyphen ~
                        did not resolve."))
              ;; If not working on it, completely punt
              (reify-ns-name-and-make-edge 
               (words-between pos-before pos-after) 
               pos-before pos-after))))))))))

;;/// This is surely the same a resolve-slash-segment so they should mergw
(defun resolve-hyphen-segment (edges start-pos end-pos)
  (if (eq start-pos end-pos) ;; as in "...with β-, γ-, and α-catenins..."
    (then 
      (when *work-on-ns-patterns*
        (break "start-pos and end-pos are identical"))
      (throw :punt-on-nospace-without-resolution nil))
    (let ((single-edge (span-covered-by-one-edge? start-pos end-pos)))
      (or single-edge
          (let ((words (words-between start-pos end-pos))
                (pattern (characterize-words-in-region start-pos end-pos nil)))
            (let ((*work-on-ns-patterns* nil)) ;; t))
              (declare (special *work-on-ns-patterns*))
              (let ((result (resolve-ns-pattern pattern words edges start-pos end-pos)))
               (unless result 
                 (push-debug `(,pattern ,words ,start-pos ,end-pos))
                 ;; (setq pattern (car *) words (cadr *) start-pos (caddr *) end-pos (cadddr *))
                 (when *work-on-ns-patterns*
                   (break "no result on hyphen segment pattern: ~a" pattern)))
               result)))))))

(defun try-to-resolve-uncovered-ns-edges (start-pos end-pos edges)
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
