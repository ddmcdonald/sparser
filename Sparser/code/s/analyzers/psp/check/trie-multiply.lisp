;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2013-2015 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "new-multiply"
;;;   Module:  "analyzers;psp:check:"
;;; Version: 1.0 December 2015


(in-package :sparser)


(defstruct (rule-trie
            (:include unit)
            (:print-function print-trie-data-struct))

  uid
  rules
  table
  )
            

(defun print-trie-data-struct (obj stream depth)
  (declare (ignore depth))
  (format stream "#<rule-trie #~A>" (rule-trie-uid obj)))


(defparameter *rule-trie-count* 0)

(defun new-rule-trie ()
  (make-rule-trie
   :uid (incf *rule-trie-count*)
   :table (make-hash-table
			   :test #'eq)))

(defparameter *rule-trie* nil)

(defun extend-rule-trie (pat-list rule &optional (trie *rule-trie*))
  (if pat-list
      (extend-rule-trie (cdr pat-list)
                        rule
                        (let* ((table (rule-trie-table trie)))
                          (or (gethash (car pat-list) table)
                              (setf (gethash (car pat-list) 
                                             table)
                                    (new-rule-trie)))))
      (push rule (rule-trie-rules trie))))

(defparameter *psr-rules* nil)

(defun init-psr-rules ()
  (unless *psr-rules*
    (do-symbols (rule :rule)
      (let ((rule (eval rule)))
        (when (cdr (cfr-rhs rule))
          (push rule *psr-rules*)))))
  *psr-rules*)
      
(defun create-full-rule-trie ()
  (init-psr-rules)
  (loop for rule in *psr-rules*
     do
       (extend-rule-trie (cfr-rhs rule) rule)))

(defun trie-edge-rule (left right)
  (let* ((left-trie (gethash left (rule-trie-table *rule-trie*)))
	 (right-trie (when left-trie (gethash right (rule-trie-table left-trie)))))
    (when right-trie (car (rule-trie-rules right-trie)))))


(defun trie-multiply-edges (left right &optional chunk)
  (unless *rule-trie* 
    (setq *rule-trie* (new-rule-trie))
    (create-full-rule-trie))
  (cond
   ((or (word-p left)
        (word-p right))
    nil)
   ((edge-of-dotted-intermediary right)
    ;; dotted rules only combine to their right, never to their left
    (tr :right-edge-is-dotted right)
    ;; "   but the right edge, e~A, is dotted and can't possibly combine"
    nil)
   ((valid-rule? (trie-edge-rule (edge-category left) (edge-category right))
                 left right chunk))
   ((when *allow-form-rules*
      (or
       (valid-rule? (trie-edge-rule (edge-form left) (edge-category right))
                    left right chunk)
       (valid-rule? (trie-edge-rule (edge-category left) (edge-form right))
                    left right chunk))))
   ((when *allow-pure-syntax-rules*
      (trie-edge-rule (edge-form left)(edge-form right))))))
