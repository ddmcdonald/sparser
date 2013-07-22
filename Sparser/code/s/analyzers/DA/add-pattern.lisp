;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "add pattern"
;;;   Module:  "analyzers;DA:"
;;;  Version:  May 1995

;; initiated 5/5/95.  Elaborated ..5/11

(in-package :sparser)


(defun create-and-thread-trie-for-pattern (pattern rule)
  (let* ((1st-item (first pattern))
         (vertex-0 (trie-for-1st-item/pattern 1st-item)))
    (if vertex-0
      (thread-pattern-into-existing-trie pattern rule vertex-0)
      (make-new-trie pattern rule))))


(defun make-new-trie (pattern rule)
  ;; There is no pattern that begins with this same 1st item,
  ;; so we just make a straightline trie with no alternatives.
  (let* ((start (make-the-start-vertex pattern))
         (items (copy-list pattern))
         (prior-vertex start)
         arc )

    (loop
      (setq arc (make-arc-for-pattern-item (pop items)
                                           prior-vertex))
      (knit-arc-to-prior-vertex arc)
      (if items
        (setq prior-vertex
              (knit-arc-to-next-vertex arc))
        (else
          (knit-arc-to-next-vertex/end arc rule)
          (return))))

    start ))


;;;--------------------
;;; extending the Trie
;;;--------------------

(defun thread-pattern-into-existing-trie (pattern rule vertex-0)
  (tr :rule-varies-known-trie rule vertex-0)
  (find-point-of-divergence-and-extend-trie vertex-0  rule
                                            (copy-list pattern))
  vertex-0 )


(defun find-point-of-divergence-and-extend-trie (vertex  rule
                                                 remaining-items)
  (let* ((1st-item (first remaining-items))
         (remainder (rest remaining-items))
         (next-vertex
          (item-in-new-pattern-fits-existing-arc? vertex
                                                  1st-item)))
    (if next-vertex
      (find-point-of-divergence-and-extend-trie next-vertex  rule
                                                remainder)

      (extend-trie-for-rest-of-pattern vertex rule
                                           remaining-items))))


(defun extend-trie-for-rest-of-pattern (vertex rule rest-of-the-items)
  ;; The arcs at this vertex did not handle the first of the remaining 
  ;; items, so we add a new arc to it for  that item, and then 
  ;; continue with new vertexes and arcs as necessary to accomodate
  ;; the rest of the pattern.
  (let* ((1st-item (first rest-of-the-items))
         (remainder (rest rest-of-the-items))
        (new-arc (make-arc-for-pattern-item 1st-item 
                                            vertex)))
    (tr :made-arc-for vertex new-arc 1st-item)

    (knit-arc-to-prior-vertex new-arc)

    (let ((new-vertex
           (if remainder
             (knit-arc-to-next-vertex new-arc)
             (knit-arc-to-next-vertex/end new-arc rule))))

      (tr :arc-leads-to-vertex new-arc new-vertex)
      (when remainder
        (tr :vertex-ends-trie-thread new-vertex))
       
      (if remainder
        (extend-trie-for-rest-of-pattern new-vertex rule
                                         remainder)
        new-vertex ))))





(defun item-in-new-pattern-fits-existing-arc? (vertex item)
   ;; If one of the arcs matches, return its right-vertex,
   ;; otherwise return nil.
   (tr :checking-pattern-item-to-arcs-at vertex item)
   (push-debug `(,vertex ,item))
  (let ((arcs (vertex-rightward-extensions vertex))
        matching-arc )

    (dolist (arc arcs)
      (tr :checking-pattern-item-to-arc arc)
      (push-debug `(,arc))
      (etypecase arc
        (label-arc
         (when (or (referential-category-p item)
                   (category-p item))
           (when (eq (arc-label arc) item)
             (setq matching-arc arc)
             (return))))

        (form-arc
         (when (or (referential-category-p item)
                   (category-p item))
           (when (eq (arc-label arc) item)
             (setq matching-arc arc)
             (return))))

        (morph-arc
         (when (pattern-item-p item)
           (when (eq (pattern-item-type item) :morph)
             (when (eq (pattern-item-spec item)
                       (arc-morph-keyword arc))
               (setq matching-arc arc)
               (return)))))
          
        (word-arc
         (when (word-p item)
           (when (eq (arc-word arc) item)
             (setq matching-arc arc)
             (return))))

        (polyword-arc
         (when (word-p item)
           (when (eq (arc-polyword arc) item)
             (setq matching-arc arc)
             (return))))

        
        ))

    (if matching-arc
      (then
        (tr :pattern-item-matched-arc matching-arc)
        (arc-right-vertex matching-arc))
      (else
        (tr :pattern-item-didnt-match-anything)
        nil ))))

