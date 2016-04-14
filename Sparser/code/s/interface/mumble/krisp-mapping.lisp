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
    (setq path (car path)) ;; temporary
    (let ( modified )
      (loop for pvp in pairs
        do (setq modified
                 (subst (value pvp) (phrase-parameter pvp) path)))
      modified)))

#|
      (loop
        (when (null item)
          (return))
        (format t "~%item = ~a" item)
        (typecase item
          (cons
           (tail-cons
            (incorporate-lexicalizations-into-predicted-path1
            item parameter-count bound-parameters)
            left-prefix))
          (node-label (tail-cons item left-prefix))
          (keyword
           ;; e.g. :set-state (:aux-state mumble::initial) 
           (tail-cons item left-prefix)
           (tail-cons (pop pending-path) left-prefix))
          (slot-label (tail-cons item left-prefix))
          (parameter
           (cond
            ((memq item bound-parameters)
             (let* ((pvp (find item pairs :key #'phrase-parameter))
                    (value (when pvp (value pvp))))
               (assert pvp)
               (assert (word-p value))
               (tail-cons value left-prefix) ;; convert now?
               (when (= 0 (decf parameter-count))
                 (return))))
            (t (tail-cons item left-prefix))))
          (otherwise
           (break "Unexpected type of item in position path: ~a~%~a"
                  (type-of item) item)))
        (setq item (pop pending-path))) |#

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


