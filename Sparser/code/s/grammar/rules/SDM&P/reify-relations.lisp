;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "loader"
;;;    Module: "grammar;rules:SDM&P:
;;;   Version: March 2013

;; Initiated 3/18/13

(in-package :sparser)

(defun record-as-derived-from-text-relation (category)
  (setf (cat-plist category)
        `( :dederived-from-text-relation ,@(cat-plist category)))
  category)

(defun derived-from-text-relation? (category)
  (memq :dederived-from-text-relation (cat-plist category)))

(defmethod reify-text-relation ((tr classifier-head-tr-instance))
  (let* ((head-word (classified-head tr))
         (classifying-word (classifier-of-head tr))
         (string (string-append (pname-for classifying-word)
                                "-" (pname-for head-word)))
         (category-name (name-to-use-for-category string)))
    (let ((category (define-category/expr category-name
                      '(:specializes category::kind
                        :instantiates :self
                        :rule-label category::kind))))
      (let ((rule (define-cfr/resolved category::kind `(,classifying-word ,head-word)
                    category::np ;; form
                    category ;; referent
                    nil ;; plus the schema -- based on premodifier-creates-subtype
                    )))
        (record-as-derived-from-text-relation category) ;; include tr? Harder to clean
        (add-rules-to-category category `(,rule))
        category))))
                                      



    

