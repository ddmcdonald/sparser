;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2013 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   July 2013

;; created 9/1/11. 10/3 Adapting to getting categories as arguments, e.g.
;; in the case of prepositions. 11/8/12 Adjusted argument order to match
;; order in the rule. 1/18/13 Removed the block from *grok* so it would
;; actually run. Cleaned up. 7/1/13 Added def-k-method as syntactic sugar
;; to hide the uglyness. 7/21/13 Refactored to set a method-setup that
;; can be used independently of referent specifications and moved them
;; out to the rest of that machinery.

(in-package :sparser)

;;;---------------------------------------
;;; Call from dispatch-on-rule-field-keys
;;;---------------------------------------

(defun ref/method (rule-field left-referent right-referent)
  (declare (special *shadows-to-individuals*))

  ;; Assuming two-argument binary rules for now
  (unless (= 3 (length rule-field))
    (error "Method calls restricted to two arguments.~
         ~%%This is different:~%   ~a" rule-field))

  (unless (or (word-p left-referent)
              (word-p right-referent))
    ;; There is a residue of edges that have words as their referents
    ;; and wouldn't make sense. 
    
    (let ((method (car rule-field)))
      (setup-args-and-call-k-method 
       left-referent right-referent
       (let ((referent
              ;; Have to get the order of arguments correct
              (cond
               ((equal (cdr rule-field) '(left-referent right-referent))
                (funcall method left-shadow right-shadow))
               ((equal (cdr rule-field) '(right-referent left-referent))
                (funcall method right-shadow left-shadow))
               (t (push-debug `(,rule-field))
                  (error "Unanticipated layout of the rule field ~
         in a method call:~%  ~a" (cdr rule-field))))))
         referent)))))
