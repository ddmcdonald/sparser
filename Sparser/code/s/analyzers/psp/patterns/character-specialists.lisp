;;;-*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "character-specialists"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  October 2015

;; Initiated 9/9/14 to hold specialists dispatched from the no-space
;; scan. Tweaking through 10/9/14. Removed slash routines 12/10/14 as
;; obsolete. Renewed tweaking/fanout through 5/17/15
;; 5/30/2015 short-term patch for problems with ; as in "...with β-, γ-, and α-catenins..."
;; 10/6/15 Commented out unfinished routine that isn't called

(in-package :sparser)
(defvar *WORK-ON-NS-PATTERNS*)

;;;----------
;;; hyphens
;;;----------

(defun nospace-hyphen-specialist (words pattern hyphen-position/s 
                                  pos-before next-position)
  ;; Cleanup case in one-hyphen-ns-patterns when no defined pattern
  ;; has matched. 
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
      (let ((hyphen-pos (car hyphen-position/s)))
        (cond
         ((eq hyphen-pos pos-before) ;; it's initial
          ;; in "green fluorescent protein (GFP)-tagged ERK1"
          ;; the scanner won't cross the parentheses so we
          ;; get "-tagged"
          (resolve-initial-stranded-hyphen 
           pattern words pos-before next-position))
         ((eq hyphen-pos next-position) ;; its final
          (resolve-stranded-hyphen 
           pattern words pos-before next-position))
         (t
          (let ((first-half (resolve-hyphen-segment 
                             pos-before hyphen-pos))
                (second-half (resolve-hyphen-segment 
                              (chart-position-after hyphen-pos) next-position)))
            (if (and first-half second-half)
              (make-hyphenated-structure first-half second-half)
              (if *work-on-ns-patterns*
                (then
                  (push-debug `(,first-half ,second-half))    
                  (break "One of the patterns to either side of a hyphen ~
                         did not resolve."))
                ;; If not working on it, completely punt
                (reify-ns-name-and-make-edge 
                 (words-between pos-before next-position) 
                 pos-before next-position))))))))
        
     (t
      (when *work-on-ns-patterns*
        (break "New case for hyphens~%  hyphen count = ~a~
              ~%  phrase-length = ~a" hyphen-count phrase-length))
      (reify-ns-name-and-make-edge 
       (words-between pos-before next-position) pos-before next-position)))))


;;/// This is surely the same a resolve-slash-segment so they should mergw
(defun resolve-hyphen-segment (start-pos end-pos)
  (if (eq start-pos end-pos) ;; as in "...with β-, γ-, and α-catenins..."
    (when *work-on-ns-patterns*
      (break "start-pos and end-pos are identical"))
    (let ((single-edge (span-covered-by-one-edge? start-pos end-pos)))
      (or single-edge
          (let ((words (words-between start-pos end-pos))
                (pattern (characterize-words-in-region start-pos end-pos nil)))
            (let ((*work-on-ns-patterns* nil)) ;; t))
              (declare (special *work-on-ns-patterns*))
              (let ((result (resolve-ns-pattern pattern words start-pos end-pos)))
               (unless result 
                 (push-debug `(,pattern ,words ,start-pos ,end-pos))
                 ;; (setq pattern (car *) words (cadr *) start-pos (caddr *) end-pos (cadddr *))
                 (when *work-on-ns-patterns*
                   (break "no result on hyphen segment pattern: ~a" pattern)))
               result)))))))

(defun make-edge-into-adjective (edge)
  (declare (special category::adjective))
  (setf (edge-form edge) category::adjective)
  edge)


;;;------------------------------------
;;; Combine them by binding a variable
;;;------------------------------------

(defun second-imposes-relation-on-first? (right-ref right-edge)
  (let ((form (edge-form right-edge)))
    (when (memq (cat-symbol form) '(category::verb+ed ;; assume passive
                                    category::adjective))
      ;; now figure out what variable on the second (right)
      ;; should be bound to the first (left)
      (let ((variable (subject-variable right-ref)))
        ;; Which variable this is really depends on the two referents.
        ;; For the induced example its an agent (= subject). But the
        ;; tyrosine goes on the site variable of the phosphoryate.
        ;; For right now, binding the subject and letting the chips
        ;; fall as they may. Elevating the right edge as the head
        ;; but making it an adjective overall. 
        (unless variable
          ;;/// clear motivation for structure on variables on perhaps
          ;; on the mixing in of categories for this same purpose
          ;; Default to modifier ??
          (setq variable
                (single-on-variable-on-category right-ref)))
        variable))))

;; "EphB1-induced", "tyrosine-phosphorylated"
(defun do-relation-between-first-and-second (left-ref right-ref left-edge right-edge)
  ;; Called from resolve-hyphen-between-two-words when the predicate just above 
  ;; is non-nil.
  (declare (special category::adjective))

  (tr :make-right-head-with-agent-left)

  (when (category-p right-ref)
    (setq right-ref (make-individual-for-dm&p right-ref)))

  (let* ((variable (second-imposes-relation-on-first? right-ref right-edge))
         (edge
          (make-binary-edge/explicit-rule-components
            left-edge right-edge
            :category (edge-category right-edge)
            :form category::adjective
            :referent (bind-dli-variable variable left-ref right-ref)
            :rule-name 'form-relation-between-first-and-second)))
    (tr :no-space-made-edge edge)
    edge))



  


;;;-----------------------
;;; single 'scare' quotes
;;;-----------------------
 
(defun scare-quote-specialist (leading-quote-pos words pos-before next-position)
  ;; It's reasonably clear what to do with scare quotes. At a minimum we move
  ;; the boundaries of the edge over word being quoted so it swallows the
  ;; single quote marks. Better than that would be recording the rhetorical
  ;; effect of do in this (which I don't know how to do). If the layout
  ;; is something different than that we just leave it for a debris collector
;  (push-debug `(,leading-quote-pos ,words ,pos-before ,next-position))
  ;;  (setq leading-quote-pos (car *) words (cadr *) pos-before (caddr *) next-position (cadddr *))
  (when (and (eq leading-quote-pos pos-before)
             (eq (first words) (car (last words))))

;    (if (= (length words) 3) ;; only one word
;      (then
;;/////          "hot-spot" -- send the interior back through the process
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
                      :words words)))
          (tr :made-edge edge)
          edge)))


;      (tr :scare-quotes-wrong-number-of-words (length words)))








