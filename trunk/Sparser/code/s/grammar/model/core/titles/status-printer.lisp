;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "status printer"
;;;   Module:  "model;core:titles:"
;;;  version:  February 1995

;; initiated 2/28/95

(in-package :sparser)


(define-special-printing-routine-for-category  qualified-title
  :full  ((format stream "#<qualified-title ~A,~A>"
                  (string/title (value-of 'title obj))
                  (string/title-qualifier (value-of 'qualifier obj))))
  :short ((format stream "#<~A,~A>"
                  (string/title (value-of 'title obj))
                  (string/title-qualifier (value-of 'qualifier obj)))))

(defun string/qualified-title (qt)
  (concatenate 'string
               (string/title (value-of 'title qt))
               ", "
               (string/title-qualifier (value-of 'qualifier qt))))

