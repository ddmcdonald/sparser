;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "json-articles"
;;;   Module:  "objects;doc:"
;;;  Version:  March 2020

;; initiated 3/18/20 to hold the code that constructs an article
;; from the sexp created from a JSON file in the COVID repository

(in-package :sparser)

(defvar *current-json-based-article* nil
  "Set in make-document and read in run-json-article to provide 
 a conduit between those two steps while we're sorting out what
 control flow to actually use.")
       
(defun make-document (sexp filepath)
  ;; text-blocks to paragraphs
  ;; make an article and hook in the paragraphs.
  ;; The NXML would suppy us structure for sections and sections of
  ;; sections. That information might be here, but for the nonce
  ;; use a variant article that just dominates the paragraphs
  (let ((text-blocks (extract-text-body sexp)))
    (unless text-blocks
      (warn-or-error "could not find the text-body in JSON sexp"))
    (let ((article (make-instance 'article))
          (s (make-instance 'section))
          (tt (extract-title sexp)))
      (setf (name article) (next-indexical-name :article))
      (setf (title article) tt)

      (setf (name s) (next-indexical-name :section))
      (setf (parent s) article)
      (setf (children article) (list s))

      (setf (article-source article) filepath)

      (let ((paragraphs
             (loop for block in text-blocks
                collect (make-paragraph block))))
        (knit-paragraphs paragraphs s)
        (setf (children s) paragraphs)

        (setq *current-json-based-article* article)
        article))))


;;--- text-blocks -> paragraphs

(defun read-out-text-block (sexp)
  (values (cdr (assq :section sexp))
          (cdr (assq :text sexp))))

(defun make-paragraph (text-block)
  (multiple-value-bind (section text)
      (read-out-text-block text-block)
    ;; ignore the section till we see what may occur
    (let ((p (allocate-paragraph))) ;; (make-instance 'paragraph)
      (setf (content-string p) text)
      p)))

(defun knit-paragraphs (list section)
  "Set the previous/next and parent pointers"
  (if (null (cdr list)) ;; just one paragraph
    (let ((p (car list)))
      (setf (parent p) section))
    (do ((a (car list) (car rest))
         (b (cadr list) (cadr rest))
         (rest (cdr list) (cdr rest)))
        ((null b))
      (setf (next a) b)
      (setf (previous b) a)
      (setf (parent a) section)
      (setf (parent b) section))))


;;--- top-level tags

(defun extract-paper-id (sexp)
  (cdr (assq :paper--id sexp)))

(defun extract-metadata (sexp)
  (cdr (assq :metadata sexp)))

(defun extract-text-body (sexp)
  ;; retuns a list of text blocks
  (cdr (assq :body--text sexp)))

(defun extract-title (sexp)
  (let ((string (cdr (assq :title (extract-metadata sexp))))
        (tt (make-instance 'title-text)))
    (unless string
      (warn-or-error "could not find the title in JSON sexp"))
    (setf (name tt) (next-indexical-name :title-text))
    (setf (content-string tt) string)
    tt))

(defun extract-abstract (sexp)
  "Can be several paragraphs"
#|          (let ((sec (make-instance 'sparser::section)) ;;(sparser::allocate-section))
                 (parent (or my-section my-article)))
                  (setf (sparser::name title)
                   (sparser::next-indexical-name :title-text))
                 (setf (sparser::title sec) title)
                 (setf (sparser::content-string title) "ABSTRACT")
|#
  (let ((text-blocks (cdr (assq :abstract sexp))))
    ;; one paragraph each
    ))


(defvar *authors-and-bibs* nil)


(defun extract-authors-and-bibliography (sexp)
  (declare (special *article-short-name*))
  ;; retuns a list of text blocks
  (let* ((authors (cdr (assq :authors (extract-metadata sexp))))
         (bib-entries (cdr (assq :bib--entries sexp))))
    (loop for author in authors do (record-author-name author))
    (loop for bib-entry in bib-entries
          do
            (loop for author in (cdr (assq :authors (cdr bib-entry)))
                    do (record-author-name author)))
    (push
     (list *article-short-name* authors bib-entries)
     *authors-and-bibs*)))

(defun record-author-name (name-entry)
  (when (assq :first name-entry)
    (when (> (length (cdr (assq :first name-entry))) 1)
      (setf (gethash  (cdr (assq :first name-entry)) *first-names*) t)))
  (when (assq :last name-entry)
    (setf (gethash  (cdr (assq :last name-entry)) *last-names*) t)))
    
         

