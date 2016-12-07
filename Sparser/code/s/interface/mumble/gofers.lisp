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

(defun get-mumble-word-for-sparser-word (s-word pos)
  (or (mumble::find-word (pname s-word) pos)
      (mumble::define-word/expr (pname s-word) (list pos))))

(defun get-sparser-word-for-mumble-word (m-word)
  (word-named (mumble::pname m-word)))

(defgeneric mumble-symbol (symbol)
  (:method ((s symbol)) (mumble-symbol (symbol-name s)))
  (:method ((name string)) (intern name :mumble)))

(defgeneric sparser-symbol (symbol)
  (:method ((s symbol)) (sparser-symbol (symbol-name s)))
  (:method ((name string)) (intern name :sparser)))
