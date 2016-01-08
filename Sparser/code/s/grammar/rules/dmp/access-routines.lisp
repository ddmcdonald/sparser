;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "access routines"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  January 1995

;; initiated 8/25/94 v2.3 by gathering from various files. Tweeked 11/21
;; 1/26/95 gave Head-of-segment another case for vgs that are all prefix

(in-package :sparser)


(defun head-of-verb-segment (verb-segment)

  (let ((value-for-head
         ;; segment just spans a verb
         (value-of 'head verb-segment)))
    
    (if value-for-head
      value-for-head

      (etypecase verb-segment
        (individual
         (case (cat-symbol (i-type-of verb-segment))
           (category::verb-object
            ;; use the whole thing
            verb-segment)
           (category::segment
            (head-of-segment verb-segment))
           (otherwise
            (break "New type of individual as a verb segment:~
                    ~%  ~A~%" verb-segment))))))))


(defun head-of-segment (s)
  ;; this version complains -- that may be the wrong place to
  ;; handle the omission.
  (let ((explicit-head (value-of 'head s)))
    (if explicit-head
      explicit-head

      (let ((terms (value-of 'terms s)))
        (if (and terms
                 (null (cdr terms)))
          (first terms)

          (let ((segment-form (value-of 'form s)))
            (if (eq segment-form category::no-content-words-vg)
              (then
                (let ((prefix (value-of 'prefix s)))
                  (unless prefix
                    (break "Unexpected form:  The segment is ~
                            'no-content-words-vg', but ~% it ~
                            has no 'prefix'"))
                  prefix ))

              (break "Extend Algorithm: options exhausted"))))))))

