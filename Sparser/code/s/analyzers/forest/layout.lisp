;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id: layout.lisp 359 2010-08-13 20:13:38Z dmcdonal $
;;;
;;;      File:   "layout"
;;;    Module:   "analyzers;forest:"
;;;   Version:   0.2 June 2010

;; initiated 5/3/91, break messages improved 10/19
;; 0.1 (6/16/94) added option to ignore topmost edge
;; 0.2 (6/5/10) Found a bug in the case where the segment ends with an edge
;;   but that edge is preceded by a word rather than another edge. That situation
;;   wasn't anticipated. 

(in-package :sparser)


(defun analyze-segment-layout (left-bound right-bound
                               &optional ignore-spanning-edge? )
  (if (eq left-bound right-bound)
    :null-span
    (let ((rightmost (edge-ending-at right-bound))
          (single-span? nil))

      (when rightmost
        (cond ((eq rightmost :multiple-initial-edges)
               (when (eq (chart-position-before right-bound)
                         left-bound)
                 (setq single-span? t)))
              ((eq (pos-edge-starts-at rightmost) left-bound)
               (setq single-span? t))))

      (when single-span?
        (unless ignore-spanning-edge?
          (return-from analyze-segment-layout :single-span)))
      
      (let ((position right-bound)
            edge next-position edges? unknown-words? some-edges?)
        (loop
          (setq edge (ev-top-node (pos-ends-here position)))
          (when single-span?
            ;; we're here because the ignore-spanning-edge? flag is up
            (setq edge (rightmost-daughter-edge edge))
            (setq single-span? nil))
          (cond
           ((null edge)
	    (when edges?
	      (setq edges? nil
		    some-edges? t))
            (setq next-position (chart-position-before position))
            (unless (word-rules (pos-terminal next-position))
              (setq unknown-words? t)))
           ((eq edge :multiple-initial-edges)
            (setq edges? t)
            (setq next-position
                  (chart-position-before position)))
           (edge
            (when (< (pos-token-index (pos-edge-starts-at edge))
                     (pos-token-index left-bound))
              (return-from analyze-segment-layout
                           :span-is-longer-than-segment))
            (setq edges? t)
            (setq next-position (pos-edge-starts-at edge)))
           (t (break/debug "Analyze-segment-layout: unexpected case")))
          
          (if (eq next-position left-bound)
            (return)
            (setq position next-position)))
        
        (cond ((null edges?)  :no-edges)
              (unknown-words? :has-unknown-words)
	      (some-edges?    :some-edges)
              (edges?         :contiguous-edges)
              (t (break "Layout of segment routine can't analyse ~
                         this case.")))))))

#|/// need to merge this with the pts version -- segment-coverage
and modify the readers since their choice of labels is a bit different
Davidsmbookpro2:s ddm$ grep coverage-over-region  **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp 
analyzers/traversal/forest-scan.lisp:  (let ((coverage (coverage-over-region left-bound right-bound))
analyzers/traversal/forest-scan.lisp:                 (new-coverage (coverage-over-region left-bound right-bound)))
analyzers/traversal/forest-scan.lisp:                   (new-coverage (coverage-over-region left-bound right-bound)))
drivers/forest/island-driving.lisp:    (let ((coverage (coverage-over-region start-pos end-pos)))
drivers/forest/island-driving.lisp:  (let ((coverage (coverage-over-region start-pos end-pos)))
drivers/forest/island-driving.lisp:       ((eq (coverage-over-region start-pos end-pos) :one-edge-over-entire-segment)
drivers/forest/island-driving.lisp:      (setq coverage (coverage-over-region start-pos end-pos))
drivers/forest/island-driving.lisp:             (setq coverage (coverage-over-region start-pos end-pos))
drivers/sinks/return-value.lisp:    (let ((coverage (coverage-over-region
drivers/chart/psp/incremental.lisp:    (let ((coverage (coverage-over-region start-pos end-pos)))
drivers/chart/psp/pts.lisp:      (coverage-over-region left-end position))))
drivers/chart/psp/pts.lisp:(defun coverage-over-region (left-end right-end)
Davidsmbookpro2:s ddm$ 
Davidsmbookpro2:s ddm$ grep analyze-segment-layout  **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp 
analyzers/forest/layout.lisp:(defun analyze-segment-layout (left-bound right-bound
analyzers/forest/layout.lisp:          (return-from analyze-segment-layout :single-span)))
analyzers/forest/layout.lisp:              (return-from analyze-segment-layout
analyzers/traversal/dispatch.lisp:  (let ((layout (analyze-segment-layout pos-after-open
analyzers/traversal/dispatch.lisp:               layout (analyze-segment-layout
analyzers/traversal/forest-scan.lisp:      (let ((layout (analyze-segment-layout
analyzers/traversal/forest-scan.lisp:    (let ((layout (analyze-segment-layout
grammar/rules/dmp/capitalized-sequences.lisp:           (analyze-segment-layout start-pos end-pos)
grammar/rules/sgml/dci-cases.lisp:  (let ((layout (analyze-segment-layout start-pos end-pos)))
grammar/rules/sgml/djns-wsj-cases.lisp:  (let ((layout (analyze-segment-layout start-pos end-pos)))
grammar/rules/sgml/djns-wsj-cases.lisp:  (let ((layout (analyze-segment-layout start-pos end-pos)))
grammar/rules/sgml/djns-wsj-cases.lisp:  (let ((layout (analyze-segment-layout start-pos end-pos)))
grammar/rules/sgml/djns-wsj-cases.lisp:  (let ((layout (analyze-segment-layout start-pos end-pos)))
grammar/rules/sgml/tipster-cases.lisp:  (let ((layout (analyze-segment-layout start-pos end-pos)))
grammar/rules/sgml/tipster-cases.lisp:  (let ((layout (analyze-segment-layout start-pos end-pos)))
grammar/rules/sgml/tipster-cases.lisp:  (let ((layout (analyze-segment-layout start-pos end-pos)))
|#
