;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2010  David D. McDonald  -- All Rights Reserved
;;; $Id$
;;; 
;;;     File:  "article"
;;;   Module:  "objects;doc:"
;;;  Version:  July 2010

;; initiated 12/15/93 v2.3
;; c.f. grammar/rules/context/article.lisp for some similar notions
;;   but it's point was to provide 'context' for things like date
;;   references. This is to describe facts about the article per se. 
;; 1.0 (7/23/10) Unclear that this code was used in recent memory since
;;   it's not in a current grep. So bumped the filename and reworked it
;;   as a CLOS object to support tf/idf work in word frequencies
;;   (see grammar/rules/words/frequency.lisp)
;;   (8/21/10) Reworked the fields to be more useful in TF/IDF.

(in-package :sparser)

#| Every run is with respect to a document, though not every
   "document" reflects something that we would intuitively think
   of in those terms, and probably wouldn't be referenced long-term. |#

;;;--------
;;; object
;;;--------

(defobject document () 
  ((name symbol)
   (words-to-count) ;; hash-table
   (words)    ;; integer of inique lemmas
   (token-count))) ;; integer of total word count

;;--- create/intern, clear, print

(defvar *symbols-to-document-instances* (make-hash-table))

(defmethod find-or-make-document-object ((filename string) clear?)
  (let ((name (intern (pathname-name (parse-namestring filename)))))
    (find-or-make-document-object name clear?)))

(defmethod find-or-make-document-object ((name symbol) clear?)
  (let ((d (gethash name *symbols-to-document-instances*)))
    (if d
      (when clear?
	(clear d))
      (else 
	(setq d (make-instance 'document :name name))
	(setf (words-to-count d) (make-hash-table))
	(setf (token-count d) 0)
	(setf (gethash name *symbols-to-document-instances*) d)))
    d))

(defmethod get-document ((name symbol))
  (gethash name *symbols-to-document-instances*))

(defmethod clear ((d document))
  (setf (words d) nil)
  (setf (token-count d) 0)
  (clrhash (words-to-count d))
  d)

(defmethod print-object ((d document) stream)
  (format stream "#<document ~a>"
	  (name d)))


;;;---------------------------
;;; tallying word-frequencies
;;;---------------------------

(defmethod incf-word-count ((w word) (d document))
  (let* ((table (words-to-count d))
	 (count (gethash w table)))
    (unless count
      (push w (words d))
      (setf (gethash w table) 0))
    (incf (token-count d))
    (incf (gethash w table))))

(defmethod count-in-document ((w word) (d document))
  (let ((table (words-to-count d)))
    (gethash w table)))



