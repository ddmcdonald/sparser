;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "style"
;;;   Module:  "drivers;articles:"
;;;  Version:  0.1 September 1994

;; initialized 12/27/93 v2.1
;; 0.1 (9/1/94) brought into sync with upgraded Do-article
;;     (9/15) adding explicit setup

(in-package :sparser)

#| Sets up per-article operations, interrogating the style object associated
with the *current-document-stream* if there is one. |#

;;;-------------------------------------------------------------------------
;;; deliberate setting of the style to override a default or initiate early
;;;-------------------------------------------------------------------------

(defun setup-explicit-style (style)
  ;; called from Do-article. Broken out as a subroutine for the convenience
  ;; of other entry points
  (if style
    ;; the style is set here and acted on by the Per-article-initializations
    ;; Initialize-by-current-style
    (setq *current-style*
          (typecase style
            (symbol (document-style-named style))
            (document-style style)
            (otherwise
             (break "Styles must be indicated by 'document-style' objects.~
                     ~%The object passed in is a ~A~~%~A~%"
                    (type-of style) style))))

    ;; This state variable is shallow bound, so if we've been not told
    ;; what style to use by the driver then we have to make sure that
    ;; any earlier style that was in force.  The absence of a value for
    ;; this global will make Initialize-by-current-style look for a value
    ;; on the *current-document-stream*, and there isn't any then it sets
    ;; up a vanila set of style parameter values.
    (setq *current-style* nil)))

;;;------
;;; hook
;;;------

(define-per-run-init-form '(initialize-by-current-style))


;;;--------
;;; driver
;;;--------

(defun initialize-by-current-style ()
  ;; called from Per-article-initializations as one of the unexplicit
  ;; calls dispatched to after all of the explicit (ordered) ones
  ;; have been finished

  (let ((ds *current-document-stream*)
        style )
    (if ds
      (then (unless (ds-style ds)
              (tr :no-style-with-stream))

            (setq style (or *current-style* ;; set by the driver
                            (when ds (ds-style ds))))

            (when *current-style*
              ;; // tr overridden by explicit call in a driver
              )
            (unless style
              ;;////  setup a vanila style
              )
            )
      (else
        (tr :no-document-stream)
        (if *current-style*
          (setq style *current-style*)
          ;; /// else setup a vanila style
          )))

    ;; reset the global
    (setq *current-style* style)

    (if style ;;/// once vanila styles are in place this is redundant
      (let ((fn (style-init-fn style)))
        (if fn
          (then
            (tr :style/executing-fn style fn)
            (funcall fn))
          (tr :style/no-executable style)))

      ;; else //// tr no style in force
      )

    *current-style* ))



;;;--------
;;; traces
;;;--------

(defparameter *style-traces* nil)

(defun trace-style ()
  (setq *style-traces* t))
(defun unTrace-style ()
  (setq *style-traces* nil))

(deftrace :style/executing-fn (style fn-name)
  (when *style-traces*
    (trace-msg "[style] Executing ~A for ~A"
               fn-name (style-name style))))

(deftrace :style/no-executable (style)
  (when *style-traces*
    (trace-msg "[style] There is no initialization routine for ~A"
               (style-name style))))



(deftrace :no-style-with-stream ()
  (when *style-traces*
    (trace-msg "[style] There is no style associated with ~A"
               *current-document-stream*)))

(deftrace :no-document-stream ()
  (when *style-traces*
    (trace-msg "[style] There is no document stream for this run")))

