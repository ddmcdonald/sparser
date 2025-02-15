;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "knit"
;;;   Module:  "analyzers;DA:"
;;;  Version:  February 2020

;; initiated 5/5/95.  Packaged vertex-making calls 5/12

(in-package :sparser)


(defun knit-arc-to-prior-vertex (arc leftward-vertex)
  "Called from Make-new-trie.
   Add the arc to the list of rightward-extensions of the vertex
   that the arc lists as its left-vertex.
      If there's to be a rank ordering of the arcs it's done
   here. For the moment, we'll just place newer arcs at the
   front of the list."
  ;;(let ((vertex (arc-left-vertex arc)))
    (setf (vertex-rightward-extensions leftward-vertex)
          (cons arc
                (vertex-rightward-extensions leftward-vertex))))  ;)


(defun knit-arc-to-next-vertex (arc)
  "Called from Make-new-trie.
   Create the right vertex for the arc, link it in, and
   return the arc.  
      Gets the reference item from the arc's left vertex.  
   We know this is a regular vertex that will have rightward
   extensions because it were a final vertex the function below
   would have been called"
  (let* ((left-vertex (arc-left-vertex arc))
         (right-vertex
          (make-middle-vertex
           (vertex-reference-item left-vertex)
           (1+ (vertex-count left-vertex))
           :leftward-arcs (vertex-rightward-extensions left-vertex))))
    (setf (arc-right-vertex arc) right-vertex)
    right-vertex ))


(defun knit-arc-to-next-vertex/end (arc rule)
  (let* ((left-vertex (arc-left-vertex arc))
         (right-vertex (make-an-end-vertex
                        (vertex-reference-item left-vertex)
                        (1+ (vertex-count left-vertex))
                        rule
                        :leftward-arcs 
                           (vertex-rightward-extensions left-vertex))))

    (setf (arc-right-vertex arc) right-vertex)
    right-vertex ))


(defun convert-to-end-vertex (original-vertex rule)
  "Find the arc that points to the original vertex.
   Make a tailored end-vertex that appreciates any rightward
   arcs the original has. Replace the original with the
   new one."
  (push-debug `(,original-vertex))
  (tr :replacing-vertex rule original-vertex)
  (let ((leftward-arcs (vertex-leftward-extensions original-vertex))
        (rightward-arcs (vertex-rightward-extensions original-vertex))
        (count (vertex-count original-vertex)))
    (when (cdr leftward-arcs)
      (break "more than one leftward arc: ~a" leftward-arcs))
    (let ((replacement
           (make-an-end-vertex
            (vertex-reference-item original-vertex) ; item
            count rule
            :leftward-arcs leftward-arcs
            :rightward-arcs rightward-arcs)))            
      (let ((left-arc (car leftward-arcs)))
        (setf (arc-right-vertex left-arc) replacement)
        (tr :replacement-vertex left-arc replacement)
        replacement))))

