;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992,1993,1994,1995,1996 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "headers"
;;;   Module:  "drivers;chart:"
;;;  Version:   January 1996

;; initiated 4/11/91. tweeked 7/16. 10/27 moved the grammar definitions to
;; rules;sectionizing.
;; (1/9/96) put in a systematic scanning routine.

(in-package :sparser)


;;;----------------
;;; chart protocol
;;;----------------

(defparameter *specific-closing-markup-tag-word-being-scanned-for* nil)

(defparameter *position-closing-markup-scan-starts-from* nil)

(defparameter *markup-tag-being-scanned-for* nil)


(defun initiate-scan-for-closing-markup-tag ()
  ;; Called from lookup-the-kind-of-chart-processing-to-do
  (format t "~&~%~%~%~%----------- starting embedded scan ~
             -------------~%~%")
  (unless *specific-closing-markup-tag-word-being-scanned-for*
    (break "Threading bug:~%*specific-closing-markup-tag-word-being-scanned-for* ~
            is not set.~%"))

  (let ((word-looked-for *specific-closing-markup-tag-word-being-scanned-for*)
        position word )

    (loop
      (setq position (scan-next-position)
            word (pos-terminal position))

      (when (eq word word-looked-for)
        (when (eq (pos-terminal (chart-position-before position))
                  (word-named "/"))
          ;(complete-tag-and-prior-slash word position)
          (break)
          (end-sgml-section/sm *markup-tag-being-scanned-for* nil)
          ))

      (when (eq word *end-of-source*)
        (break "?? end-of-source reached ??")))))
   

(defun complete-tag-and-prior-slash (tag-word tag-pos)
  (let ((pos-after-tag (chart-position-after tag-pos))
        (pos-of-slash (chart-position-before tag-pos)))
    (break "tag")
    (install-terminal-edges tag-word tag-pos pos-after-tag)
    (install-terminal-edges (word-named "/") pos-of-slash tag-pos)
    (break "2")
    (let ((rule (multiply-edges
                 (ev-top-node (pos-starts-here pos-of-slash))
                 (ev-top-node (pos-starts-here tag-pos)))))
      (break "rule"))))





;;;----------------------------------------
;;; routine to skip over WSJ header region
;;;----------------------------------------

(defun initiate-header-parsing-protocol ()
  (quick-scan-for-TX))


(defparameter *trace-header-parsing* nil)

(defun quick-scan-for-TX ()
  ;; this version does nothing beyond filling the chart and looking
  ;; for the sequence NL,"TX", whereupon it puts an edge over the segment
  ;; of text it's scanned and pops back to the original edge-protocol
  (unless *newline-is-a-word*
    (break/debug "Quick-scan-for-TX: *newline-is-a-word* shouldn't ~
                  be Nil but it is"))

  (when (= 0 *next-chart-position-to-scan*)
    (break/debug "~&Quick-scan-for-TX is being used in an article ~
                  with an unanticipated format"))

  (let ((starting-position  ;; this is the position with word::header-start
         (chart-position (1- *next-chart-position-to-scan*)))
        just-got-a-newline )

    (loop
      (let* ((position (scan-next-position))
             (terminal (pos-terminal position)))
        (when *trace-psp-threading*
          (format t "~&~A  ~A~%" (pos-token-index position) terminal))

        (cond (just-got-a-newline
               (when *trace-header-parsing*
                 (format t "~&Terminal after NL is ~A~%" terminal))

               (when (eq terminal (word-named "TX"))
                 (when *trace-header-parsing*
                   (format t "~&   resuming regular edge protocol~%"))
                 (make-edge-over-long-span starting-position
                                           (chart-position-after position)
                                           (category-named 'header)
                                           :rule :header/quick-scan)
                 (resume-old-parsing-protocol)))

              (*source-exhausted*
               (terminate-chart-level-process))
              ((eq terminal word::newline)
               (setq just-got-a-newline t)))))))

