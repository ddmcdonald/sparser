;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992-1993,2015,2019  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "trigger"
;;;   Module:  "drivers;actions:"
;;;  Version:  June 2019

;; initiated 6/90
;; 1.1 (10/21/91 v2.0) Completely revamped.  10/27 fixed typos. 10/30 ditto.
;;     (7/13 v2.2) shifted the trace to be ...-hook so it wouldn't clutter
;;       as much.
;; 2.0 (6/11/93 v2.3) Added position args to word version
;; 2.1 (11/12/93) fixed buggy arguments in category version and flushed
;;      polyword case
;; 2.2 (6/9/15) Put a polyword case back in (very different polywords now)

(in-package :sparser)


(defun check-for-completion-actions/category (category edge)
  (flet ((search-label-for-completion-action (label)
           (declare (special *trace-completion-hook*))
           (when *trace-completion-hook*
             (format t "~&Checking for completion actions associated with ~
               the category ~A~%" label))
           (let ((rule-set (rule-set-for label)))
             (if rule-set
               (let ((actions (rs-completion-actions rule-set)))
                 (if actions
                   (let ((pos-before (pos-edge-starts-at edge))
                         (pos-after (pos-edge-ends-at edge)))
                     (carry-out-actions actions edge pos-before pos-after))
                   (when *trace-completion-hook*
                     (format t "~&  There aren't any -- empty action field~%"))))
               (when *trace-completion-hook*
                 (format t "~&  There aren't -- it has no rule set~%"))))))
    (or (cond ((null (edge-category edge)) ;; REMOVE THIS WHEN DAVID FINISHES HIS WORK ON COMPARATIVE ADJECTIVES
               (warn "null edge-category in check-for-completion-actions/category at edge"
                         edge)
               nil)
              (t (search-label-for-completion-action (edge-category edge))))
        (when (edge-form edge)
          (search-label-for-completion-action (edge-form edge))))))


(defun check-for-completion-actions/word (word
                                          position-before
                                          position-after)
  (declare (special *trace-completion-hook*))
  (when *trace-completion-hook*
    (format t "~&Checking for completion actions associated with the ~
               word ~A~%" word))
  (let ((rule-set (when word (rule-set-for word))))
    ;; got null word in "mdck ii cells were grown in dmem containing 10% fcs, penicillin, and streptomycin on 12-mm round coverslips or 12- mm diameter transwell TRADE_MARK_SIGN filters ( corning coaster corp.) with a pore size of 0.4 μm. for"
    (if rule-set
      (etypecase rule-set
        (symbol  ;;e.g. :whitespace
         (when *trace-completion-hook*
           (format t "~&  There aren't any -- it's whitespace")))
        (rule-set
         (let ((actions (rs-completion-actions rule-set)))
           ;(when actions
           ;  (push-debug `(,actions ,rule-set ,word)) (break "actions"))
           (if actions
             (carry-out-actions
              actions word position-before position-after)
             (when *trace-completion-hook*
               (format t "~&  There aren't any -- empty action ~
                          field~%"))))))
      (when *trace-completion-hook*
        (format t "~%  There aren't any -- word has no rule-set~%")))))

