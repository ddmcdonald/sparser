;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: MUMBLE; -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.
;;;
;;;     File: "krisp-mapping"
;;;   Module: "interface;mumble;"
;;;  Version: April 2016

;;; Krisp category / lexical head to annotated phrase

(in-package :mumble)

(defparameter *mappings-for-category-linked-phrase*
  (make-hash-table :test 'equal))

(defmethod record-krisp-mapping ((word word) (clp category-linked-phrase))
  "We need to be able to get to the CLP from both the Sparser and
   the Mumble words, and from the Krisp category (hidden in the CLP
   to simplify the signature). Doing string mapping of the words too."
  (let ((category (linked-category clp))
        (pname (pname word))
        (s-word (sparser::get-sparser-word-for-mumble-word word)))
    (setf (gethash category *mappings-for-category-linked-phrase*) clp)
    (setf (gethash word *mappings-for-category-linked-phrase*) clp)
    (setf (gethash s-word *mappings-for-category-linked-phrase*) clp)
    (setf (gethash pname *mappings-for-category-linked-phrase*) clp)))

(defmethod krisp-mapping ((c sp::category))
  (gethash c *mappings-for-category-linked-phrase*))

(defmethod krisp-mapping ((w word))
  (gethash w *mappings-for-category-linked-phrase*))

(defmethod krisp-mapping ((w sp::word))
  (gethash w *mappings-for-category-linked-phrase*))

(defmethod krisp-mapping ((pname string))
  (gethash pname *mappings-for-category-linked-phrase*))


(defgeneric variable-for-parameter (parameter source)
  (:method ((p parameter) (mapping list))
    (variable-for-parameter
     p (find p mapping :key #'corresponding-parameter :test #'eq)))
  (:method ((p parameter) (pair parameter-variable-pair))
    (declare (ignore p))
    (corresponding-variable pair)))


;;;------------------------------------
;;; helpers for the incremental parser
;;;------------------------------------

(defun sp::incorporate-lexicalizations-into-predicted-path (lp)
  "Walk the position path until we encounter of the the parameters
   that's bound by the lexicalized phrase at which point we
   substitute the lp's value for that parameter. 
   Operates distructively in place."  
  (let* ((pairs (bound lp)) ;; parameter - value pairs
         (path (sp::predicted-path (sp::current-incremental-state))))
    (assert path) ;; should already be in place    
    (let ( modified )
      (loop for pvp in pairs
        do (setq modified
                 (subst (value pvp) (phrase-parameter pvp) path)))
      modified)))

(defvar *trace-popping-predicted-path* nil
  "Ad-hoc trace for pp1")

(defun ppp-1 (head-word path)
  ;;/// position would find the word if it worked on trees
  (let ((item (pop path)))
    (loop
      (when *trace-popping-predicted-path*
        (format t "~&item = ~a~%" item))
      (etypecase item
        (node-label) ;;///
        (keyword ;; :set-state (:aux-state mumble::initial)
         (pop path))
        (slot-label) ;;/// attachment points if dominates
        (parameter) ;; irrelevant on a word search
        (cons
         (ppp-1 head-word item))
        (word
         ;; We're assuming we've succeeded.
         ;; And that we could be a few levels down in the
         ;; node recursion, so we need to stash our
         ;; results and throw
         ;; Simplified (?) assumption that there will
         ;; only be one word
         (assert (eq head-word ;; sparser word
                     (sp::get-sparser-word-for-mumble-word item)))
         (setf (sp::predicted-path (sp::current-incremental-state))
               path)
         (throw :found-lexical-head t)))
      (setq item (pop path))
      (unless item
        (error "we've exhausted the path")))))

;; not going to be used?
(defun merge-lp-clp-parameter-specs (lexicalized-phrase catgory-linked-phrase)
  "Both arguments dictate how phrase parameters map to values."
  (let ((pvps (bound lexicalized-phrase)) ;; parameter-value-pair's
        (map (parameter-variable-map catgory-linked-phrase))
        alist )
    (loop for pvp in pvps
      do (push `(,(phrase-parameter pvp)
                 . ,(value pvp))
               alist))
    (loop for pair in map
      do (push `(,(corresponding-parameter pair)
                 . ,(corresponding-variable pair))
               alist))
    alist))


