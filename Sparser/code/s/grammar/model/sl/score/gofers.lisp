;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "gofers"
;;;  Module: "grammar/model/sl/score/
;;; version: August 2021

;; Broken out of comlex-verb-explorations 8/23/21

(in-package :sparser)

#| These use comlex-entry and comlex-subcategorization which are defined in
 grammar/rules/syntax/subcategorization.lisp  |#

(defmacro cls (v)
  "get comlex subcat for a given verb"
  `(comlex-subcategorization ,v 'verb))


;; takes a list of words and returns a list of the
;; words and their comlex subcats, e.g.,
;; ("discontinues" (verb (:subc ((np-as-np) (np-pp :pval ("after" "of")) (np)))))
(defun make-subcat-list (word-list)
  (mapcar #'(lambda (x) (list x (cls x))) ; n.b. cls is wired to the verb entry
	  word-list))


;; cadr is the entire entry -- (VERB (:SUBC ... ) ) or
;;                             (VERB (:TENSED ... (:SUBC ... ) ) )
;; cdadr is the list of lists beginning with keywords
(defun entry-body (entry)
  (cdadr entry))


(defun verb-entry-body (entry)
  (getf entry 'verb))

(defun noun-entry-body (entry)
  (getf entry 'noun))



(defun entry-subcat (pos-body)
  "Given the portion of the entry that is particular to a part of speech,
   return its subclause, including the tag: (:subc ...) "
  (cond ((null pos-body) nil)
	((and (consp (car pos-body))
              (eql (caar pos-body) :SUBC))
	 (car pos-body))
	(t (entry-subcat (cdr pos-body)))))

;; looks a word's comlex entry up and then grabs
;; the subcat
(defun subcat-from-word (word)
  (cadr (entry-subcat (cdr (cls word)))))




;; takes an entry of the form
;;   ("exists" (VERB (:SUBC ((AS-NP) (INTRANS)))))
;; generated by make-subcat-list and returns the list
;; of subcategorization frames
(defmacro verb-subcat-from-entry (entry)
  `(getf
    (second (comlex-subcategorization ,entry 'verb))
    :subc))

(defmacro noun-subcat-from-entry (entry)
  `(getf
    (second (comlex-subcategorization ,entry 'noun))
    :features))
