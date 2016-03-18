;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2013-2016 David D. McDonald  All Rights Reserved
;;;
;;;  /Mumble/derivation-trees/gofers.lisp
;;;  February 2016

;; Initated 1/7/16 to consolidate usable gofer-type code from files
;; that for various reasons (OBE mostly) are not being loaded.

(in-package :mumble)

;;;-----------------------------------------------
;;; mumble words for sparser words and vice-versa
;;;-----------------------------------------------

(defvar *sparser-words-for-mumble-words* (make-hash-table)
  "Given a Mumble word object, return the corresponding 
  Sparser word if the correspondence has ever been defined.")


(defun get-mumble-word-for-sparser-word (s-word &optional pos)
  (or (stored-mumble-word-for-sparser-word s-word)
      (let ((pname (etypecase s-word
                     (sp::word (sp::word-pname s-word))
                     (sp::polyword (sp::pw-pname s-word)))))
        (unless pos
	  (setq pos 'mumble::noun))
        (let ((m-word (define-word/expr pname (list pos))))
          (store-mumble-word-for-sparser-word s-word m-word)
          (setf (gethash m-word *sparser-words-for-mumble-words*) s-word)
          m-word ))))

(defun stored-mumble-word-for-sparser-word (s-word)
  (sparser::get-tag :mumble-word s-word))

(defun store-mumble-word-for-sparser-word (s-word m-word)
  (setf (sparser::get-tag :mumble-word s-word) m-word))


(defun get-sparser-word-for-mumble-word (m-word)
  (let ((s-word (gethash m-word *sparser-words-for-mumble-words*)))
    (unless s-word
      ;; If we didn't store one with get-mumble-word-for-sparser-word
      ;; maybe there is one anyway and we'll just do that now.
      (let ((word (sp::word-named (pname m-word))))
        (when word
          (setq s-word word)
          (setf (gethash m-word *sparser-words-for-mumble-words*) s-word))))
    s-word))



;; Probably don't want to use this

(defmethod find-or-make-word ((s string))
  (break "who is calling find-or-make-word(string) ?")
  (or (word-for-string s)
      (define-word/expr s '(noun))))


;;---------- where's the right place for this? -----
(defmethod mumble-symbol ((s symbol))
  (mumble-symbol (symbol-name s)))
(defmethod mumble-symbol ((name string))
  (intern name (find-package :mumble)))

(defmethod sparser-symbol ((s symbol))
  (sparser-symbol (symbol-name s)))
(defmethod sparser-symbol ((name string))
  (intern name (find-package :sparser)))

