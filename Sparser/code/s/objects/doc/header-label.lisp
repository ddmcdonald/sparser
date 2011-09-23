;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "header label"
;;;   Module:  "objects;doc:"
;;;  Version:  0.2 January 1995

;; initiated 12/7/93 v2.3
;; 0.1 (6/6/94) promulgated new argument to Populate-section-marker
;; 0.2 (1/3/95) added keyword and provisions for a specified delimiter

(in-package :sparser)


#|  Not an object type, just a set of conventions about how words
    that act as header labels should be interpreted.  See companion
    file in chart-drivers as well.  |#


(defun define-header-label/expr (string name-symbol
                                 initiate terminate close
                                 &key delimiter )

  ;; we always reset the section-marker actions, the word is
  ;; the basis of the individuation, so the check is implicit in
  ;; the call to define it.

  (let* ((word (define-word/expr string))
         (rs (or (word-rules word)
                 (setf (word-rule-set word)
                       (make-rule-set :backpointer word))))

         (sm-word (define-word/expr
                    (concatenate 'string "sm-" string)))
         (sm (or (find/section-marker sm-word)
                 (make-a-new-section-marker
                  sm-word (symbol-name name-symbol)))))

    (populate-section-marker sm initiate terminate close nil nil)

    ;; hook-in the fsa that recognizes them
    (let ((fsa-field (rs-fsa rs)))
      (if fsa-field
        (unless (member 'identify-header-label fsa-field)
          (setf (rs-fsa rs) (cons 'identify-header-label fsa-field)))
        (setf (rs-fsa rs)
              `( identify-header-label ))))

    (when delimiter
      ;; doing plist operation by hand
      (setf (sm-plist sm)
            `(:delimiting-punctuation ,delimiter
              ,@(sm-plist sm))))

    sm ))


