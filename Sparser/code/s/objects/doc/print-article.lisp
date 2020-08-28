;;; -*- Mode: LISP; Syntax: Common-Lisp; Package:(SPARSER LISP) -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "print-article"
;;;   Module:  "objects/doc/"
;;;  Version:  August 2020

;; Initiated 8/20/20 to write the text contents of an article
;; to a stream. 

(in-package :sparser)

(defgeneric write-out-document (doc-element stream)
  (:documentation "Walk through the document element recursively,
   writing the textual portions of the object to the stream.
   This is motivated by the JSON-based articles where we usually
   don't have their source PDF and so have no real idea what their
   full content is short of bringing them up in our web-based
   article viewer."))

(defmethod write-out-document ((a article) stream)
  (unless stream (setq stream *standard-output*))
  ;;////  other 'front matter'
  (format stream  "~&~%~%")
  (let ((title (title a)))
    (when title
      (typecase title
        (title-text (write-out-document title stream))
        (string (format stream "~a" title))
        (otherwise (break "title is a ~a~%'~a'"
                          (type-of title) title))))
    (dolist (section (children a))
      (write-out-document section stream))))

(defmethod write-out-document ((ss section-of-sections) stream)
  (format stream "~&~%~%")
  (let ((title (when (typep ss 'titled-entity) (title ss))))
    (when title
      (format stream "~&~a~%" (content-string title)))
    (dolist (s (children ss))
      (write-out-document s stream))))

(defmethod write-out-document ((s section) stream)
  (format stream "~&~%~%")
  (cond
    ((slot-boundp s 'title)
     (let ((title (title s)))
       (etypecase title
         (title-text (write-out-document title stream))
         (string
          (format stream "~a" (string-capitalize title))))))
    ((and (slot-boundp s 'name) ;; named-object pattern
          (name s))
     (format stream "~a" (name s))))
  (dolist (p (children s))
    (write-out-document p stream)))

(defmethod write-out-document ((tt title-text) stream)
  (let ((string (content-string tt)))
    (format stream "~a" string)))

(defmethod write-out-document ((p paragraph) stream)
  (format stream "~&   ") ; indent
  (let ((string (content-string p)))
    (format stream "~a" string)))

(defmethod write-out-document ((unexpected T) stream)
  (push-debug `(,unexpected))
  (break "A ~a -- '~a' passed to write-out-document"
         (type-of unexpected) unexpected))


;;--- document structure types for Score

(defmethod write-out-document ((hp heading-paragraph) stream)
  (let* ((kind (flag hp))
         (title (string-capitalize (etypecase kind
                                     (symbol (symbol-name kind)))))
         (string (get-sp-arg hp :caption))
         (number (get-sp-arg hp :number)))
    (format stream "~&~%")
    (cond
      ((and title number)
       (format stream "~&~a ~a. " title number))
      (title
       (format stream "~&~a " title)))
    (when string
      (format stream "~a" string))))

(defmethod write-out-document ((sh subheading-paragraph) stream)
  (let ((string (flag sh)))
    (unless string
      (push-debug `(,sh))
      (break "no string on ~a" sh))
    (format stream "~&~a" string)))

;;;-------------------
;;; writing to a file
;;;-------------------

;; (write-article-to-file a "~/temp/Score articles/")

(defun write-article-to-file (article directory)
  (let ((name (name article))
        (number (when (typep article 'score-article)
                  (position-in-corpus article))))
    (unless name (setq name "anonymous"))
    (let* ((namestring
            (if number
              (string-append directory name "-" number ".txt")
              (string-append directory name ".txt")))
           (pathname (pathname namestring)))
      (format t "Writing to ~a~%" pathname)
      (with-open-file (stream
                       pathname
                       :direction :output :if-exists :supersede)
        (write-out-document article stream)))))


    
