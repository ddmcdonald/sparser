;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "def-merging"
;;;  Module: "interface/grammar"
;;; version: August 2015


;; As of August 2015, this only works on define-protein and will not handle comments (they would need
;; to be copied to the new file manually).



(in-package :sparser)


(defvar *this-directory-pathname* 
  (make-pathname :directory (pathname-directory *load-truename*)))

;; Return object
(defun find-bio-entity (name type)
    (let ((word (resolve name)))
      (find-individual type :name word)))


;; Not actually using this but might be useful to leave in
(defun outfile (&key (subdir "Biology")
                     (filename "proteins")
                     (extension "lisp")
                     )
  (merge-pathnames filename (merge-pathnames
                             (format nil "./~a/foo.~a" subdir extension)
                             *this-directory-pathname*)))


;; Try to find an ID for a protein
(defun best-protein-id (ids)
  (or
   (loop for id in ids when (search "_HUMAN" id) do (return id))
   (loop for id in ids when (search "PR:" id) do (return id))))

;; helpers for cleaning out synonym lists.
(defun human-is-substring (str)
  (search "_HUMAN" str))

(defun pr-is-substring (str) 
  (search "PR:" str))

(defun remove-bogus-ids (form)
  (or
   (when (search "_HUMAN" (second form)) 
     (loop for id in (third form)
       do (if (human-is-substring id)
              (delete id (third form)))))
   (when (search "PR:" (second form))
     (loop for id in (third form)
       do (if (pr-is-substring id)
              (delete id (third form)))))))

(defparameter *current-defs-file* (outfile :filename "proteins"))

(defparameter *definition-hash* (make-hash-table :test #'equalp))

;;; This function reads in all of the define-protein forms in a file
;;; and merges them with forms in a hash table.
(defun read-file-as-sexp-list-to-hash (path)
  (with-open-file (stream path :direction :input)
    (loop for form = (read stream nil :eof)
            while (not (eq form :eof)) do
      (when (eq (car form) 'define-protein)
        (let* ((primary 
                (if (or (search "_HUMAN" (second form))
                        (search "PR:" (second form))) 
                    (second form)
                    (progn (if (best-protein-id (third form)) 
                               (progn 
                                 (push (second form) (third form))
                                 (setf (second form) (best-protein-id (third form)))
                                 (best-protein-id (third form)))
                               (second form)))))
               (previous (gethash primary *definition-hash*)))
          (if previous
              ;; expands definition if there were multiples.
              (progn (setf (third previous)
                           (remove-duplicates
                            (append (third previous) (third form))
                            :test #'equalp))
                ;; merge doc strings
                (cond
                 ;; need to combine two doc strings
                 ((and (fifth previous) (fifth form))
                  (setf (fifth previous)
                        (concatenate 'string (fifth previous) ";" (fifth form))))
                 ;; original doesn't have doc string but new does
                 ((and (fifth form) (not (fifth previous)))
                  (progn (push ':documentation (cdr (last previous)))
                         (push (fifth form) (cdr (last previous)))))))
              (setf (gethash primary *definition-hash*) form)))))))


(defparameter *definition-list* nil)

(defun sort-defs (ht)
  (let ((temp nil))
      (maphash #'(lambda (k v)
                   (declare (ignore k))
                   (push v temp)) 
               ht)
    (setq *definition-list* (sort temp #'string-lessp :key #'second))))


(defun write-new-definitions-file (path)
  (with-open-file (stream path :direction :output :if-exists :supersede)
    (format stream "(in-package :sparser)~2%")
    (loop for def in *definition-list*
      do (format stream "~%") (pprint def stream))))

;; By default, dumps output into this directory 
(defvar outpath (merge-pathnames "out.lisp" *this-directory-pathname*))

(defun merge-definitions (path1 path2) 
  (read-file-as-sexp-list-to-hash path1)
  (read-file-as-sexp-list-to-hash path2)
  (sort-defs *definition-hash*)
  (loop for def in *definition-list* do (remove-bogus-ids def))
  (write-new-definitions-file outpath))
