;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "tailored-predicates"
;;;  Module: "grammar/model/sl/motifs/
;;; version: December 2021

;; Started 12/2/21 to hold predicates, counters, etc of the sort
;; that would be in objects/doc/content-methods if they weren't
;; so specific.

(in-package :sparser)

(defgeneric motifs-spotted/count (article)
  (:documentation "Count the number of instances of motifs noted.
     Return that number and the number of other notes")
  (:method ((a article))
    (let* ((items-field (items (contents a)))
           (motific-instances (collect-germane-group-instances items-field))
           (other-instances (loop for group in items-field
                               unless (memq group motific-instances)
                               collect group)))
      (values (loop for group in motific-instances
                 sum (group-count group))
              (loop for group in other-instances
                 sum (group-count group))))))

