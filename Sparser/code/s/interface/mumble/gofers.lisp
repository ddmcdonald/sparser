;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER; -*-
;;; Copyright (c) 2013-2016 David D. McDonald. All Rights Reserved.
;;;
;;;     File: "gofers"
;;;   Module: "interface;mumble;"
;;;  Version: April 2016

;; Initated 1/7/16 to consolidate usable gofer-type code from files
;; that for various reasons (OBE mostly) are not being loaded.

(in-package :sparser)

;;;-----------------------------------------------
;;; mumble words for sparser words and vice-versa
;;;-----------------------------------------------

(defvar *sparser-words-for-mumble-words* (make-hash-table))

(defun stored-mumble-word-for-sparser-word (s-word)
  (get-tag :mumble-word s-word))

(defun (setf stored-mumble-word-for-sparser-word) (m-word s-word)
  (setf (get-tag :mumble-word s-word) m-word))

(defun get-mumble-word-for-sparser-word (s-word &optional (pos 'mumble::noun))
  (or (stored-mumble-word-for-sparser-word s-word)
      (let* ((pname (pname s-word))
             (m-word (or (mumble::word-for-string pname pos)
                         (mumble::define-word/expr pname (list pos)))))
        (setf (gethash m-word *sparser-words-for-mumble-words*) s-word
              (stored-mumble-word-for-sparser-word s-word) m-word))))

(defun get-sparser-word-for-mumble-word (m-word)
  (or (gethash m-word *sparser-words-for-mumble-words*)
      (setf (gethash m-word *sparser-words-for-mumble-words*)
            (word-named (mumble::pname m-word)))))

(defgeneric mumble-symbol (symbol)
  (:method ((s symbol)) (mumble-symbol (symbol-name s)))
  (:method ((name string)) (intern name :mumble)))

(defgeneric sparser-symbol (symbol)
  (:method ((s symbol)) (sparser-symbol (symbol-name s)))
  (:method ((name string)) (intern name :sparser)))

