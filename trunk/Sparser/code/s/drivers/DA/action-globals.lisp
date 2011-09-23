;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "action globals"
;;;   Module:  "drivers;DA:"
;;;  Version:  May 1995

;; initiated 5/5/95. Tweeked 5/18

(in-package :sparser)


(defparameter *tt-alist* nil)  ;; source of the variables

(defparameter *da-starting-position* nil)
(defparameter *da-next-position* nil)
(defparameter *da-next-position/leftwards* nil)
(defparameter *da-ending-position* nil)

(defparameter *matched-da-rule* nil)



(defun initialize-da-action-globals (tt pos-before pos-after
                                     &optional middle-out? )
  ;; called from Execute-da-trie
  (setq *da-starting-position* pos-before
        *da-next-position* pos-after
        *da-next-position/leftwards* nil
        *da-ending-position* nil
        *matched-da-rule* nil)

  (setq *tt-alist*
        (if middle-out?
          nil
          `( (1 . ,(record-of-tt tt pos-before pos-after)) ))))



(defun setup-da-action-context ()
  (setq *tt-alist* (nreverse *tt-alist*)))





(defun record-tt (vertex tt position next-position)
  ;; Called from Get-next-treetop to update the *tt-alist*. 
  ;; The specialized checks against eor and multiple edges have
  ;; already done and are reflected in the tt.
  (push `( ,(vertex-count vertex)
           . ,(record-of-tt tt position next-position) )
        *tt-alist*))


(defun record-of-tt (tt  &optional pos-before pos-after multiple-edges?)
  ;; Its return value becomes the value after the dot in the
  ;; *tt-alist*
  (cond
   ((= 0 (pos-token-index pos-before)) ;; source-start
    :source-start )
   (multiple-edges?
    `( ,(preterminal-edges pos-before) ,pos-before ,pos-after ))
   (t
    (etypecase tt
      (edge tt)
      (word `(,tt ,pos-before ,pos-after))
      (cons
       ;; multiple edges
       `(,tt  ,pos-before ,pos-after))
      (symbol
       ;; e.g. :end-of-source
       tt )))))



(defun lookup-matched-tt (lookup-term)
  (ecase lookup-term
    (first   (cdr (assoc 1 *tt-alist*)))
    (second  (cdr (assoc 2 *tt-alist*)))
    (third   (cdr (assoc 3 *tt-alist*)))
    (fourth  (cdr (assoc 4 *tt-alist*)))
    (fifth   (cdr (assoc 5 *tt-alist*)))
    (sixth   (cdr (assoc 6 *tt-alist*)))
    (seventh (cdr (assoc 7 *tt-alist*)))
    (eighth  (cdr (assoc 8 *tt-alist*)))
    (ninth   (cdr (assoc 9 *tt-alist*)))
    (tenth   (cdr (assoc 10 *tt-alist*)))))

