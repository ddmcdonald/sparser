;;; -*- Mode: Lisp; Syntax: Common-Lisp; -*-
;;; Copyright 2016 SIFT LLC. All Rights Reserved.

(in-package :mumble)

(defgeneric set-the-focus (item)
  (:documentation "External interface to the focus system.
Given some criteria, a process has concluded that the item is in focus.
The impact of that will be to have the item be pronominalized.
Use this method to trigger Mumble machinery that acts on this."))

(defgeneric in-focus? (obj)
  (:method (obj)))

(defgeneric local-mentions (obj)
  (:method (obj)))

(defgeneric record-use-of-object-type (type)
  (:method (type)))

(defgeneric record-reference (dtn result dom)
  (:method-combination progn)
  (:method progn ((dtn derivation-tree-node) result dom)
    (let ((obj (referent dtn)))
      (when obj
        (when dom
          (push obj (objects-referenced dom)))))))

(defgeneric record-discourse-context (obj result dom)
  (:method (obj result dom)))

(defgeneric record-unadorned-mention (obj result)
  (:method (obj result)))

(defgeneric unique? (item)
  (:documentation "Is there only one of this item in the situation?")
  (:method (item)))

(defgeneric stipulate-to-be-unique (item)
  (:method (item)))
