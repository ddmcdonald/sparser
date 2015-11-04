;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "search"
;;;   Module:  "analyzers;CA:"
;;;  Version:  2.0 May 1995

;; 2.0 (4/26/95 adapted from loop designed in 3/91, but essentially redone
;; from scratch.  Tweeking ..5/3

(in-package :sparser)


(defun search-left-for (label-sought start-pos
                        &key  matrix-initial one-phrase
                              max-tt-distance )

  (declare (ignore matrix-initial one-phrase))
  (unless max-tt-distance
    (setq max-tt-distance 50))

  (tr :ca/searching-left-for label-sought start-pos)
  (let ((tt-count 0)
        (position start-pos)
        next-pos
        tt tt-label vector )
    
    (loop
      (multiple-value-setq (tt next-pos)
        (next-treetop/leftward position))
      (incf tt-count)

      (setq tt-label (etypecase tt
                       (edge (edge-category tt))
                       (edge-vector (setq vector tt)
                                    nil)
                       (word tt)))
      (tr :ca/searching-next-item tt)

      (if vector
        (then
          (when (eq label-sought (pos-terminal next-pos))
            (tr :ca/found-it tt)
            (return-from search-left-for (pos-terminal next-pos)))
          (dolist (edge (preterminal-edges next-pos))
            (when (eq label-sought (edge-category edge))
              (tr :ca/found-it tt)
              (return-from search-left-for edge))))

        (when (eq tt-label label-sought)
          (tr :ca/found-it tt)
          (return-from search-left-for tt)))


      ;; never run off the start of the chart
      (when (eq (pos-token-index next-pos) 0)
        (tr :ca/search-hit-ss)
        (return-from search-left-for nil))

      ;; simple bounds checks on the position
      (when (> tt-count max-tt-distance)
        (tr :ca/search-maxed-out next-pos max-tt-distance)
        (return-from search-left-for nil))

      (setq position next-pos))))

