;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "annotate last"
;;;   Module:  "drivers;chart:"
;;;  Version:  June 1994

;; initiated 6/15/94 v2.3

(in-package :sparser)

;;;----------------------------------------------------------
;;; routine called by next-terminal for invisible annotation
;;;----------------------------------------------------------

(defun establish-annotation-hidden-markup (sm length-of-tag
                                           &optional count-beyond-swap )
  ;; the last word under the scope of this marker was scanned
  ;; just a moment before, so we put this on the ends-here
  ;; of the next position.
  (let ((position (next-chart-position-to-fill))
        (initiation-fn (sm-initiation-action sm))
        (interior-fn (first (sm-interior-markup sm))))
    (unless interior-fn
      (break "Annotating section marker ~A~
              ~%Does not have an interior function"))

    (multiple-value-bind (next-terminal features)
                         (if (takes-internal-data sm)
                           (scan-for-hidden-internal-markup-data
                            sm position length-of-tag count-beyond-swap)
                           (scan-for-tag-end-marker-and-continue
                            length-of-tag count-beyond-swap))
      (when initiation-fn
        (funcall initiation-fn
                 (chart-position-before position)
                 features))
      (let ((ev (pos-ends-here position)))
        (setf (ev-plist ev)
              `(:annotation
                (,interior-fn ,@features)
                ,@(ev-plist ev)))
        (tr :show-annotation features ev)

        next-terminal))))


;;;--------------------------
;;; hook from the word-level
;;;--------------------------

(defun trailing-annotation-hook (position-after)
  ;; called from Trailing-hidden-annotation-check, which is called
  ;; from Check-for-]-from-word-after.  The plist of the ends-here
  ;; vector has a value, so we check whether the value is annotation
  ;; and if so we call the indicated function. 
  (let* ((plist (ev-plist (pos-ends-here position-after)))
         (entry (cadr (member :annotation plist))))
    (when entry
      (let ((fn (first entry))
            (terms (rest entry)))
        (funcall fn terms)))))



;;;---------------------------------------------
;;; shell to provide environment for user calls
;;;---------------------------------------------

;;--- maintained globals

(defvar *preterminals* nil)
(defvar *position-after* nil)
(defvar *position-before* nil)
(defvar *word* nil) ;; n.b. this symbol is also used by the workbench

(defun operate-on-current-word (function)
  ;; Called from below a call to Scan-next-position,
  ;; e.g. by he action routine for the /syn marker.
  ;; At this point, the global we can reliably get our hands on
  ;; is one beyond the position-after the last word processed
  ;; by word-level actions

  (let* ((*preterminals* *preterminals-on-current-word*)
         (*position-after* (chart-position
                            (1- *next-chart-position-to-scan*)))
         (*position-before* (chart-position-before *position-after*))
         (*word* (pos-terminal *position-before*)))

    (tr :applying-subchart-function *word* *position-before* function)
    (funcall function)))


;;;--------
;;; traces
;;;--------

(defparameter *make-annotation-visible* nil)

(defun make-annotation-visible ()
  (setq *make-annotation-visible* t))

(defun make-annotation-invisible ()
  (setq *make-annotation-visible* nil))

(deftrace :show-annotation (features ev)
  (when *make-annotation-visible*
    (trace-msg "Annotating end-ev at p~A after \"~A\" with ~A"
               (pos-token-index (ev-position ev))
               (word-pname (pos-terminal
                            (chart-position-before (ev-position ev))))
               (list-of-interior-tags/string features))))




(defparameter *trace-subchart-operations* nil)

(defun trace-subchart-operations ()
  (setq *trace-subchart-operations* t))

(defun untrace-subchart-operations ()
  (setq *trace-subchart-operations* nil))


(deftrace :applying-subchart-function (word pos-before fn)
  (when *trace-subchart-operations*
    (trace-msg "Applying ~A to \"~A\" at p~A"
               fn (word-pname word) (pos-token-index pos-before))))

