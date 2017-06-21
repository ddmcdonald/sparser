;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER; -*-
;;; Copyright (c) 2013-2017 David D. McDonald. All Rights Reserved.
;;;
;;;     File: "gofers"
;;;   Module: "interface;mumble;"
;;;  Version: June 2017

;; Initated 1/7/16 to consolidate usable gofer-type code from files
;; that for various reasons (OBE mostly) are not being loaded.

(in-package :sparser)

;;;-----------------------------------------------
;;; mumble words for sparser words and vice-versa
;;;-----------------------------------------------

;;--- words

(defgeneric get-mumble-word-for-sparser-word (s-word pos)
  (:documentation "The types that represent words are different in Mumble
   and Sparser -- for no good reason but merging them would entail a good
   deal of labor for uncertain gain. Given a Sparser word object return the 
   corresponding Mumble word object. On the Mumble side, retrieving the
   correct word object requires us to specify the part of speech.
   If the Mumble-side word does not exist then we create it.")
  (:method ((i individual) pos)
    (get-mumble-word-for-sparser-word (or (value-of 'word i)
                                          (category-of i))
                                      pos))
  (:method ((c category) pos)
    (get-mumble-word-for-sparser-word (or (value-of 'word c)
                                          (rdata-head-word c pos)
                                          (lemma c pos)
                                          (string-downcase (pname c)))
                                      pos))
  (:method ((s-word word) pos)
    (get-mumble-word-for-sparser-word (pname s-word) pos))
  (:method ((s-word polyword) pos)
    (get-mumble-word-for-sparser-word (pname s-word) pos))
  
  (:method ((pname string) (pos null))
    (let ((word (resolve pname)))
      (assert word (pname)
       "Can only get mumble-words for known sparser words. ~s is unknown." pname)
      (get-mumble-word-for-sparser-word word nil)))
  (:method ((s-word word) (pos null))
    "Get the part of speach from the rules on the word"
    (setq pos (part-of-speech-given-word s-word))
    (get-mumble-word-for-sparser-word (pname s-word) pos))

  (:method ((pname string) pos)
    "If the mumble word doesn't exist (or not for this part of speech)
     then create it."
    (assert (symbolp pos))
    (let ((mpos (if (eq (symbol-package pos) (find-package :mumble))
                  pos
                  (mumble-pos pos))))
      (or (mumble::find-word pname mpos)
          (mumble::define-word/expr pname (list mpos))))))


(defun get-sparser-word-for-mumble-word (m-word)
  (word-named (mumble::pname m-word)))


;;--- symbols

(defgeneric mumble-symbol (symbol)
  (:method ((s symbol)) (mumble-symbol (symbol-name s)))
  (:method ((name string)) (intern name :mumble)))

(defgeneric sparser-symbol (symbol)
  (:method ((s symbol)) (sparser-symbol (symbol-name s)))
  (:method ((name string)) (intern name :sparser)))
