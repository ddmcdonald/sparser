;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "driver"
;;;   Module:  "drivers;sources:"
;;;  Version:  March 2020

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
                      *trap-error-skip-sentence*))
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
    article))


(defun run-json-article-from-handle (&key (n 1) (corpus 'rxiv)
                                       ((:sexp return-sexp) nil)
                                       (sweep t) (read t)
                                       (quiet t) (skip-errors t) (verbose t)
                                       (show-sect nil) (stats nil))
  "Assemble the file handle, use it to assemble an article,
   and pass the article to run-json-article. Standard way to run an
   article from the json corpus. Designed for iterating over:
     (loop for i from 11 to 50 do (run-json-article-from-handle :n i))"
  
  (multiple-value-bind (article sexp)
      (make-article-from-handle :n n :corpus corpus :verbose verbose)
    (if return-sexp
      sexp
      (run-json-article
       article :sweep sweep :read read :quiet quiet 
       :show-sect show-sect :stats stats))))


(defun make-article-from-handle (&key (n 1) (corpus 'rxiv) (verbose t))
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

  (let* ((file-handle (intern (string-append corpus "-" n)
                              (find-package :sparser)))
         (file-namestring (decoded-file file-handle)))
    (unless file-namestring
      (warn "No registered json path found for file handle ~a.~
          ~%Run collect-json-directory to register a directory's files."
            file-handle)
      (return-from make-article-from-handle nil))

    (let ((rel-name (json-relative-pathname file-namestring))
          (filepath (probe-file file-namestring)))
      (unless filepath
        (error "probe-file returned nil for file path ~s" file-namestring))
      (when verbose
        (format t "~&~% Processing file: ~s ~s~%" file-handle rel-name))

      (let ((sexp (cl-json:decode-json-from-source filepath)))
        (unless sexp
          (warn "The json file looks empty.")
          (return-from make-article-from-handle nil))

        (let ((article (make-document sexp filepath :handle file-handle)))
          (values article
                  sexp))))))

  
#| Original set
 These are quick and dirty -- don't incorporate any way to change
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

(defun run-nth-json-article (n &key ((:corpus article-set-name) 'rxiv)
                                 (quiet t) (skip-errors t) (show-sect nil)
                                 (sexp nil))
  (let* ((*article-short-name* ; file-handle
          (format nil "~a-~a" article-set-name n))
         (file-path-name (decoded-file *article-short-name*))
         (file-path (probe-file file-path-name))
         (*article-json* (cl-json::decode-json-from-source file-path)))
    (if sexp ;; return the decoding and don't do anything else
      *article-json*
      (let ((*json-article* (make-document *article-json* file-path)))
        (extract-authors-and-bibliography *article-json*)
        (run-json-article *json-article* :quiet quiet :skip-errors skip-errors)))))
