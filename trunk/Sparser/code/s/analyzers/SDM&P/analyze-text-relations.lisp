;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "analyze-text-relations"
;;;    Module: "analyzers;SDM&P:
;;;   Version: March 2013

;; Initiated 3/14/13

(in-package :sparser)

;;;----------------------
;;; counting and sorting
;;;----------------------

(defun get-contents-of-current-article ()
  (article-contents *current-article*))

#|
(setq contents (get-contents-of-current-article))
(length (head-relations contents))  ;; 127
(length (classifier-head-relations contents))  ;; 18
|#

#+ignore
(defun text-relation-sorter (tr1 tr2)
  (let ((count1 (instance-count tr1))
        (count2 (instance-count tr2)))
    (cond
     ((> count1 count2) t)
     ((> count2 count1) t)
     ((= count1 count2)
      (alphabetic-text-relation-sort-predicate tr1 tr2)))))

(defun more-than-N-text-relation-instances (n list-of-instances)
  (loop for tri in list-of-instances
    when (> (incident-count tri) n)
    collect tri))
#|
(length (setq interesting (more-than-N-text-relation-instances
                           1 (classifier-head-relations contents))))
|#
