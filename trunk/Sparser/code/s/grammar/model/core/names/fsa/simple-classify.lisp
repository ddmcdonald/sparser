;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "simple classify"
;;;   Module:  "model;core:names:fsa:"
;;;  version:  January 1995

;; broken out from [names;fsa:classify] 1/23/95

(in-package :sparser)


;;;-------------------------------------------
;;; Protocol for simple capitalized sequences
;;;-------------------------------------------

;;--- dispatch
;;
(defun adjudicate-possible-sentence-start-and-make-Cap-seq-edge
       (start-pos end-pos)
  ;; called from pnf/scan/ignore-boundaries. Has to handle the report
  ;; to the fsa driver as to whether the scan succeeded or not.

  (if (could-be-the-start-of-a-sentence start-pos)
    (adjudicate-sentence-initial-cap-seq start-pos end-pos)
    (else
      (let ((result
             ;; see note in C&R-multi-word-span. 'result' will only
             ;; get position value if there's a throw.  Otherwise its
             ;; value will be the constructed edge or nil.
             (catch :early-termination-of-pnf-parse
               (make-edge-over-capitalized-sequence start-pos
                                                    end-pos))))
        (if (position-p result)
          nil
          end-pos )))))



;;--- making the edge
;;
(defun make-edge-over-capitalized-sequence (start-pos end-pos)
  ;; common driver so that all the callers don't have to worry
  ;; about the parameterization or the makeup of the calls.

  (multiple-value-bind (category form referent rule daughters
                        real-start real-end)
                       (funcall *cap-seq-edge-data-routine*
                                start-pos end-pos)

    (unless (eq real-start real-end)
      (unless (edge-p category)
        ;; this signals that the edge has already been made
        (edge-over-proper-name
         real-start
         real-end
         category
         form
         referent
         rule
         daughters )))))


;;--- no-op default edge-maker for simple recognition
;;
(defun cap-seq-no-referent (start-pos end-pos)
  ;; This is the default value for *cap-seq-edge-data-routine*
  ;; It would be responsible for any additional analysis or processing
  ;; of the words within the span, and returning the form, referent,
  ;; and rule values to be fed to the standard edge-making routine.
  (values category::capitalized-sequence
          category::proper-name
          nil
          :default-capitalized-sequence
          nil
          start-pos end-pos))


;;--- handling sentence-initial situation
;;
(defun adjudicate-sentence-initial-cap-seq (start-pos end-pos)
  ;; tuned to dm&p situation
  (let ((length (number-of-terminals-between start-pos end-pos)))
    (if (= length 1)
      (then
        ;; the long version of this case is C&R-single-word, but it is
        ;; threaded in a different way w.r.t. the check against being
        ;; sentence initial and what is to happen for classification and
        ;; recording.  This is the simpler case that is oriented towards
        ;; dm&p where every content word that has been seen before will
        ;; introduce an edge, whereas C&R-single-word is oriented towards
        ;; the case where every edge is significant in the domain model.
        ;;    In the dm&p case, the only interesting sentence-initial
        ;; names will be more than one word long. Accordingly we are
        ;; invariably going to 'fail' PNF here by returning nil. Nevertheless
        ;; this moment is responsible for introducing any edges that there
        ;; may be, so we do that first.
        (unless (ev-top-node (pos-starts-here start-pos))
          ;; don't introdce the edges twice
          (install-terminal-edges (pos-terminal start-pos)
                                  start-pos end-pos))
        nil )

      (else
        ;; look for a reason to throw the first word out of the
        ;; sequence. In the corpus so far, casual inspection suggests
        ;; initial verbs are one word long and stand by themselves.
        (let ((first-word (pos-terminal start-pos)))
          (cond ((verb? first-word)
                 nil )
                ((function-word? first-word)
                 (if (determiner? first-word)
                   (then
                     (make-edge-over-capitalized-sequence start-pos end-pos)
                     end-pos )
                   nil ))
                (t
                 (make-edge-over-capitalized-sequence start-pos end-pos)
                 end-pos )))))))

