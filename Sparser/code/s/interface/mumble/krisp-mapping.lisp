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

