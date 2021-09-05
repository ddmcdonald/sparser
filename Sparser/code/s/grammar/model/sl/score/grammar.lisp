;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "grammar"
;;;  Module: "grammar/model/sl/score/
;;; version: August 2021

;; Broken out of comlex-verb-explorations 8/23/21

(in-package :sparser)


(defun verb-subcat-frame (word)
  "Given the entry for the verb, i.e (verb (:subc ...)),
   Look up its transitivity and return the name of the
   appropriate subcategorization pattern (selected from
   grammar/model/mid-level/subcat-patterns.lisp) to go in
   its mixins field.
   This is feeding setup-verb."
  (let* ((subcat (subcat-from-word word))
         (transitive? (transitive-p subcat)))
    ;; The subcategorization information in a typical verb entry
    ;; in Comlex is extensive. To the extent that we can capture
    ;; it in a subcategorization pattern we'll make specific
    ;; selections. For now just +/- transitive (8/21)
    (if transitive?
      'comlex-verb ;; subject, object -- no restrictions
      'basic-intransitive))) ;; patient -- no restrictions


(defgeneric verb-particles (word)
  (:documentation "Comlex manual pg. 93. Used to automatically make
    define-category entries for the verb")
  (:method ((pname string))
    (verb-particles (resolve pname)))
  (:method ((word word))
    (let* ((subcat (subcat-from-word word))
           (field (when subcat (assq 'part subcat))))
    (when field
      (cadr (memq :adval field))))))

  

;;------------ original -------------

(defparameter *transitive-frames*
  (list 'NP
        'NP-NP
        'NP-PP
        'NP-PP-PP
        'NP-NUNITP-TO-RANGE
	'NP-AT-NUNITP-PRED
        'NP-TO-NP
        'NP-FOR-NP
        'PART-NP
	'PART-ING-SC
        'PART-TO-INF-SC
        'PART-NP-PP
        'PART-THAT-S
	'NP-NP-PRED
        'NP-ADJP-PRED 'NP-ADVP-PRED 'NP-PP-PRED
	'NP-VEN-NP-OMIT 'NP-ADJP 'NP-ADVP 'NP-ADV-PP 'NP-PRED
	'NP-AS-NP 'NP-AS-NP-SC 'PART-NP-AS-NP 'NP-PP-AS-NP
	'NP-AS-ING 'NP-AS-ADJP 'NP-AS-IF-S-SUNJUNCT
	'NP-AS-VEN-NP-OMIT 'NP-ING 'NP-ING-OC 'NP-ING-SC
	'NP-P-ING 'NP-P-ING-OC 'NP-P-ING-SC 'NP-TOBE 'NP-INF
	'NP-INF-OC 'FOR-TO-INF 'NP-TO-INF 'NP-TO-INF-OC
	'NP-TO-INF-SC 'NP-TO-INF-VC 'EXTRAP-NP-S 'EXTRAP-TO-NP-S
	'S-SUBJ-S-OBJ 'S 'THAT-S 'S-SUBJUNCT 'NP-S 'NP-WH-S
	'NP-TO-INF-NP-OMIT))

(defun transitive-p (subcat)
  (dolist (item subcat)
    (if (member (car item) *transitive-frames*)
	(return t)
	nil)))

(defun not-transitive-p (subcat)
  (not (transitive-p subcat)))

(defun has-intrans-frame-p (subcat)
  (dolist (item subcat)
    (if (or (eql (car item) 'INTRANS)
	    (eql (car item) 'INTRANS-RECIP)
	    (eql (car item) 'INTRANS-ELLIPSIS))
	(return t)
	nil)))

(defun prep-complements (subcat)
  "The argument is the list of clauses that follows :subc. This version
   doesn't pay attention to what verb subclass the prepositions (pval) are
   cited in, so it mixes up particles and multi-term forms (e.g. np-pp)."
  (loop for item in subcat
     appending (getf (cdr item) :pval) into prep-list
     finally (return (delete-duplicates prep-list :test #'equal))))


(defun verb-inflections-from-word (word)
  (let ((vsc (comlex-subcategorization (pname word) 'verb)))
    (if (and (consp (second vsc))
             (or (member :tensed/singular (second vsc))
                 (member :infinitive (second vsc))
                 (member :past-tense (second vsc))))
        (second vsc)
        (pname word))))
  
(defun noun-inflections-from-word (word)
  (let ((vsc (comlex-subcategorization (pname word) 'noun)))
    (if (and (consp (second vsc))
             (member :plural (second vsc)))
        (cons word (second vsc))
        (pname word))))


