;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "edge-patterns"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  November 2015

;; Broken out from pattern-gophers 7/19/15. 8/22/15 fixed bug in
;; identify-edge-ns-pattern when we finally got a word "termini"
;; 11/27/15 No longer loaded. Gradually going through it for parts.

(in-package :sparser)

#| Test cases
 (p "Smad1/HsN3 complex.") (p "EphB1-induced.")
|#
;;;----------------------------------------
;;; prebuilt-multiword edges w/in the span
;;;----------------------------------------

(defun ns-patterns/edge-slash-edge (label-pattern
                                    start-pos end-pos edges words)
  (cond
   ((equal label-pattern '(:protein :forward-slash :protein))
    (make-ns-pair 'protein (first edges) (second edges)
                  words start-pos end-pos))
   (t (if *work-on-ns-patterns*
        (break "New edge slash pattern ~a" label-pattern)
        (edge-that-punts-edge-inside-pattern words start-pos end-pos edges)))))

(defun ns-patterns/edge-hyphen-edge (label-pattern
                                     start-pos end-pos edges words)
  (cond
   ((equal label-pattern '(:protein :hyphen  :protein))
    (make-ns-pair 'protein (first edges) (second edges)
                  words start-pos end-pos))
   ((equal label-pattern '(:protein :hyphen :bio-entity))
    (make-protein-pair/convert-bio-entity 
     start-pos end-pos edges words :right))
   ((equal label-pattern '(:protein :hyphen :lower))
    ;; same as (:full :hyphen :lower))  "GTP-bound" "EGFR-positive"
    (resolve-hyphen-between-two-words label-pattern words start-pos end-pos))
   (t (if *work-on-ns-patterns*
        (break "New edge hyphen pattern ~a" label-pattern)
        (edge-that-punts-edge-inside-pattern words start-pos end-pos edges)))))




(defun edge-that-punts-edge-inside-pattern (words start-pos end-pos edges)
  (let ((edge (make-edge-over-long-span
               start-pos
               end-pos
               (edge-category (car edges)) 
               :rule 'edge-that-punts-edge-inside-pattern
               :form (edge-form (car edges))
               :referent (edge-referent (car edges))
               :constituents edges
               :words words)))
    ;;/// trace goes here
    edge))


;;; --------------------
;;; Obsolete code below here
;;; --------------------


#+ignore ;; no longer called
(defun identify-edge-ns-pattern (pattern start-pos end-pos)
  "All of the edges in the no-space region as over single words
  so we've not gone through the edge-based pattern route. Still,
  this can sometime yield a more informative pattern, and can
  permit things like coersion of bio-entities."
  (push-debug `(,pattern ,start-pos ,end-pos))
  ;; (setq pattern (car *) start-pos (cadr *) end-pos (caddr *))
  (let (;;(pos-count (length pattern)) -- unused
        (count 0)
        (next-start start-pos)
        edge  edges )
    (loop
      (incf count)
      (setq edge (top-edge-at/starting next-start))
      (unless (edge-p edge)
        (cond
         ((eq edge :multiple-initial-edges) ;; dev/s(#)
          ;; in other situations we take the top one.
          ;; Doesn't work in real ambiguities, but it's
          ;; easy. Another option is chasing up used-in.
          (setq edge (highest-edge (pos-starts-here next-start)))
          (push edge edges))
         ((null edge) ;; "re" in "re-activaton is a word without
          ;; an edge so put in this part of the pattern instead
          ;;//// need to give them meanings and not punt.
          (push (nth (1- count) pattern) edges))
         (t (error "Unexpected situation with edge vector ~
                    at p~a" (pos-token-index next-start)))))
      (setq next-start (chart-position-after next-start))
      (when (eq next-start end-pos)
        (return)))
    (convert-pattern-edges-to-labels (nreverse edges))))





#+ignore ;; no longer used
(defun ns-sort-out-pattern-with-edges (pattern start-pos end-pos edges words
                                       hyphen-positions slash-positions
                                       colon-positions other-punct)
  (declare (special *word-nospace-keywords* *digit-nospace-keywords*))
  (push-debug `(,pattern ,start-pos ,end-pos ,edges ,hyphen-positions 
                ,slash-positions ,colon-positions ,other-punct))
  #| (setq pattern (nth 0 *) start-pos (nth 1 *) end-pos (nth 2 *) edges (nth 3 *)
        hyphen-positions (nth 4 *) slash-positions (nth 5 *)
        colon-positions (nth 6 *) other-punct (nth 7 *))  |#
  ;; "the RAS/Raf/MAPK pathway" Jan#41: (full forward-slash #<edge18 13 pathway 16>)
  ;;(break "pattern with edges")
  (let* ((label-pattern (convert-pattern-edges-to-labels pattern))
         (length (length label-pattern))
         (only-edges? (not (or (multiple-memq *word-nospace-keywords* pattern)
                               (multiple-memq *digit-nospace-keywords* pattern))))
         (digits? (multiple-memq *digit-nospace-keywords* pattern)))
    (push-debug `(,only-edges? ,digits?)) ;; quiet the compiler
    (tr :ns-edge-pattern label-pattern)
    (cond
     ((= length 3)
      (let ((character-in-middle (when (keywordp (second pattern))
                                   (second pattern))))
        (cond
         ((null character-in-middle)
          (edge-ns-pattern-character-outside pattern label-pattern
            start-pos end-pos edges words
            hyphen-positions slash-positions colon-positions other-punct))
         ((eq character-in-middle :forward-slash)
          (ns-patterns/edge-slash-edge label-pattern
            start-pos end-pos edges words))
         ((eq character-in-middle :hyphen)
          (ns-patterns/edge-hyphen-edge label-pattern
            start-pos end-pos edges words))
         ((eq character-in-middle :colon)
          (ns-patterns/edge-colon-edge label-pattern
            start-pos end-pos edges words))
         ((eq character-in-middle :plus-minus)
          (ns-patterns/edge-plusminus-edge label-pattern
            start-pos end-pos edges words))
         (t (if *work-on-ns-patterns*
              (break "edges: character in middle is ~a" character-in-middle)
              (edge-that-punts-edge-inside-pattern words start-pos end-pos edges))))))

     (t 
      (if *work-on-ns-patterns*
        (lsp-break "Sort-out-pattern-with-edges: ~a edges in ns pattern" (length edges))
        (edge-that-punts-edge-inside-pattern words start-pos end-pos edges))))))


#| Probably useful dregs
   ((= 1 (length edges))
    (let* ((edge-location (cond ((edge-p (car (last pattern))) :final)
                                ((edge-p (car pattern)) :initial)
                                (t :middle)))
           (remaining-pattern (case edge-location
                                (:final (nreverse (cdr (nreverse pattern))))
                                (:initial (cdr pattern))
                                (:middle 
                                 (loop for item in pattern
                                   unless (edge-p item) collect item))))
           (category (edge-category (car edges))))
      
      ;;//// Look for experts that can make useful sense of 
      ;; the rest of the pattern
      (cond
       ((and (eq edge-location :initial)
             (equal remaining-pattern '(:hyphen :lower)))
        (ns-sort-out-edge-hyphen-lower
         (car edges) start-pos end-pos words))
       (*work-on-ns-patterns*
        (push-debug `(,edge-location ,category ,remaining-pattern))
        (break "Work on one edge pattern"))
       (t
        (edge-that-punts-edge-inside-pattern words start-pos end-pos edges))))) |#
