;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2003-2005  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "common"
;;;    Module:   "objects;export:"
;;;   version:   February 2005

;; initiated April 2003
;; 2/1/05 Patching it up so it will at least load.

(in-package :sparser)

;;;-------------
;;; indentation
;;;-------------

(defparameter *xml-indentation* 0)

(defmacro with-indentation (increment &body body)
  `(let ((*xml-indentation* (+ *xml-indentation* ,increment)))
     ,@body))

(defun iformat (stream format-string &rest args)
  (write (indent-spaces) :stream stream)
  (apply #'format format-string args))

(defparameter *spaces-cache* (make-hash-table))

(defun indent-spaces ()
  (or (getf *spaces-cache* *xml-indentation*)
      (cache-new-length-of-spaces *xml-indentation*)))

(defun cache-new-length-of-spaces (length) length (break "stub"))
;  (let (new-length-of-spaces)
;    (with-output-to-string new-length-of-spaces
;      (format 


;;;----------
;;; wrappers
;;;----------

(defun emit-standard-xml-header (stream)
  (format stream "<?xml>"))

(defun emit-standard-xml-close (stream)
  (format stream "</xml>"))
  

(defmacro with-xml-header ((&key (stream *standard-output*))
                           &body body)
  `(let ((*xml-indentation* 0))
     (emit-standard-xml-header ,stream)
     ,@body
     (emit-standard-xml-close ,stream)))
