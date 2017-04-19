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

(defgeneric get-mumble-word-for-sparser-word (s-word pos)
  (:method ((s-word individual) pos)
    (get-mumble-word-for-sparser-word (or (value-of 'word s-word)
                                          (category-of s-word))
                                      pos))
  (:method ((s-word category) pos)
    (get-mumble-word-for-sparser-word (or (value-of 'word s-word)
                                          (pname s-word))
                                      pos))
  (:method ((s-word word) pos)
    (get-mumble-word-for-sparser-word (pname s-word) pos))
  (:method ((s-word polyword) pos)
    (get-mumble-word-for-sparser-word (pname s-word) pos))
  (:method ((s-word string) pos)
    (or (mumble::find-word s-word pos)
        (mumble::define-word/expr s-word (list pos)))))

(defun get-sparser-word-for-mumble-word (m-word)
  (word-named (mumble::pname m-word)))

(defgeneric mumble-symbol (symbol)
  (:method ((s symbol)) (mumble-symbol (symbol-name s)))
  (:method ((name string)) (intern name :mumble)))

(defgeneric sparser-symbol (symbol)
  (:method ((s symbol)) (sparser-symbol (symbol-name s)))
  (:method ((name string)) (intern name :sparser)))
