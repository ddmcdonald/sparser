;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: CLIC -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "reading-json"
;;;   Module:  "drivers;sources:"
;;;  Version:  March 2020

(in-package :sparser)

;;;--------------------
;;; get the json files
;;;--------------------

(defun json-base ()
  (let ((base (asdf:system-relative-pathname :r3 "../corpus/covid/2020-03-13/")))
    base))

(defun json-directory (&key base ((:dir dir-string) "biorxiv_medrxiv/biorxiv_medrxiv/"))          
  (let ((dir-path (merge-pathnames dir-string base)))
    (unless (probe-file dir-path) (error "extension to directory is wrong" dir-path))
    dir-path))


(defparameter *json-corpus-paths*
  '((rxiv "biorxiv_medrxiv")
    (com "comm_use_subset")
    (non-com "noncomm_use_subset")
    (pmc "pmc_custom_license"))
  "Modeled on the list in r3/code/evaluation/doc-support.
   Could be integrated into the file selection machinery to allow
   a short way to identify individuals json files to make into
   articles and process")

#| There's a good design for file handling in r3/code/evaluation/doc-support.
I was trying to copy that.  Also, since no one is going to be able to remember
these file names, it would be nice to collect whole directories of pathnames
and have some sort of "do the next one" set up

[MDM 3/17/20]  Okay, see what you think of this setup...

You can collect the files into the hopper using, e.g.:
(sparser::collect-json-directory :dir "biorxiv_medrxiv")

Then "do the next one" using using:
(sparser::do-next-json)

Or peek at what's on deck using:
(sparser::peek-next-json)

Or do the remaining ones using:
(sparser::do-remaining-json)

Or do the next N using:
(sparser::do-remaining-json :n N)

And once you know what function you want to run on each s-expression,
reassign *default-json-processing-fn* (directly below this) to something
else that takes two arguments:  (1) the s-expression (2) the file's pathname
|#

(defparameter *default-json-processing-fn* 'make-document
  "Function to make an article instance from the JSON")

(defvar *json-files-to-read* nil)  ;; The file path hopper

(defun all-covid-json-filepaths ()
  (setf *json-files-to-read*
        (loop for dir in '("biorxiv_medrxiv" "comm_use_subset" "noncomm_use_subset")
              append (progn (collect-json-directory :dir dir :quiet t)
                            *json-files-to-read*)))
  (format t "~%Loading ~d file pathnames into the hopper.~%To process the next one, call (sparser::do-next-json)~%To see what the next is, call (sparser::peek-next-json)~%To do the rest, call (sparser::do-remaining-json)~%To do a batch of n using (sparser::do-remaining-json :n n)~%Remaining list stored in sparser::*json-files-to-read*.~%"
          (length *json-files-to-read*))
  :done)

(defun collect-json-directory (&key (dir "biorxiv_medrxiv")(quiet nil))
  (declare (type string dir)) ;; To appease compiler complaints
  (let* ((double-dir (format nil "~a/~a/" dir dir)) ;; May want to make more flexible
         (dir-path (json-directory :base (json-base) :dir double-dir))
         (wild-path (merge-pathnames "*.json" dir-path))
         (file-paths (directory wild-path)))
    (cond ((not file-paths)
           (warn "No json files found in location ~a." dir-path))
          (t
           (unless quiet
             (format t "~%Loading ~d file pathnames into the hopper.~%To process the next one, call (sparser::do-next-json)~%To see what the next is, call (sparser::peek-next-json)~%To do the rest, call (sparser::do-remaining-json)~%To do a batch of n using (sparser::do-remaining-json :n n)~%Remaining list stored in sparser::*json-files-to-read*.~%"
                     (length file-paths)))
           (setf *json-files-to-read* file-paths)
           :done))))

(defun do-next-json (&key (do-fn *default-json-processing-fn*))
  (let ((next-file (pop *json-files-to-read*)))
    (cond ((not (probe-file next-file))
           (error "probe-file returned nil for file path ~s" next-file))
          (t
           (format t "~%~% Processing file: ~s~%" next-file)
           (let ((sexp (cl-json:decode-json-from-source next-file)))
             (cond ((null sexp)
                    (warn "The json file looks empty."))
                   ((not (fboundp do-fn))
                    (error "~a (value for keyword :do-fn) is not fbound." do-fn))
                   (t
                    (let ((fn-obj (symbol-function do-fn)))
                      (declare (type function fn-obj))
                      (funcall fn-obj sexp next-file)))))))))

(defun peek-next-json ()
  (declare (type list *json-files-to-read*))
  (let ((next-file (car *json-files-to-read*)))
    (cond ((not next-file)
           (format t "The reading list is empty." next-file))
          (t (format t "The next json path is:~%  ~s~%  It is followed by ~a more" next-file (- (length *json-files-to-read*) 1))
             next-file))))

(defun do-remaining-json (&key (do-fn *default-json-processing-fn*)
                            (n nil))
  (declare (type list *json-files-to-read*))
  (do* ((i n (and i (typep i 'fixnum) (- i 1))))
       ((or (and i (typep i 'fixnum) (< i 1))
            (null *json-files-to-read*)) :done)
    (do-next-json :do-fn do-fn)))

;; Whatever *default-json-processing-fn* is assigned to above should take
;; these two arguments
(defun sample-processing-fn (sexp filepath)
  (declare (ignorable filepath))
  (declare (type cons sexp))
  (format t "Nom nom, processing s-expression of length ~a." (length sexp)))

