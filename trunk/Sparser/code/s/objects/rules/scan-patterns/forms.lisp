;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "forms"
;;;   Module:  "objects;rules:scan-patterns:"
;;;  version:  September 1996

;; initiated 9/21/95. Futzed with the interning 7/12/96.  Fleshed out
;; Update-no-space-pattern in a simplistic way 9/11 (has a pending problem
;; if the substantial check is included - see note).

(in-package :sparser)

;;;------
;;; form
;;;------

(defmacro define-no-space-pattern (name &rest args)
  `(define-no-space-pattern/expr ',name ',args))


(defun define-no-space-pattern/expr (symbol arguments)
  (let ((existing-pattern-with-that-name (scan-pattern-named symbol)))

    (if existing-pattern-with-that-name
      (update-no-space-pattern existing-pattern-with-that-name
                               arguments)

      (let ((pattern (define-scan-pattern symbol)))
        (apply #'decode-scan-pattern-definition pattern arguments)
        pattern ))))



;;;---------------
;;; work routines
;;;---------------

(defun decode-scan-pattern-definition (pattern
                                       &key acceptance-function
                                            transition-net
                                            accept-states )
  (when acceptance-function
    (setf (sp-accept-function pattern) acceptance-function))

  (when transition-net
    (setf (sp-transitions pattern)
          (assimilate-transition-set transition-net)))

  (when accept-states
    ;; should include a check for spelling errors - nils in the list
    (setf (sp-accept-states pattern)
          (mapcar #'scan-pattern-state-named accept-states))
    (dolist (state (sp-accept-states pattern))
      (mark-as-sp-pattern-accept-state state pattern)))

  pattern )



(defun update-no-space-pattern (pattern arguments)
  ;; Retains the identity (eq'ness) of the pattern while adding
  ;; or deleting transitions, etc. as needed to reflect any changes.
  ;; Any changes to the acceptance function are ignored (the new one,
  ;; if it is new, is not examined).

  (let ((original-transitions (sp-transitions pattern))
        (original-accept-state/s (sp-accept-states pattern)))
    (declare (ignore original-transitions original-accept-state/s))
        
    (apply #'decode-scan-pattern-definition pattern arguments)

    (let ((new-transitions (sp-transitions pattern))
          (new-accept-state/s (sp-accept-states pattern)))
      (declare (ignore new-transitions new-accept-state/s))                       
      ;; delete any of the original transitions that aren't also
      ;; present in the revision
      ;(dolist (tr original-transitions)
      ;  (unless (member tr new-transitions :test #'eq)
      ;    (delete/sp-transition tr)))
      ;; /// There's a bug in this such that the member test isn't
      ;; succeeding when it's expected (e.g. on a re-eval of an
      ;; unaltered definition.  Leaving out the check until that's
      ;; sorted out.

      ;;/// compare accept states, and if a former accept state
      ;; isn't any more (and if this pattern is the only one for
      ;; which it's an accept), them remove that property from
      ;; it and check whether it even still needs to exist

      ;(break)

      pattern )))
