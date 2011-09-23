;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "pattern elements"
;;;   Module:  "objects;rules:scan-patterns:"
;;;  version:  October 1995

;; initiated 10/4/95

(in-package :sparser)


(defun decode-pattern-element-expression (exp)
  ;; Called from define-sp-transition. Returns the object that goes into
  ;; the pattern to drive the runtime effects.

  (etypecase exp
    (symbol
     (cond ((eq exp 'word) :word)
           ((eq exp 'digits) :digits)
           ((eq exp 'punctuation) :punctuation)
           ((scan-pattern-named exp)
            (unless (category-named exp)
              (resolve-or-make/symbol-to-category exp))
            (scan-pattern-named exp))

           (t (break "Unanticipated symbol as pattern element:~
                      ~%  ~A~%~%" exp))))
    (string
     (let ((word (word-named exp)))
       (unless word
         ;; ?? break instead as a data-check ??
         (setq word (resolve-string-to-word/make exp)))

       (if (word-rule-set word)
         (lookup/make-left-looking-label-id (word-rule-set word))
         (let ((rs (make-rule-set :backpointer word)))
           (setf (word-rule-set word) rs)
           (lookup/make-left-looking-label-id rs)))

       word ))))

