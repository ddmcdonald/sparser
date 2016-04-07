;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  Robert J. Bobrow  -- all rights reserved
;;; 
;;;     File:  "new-words"
;;;   Module:  "biology"
;;;  Version:  1.0 June 2015

(in-package :sparser)

(defun form-of (word)
  (declare (special word))
  (let*
      ((rs (word-rule-set word)))
    (declare (special rs))
    (when rs
      (let*
          ((rules (rs-single-term-rewrites rs))
           (first-rule (car rules))
           (form (and first-rule
                      (cfr-form first-rule))))
        (declare (special rules first-rule form))
        form))))

(defparameter *pos-ht* (make-hash-table :size 100))

(defun record-new-word-forms ()
  (clrhash *pos-ht*)
  (loop for w in *newly-found-unknown-words* do (push w (gethash (form-of w) *pos-ht*))))


(defun save-new-word-list ()
  (declare (special *new-word-strings*))
  (length (setq *new-word-strings* 
                (sort (mapcar #'word-pname *newly-found-unknown-words*) #'string<)))
  
  (with-open-file
      (s "~/sparser/Sparser/code/s/grammar/model/sl/biology/new-word-list.lisp"
         :direction :output :if-exists :overwrite :if-does-not-exist :create)
    (format s
            ";;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  Robert J. Bobrow  -- all rights reserved
;;; 
;;;     File:  \"new-word-list\"
;;;  Version:  1.0 June 2015

(in-package :sparser) ~& (defparameter  *new-words* ~& '(~&")
    (loop for w in *new-word-strings* do (print w s))
    (format s
            "~& ))~&")
    (record-new-word-forms)
    (format s
            "~& (defparameter  *new-word-forms* ~& '(~&")
    (maphash #'(lambda (pos l)
                 (declare (special pos))
                 (cond
                  ((null pos)
                   (print (list "unknown POS" l) s))
                  (t
                   (terpri s)
                   (pprint
                    (list (cat-symbol pos)
                          (sort (mapcar #'word-pname l) #'string<))
                    s))))
             *pos-ht*)
    (format s "~&))~&")))
      
(defparameter *UCD-tag-directory* 
  (string-append cl-user::*r3-trunk* "code/evaluation/June2015Materials/Eval_tag_lists/*.tags"))

(defparameter *tag-file-ids* (generate-id-list-from-directory-listing *UCD-TAG-DIRECTORY*))

(defun read-tag-file (id)
  (with-open-file
      (s (string-append cl-user::*r3-trunk* "code/evaluation/June2015Materials/Eval_tag_lists/" id ".tags")
         :direction :input)
    (read s)))

(defun preferred-protein-id (tag)
  (or
   (loop for id in (cdddr tag) when (search "_HUMAN" id) do (return id))
   (loop for id in (cdddr tag) when (search "PR:" id) do (return id))))


(defun proteins-in-pmc-file (id)
  (let
      ((tags (read-tag-file id))
       (pht (make-hash-table :test #'equalp))
       pl)
    (loop for tag in tags 
      do
      (let* ((pid (preferred-protein-id tag)))
        (when pid  (pushnew  pid (gethash (third tag) pht) :test #'equalp))))
    (maphash #'(lambda(pro ids) (push `(define-protein ,pro ,@ids) pl)) pht)
    pl))

(defparameter *UCD-proteins-any-case* (make-hash-table :size 10000 :test #'equalp))
(defparameter *UCD-proteins-actual-case* (make-hash-table :size 10000 :test #'equal))


(defun record-proteins-in-june-test ()
  (loop for id in *tag-file-ids* 
    do
    (loop for tag in (read-tag-file id) 
      do
      (let* ((pid (preferred-protein-id tag)))
        (when pid  
          (pushnew  pid (gethash (third tag) *UCD-proteins-any-case*) :test #'equalp)
          (pushnew  pid (gethash (third tag) *UCD-proteins-actual-case*) :test #'equalp))))))

(defun new-word-protein-defs ()
  (declare (special *new-word-strings*))
  (let
      ((any nil)
       (actual nil))
    (loop for s in *new-word-strings* 
      do
      (cond
       ((gethash s *UCD-proteins-actual-case*)
        (push 
         `(define-protein ,s ,@(gethash s *UCD-proteins-actual-case*))
         actual))
       ((gethash s *UCD-proteins-any-case*)
        (push 
         `(define-protein ,s ,@(gethash s *UCD-proteins-any-case*))
         any))))
    (list actual any)))
  

(defun mixed-case-proteins ()
  (let
      ((mcp nil))
    (maphash #'(lambda (prot label) 
                 (declare (ignore label))
                 (if (and (not (equal prot (string-downcase prot)))(not (equal prot (string-upcase prot))))
                     (push prot mcp)))
             *UCD-proteins-actual-case*)
    mcp))
   
         