;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2012-2015  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "save-doc-semantics"
;;;   Module:  "objects;doc:"
;;;  Version:  0.1 1-Oct-2016

;; initiated 10/2016
;; Initial definition of mechanism to output semantics of each sentence in an article


(in-package :sparser)

(defparameter *article-semantics-directory* nil
  "turns on saving of article semantics")

(defparameter *sentence-results-stream* nil)


(defparameter *default-article-semantics-path*
  (when (find-package :r3)
    (probe-file (asdf:system-relative-pathname :r3 "../corpus/Articles_for_CURE/"))))



(defun save-article-semantics (&optional (dir *default-article-semantics-path*))
  (setq *article-semantics-directory* dir))

(defun dont-save-article-semantics ()
  (setq *article-semantics-directory* nil))

(defparameter *dummy-stream* t)

(defun initialize-article-semantic-file-if-needed (article)
  (declare (special article))
  
  (when *article-semantics-directory*
    (let* ((title (title article))
           (file-path (make-semantics-filename article)))
      (declare (special file-path))
      (setq *sentence-results-stream*
            (or
             *dummy-stream*
             (open file-path
                   :direction :output
                   :if-exists :overwrite
                   :if-does-not-exist :create))))))

(defun close-article-semantic-file-if-needed (article)
  (when (and *article-semantics-directory*
             (streamp *sentence-results-stream*))
    (close *sentence-results-stream*))
  (setq *sentence-results-stream* nil))

(defun make-semantics-filename (article)
  (merge-pathnames  *article-semantics-directory*
                    (format nil "~a-semantics.lisp" (name article))))


(defmethod write-semantics ((sent sentence) s)
  (declare (special sent))
  (when (actually-reading)
    (write-sentence-results sent s)))

(defmethod write-sentence-results ((s sentence) stream)
  (declare (special *show-syn-tree*))

  ;; we assume that this is called immediately after the sentence is parsed
  (loop for edge in (all-tts (starts-at-pos s)(ends-at-pos s))
     do 
       (let*
	   ((*no-edge-info* t)
	    (*suppress-indiv-uids* t)
	    (ref (if (and
                      (edge-p edge)
                      (edge-mention edge))
                     (contextual-description (edge-mention edge))
                     edge)))
	 (declare (special ref *no-edge-info* *suppress-indiv-uids*))
	 (format stream "~% --- ~s~%"
                 (if (edge-p edge)
                     (extract-string-spanned-by-edge edge)
                     edge))
	 (if (word-p ref)
	     (format stream "  ~s" ref)
	     (print-sem-tree (spire-tree ref) stream))
	 (format stream "~%~%"))))

