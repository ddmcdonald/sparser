;;;-*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "character-specialists"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  December 2014

;; Initiated 9/9/14 to hold specialists dispatched from the no-space
;; scan. Tweaking through 10/9/14. Removed slash routines 12/10/14 as
;; obsolete. 

(in-package :sparser)

;;;----------
;;; hyphens
;;;----------

(defun nospace-hyphen-specialist (hyphen-position/s pos-before next-position)
  (push-debug `(,hyphen-position/s ,pos-before ,next-position))
  ;; (setq hyphen-position/s (car *) pos-before (cadr *) next-position (caddr *))
  (let ((hyphen-count (length hyphen-position/s))
        (phrase-length (- (pos-token-index next-position)
                          (pos-token-index pos-before))))
    (cond
     ((and (= hyphen-count 1)
           (= phrase-length 3))
      ;; Canonical case. "GTP-bound"
      (let* ((hyphen-pos (car hyphen-position/s))
             (left-edge (left-treetop-at/edge hyphen-pos))
             (right-edge (right-treetop-at/edge
                          (chart-position-after hyphen-pos))))
        (tr :hyphen-specialist left-edge right-edge)
        (let ((rule
               (when (and (edge-p left-edge)
                          (edge-p right-edge))
                 ;; otherwise we just have unknown words without
                 ;; preterminal edges so they're not going to compose.
                 (or
                  ;; Can we look and know which edge -should- be the
                  ;; head? If we just assume its the right-edge and
                  ;; the left-edge is the theme then we will prefer
                  ;; a direct-object reading:
                  (multiply-edges right-edge left-edge)
                  ;; but it that doesn't work lets try the other order
                  ;; just to get something (as better than nothing)
                  (multiply-edges left-edge right-edge)))))
          (if rule
            (let ((edge (make-completed-binary-edge left-edge right-edge rule)))
              ;;//// trace goes here
              (revise-form-of-nospace-edge-if-necessary edge right-edge))
            (else ;; make a structure if all else fails
              ;; but first alert to anticipated cases not working
              (unless (or (word-p left-edge) (word-p right-edge))
                ;; hyphenated structure assumes it has edges to work with
                (make-hyphenated-structure left-edge right-edge)))))))
     ((= hyphen-count 1)
      ;; E.g. "Figures S1A–S1D"
      ;; split down the middle, run the two parts through the 
      ;; pattern reifier, then combine them.
      (let* ((hyphen-pos (car hyphen-position/s))
             (first-half (resolve-hyphen-segment 
                           pos-before hyphen-pos))
             (second-half (resolve-hyphen-segment 
                           (chart-position-after hyphen-pos) next-position)))
        (push-debug `(,first-half ,second-half))    
        (unless (and first-half second-half)
          (when *work-on-ns-patterns*
            (break "One of the patterns to either side of a hyphen ~
                   did not resolve.")))
        (make-hyphenated-structure first-half second-half)))
     (t
      (when *work-on-ns-patterns*
        (break "New case for hyphens~%  hyphen count = ~a~
              ~%  phrase-length = ~a" hyphen-count phrase-length))
      (reify-ns-name-and-make-edge 
       (words-between pos-before next-position) pos-before next-position)))))


;;/// This is surely the same a resolve-slash-segment so they should mergw
(defun resolve-hyphen-segment (start-pos end-pos)
  (let ((single-edge (span-covered-by-one-edge? start-pos end-pos)))
    (or single-edge
        (let ((words (words-between start-pos end-pos))
              (pattern (characterize-words-in-region start-pos end-pos)))
          (let ((*work-on-ns-patterns* nil)) ;; t))
            (declare (special *work-on-ns-patterns*))
            (let ((result (resolve-ns-pattern pattern words start-pos end-pos)))
              (unless result 
                (push-debug `(,pattern ,words ,start-pos ,end-pos))
                ;; (setq pattern (car *) words (cadr *) start-pos (caddr *) end-pos (cadddr *))
                (when *work-on-ns-patterns*
                  (break "no result on hyphen segment pattern: ~a" pattern)))
              result))))))

(defun make-edge-into-adjective (edge)
  (setf (edge-form edge) category::adjective)
  edge)



;;;-----------------------
;;; single 'scare' quotes
;;;-----------------------

(defun scare-quote-specialist (leading-quote-pos words pos-before next-position)
  ;; It's reasonably clear what to do with scare quotes. At a minimum we move
  ;; the boundaries of the edge over word being quoted so it swallows the
  ;; single quote marks. Better than that would be recording the rhetorical
  ;; effect of do in this (which I don't know how to do). If the layout
  ;; is something different than that we just leave it for a debris collector
  (push-debug `(,leading-quote-pos ,words ,pos-before ,next-position))
  ;;  (setq leading-quote-pos (car *) words (cadr *) pos-before (caddr *) next-position (cadddr *))
  (when (and (eq leading-quote-pos pos-before)
             (eq (first words) (car (last words))))
    (if (= (length words) 3) ;; only one word
      (then
        (tr :scare-quotes-creating-edge-around (second words))
        (let* ((word-edge (left-treetop-at/only-edges 
                           (chart-position-before next-position)))
               (edge (make-edge-over-long-span
                      pos-before
                      next-position
                      (edge-category word-edge)
                      :rule 'scare-quote-specialist
                      :form (edge-form word-edge)
                      :referent (edge-referent word-edge)
                      :constituents words)))
          (tr :made-edge edge)
          edge))
      (tr :scare-quotes-wrong-number-of-words (length words)))))








