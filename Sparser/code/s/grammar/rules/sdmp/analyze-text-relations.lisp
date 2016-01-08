;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "analyze-text-relations"
;;;    Module: "analyzers;SDM&P:
;;;   Version: March 2013

;; Initiated 3/14/13. 4/8/14 Patching in fan-out from the massive
;; make-over to document structure, but only to quiet the compiler
;; so this may well not work in practice. 

(in-package :sparser)

;;;----------------------
;;; counting and sorting
;;;----------------------

(defun collect-relations-from-articles (&optional (document-set (doc-set)))
  (let ((articles (articles document-set))
        (merged (make-instance 'text-relation-contents
                  :name (name document-set)))
        contents  )
    (setf (contents-of-doc-set document-set) merged)
    (dolist (article articles)
      (setq contents (contents article))
      (dolist (accessor '(head-relations
                          classifier-heads
                          modifier-heads
                          adjacencies))
        (let ((items (slot-value contents accessor)))
          (loop for item in items
              do (pushnew item
                          (slot-value merged accessor))))))
    merged))



(defun get-contents-of-current-article ()
  (contents *current-article*))

#|
(setq all (collect-relations-from-articles))

(setq contents (get-contents-of-current-article))
(length (setq heads (head-relations contents))) ;; 127
(length (classifier-head-relations contents))  ;; 18
|#

(defun text-relation-sorter-count-only (tr1 tr2)
  (let ((count1 (incident-count tr1))
        (count2 (incident-count tr2)))
    (cond
     ((> count1 count2) t)
     ((> count2 count1) nil)
     ((= count1 count2) t))))

(defun text-relation-sorter (tr1 tr2)
  (let ((count1 (incident-count tr1))
        (count2 (incident-count tr2)))
    (cond
     ((> count1 count2) t)
     ((> count2 count1) nil)
     ((= count1 count2)
      (prime-word-text-relation-sort-predicate tr1 tr2)))))

(defun prime-word-text-relation-sort-predicate (tr1 tr2)
  (let* ((w1 (prime-tr-word tr1))
         (w2 (prime-tr-word tr2))
         (p1 (pname-for w1))
         (p2 (pname-for w2)))
    (if (string-equal p1 p2)
      (secondary-word-text-relation-sort-predicate tr1 tr2)
      (string-lessp p1 p2))))

(defun secondary-word-text-relation-sort-predicate (tr1 tr2)
  (let* ((w1 (secondary-tr-word tr1))
         (w2 (secondary-tr-word tr2))
         (p1 (pname-for w1))
         (p2 (pname-for w2)))
    (string-lessp p1 p2)))

(defmethod prime-tr-word ((tr head-tr-instance))
  (head-word tr))
(defmethod prime-tr-word ((tr classifier-head-tr-instance))
  (classified-head tr))
(defmethod prime-tr-word ((tr modifier-head-tr-instance))
  (modified-head tr))
(defmethod prime-tr-word ((tr adjacent-tr-instance))
  (right-side tr))

(defmethod secondary-tr-word ((tr classifier-head-tr-instance))
  (classifier-of-head tr))
(defmethod secondary-tr-word ((tr modifier-head-tr-instance))
  (modifier-of-head tr))
(defmethod secondary-tr-word ((tr adjacent-tr-instance))
  (left-side tr))



(defun more-than-N-text-relation-instances (n list-of-instances)
  (loop for tri in list-of-instances
    when (> (incident-count tri) n)
    collect tri))
#|
(length (setq interesting (more-than-N-text-relation-instances
                           1 (classifier-head-relations contents))))
|#
