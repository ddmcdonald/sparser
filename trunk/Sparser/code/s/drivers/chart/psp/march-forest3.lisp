;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,199,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "march/forest"                ;; "parse pending tree tops"
;;;    Module:   "drivers;chart:psp:"
;;;   Version:   3.3 January 1995

;; initiated 4/26/91, revised 4/28, 5/2
;; 5/6 "march/forest" didn't look past the quiescence boundary. Later ones
;; don't march past it, but do look past it.
;; 3.0 (5/11/93 v2.3) Bumped version to accomodate new scan regime
;; 3.1 (3/30/94) added check for the right edge being dotted
;; 3.2 (9/27) converted traces to TR format  (10/26) "quiesCence"
;; 3.3 (1/16/95) added a check for the edge found by March-back.. jumping over
;;      the quiescent position.

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun march-back-from-the-right/forest ()
  (tr :march-back-from-the-right/forest)
  (let* ((rightmost *rightmost-active-position/forest*))
    (cond
     ((eq rightmost :no-edges)
      (tr :forest/no-edges)
      (move-on))
     (t
      (let ((edge (ev-top-node (pos-ends-here rightmost))))
        (cond
         ((eq rightmost *rightmost-quiescent-position*)
          (tr :forest/reached-quescence)
          (move-on))

         ((eq rightmost *first-chart-position-object*)
          (tr :forest/start-of-chart)
          (move-on))

         ((eq edge :multiple-initial-edges)
          (try-parsing-tt/multiple-on-right
           (pos-ends-here rightmost)))

         (edge
          (if (position-precedes (pos-edge-starts-at edge)
                                 *rightmost-quiescent-position*)
            ;; For some reason this edge goes back too far.
            (move-on)
            (else
              (tr :forest/found-edge edge rightmost)
              (if (edge-of-dotted-intermediary edge)
                (march-back-one-position/forest rightmost)
                (try-parsing-tt edge)))))

         (t (march-back-one-position/forest rightmost))))))))


(defun march-back-one-position/forest (rightmost-position)
  (tr :march-back-one-position/forest rightmost-position)
  (setq *rightmost-active-position/forest*
        (chart-position-before rightmost-position))
  (march-back-from-the-right/forest))





(defun try-parsing-tt/multiple-on-right (right-vector)
  ;; thus far (4/29/91) all multiple edges are only one word long,
  ;; so we'll take advantage of that in determining what's on the left
  (tr :try-parsing-tt/multiple-on-right right-vector)
  (let ((middle-position (chart-position-before
                          (ev-position right-vector))))
    (tr :forest/looking-leftwards/mult right-vector middle-position)

    (let* ((left-vector (pos-ends-here middle-position))
           (left-edge (ev-top-node left-vector))
           span )
      
      (if left-edge
        (if (eq left-edge :multiple-initial-edges)
          (then
            (tr :forest/mult-adjacent-to-mult)
            (unless (setq span (check-many-many left-vector
                                                right-vector))
              (setq *rightmost-active-position/forest*
                    middle-position)))
          (else
            (tr :forest/mult-adjacent-leftwards-to-edge left-edge)
            (unless (setq span (check-one-many left-edge
                                               right-vector))
              (setq *rightmost-active-position/forest*
                    middle-position))))
        (else
          (tr :forest/mult-nothing-adjacent-moving-rightward)
          (when (eq middle-position *rightmost-quiescent-position*)
            (tr :forest/reached-quescence)
            (move-on))
          (when (eq middle-position (position# 0))
            (tr :forest/start-of-chart)
            (move-on))
          (setq *rightmost-active-position/forest*
                middle-position)))
      
      (if span
        (check-for-right-extensions/forest span)
        (march-back-from-the-right/forest)))))



(defun try-parsing-tt (right-edge)
  (tr :try-parsing-tt right-edge)
  (let ((adjacent-pos (pos-edge-starts-at right-edge)))

    (tr :forest/looking-leftwards-from right-edge adjacent-pos)

    (let* ((adjacent-end-vector (pos-ends-here adjacent-pos))
           (left-edge (ev-top-node adjacent-end-vector))
           span )
      
      (if left-edge
        (if (eq left-edge :multiple-initial-edges)
          (then
            (tr :forest/single-adjacent-to-mult)
            (unless (setq span (check-many-one adjacent-end-vector
                                               right-edge))
              (setq *rightmost-active-position/forest*
                    adjacent-pos)))
          (else
            (tr :forest/single-adjacent-leftwards-to-edge left-edge)
            (unless (setq span (check-one-one left-edge
                                              right-edge))
              (setq *rightmost-active-position/forest*
                    adjacent-pos))))
        (else
          (tr :forest/single-nothing-adjacent-moving-rightward)
          (cond ((eq adjacent-pos *rightmost-quiescent-position*)
                 (tr :forest/reached-quescence)
                 (move-on))
                ((eq adjacent-pos (position# 0))
                 (tr :forest/start-of-chart)
                 (move-on))
                (t (setq *rightmost-active-position/forest*
                         adjacent-pos)))))
     (if span
        (check-for-right-extensions/forest span)
        (march-back-from-the-right/forest)))))



(defun check-for-right-extensions/forest (left-edge)
  (tr :check-for-right-extensions/forest left-edge)
  (let ((right-end (pos-edge-ends-at left-edge)))

    (tr :forest/right-extension left-edge)

    (if (eq right-end ;; *forest-right-boundary*
                      *where-the-last-segment-ended*)
      (then
        (tr :forest/left-boundary-reached)
        (if (tt-extends? left-edge)
          (then
            (tr :forest/right-looking-edge-extends)
            (tr :forest/extending-from-rightmost-new-edge left-edge)
            (go-back-to-scanning))
          (else
            (tr :forest/left-boundary-reached/looking-leftwards)
            (march-back-from-the-right/forest))))

      (let* ((right-vector (pos-starts-here right-end))
             (right-field (ev-top-node right-vector))
             spanning-edge )

        (cond ((eq :multiple-initial-edges right-field)
               (tr :forest/right-ext/adjacent-mult)
               (setq spanning-edge
                     (check-one-many left-edge right-vector)))
              (right-field
               (tr :forest/right-ext/adjacent-single right-field)
               (setq spanning-edge
                     (check-one-one left-edge right-field)))
              (t (tr :forest/right-ext/no-edge)))

        (if spanning-edge
          (then (setq *rightmost-active-position/forest*
                      (pos-edge-ends-at spanning-edge))
                (check-for-right-extensions/forest  spanning-edge))
          (else
            (march-back-from-the-right/forest)))))))


;;;---------------------
;;; network-flow traces
;;;---------------------

(defparameter *trace-forest-marching-flow* nil)

(deftrace :march-back-from-the-right/forest ()
  (when (or *trace-network-flow* *trace-forest-marching-flow*)
    (trace-msg "March-back-from-the-right/forest called at p~A"
               (pos-token-index *rightmost-active-position/forest*))))

(deftrace :march-back-one-position/forest (rightmost)
  (when (or *trace-network-flow* *trace-forest-marching-flow*)
    (trace-msg "March-back-one-position/forest at p~A"
               (pos-token-index rightmost))))

(deftrace :try-parsing-tt/multiple-on-right (right-vector)
  (when (or *trace-network-flow* *trace-forest-marching-flow*)
    (trace-msg "try-parsing-tt/multiple-on-right: ~A"
               right-vector)))

(deftrace :try-parsing-tt (right-edge)
  (when (or *trace-network-flow* *trace-forest-marching-flow*)
    (trace-msg "try-parsing-tt: ~A" right-edge)))

(deftrace :check-for-right-extensions/forest (left-edge)
  (when (or *trace-network-flow* *trace-forest-marching-flow*)
    (trace-msg "Check-for-right-extensions/forest ~A" left-edge)))

