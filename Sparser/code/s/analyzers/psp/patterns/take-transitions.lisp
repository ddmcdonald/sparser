;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "take transitions"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  0.1 September 1996

;; initiated 10/5/95.
;; 0.1 (7/11/96) rewrote Pattern-transition? pretty dramatically. Old (stubbed?) version
;;      looked like it could never have worked.
;;     (7/17) the cached ids were pointing in the wrong direction.
;;     (9/11) fixed mistaken design in check against digit words.

(in-package :sparser)


;;;------------
;;; cached ids
;;;------------

(defparameter *digits-scan-transition-id* (next-left-looking-id))

(defparameter *word-scan-transition-id* (next-left-looking-id))

(defparameter *punctuation-scan-transition-id* (next-left-looking-id))



;;;---------
;;; drivers
;;;---------

(defun pattern-transition? (state word)
  ;; This is the inner-loop function that accesses the multiplication
  ;; table to see if there is some transition (or transitions)
  ;; that go out from this state via this next-word (terminal).
  ;;    It first checks for a transition with the specific word,
  ;; then it checks for the word being a number (digit sequence) or
  ;; punctuation, and finally for the word viewed just as a word where
  ;; its identity is not relevant.
  (tr :checking-for-scan-pattern-transition state word)

  (let ((state-id (state-id state))
        (word-id (when (label-rule-set word)
                   (car (rs-left-looking-ids (label-rule-set word)))))
        result  item  )

      (catch :got-a-result

        (when word-id
          (when (setq result (multiply-ids state-id word-id))
            (setq item :literal)
            (throw :got-a-result result)))  ;; throw to skip rest of the checks

        ;; That specific word isn't a transition, but maybe there's
        ;; a transition based on the word's type.

        (cond ((punctuation? word)
               (setq result (multiply-ids state-id *punctuation-scan-transition-id*))
               (when result
                 (setq item :punctuation)))

              ((eq (word-morphology word) :digit)
               (setq result (multiply-ids state-id *digits-scan-transition-id*))
               (when result
                 (setq item :digits)))

              (t (setq result (multiply-ids state-id *word-scan-transition-id*))
                 (when result
                   (setq item :word)))))

      ;(break "State = ~A~%state's id = ~A~%Word = \"~A\"~%result = ~A~%"
      ;       (state-symbol state) state-id (word-pname word) result)

      (if result
        (tr :pattern-transition-found result)
        (tr :no-pattern-transition))

      (values result item)))




(defun initial-pattern-transition? (word)
  ;; Called from Scan-pattern-starting-pair as a special case that
  ;; can be handled quickly.
  (let ((start-id (state-id *the-initial-scan-pattern-state*))
        item-type )

    ;; /// use caches for the 2d two cases
    (let ((next-state
           (or (let* ((word-rs (label-rule-set word))
                      (word-id (when word-rs
                                 (car (rs-left-looking-ids word-rs)))))
                 (when word-id
                   (setq item-type :literal)
                   (multiply-ids start-id word-id)))
               
               (when (eq (word-capitalization word) :digits)
                 (setq item-type :digits)
                 (multiply-ids start-id *digits-scan-transition-id*))
               
               (when (eq (word-capitalization word) :punctuation)
                 (setq item-type :punctuation)
                 (multiply-ids start-id *punctuation-scan-transition-id*))
               
               (else
                 (setq item-type :word)
                 (multiply-ids start-id *word-scan-transition-id*)))))

      (when next-state
        (values next-state item-type)))))

