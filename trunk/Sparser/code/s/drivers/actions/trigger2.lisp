;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "trigger"
;;;   Module:  "drivers;actions:"
;;;  Version:  2.1 November 1993

;; initiated 6/90
;; 1.1 (10/21/91 v2.0) Completely revamped.  10/27 fixed typos. 10/30 ditto.
;;     (7/13 v2.2) shifted the trace to be ...-hook so it wouldn't clutter
;;       as much.
;; 2.0 (6/11/93 v2.3) Added position args to word version
;; 2.1 (11/12) fixed buggy arguments in category version and flushed
;;      polyword case

(in-package :sparser)


(defun check-for-completion-actions/category (category edge)
  (declare (special *trace-completion-hook*))
  (when *trace-completion-hook*
    (format t "~&Checking for completion actions associated with ~
               the category ~A~%" category))
  (let ((rule-set (rule-set-for category)))
    (if rule-set
      (let ((actions (rs-completion-actions rule-set)))
        (if actions
          (let ((pos-before (pos-edge-starts-at edge))
                (pos-after (pos-edge-ends-at edge)))
            (carry-out-actions actions edge pos-before pos-after))
          (when *trace-completion-hook*
            (format t "~&  There aren't any -- empty action field~%"))))
      (when *trace-completion-hook*
        (format t "~&  There aren't -- it has no rule set~%")))))


(defun check-for-completion-actions/word (word
                                          position-before
                                          position-after)
  (declare (special *trace-completion-hook*))
  (when *trace-completion-hook*
    (format t "~&Checking for completion actions associated with the ~
               word ~A~%" word))
  (let ((rule-set (word-rules word)))
    (if rule-set
      (etypecase rule-set
        (symbol  ;;e.g. :whitespace
         (when *trace-completion-hook*
           (format t "~&  There aren't any -- it's whitespace")))
        (rule-set
         (let ((actions (rs-completion-actions rule-set)))
           (if actions
             (carry-out-actions
              actions word position-before position-after)
             (when *trace-completion-hook*
               (format t "~&  There aren't any -- empty action ~
                          field~%"))))))
      (when *trace-completion-hook*
        (format t "~%  There aren't any -- it's an unknown word~%")))))

