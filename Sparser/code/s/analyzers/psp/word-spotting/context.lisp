;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "context"+

;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version:  August 2021

;; Initiated 8/2/21 to gather together routines for determining the linguistic
;; context something occurs in. 

(in-package :sparser)


(defgeneric apply-context-predicates (article)
  (:documentation "Called as part of the after-actions method on articles.
 We identify what group instances we should work on, the we iterate through
 the edges in their entries and create and store their used-in chains.
 That's the raw material we apply context predicates to, or explore as part
 of developing the predicates.")
  (:method ((a article))
    (declare (special *compute-items-contexts*))
    (when *compute-items-contexts*
      (let* ((items-field (items (contents a)))
             (group-instances (collect-germane-group-instances items-field)))
        (loop for group in group-instances
           do (loop for entry in (note-instances group)
                 do (loop for record in (text-strings entry)
                       as edge-number = (edge-record-number record)
                       as chain = (upward-used-in-chain edge-number)
                       do (store-edge-chain record chain))))))))


(defun collect-germane-group-instances (list-of-group-instances)
  "We want the motif-spotting group instances. Right now we only want
 word spotters since those are where the motifs have been stored."
  (declare (special  *motif-groups*))
  (loop for group in list-of-group-instances
     as name = (name group)
     when (find name *motif-groups* :key #'name)
     collect group))



;;--- records for instances of edges and chains of them

(defstruct (edge-record
             (:print-function print-edge-record))
  number
  string
  chain)

(defun print-edge-record (obj stream depth)
  (declare (ignore depth))
  (write-string "#<e" stream)
  (format stream "~a" (edge-record-number obj))
  (write-string ">" stream))


(defclass edge-chain ()
  ((list :initarg :list :accessor edges
         :documentation "The list as created by upward-used-in-chain")
   (top :initform nil :accessor top-edge)
   (labels :initform nil :accessor form-labels)))

(defmethod print-object ((ec edge-chain) stream)
  (print-unreadable-object (ec stream)
    (let* ((first (first (edges ec)))
           (n1 (edge-position-in-resource-array first))
           (last (top-edge ec))
           (n2 (edge-position-in-resource-array last)))
      (format stream "e~a..e~a " n1 n2))))


(defun store-edge-chain (record list-of-edges)
  (let ((ec (make-instance 'edge-chain :list list-of-edges)))
    (setf (top-edge ec) (car (last list-of-edges)))
    (setf (form-labels ec) (mapcar #'form-cat-name list-of-edges))
    (setf (edge-record-chain record) ec)
    ec))


(defgeneric upward-used-in-chain (edge)
  (:documentation "Collect the chain of edges walking up
    the 'used-in' field starting at a particular edge.
    Returns all the edges including the last one that wasn't used-in
    anything, ordered from lowest to highest.")
  (:method ((n integer))
    (upward-used-in-chain (edge# n)))
  (:method ((e edge))
    (let ((next e) ; prime pump 
          (chain (list e))
          used-in )
      (loop
         (setq used-in (edge-used-in next))
         (if used-in
           (then (push used-in chain)
                 (setq next used-in))
           (return (nreverse chain)))))))
