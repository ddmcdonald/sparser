;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1996,2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "accept"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  November 2014

;; initiated 9/21/95. Given some content 10/5. 7/11/96 That context was just a stub.
;; Now it's getting substance.
;; (11/17/14) Finished the setup to call an acceptance function.

(in-package :sparser)

;;;-------------
;;; catch point
;;;-------------

(defun process-accepted-scan-pattern/s (accept-state)
  (process-accepted-scan-pattern accept-state))

#+ignore  ;; original multi-state version
(defun process-accepted-scan-pattern/s (sp/s)
  ;; Called from Initiate-scan-pattern-driver if it catches
  ;; a set of accept states.
  (if (null (cdr sp/s))
    (process-accepted-scan-pattern (car sp/s))

    (break "More than one scan-pattern was accepted~
            ~%What do we do to pick between them? Most specific?~%")))


(defun process-accepted-scan-pattern (state)
  (let* ((pattern (state-is-an-accept-state? state))
         (accept-function (sp-accept-function pattern)))
    ;;(push-debug `(,accept-function)) (break "accepted")

    ;; Collect the elements of the array into a list.
    ;; All the processing that's going to happen to them
    ;; will be in this list.
    (let* ((arg-forms ;; e.g. (#<word "off"> . :word) 
            (loop for i from 0 to  *last-scan-pattern-element* ;; count
              collect (aref *instantiated-scan-pattern-elements* ;; array
                            i)))
           (args (loop for form in arg-forms
                   collect (car form))))

      (unless (fboundp accept-function)
        (error "The scan accept function ~a is undefined" accept-function))

      (apply accept-function 
             *position-scan-pattern-started-at* 
             *position-reached-by-scan-pattern*
             args))))


;;/// this is a stand-in until I figure out a nice way to setup the
;; pattern elements to the accept function
#+ignore
    (let ((category (def-category/expr (sp-name pattern))))
      (let ((edge
             (make-chart-edge
              :starting-position *position-scan-pattern-started-at*
              :ending-position *position-reached-by-scan-pattern*
              :category category
              :form (category-named 'proper-noun) ;;/// stand-in
              :rule-name :no-space-pattern-scan )))

        (push-debug `(,edge))

        ;;// it definitely needs a referent even if it doesn't get one
        ;; from the accept function -- otherwise it won't have what's
        ;; needed to integrate with dm&p terms.

        ;; // trace
              
        ;; We're the last point in the thread that started in 
        ;; Check-for/initiate-scan-patterns, and we have to return
        ;; the position where the base scan should resume its
        ;; actions. That's the position just beyond the span
        ;; that we've covered with this pattern.
        *position-reached-by-scan-pattern* ))
