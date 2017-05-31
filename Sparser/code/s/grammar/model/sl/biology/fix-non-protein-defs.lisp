;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "fix-non-protein-defs"
;;;  Module: "grammar/model/sl/biology/
;;; version: March 2017

(in-package :sparser)

(defparameter *uid-to-def-ids* (make-hash-table :size 10000 :test #'equal))
(defun simplify-def-id-file (in-file out-file)
  (with-open-file (input  (concatenate 'string "sparser:bio-not-loaded;" infile ".lisp")
                          :direction :input 
                          :external-format :UTF-8)
      (loop for def = (read input nil)
              while def
              do (when (eq (car def) 'def-indiv-with-id)
                       (setf (gethash (fourth def) *uid-to-def-ids*)
                       (push def (gethash (fourth def) *uid-to-def-ids*)))
              finally (simplify-def-ids out-file))))

;; for things that aren't protein families:
;  (group-by (get-forms-from-file #'fourth 

(defun simplify-def-ids (out-file)
  (with-open-file (output (concatenate 'string "sparser:bio-not-loaded;" 
                                              out-file ".lisp")
                                 :direction :output :if-exists :supersede 
                                 :if-does-not-exist :create
                                 :external-format :UTF-8)
    (loop for id being the hash-keys in *uid-to-def-ids*  
            using (hash-value defs)
            do (if (eq 1 (length defs))
                   (lc-one-line-print (car defs) output)
                   (loop for def in defs ;; NOTE: doesn't deal with members or adj since those are assumed not to exist at this point
                       as rest-def = (cddddr def)
                         collecting (second def) into categories
                         collecting (third def) into words
                         collecting (getf rest-def :name) into names
                         collecting (getf rest-def :plural) into plurals
                         collecting (getf rest-def :no-plural) into no-plurals
                         collecting (getf rest-def :maintain-case) into maintain-cases
                         finally (let ((fields (mapcar #'(lambda(x) (remove-duplicates x :test #'equal)) 
                                                       (list categories names plurals no-plurals 
                                                             maintain-cases))))
                                   (loop for field in fields
                                         when (> (length field) 1)
                                         (lsp-break "multiple values in ~s from defs ~s" field defs))
                                   (let ((category (car categories))
                                         (name (car names))
                                         (no-plural (car no-plurals))
                                         (maintain-case (car maintain-cases))
                                         (synonyms (unique-def-id-words words (car no-plurals))))
                                     (lc-one-line-print 
                                      `(def-indiv-with-id ,(car category) 
                                           ,(car synonyms) ,id 
                                           ,.(when name `(:name ,name))
                                           ,.(when (cdr synonyms) `(:synonyms ,(cdr synonyms)))
                                           ,.(when plural `(:plural ,plural))
                                           ,.(when no-plural `(:no-plural ,no-plural))
                                           ,.(when maintain-case `(:maintain-case ,maintain-case)))))))))))

(defun unique-def-id-words (words no-plural)
  (let ((unique-words (remove-duplicates words :test #'equal)))
    (loop for word in unique-words
            as plural = (plural-version word)
            when (member plural unique-words :test #'equal)
            do (if no-plural
                   (lsp-break "found plural in no-plural defs: ~s" unique-words)
                   (setq unique-words (remove plural unique-words :test #'equal))))
    unique-words))

(defun fix-cell-loc (input-file output)
  )

;; example item types:
(define-cellular-location "plasma membrane" "GO:0005886")
(def-synonym plasma-membrane (:noun "PM"))
(noun "plasma" :super cellular-location)
(define-category stress-granule :specializes cellular-location
  :realization
     (:noun "SG"))
(def-synonym stress-granule
  (:noun "stress granule"))
(def-ided-indiv cellular-location "Cross-Bridge" "GO:0097595" :name "ventral disc crossbridge") 

(def-indiv-with-id micro-rna "MiR-200c" "NCIT:C82157" :name "MIR200C") 
(define-protein "NCIT:C81859" ("MIRLET7E" "mirlet7e")) 


(defun convert-ncit-mir-defs (&optional (file "convert-ncit-mir-defs"))
  (with-open-file (in-file (concatenate 'string "sparser:bio-not-loaded;" file ".lisp")
                           :direction :input 
                           :external-format :UTF-8)
    (with-open-file (output "sparser:bio-not-loaded;mir-defs.lisp"
                            :direction :output :if-exists :supersede 
                            :if-does-not-exist :create
                            :external-format :UTF-8)
      (loop for term = (read in-file nil)
            while term
            do (lc-one-line-print `(def-indiv-with-id micro-rna ,(car (third term))
                                     ,(second term) :synonyms ,(cdr (third term)))
                                  output)))))

                   
