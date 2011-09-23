;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "list whole tree"
;;;   Module:  "interface;file ops:"
;;;  Version:  January 1992

;; initiated 1/23
(in-package :sparser)


#|------------  typical usage

(with-open-file (s "dec;file structure"
                 :direction :output
                 :if-exists :overwrite)
  (list-directory-tree "dec;" s))
|#


(defun list-directory-tree (root stream)
  (recursively-list-directory-tree
   root stream 0))


(defun recursively-list-directory-tree (root
                                        stream
                                        depth)
  (let ((subdirectories
         (directories-in-directory root))
        (files
         (files-in-directory root)))

    (dolist (file files)
      (list-file file stream depth))

    (dolist (directory subdirectories)
      (list-directory directory stream depth)
      (recursively-list-directory-tree
       directory stream (+ depth 1)))))




(defun list-file (pathname stream count)
  (let ((namestring (namestring pathname)))
    (format stream "~&~A~4,2t~A"
            count namestring)))

(defun list-directory (pathname stream count)
  (let ((namestring (namestring pathname)))
    (format stream "~&~A~4,2t~A"
            count namestring)))

