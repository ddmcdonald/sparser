;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-1999,2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "find or make at runtime"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  1.0 September 2011

;; This is the entry point at runtime for objects (psi) that are
;; seen in the course of an analysis.

;; initiated 9/12/98, out of largely already existing routines. Tweaked the
;; name of a call 2/14/99. 9/3 Renamed call in Find-or-make-self-node to accomodate
;; forced change elsewhere. 
;; 1.0 (7/22/09) Simplified for new indexing regime. 9/30/11 Cleaning up.

(in-package :sparser)


;;;-----------------------------------------------------
;;; The lattice point that soaks up the category per-se
;;;-----------------------------------------------------

;; Called from, e.g., find-or-make-psi-for-base-category, which is called
;; from, e.g., ref/instantiate-individual-with-binding 

(defun find-or-make-self-node (category)
  (break "find-or-make-self-node -- shouldn't be needed")
  ;; Replaced with find-self-node, which returns the lp of the
  ;; category. Not quite the same, but for now we don't need
  ;; self nodes
  (let ((pre-existing-lp (find-self-node category)))
    (if pre-existing-lp
      (then
        (tr :self-lp-already-exists category pre-existing-lp)
        pre-existing-lp)
      (else
        (tr :have-to-make-self-node category)
        (construct-self-lattice-point
         category (cat-lattice-position category))))))


;;;----------------------------------
;;; incremental, one-step extensions
;;;----------------------------------

(defun find-or-make-next-lp-down-for-variable (variable starting-lattice-point)
  (let ((down-pointers (lp-down-pointers starting-lattice-point))
        (variables-bound (lp-variables-bound starting-lattice-point))
        target-lp  )
    (tr :get-lp-extending-parent-by-variable variable starting-lattice-point)
    (cond
     (down-pointers ;; we've been down from here before
      (setq target-lp (cdr (assoc variable down-pointers)))
      (push-debug `(,down-pointers))
      ;;(break "find-or-make-next-lp-down-for-variable - down-pointers")
      (if target-lp
        (then
          (tr :lp-with-var-already-there-via-downpointers target-lp)
          target-lp)
        (else
          ;; first instance of extending the lattice-point with this
          ;; variable, so we make a new node for this particular combination.
          (let ((new-node (new-lattice-point
                           starting-lattice-point variable)))
            ;; extend the down-pointers
            (push `(,variable . ,new-node)
                  (lp-down-pointers starting-lattice-point))
            (tr :created-lp-extending-downlinks new-node)
            new-node ))))

     ((and variables-bound
           (setq target-lp
                 (find-lattice-point-with-variables1
                  (cons variable variables-bound)
                  (lp-top-lp starting-lattice-point))))
      ;; We've found another way into this node, so we add another uplink.
;      (push starting-lattice-point
;            (lp-upward-pointers target-lp))
      ;; and we initialize the down pointers from the start node
      (setf (lp-down-pointers starting-lattice-point)
            `( (,variable . ,target-lp) ))
      (tr :found-another-way-down-to-existing-lp target-lp starting-lattice-point)
      target-lp )

     (t ;; First instance of this combination of bound variables so
        ;; we make a node with just one uplink and we enter this combination
        ;; in the list maintained by the top-node.
      (let ((new-node (new-lattice-point starting-lattice-point variable)))
        (setf (lp-down-pointers starting-lattice-point)
              `( (,variable . ,new-node) )) 
        (tr :added-new-downlink-from-lp-for-lp new-node starting-lattice-point)
        new-node )))))

