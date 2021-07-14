;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "phone-numbers"
;;;    Module:   grammar/model/core/numbers/
;;;   Version:   July 2021

;; Initiated 7/13/21

(in-package :sparser)

(define-category phone-number
  :specializes index
  :instantiates :self
  :binds ((area-code . number)
          (exchange . number)
          (subscriber-number . number))
  :documentation "This is just the US pattern. Other region/countries have many
 other patterns, see https://en.wikipedia.org/wiki/Telephone_numbering_plan")


(defun make-an-edge-over-phone-number (3-digit-edge 4-digit-edge start-pos)
  "Called from digits-fsa whose charter is to make an edge over the full span
   of digits it sees, so we have to do the same. We also need to look for
   a preceding area code, likely inside parentheses.
   Since this is run from an edge fsa, later actions like parentheses won't
   have run yet. It's ugly, but walking the chart here is simpler that waiting
   and trying to hook things up. If these were thicker on the ground we would
   revisit this."
  (push-debug `(,3-digit-edge ,4-digit-edge ,start-pos))
  (let* ((pos-minus-1 (chart-position-before start-pos))
         (pos-minus-2 (chart-position-before pos-minus-1))
         (pos-minus-3 (chart-position-before pos-minus-2))
         area-code-edge )
    (when (and (eq (pos-terminal pos-minus-1) word::close-paren)
               (eq (pos-terminal pos-minus-3) word::open-paren))
      (setq area-code-edge (top-edge-at/starting pos-minus-2)))
    (let* ((i (define-or-find-individual 'phone-number
                 :exchange (edge-referent 3-digit-edge)
                 :subscriber-number (edge-referent 4-digit-edge)))
           (j (when area-code-edge
                (bind-variable 'area-code (edge-referent area-code-edge) i)))
           (edge (make-edge-over-long-span
                  (if j pos-minus-3 start-pos)
                  (pos-edge-ends-at 4-digit-edge)
                  category::phone-number
                  :rule 'make-an-edge-over-phone-number
                  :form (category-named 'np) ; ???
                  :referent (or j i)
                  :constituents (treetops-between (if j pos-minus-3 start-pos)
                                                  (pos-edge-ends-at 4-digit-edge)))))
      edge)))
    
