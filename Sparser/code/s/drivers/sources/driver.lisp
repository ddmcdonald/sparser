;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "driver"
;;;   Module:  "drivers;sources:"
;;;  Version:  May 2020

;; Created 3/20/20 to organize the marshalling and reading of json-based
;; documents with the same range of options as run-an-article has
;; for nxml documents.

(in-package :sparser)

(defun run-json-article (article &key (sweep t) (read t)
                                   (quiet t) (skip-errors t) (verbose t)
                                   (show-sect nil) (stats nil))
  "Modeled directly on run-an-article in R3. This is how we
   take a article individual and pass it through the document-type
   driven reader methods;
     :sweep -- first pass that adds sentences to the paragraphs
   in the article.
     :read -- second pass where the sentences are parsed. Runs for
   side-effects on the 'content' fields of the document elements.
     :quiet -- turn off printing from the parser. If it is nil
   you'll aways see the bracketing of the phrases.
     :skip-errors -- run via an error catch that traps any errors
   rather than going into the debugger. Error is printed to standard-
   out, usually includes the text of the sentence where it occurred."
  (let ((*show-section-printouts* show-sect)
        (*trap-error-skip-sentence* skip-errors))
    (declare (special *show-section-printouts*
                      *trap-error-skip-sentence*
                      *article*))
    (setq *article* article)
    ;; If sweep is nil, this returns the raw document,
    ;; i.e. no section-of-sections or sentences.
    (when sweep
      ;; Make the sentences and implicit subsections.
      ;; Same as r3::sweep-article but w/o the handler.
      (sp::sweep-document article))
    (unless sweep ;; later pass contingent on first
      (setq read nil
            stats nil))
    (when read
      (if quiet
        (with-total-quiet (sp::read-from-document article))
        (read-from-document article)))
    (when stats
      (summary-document-stats article))
    (when *write-article-objects-file*
      (write-article-objects-file article))
    article))


(defun run-json-article-from-handle (&key (n 1) (corpus '0512-pdf)
                                       ((:sexp return-sexp) nil)
                                       (sweep t) (read t)
                                       (quiet t) (skip-errors t) (verbose t)
                                       (show-sect nil) (stats nil))
  "Assemble the file handle, use it to assemble an article,
   and pass the article to run-json-article. Standard way to run an
   article from the json corpus. Designed for iterating over:
     (loop for i from 11 to 50 do (run-json-article-from-handle :n i))"
  (declare (special *write-article-objects-file*))
  (multiple-value-bind (article sexp)
      (make-article-from-handle :n n :corpus corpus :verbose verbose)
    (let ((result
           (if return-sexp
               sexp
               (run-json-article
                article :sweep sweep :read read :quiet quiet 
                :show-sect show-sect :stats stats))))
      (when *write-article-objects-file*
        (write-article-objects-file article corpus n))
      result)))


(defun make-article-from-handle (&key (n 1) (corpus '0512-pdf) (verbose t))
  "Construct the file handle, check that it corresponds to a valid file,
   extract the Lisp sexp from the JSON file, pass it to make-document
   to assemble an article from it. Code is a different factoring of
   what do-json does. 
   Returns the article and the sexp that is the translation of the JSON."
  (unless (and (and corpus n)
               (numberp n)
               (or (symbolp corpus)
                   (stringp corpus)))
    (return-from make-article-from-handle nil))
  (make-json-article-from-file-handle (corpus-file-handle corpus n))
  )

(defun make-json-article-from-file-handle (file-handle)
  (let (file-namestring filepath sexp)
    (unless (setq file-namestring (decoded-file file-handle))
      (warn "No registered json path found for file handle ~a.~
          ~%Run collect-json-directory to register a directory's files."
            file-handle)
      (return-from make-json-article-from-file-handle nil))

    (unless (setq filepath (probe-file file-namestring))
      (error "probe-file returned nil for file path ~s" file-namestring))
    (unless (setq sexp (cl-json:decode-json-from-source filepath))
      (warn "The json file looks empty.")
      (return-from make-json-article-from-file-handle nil))

    (let ((article (make-document sexp file-namestring :handle file-handle)))
      (save-article file-handle article)
      (values article
              sexp))))


;;;--------------------
;;; saving out results
;;;--------------------

(defparameter *write-article-objects-file* nil
  "If T, then save the facts for the article to a file with name derived from the article")

(defun corpus-file-handle (corpus n)
  (intern (string-append corpus "-" n)
          (find-package :sparser)))

(defun corpus-file-namestring (corpus n)
  (decoded-file (corpus-file-handle corpus n)))

(defun mentions-filename (&key corpus n)
  (let ((article-namestring
         (json-relative-pathname (corpus-file-namestring corpus n))))
    (declare (special article-namestring))
    (json-absolute-pathname
     (format nil "~amentions/mentions-in-~a.lisp" 
             (directory-namestring article-namestring)
             (pathname-name
              (file-namestring article-namestring))))))

(defun article-relevant-mentions (article  &aux (contents (contents article)))
  (loop for slot-name in *term-buckets*
     as bucket = (slot-value contents slot-name)
     unless (member slot-name '(other comlex))
     append
       (loop for mention-set in bucket
             append (third mention-set))))

(defun article-corpus (article &aux (name (name article)))
  (intern
   (subseq (string name) 0 (search "-" (string name) :from-end t))
   :sp))

(defun article-corpus-index (article &aux (name (name article)))
  (read-from-string
   (subseq (string name) (+ 1 (search "-" (string name) :from-end t)))))

(defun write-article-objects-file (article)
  (let* ((corpus (article-corpus article))
         (n (article-corpus-index article))
         (mention-file (mentions-filename :corpus corpus :n n)))
    (ensure-directories-exist mention-file)
    (with-open-file (mf mention-file :direction :output
                        :if-exists :supersede
                        :if-does-not-exist :create)
      (format mf "(in-package :sp)~%;;;;;mentions for article ~s~%" (name article))
      (push-list-on-param
       (name article)
       (grouped-article-mentions article)
       mf)
      mention-file)))

(defun grouped-article-mentions (article)
  (list
   (name article)
   (sort
    (group-by
     (loop for g in
             (group-by (loop for m in (article-relevant-mentions article)
                             unless (itypep (mention-head-referent m)
                                            '(:or number-sequence))
                             collect m)
                       #'(lambda(m)
                           (handler-case
                               (krisp->sexpr (mention-head-referent m))
                             (error (e) (list '**error-in-krisp->sexpr**)))))
           collect
             (list (car g)
                   (loop for m in (remove-duplicates (second g) :test #'equal)
                         collect
                           (let ((str (car (mentioned-in-article-where m))))
                             (subseq str (+ 1 (search "." str)))))
                             
                   #+ignore
                   (list (subseq str (+ 1 (search ".p" str)))
                         (list (subseq str (+ 1 (search ".p" str)))
                               (mention-uid m))
                         )))
     #'caar)
    #'string<
    :key
    #'car)))



;;;------------------------
;;; saving article objects 
;;;------------------------

(defvar *handles-to-articles* (make-hash-table)
  "Handle symbols to article objects")

(defvar *handles-analyzed* nil
  "Simple list in reverse chronological order")

(defgeneric save-article (handle article)
  (:method ((handle symbol) (article article))
    (push handle *handles-analyzed*)
    (setf (gethash handle *handles-to-articles*) article)))

(defgeneric get-article (handle)
  (:method ((handle symbol))
    (gethash handle *handles-to-articles*)))


;;;--------------
;;; original set
;;;--------------
  
#|  These are quick and dirty -- don't incorporate any way to change
 the default setting. Intended to see a mass effect such as
 collecting vocabulary 

 1. (collect-json-directory) -- prime the pump

 2. (do-next-json) --> #<article >
    Sets *current-json-based-article* to the article so it can be accessed

 3. (run-json-article *current-json-based-article* :quiet nil :show-sect t)

|#

(defun pull-json-and-run (&optional quiet?)
  (do-next-json)
  (if quiet?
    (run-json-article *current-json-based-article*)
    (run-json-article *current-json-based-article*
                      :quiet nil :show-sect t)))

(defun run-n-json-articles (n)
  (dotimes (i n)
    (pull-json-and-run :quiet)))

(defvar *article-short-name* nil)
(defvar *article-json* nil)
(defvar *json-article* nil)

(defun run-nth-json-article (n &key ((:corpus article-set-name) '0403-com-pmc)
                                 (quiet t) (skip-errors t) (show-sect nil)
                                 (sexp nil))
  (let* ((*article-short-name* (format nil "~a-~a" article-set-name n)) ; file-handle
         (file-path-name (decoded-file *article-short-name*))
         (file-path (probe-file file-path-name)))
    (setq *article-json* (cl-json::decode-json-from-source file-path))
    (if sexp ;; return the decoding and don't do anything else
        *article-json*
        (progn
          (setq *json-article* (make-document *article-json* file-path
                                              :handle
                                              (if (stringp *article-short-name*)
                                                  (intern *article-short-name* :sp)
                                                  *article-short-name*)))
          (extract-authors-and-bibliography *article-json*)
          (run-json-article *json-article* :quiet quiet :skip-errors skip-errors)))))

