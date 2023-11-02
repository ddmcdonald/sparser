;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020-2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "residue"
;;;  Module: "grammar/model/sl/score/
;;; version: August 2021

;; This is everything that remained in the original comlex-verb-exploration
;; file from December 2020 that wasn't disbursed to other files 8/23/21.

;; Started 12/25/20 to collect verbs defined in COMLEX  that occur in
;; the SCORE articles that are not otherwise defined. Extended starting
;; in February to get more information out of the entries for more parts of speech.

(in-package :sparser)

(defun find-comlex-intrans () ;; 2,216
  (declare (special *comlex-verbs-list*))
  (loop for word in *comlex-verbs-list*
     as entry = (comlex-entry word)
     as verb-section = (assq 'verb entry) ; (verb (...) (:subc ...))
     as top-sexp = (cdr verb-section)
     as subc-exps = (second (assq :subc top-sexp))
     when (assq 'intrans subc-exps)
     collect word))

(defun comlex-subc-forms (word)
  "Search all the pos entries and return the forms of the first one
   with a :subc entry."
  (let ((entry (comlex-entry word))) ;; a list of pos-forms
    (loop for pos-form in entry
       as pos = (car pos-form)
       as top-sexp = (cdr pos-form)
       as subc-exps = (second (assq :subc top-sexp))
       when subc-exps
       return (values pos subc-exps))))

(defun find-comlex-attribute (word attribute)
  "Look up the entry with a :subc, then from the forms return the one
   whose car is the attribute, given as a symbol, e.g. 'adj-pp, 'np"
  (multiple-value-bind (pos forms)
      (comlex-subc-forms word)
    (loop for form in forms
       when (eq (car form) attribute)
       return form)))
       
(defun find-simple-comlex-prepositions (word)
  "Returns a list of strings"
  ;; p-dir and other lists -- pg.54 of reference manual
  (let ((form (find-comlex-attribute word 'pp)))
    (when form ;; e.g. (pp :pval ("from" "on" "upon" "into" "off of"))
      (cadr (memq :pval form)))))


(defgeneric map-comlex-prep-to-mixin (string)
  (:documentation "Given a preposition extracted from comlex, look up
    and return what it should map to in order to be incorporated into the grammar")
  (:method ((pname string))
    (declare (special *prep-to-add-mixin-mapping*))
    (let ((word (resolve pname)))
      (unless word (error "the preposition ~s is not already defined" pname))
      (let ((keyword (intern (string-downcase pname) (find-package :keyword))))
        (unless (typep keyword 'subcat-slot-keyword)
          (error "Preposition ~a is not on the subcat-slot-keyword list" word)
          (let ((form (assq keyword *prep-to-add-mixin-mapping*)))
            (unless form "Need to add data for :~a to the mapping table" keyword)
            form))))))


(defparameter *prep-to-add-mixin-mapping*
  '((:from )
    (:with (with-var) (:with with-var))
    
    ))



;;;;;;;;;;; Code from R3/code/vocabulary-discovery/verb-comlex-subcats




#|  Alex's version in sparser/util/lists.lisp does this		     			     
(defun flatten (l)
  (cond ((null l) nil)
        ((atom l) (list l))
        (t (loop for a in l appending (flatten a)))))
|#



#|
"in favor of" -- "in-favor-of"
"off of" --> "off of"
"out of" --> "out-of"
"in terms of" --> "in terms of"
"ahead of" --> "ahead of"
"up to" --> "up-to"
"according to"
"as to"
|#



;;;;;;; utility functions to establish the defparameters used above
(defun find-comlex-and-morphological-definitions ()
  (defparameter *comlex-verbs*
    (loop for ss  
       in (group-by (sort
                     (mapcar
                      #'(lambda (x) (list (pname (car x)) (second x)))
                      (remove-duplicates
                       (loop for r in *context-free-rules-defined*
                          when (and (null (cdr (cfr-rhs r)))
                                    (member (car (cfr-rhs r)) *from-comlex*) 
                                    (eq 0 (search "VERB" (pname (cat-name (cfr-form r))))))
                          collect
                            (list (stem-form (pname (car (cfr-rhs r))))
                                  (cat-name (cfr-form r)))
                            ) :test #'equal))
                     #'string< :key #'car) ; end of sort call
                    #'car #'second) ; group-by
       when (not (gethash (subseq (car ss) 0 (1- (Length (car ss))))
                          *primed-words*))
       collect (car ss)))

  (defparameter *comlex-other*
    (loop for ss  
            in
            (group-by 
             (sort
              (mapcar
               #'(lambda (x)(list (pname (car x)) (second x)))
               (remove-duplicates
                (loop for r in *context-free-rules-defined*
                   when (and (null (cdr (cfr-rhs r)))
                             (member (car (cfr-rhs r)) *from-comlex*)
                             (not (eq 0 (search "VERB" (pname (cat-name (cfr-form r)))))))
                   collect
                     (list (stem-form (pname (car (cfr-rhs r)))) (cat-name (cfr-form r))))                      
                :test #'equal)) 
              #'string< :key #'car)
             #'car #'second)
          when
          (not (gethash (subseq (car ss) 0 (1- (Length (car ss))))
                        *primed-words*))
          collect (car ss)))

  (defparameter *morph-comlex*
    (sort
     (remove-duplicates
      (loop for w in *show-morphs*
            when (or (gethash
                      (pname (stem-form (second w))) *primed-words*)
                     (gethash
                      (pname (second w)) *primed-words*))
              collect (if (gethash (pname (stem-form (second w))) *primed-words*)
                        (pname (stem-form (second w)))
                        (pname (second w))))
      :test #'equal)                        
     #'string<))

  (defparameter *morph-non-comlex*
    (sort
     (loop for w in *show-morphs*
           unless
           (or (gethash  
                (pname (stem-form (second w))) *primed-words*)
               (gethash
                (pname (second w)) *primed-words*))
           collect (pname
                    (second w)))
     #'string<)))



