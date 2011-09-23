;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "sequence"
;;;    Module:   "analyzers;forest:"
;;;   Version:   0.1 March 1994

;; initiated just a rightward-looking version 11/2/93 v2.3
;; 0.1 (3/20/94) made it sensitive to :multiple-initial-edges and wrote
;;      the variant All-treetops

(in-package :sparser)


(defun successive-treetops (&key from   ;; a position -- obligatory
                                 to     ;; ditto -- ditto
                                 below  ;; ditto -- optional
                                 )
  (let (accumulating-tts
        (first-edge (right-treetop-at from))
        lower-first-edge
        (went-past-it? nil))

    (when (eq first-edge below)
      (setq lower-first-edge
            (starting-edge-just-under first-edge from)))

    (do* ((edge (or lower-first-edge first-edge)
                (right-treetop-at next-position))
          (next-position
           (etypecase edge
             (edge (ev-position (edge-ends-at edge)))
             (word (chart-position-after from))
             (symbol
              (if (eq edge :multiple-initial-edges)
                (then
                  (setq edge (1st-preterminal-at from))
                  (chart-position-after from))
                (else (break "Corrupted data structure: a top-node ~
                              field contains an unexpected symbol:~
                              ~%  ~A" edge)))))
           (etypecase edge
             (edge (ev-position (edge-ends-at edge)))
             (word (chart-position-after next-position))
             (symbol
              (if (eq edge :multiple-initial-edges)
                (then
                  (setq edge (1st-preterminal-at next-position))
                  (chart-position-after next-position))
                (else (break "Corrupted data structure: a top-node ~
                              field contains an unexpected symbol:~
                              ~%  ~A" edge)))))))

         ((or (eq next-position to)
              (if (< (pos-token-index to)  ;;we went past it
                     (pos-token-index next-position))
                (setq went-past-it? t)
                nil))
          (push edge accumulating-tts))
      
      (push edge accumulating-tts))

    (values (nreverse accumulating-tts)
            went-past-it?)))




(defun all-treetops (&key from
                          to
                          below )
  ;; identical code to Successive-treetops, except when we get
  ;; mulitple initial edges we take all of them instead of just
  ;; the first
  (let (accumulating-tts lower-first-edge  multiple-initial-edges
        (first-edge (right-treetop-at from))
        (went-past-it? nil))

    (when (eq first-edge below)
      (setq lower-first-edge
            (starting-edge-just-under first-edge from)))

    (do* ((edge (or lower-first-edge first-edge)
                (right-treetop-at next-position))
          (position from next-position)
          (next-position
           (etypecase edge
             (edge (ev-position (edge-ends-at edge)))
             (word (chart-position-after from))
             (symbol
              (if (eq edge :multiple-initial-edges)
                (then
                  (setq multiple-initial-edges t)
                  (chart-position-after from))
                (else (break "Corrupted data structure: a top-node ~
                              field contains an unexpected symbol:~
                              ~%  ~A" edge)))))
           (etypecase edge
             (edge (ev-position (edge-ends-at edge)))
             (word (chart-position-after next-position))
             (symbol
              (if (eq edge :multiple-initial-edges)
                (then
                  (setq multiple-initial-edges t)
                  (chart-position-after next-position))
                (else (break "Corrupted data structure: a top-node ~
                              field contains an unexpected symbol:~
                              ~%  ~A" edge)))))))

         ((or (eq next-position to)
              (if (< (pos-token-index to)  ;;we went past it
                     (pos-token-index next-position))
                (setq went-past-it? t)
                nil))
          (if multiple-initial-edges
            (dolist (e (all-preterminals-at position))
              (push e accumulating-tts))
            (push edge accumulating-tts)))

      (if multiple-initial-edges
        (dolist (e (all-preterminals-at position))
          (push e accumulating-tts))
        (push edge accumulating-tts)))

    (values (nreverse accumulating-tts)
            went-past-it?)))

