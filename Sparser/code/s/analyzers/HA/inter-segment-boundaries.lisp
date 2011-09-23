;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "inter-segment boundaries"
;;;   Module:  "analyzers;HA:"
;;;  Version:  May 1994

;; initiated 5/12/94 v2.3.  Added a trace 7/12/95

(in-package :sparser)


(defun edge-introduces-brackets (edge)
  (let* ((label (edge-category edge))
         (rs (rule-set-for label))
         (assignments (when rs (rs-phrase-boundary rs)))
         boundaries-introduced  )

    (when assignments
      (tr :new-edge-assigns-brackets edge assignments)
      (let ((left-bound *left-segment-boundary*)
            (right-bound *right-segment-boundary*)
            (left-pos (pos-edge-starts-at edge))
            (right-pos (pos-edge-ends-at edge))
            (ends-before   (ba-ends-before   assignments))
            (begins-before (ba-begins-before assignments))
            (ends-after    (ba-ends-after    assignments))
            (begins-after  (ba-begins-after  assignments)))

        (when (or ends-before begins-before)
          (if (eq left-pos left-bound)
            (tr :redundant-assignments-to-left)
            (else
              (when ends-before
                (push (kcons ends-before left-pos)
                      boundaries-introduced)
                (place-boundary/ends-before
                 label left-pos ends-before))
              (when begins-before
                (push (kcons begins-before left-pos)
                      boundaries-introduced)
                (place-boundary/begins-before
                 label left-pos begins-before)))))

        (when (or ends-after begins-after)
          (if (eq right-pos right-bound)
            (tr :redundant-assignments-to-right)
            (else
              (when ends-after
                (push (kcons ends-after right-pos)
                      boundaries-introduced)
                (place-boundary/ends-after
                 label right-pos ends-after))
              (when begins-after
                (push (kcons begins-after right-pos)
                      boundaries-introduced)
                (place-boundary/begins-after
                 label right-pos begins-after)))))

        boundaries-introduced ))))
        



(defun accomodate-segment-parse-to-new-boundaries (boundaries
                                                   edge
                                                   source ;; name of caller
                                                   )
  (declare (ignore source))
  (let ((edge-end (pos-edge-ends-at edge))
        (edge-start (pos-edge-starts-at edge))
        end-at-end  start-at-end  end-at-start  start-at-start )

    (dolist (pair boundaries)
      ;; distribute the boundary data across local variables

      (when (eq (cdr pair) edge-end)
        (cond ((open-bracket (car pair))
               (setq start-at-end (car pair)))
              ((close-bracket (car pair))
               (setq end-at-end (car pair)))
              (t (break "Data problem: unanticipated kind of ~
                         bracket:~%~A" (car pair)))))

      (when (eq (cdr pair) edge-start)
        (cond ((open-bracket (car pair))
               (setq start-at-start (car pair)))
              ((close-bracket (car pair))
               (setq end-at-start (car pair)))
              (t (break "Data problem: unanticipated kind of ~
                         bracket:~%~A" (car pair))))))

    (when start-at-end
      ;; The edge has introduced a bracket indicating that the
      ;; segment underway actually should start here where this
      ;; new edge ends.
      (introduce-inter-segment-boundary end-at-end edge-end))

    (when end-at-end
      (break "Stub: end-at-end"))
      
    (when start-at-start
      (when start-at-end
        (break "Stub: start-at-start, but also start-at-end"))
      (when start-at-end
        (break "Stub: strand the new edge or what?"))

      ;; when we resume the prescanned segment, it is to include
      ;; this edge and start where it starts.
      (introduce-inter-segment-boundary start-at-start edge-start))

    (when end-at-start
      (unless start-at-start
        (break "Stub: end-at-start, but no start-at-start"))
      
      ;; We don't have to do anything since the start-at-start did
      ;; it all. But it might be useful to keep track of the fact
      ;; that this edge has introduced a bracket here in case
      ;; anyone looks later.
      (place-boundary/ends-before (edge-category edge)
                                  edge-start
                                  end-at-start))

    ;; Now we move back into the state space at a place.
    ;; This choice of where to enter will begin by getting a
    ;; segment-coverage measurement for the new, shorter boundaries
    ;; and with then either continue parsing within the shorter
    ;; segment or if that's already spanned it will get back to
    ;; the segment-scanner, which will see the prescanned-segment
    ;; flag and pickup at the right spot.
    (segment-parsed1)))



(defvar *prescanned-segment-pending* nil)

(defun introduce-inter-segment-boundary (bracket position)
  ;; just mark the boundary. leave the continuation to the
  ;; caller: Accomodate-segment-parse-to-new-boundaries
  (declare (ignore bracket))
  (tr :inter-segment-boundary position)
  (when *prescanned-segment-pending*
    (break "New case: Segment already pending at p~A"
           (pos-token-index *prescanned-segment-pending*)))

  (setq *prescanned-segment-pending* *right-segment-boundary*)
  (setq *right-segment-boundary* position))


(defun resume-prescanned-segment (position)
  ;; called from Scan-next-segment when the flag
  ;; *prescanned-segment-pending* is up.
  (tr :Resume-prescanned-segment position)
  (setq *left-segment-boundary* position
        *right-segment-boundary* *prescanned-segment-pending*)
  (setq *prescanned-segment-pending* nil)
  (segment-parsed1))
