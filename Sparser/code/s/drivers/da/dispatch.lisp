;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1995,2011-2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "dispatch"
;;;   Module:  "drivers;DA:"
;;;  Version:  October 2014

;; initiated 10/27/94 v2.3.  Moved it and gave it some flesh 5/5/95
;; 1.0 (5/19) redid them as tail recursion and removed an interveening layer.
;;     (11/7/11) replaced the etypecase. 7/29/13 Figured out strange bug
;;      caused by bad return value from successful DA function.
;;    (10/24/14) Lifting out the pertinent parts of execute-da-trie
;;      into standalone-da-execution so that it is not imbedded in the
;;      tail recursion. 

(in-package :sparser)

;;;-------------------------
;;; interface to the driver 
;;;-------------------------

(defun standalone-da-execution (1st-vertex tt)
  ;; run and return rather than thread back into 
  (let ((pos-before (pos-edge-starts-at tt))
        (pos-after  (pos-edge-ends-at tt)))
    (initialize-da-search)
    (initialize-da-action-globals tt pos-before pos-after)
    (let ((result
           (catch :da-pattern-matched
             (catch :no-da-pattern-matched
               (check-for-extension-from-vertex 1st-vertex tt)))))
      result)))



(defun execute-da-trie (1st-vertex tt pos-before pos-after)

  ;; called from Look-for-and-execute-any-DA-pattern to set up the
  ;; state and handle the return values from the search.

  (initialize-da-search)
  (initialize-da-action-globals tt pos-before pos-after)

  (let ((result
         (catch :da-pattern-matched
           (catch :no-da-pattern-matched
             (check-for-extension-from-vertex 1st-vertex tt)))))

    (if result
      (typecase result
        (edge
         (setq *da-dispatch-position* *da-ending-position*)
         (tr :tt/resume-forest-parse-from-DA result)
         (PPTT result))

        (symbol
         (ecase result
           (:trie-exhausted
            (tr :da-pattern-not-matched)
            (tr :resuming-DA-walk-at pos-after)
            (look-for-da-patterns pos-after))

           (:pattern-matched
            ;; This is the default value of Execute-da-action-function,
            ;; returned when the function itself returns nil.
            ;; If there's known side-effect of the DA action that would
            ;; change the treetops of the chart, then we can get into
            ;; a loop if we start back at the beginning of the chart,
            ;; so best to err on the safe side.
            (tr :resuming-DA-walk-at pos-after)
            (look-for-da-patterns pos-after))))

        (cons 
         ;; This can happen with a stub that ends with a push-debug
         (push-debug `(,1st-vertex ,tt ,pos-before ,pos-after))
         (error "Look at the return value of the function in ~
                 the DA rule ~a. It may have returned the debugging stack"
                *matched-da-rule*))

        (otherwise
         (push-debug `(,result ,1st-vertex ,tt ,pos-before ,pos-after))
         (break "Unanticipated type of result: ~a" (type-of result))))

      (else
        (tr :da-pattern-not-matched)
        (tr :resuming-DA-walk-at pos-after)
        (look-for-da-patterns pos-after)))))




(defun execute-trie-middle-out (arc tt pos-before pos-after)

  ;; calle from Look-for-and-execute-any-DA-pattern

  (initialize-da-search)
  (initialize-da-action-globals tt pos-before pos-after :middle-out)
  (let ((result
         (catch :da-pattern-matched
           (catch :no-da-pattern-matched
             (check-middle-out-from-arc tt arc pos-before pos-after)))))

    (if result
      (etypecase result
        (edge
         (setq *da-dispatch-position* *da-ending-position*)
         (tr :tt/resume-forest-parse-from-DA result)
         (PPTT result))

        (symbol
         (ecase result
           (:trie-exhausted
            (tr :da-pattern-not-matched)
            (tr :resuming-DA-walk-at pos-after)
            (look-for-da-patterns pos-after))

           (:pattern-matched
            ;; This is the default value of Execute-da-action-function,
            ;; returned when the function itself returns nil.
            ;; If there's known side-effect of the DA action that would
            ;; change the treetops of the chart, then we can get into
            ;; a loop if we start back at the beginning of the chart,
            ;; so best to err on the safe side.
            (tr :resuming-DA-walk-at pos-after)
            (look-for-da-patterns pos-after)))))

      (else
        (tr :da-pattern-not-matched)
        (tr :resuming-DA-walk-at pos-after)
        (look-for-da-patterns pos-after)))))

