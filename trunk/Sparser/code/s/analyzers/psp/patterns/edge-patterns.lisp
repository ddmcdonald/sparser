;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "edge-patterns"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  July 2015

;; Broken out from pattern-gophers 7/19/15

(in-package :sparser)

#| Test cases
 (p "Smad1/HsN3 complex.") (p "EphB1-induced.")
|#
;;;----------------------------------------
;;; prebuilt-multiword edges w/in the span
;;;----------------------------------------

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
         (t (if *work-on-ns-patterns*
              (break "edges: character in middle is ~a" character-in-middle)
              (edge-that-punts-edge-inside-pattern words start-pos end-pos edges))))))
     (t 
      (if *work-on-ns-patterns*
        (break "~a edges in ns pattern" (length edges))
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
   ((equal label-pattern '(:protein :hyphen :lower))
    ;; same as (:full :hyphen :lower))  "GTP-bound" "EGFR-positive"
    (resolve-hyphen-between-two-words label-pattern words start-pos end-pos))
    
   (t (if *work-on-ns-patterns*
        (break "New edge hyphen pattern ~a" label-pattern)
        (edge-that-punts-edge-inside-pattern words start-pos end-pos edges)))))

(defun ns-patterns/edge-colon-edge (label-pattern
                                    start-pos end-pos edges words)
  (cond
   ((equal label-pattern '(:protein :hyphen  :protein))
    (make-ns-pair 'protein (first edges) (second edges)
                  words start-pos end-pos))
   (t (if *work-on-ns-patterns*
        (break "New edge colon pattern ~a" label-pattern)
        (edge-that-punts-edge-inside-pattern words start-pos end-pos edges)))))


 
(defun edge-ns-pattern-character-outside (pattern label-pattern
                                          start-pos end-pos edges words
                                          hyphen-positions slash-positions 
                                          colon-positions other-punct)
  (push-debug `(,pattern ,label-pattern ,start-pos ,end-pos ,edges ,hyphen-positions 
                ,slash-positions ,colon-positions ,other-punct))
  (if *work-on-ns-patterns*
    (break "Stub: character outside: ~a" pattern)
    (edge-that-punts-edge-inside-pattern words start-pos end-pos edges)))

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


;;;---------
;;; go'fers
;;;---------

(defun convert-pattern-edges-to-labels (pattern)
  "Given an edge, return it's category label as a keyword."
  (loop for item in pattern
    unless (or (keywordp item) (edge-p item))
    do (error "New type in pattern: ~a" item))
  (flet ((edge-category-to-keyword (edge)
           (let* ((symbol (cat-symbol (edge-category edge)))
                  (pname (symbol-name symbol)))
             (intern pname (find-package :keyword)))))
    (loop for item in pattern
      when (keywordp item) collect item
      when (edge-p item) collect (edge-category-to-keyword item))))

