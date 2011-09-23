;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "catalog"
;;;   Module:  "objects;brackets:"
;;;  Version:   1.0  November 1990

(in-package :sparser)


(defun bracket-named (word
                      &optional direction placement)
  "Called from the lisplistener or from code that reasons about brackets
   if the code is not using the constant symbols for the brackets."
  (let ((assignments
         (rs-phrase-boundary (rule-set-for word))))
    (unless assignments
      (break "The word ~A has no brackets assigned to it" word))
    (let ((ends-before (ba-ends-before assignments))
          (ends-after  (ba-ends-after assignments))
          (begins-before (ba-begins-before assignments))
          (begins-after  (ba-begins-after assignments)))

      (if (not (or direction placement))
        (or ends-before ends-after begins-before begins-after)
        (cond
         ((and direction
               (null placement))
          (ecase direction
            (:] (if (and ends-before ends-after)
                  (then
                    (unless placement
                      (break "The description of ~A brackets for ~A~
                              ~%  is ambiguous unless the placement ~
                              argument is also supplied" direction word))
                    (ecase placement 
                      (:before ends-before)
                      (:after  ends-after)))
                  (or ends-before
                      ends-after)))
            (:[ (if (and begins-before begins-after)
                  (then
                    (unless placement
                      (break "The description of ~A brackets for ~A~
                              ~%  is ambiguous unless the placement ~
                              argument is also supplied" direction word))
                    (ecase placement 
                      (:before begins-before)
                      (:after  begins-after)))
                  (or begins-before
                      begins-after)))))
         (t
          (cond ((and (eq direction :]) (eq placement :before))
                 ends-before)
                ((and (eq direction :]) (eq placement :after))
                 ends-after)
                ((and (eq direction :[) (eq placement :before))
                 begins-before)
                ((and (eq direction :[) (eq placement :after))
                 begins-after)
                (t (break "Either the placement: ~A or the direction ~A~
                           ~%  of the brackets for ~A were not correctly ~
                           specified.~
                           ~%   Direction is given as \":]\" or \":[\"~
                           ~%   Placement is given as \":before\" or ~
                           \":after\"" placement direction)))))))))
