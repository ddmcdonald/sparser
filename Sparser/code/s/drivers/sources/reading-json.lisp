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

(defparameter *json-base* nil)
;; look up just once -- don't use asdf lookup each time
(defun json-base ()
  ;;(or *json-base*
      (setq *json-base*
            (namestring
             (asdf:system-relative-pathname :r3 "../corpus/covid/")))) ;;)

(defun json-directory (&key (base (json-base)) ((:dir dir-string) "comm_use_subset"))
  (declare (special base dir-string))
  (let ((dir-path (merge-pathnames dir-string base)))
    (unless (probe-file dir-path) (error "extension to directory is wrong" dir-path))
    dir-path))

(defun json-relative-pathname (path)
  (let* ((base (json-base))
         (pathname (namestring path))
         (path-base (subseq pathname 0 (length base))))
    (when (equal base path-base)
      (subseq pathname (length base)))))

;(defun json-absolute-pathname (rel-path &optional (date "2020-04-03"))
;  (format nil "~a~a/~a" (json-base) date (namestring rel-path)))

(defun json-absolute-pathname (rel-path)
  (concatenate 'string (namestring (json-base)) (namestring rel-path)))

(defparameter *json-corpus-paths*
  '((rxiv "2020-03-13/biorxiv_medrxiv/biorxiv_medrxiv/")
    (com "2020-03-13/comm_use_subset/comm_use_subset/")
    (non-com "2020-03-13/noncomm_use_subset/noncomm_use_subset/")
    (pmc "2020-03-13/pmc_custom_license/pmc_custom_license/")
    (0403-rxiv "2020-04-03/biorxiv_medrxiv/pdf_json/")
    (0403-com-pdf "2020-04-03/comm_use_subset/pdf_json/")
    (0403-com-pmc "2020-04-03/comm_use_subset/pmc_json/")
    (0403-non-com-pdf "2020-04-03/noncomm_use_subset/pdf_json/")
    (0403-non-com-pmc "2020-04-03/noncomm_use_subset/pmc_json/")
    (0403-custom-pdf "2020-04-03/custom_license/pdf_json/")
    (0403-custom-pmc "2020-04-03/custom_license/pmc_json/")
    )
  "Modeled on the list in r3/code/evaluation/doc-support.
   Could be integrated into the file selection machinery to allow
   a short way to identify individuals json files to make into
   articles and process")

#| There's a good design for file handling in r3/code/evaluation/doc-support.
I was trying to copy that.  Also, since no one is going to be able to remember
these file names, it would be nice to collect whole directories of pathnames
and have some sort of "do the next one" set up

[MDM 3/17/20]

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

(defparameter *corpus-registry-path*
  (probe-file (lisp-file (sparser-logical-pathname "source-drivers;json-corpus-registry.lisp"))))

(defun all-covid-json-filepaths (&optional (date "0403"))
  (setf *json-files-to-read*
        (loop for dir in
                (if (equal date "0403")
                    `("0403-rxiv" "0403-com-pdf" "0403-com-pmc" "0403-non-com-pdf"
                                  "0403-non-com-pmc" "0403-custom-pdf" "0403-custom-pmc")
                    '("biorxiv_medrxiv" "comm_use_subset" "noncomm_use_subset"))
              append (progn (collect-json-directory :dir (decoded-dir dir) :quiet t)
                            *json-files-to-read*)))
  (format t "~%Loading ~d file pathnames into the hopper.~%To process the next one, call (sparser::do-next-json)~%To process a particular one, call, e.g., (sparser::do-json 'com-52)~%To see what the next is, call (sparser::peek-next-json)~%To do the rest, call (sparser::do-remaining-json)~%To do a batch of n using (sparser::do-remaining-json :n n)~%Remaining list will be stored in sparser::*json-files-to-read*.~%...~%"
          (length *json-files-to-read*))
  :done)

(defun collect-json-directory (&key (dir)(quiet nil) (append))
  (let ((decoded-dir (decoded-dir dir))
        (encoded-dir (encoded-dir dir)))
    (when decoded-dir  ;; Don't proceed if there's no entry in *json-corpus-paths* that contains it, as key or value.
      (let* ((dir-path (json-directory :base (json-base) :dir decoded-dir))
             (wild-path (merge-pathnames "*.json" dir-path))
             (file-paths (directory wild-path)))
        (declare (special dir-path wild-path file-paths))
        (cond ((not file-paths)
               (break "No json files found in location ~a." dir-path))
              (t
               (unless quiet
                 (format t "~%Loading ~d file pathnames into the hopper.~%To process the next one, call (sparser::do-next-json)~%To process a particular one, call, e.g., (sparser::do-json 'com-52)~%To see what the next is, call (sparser::peek-next-json)~%To do the rest, call (sparser::do-remaining-json)~%To do a batch of n using (sparser::do-remaining-json :n n)~%Remaining list will be stored in sparser::*json-files-to-read*.~%...~%"
                         (length file-paths)))
               (setf *json-files-to-read*
                     (register-corpus-filepaths file-paths encoded-dir :quiet quiet))
               :done))))))

(defgeneric decoded-dir (dir-handle)
  (:documentation
   "Get the json directory that this handleiated symbol or string denotes, if any exists")
  (:method ((dir-sym symbol))
    (decoded-dir (symbol-name dir-sym)))
  (:method ((dir-str string))
    (declare (special dir-str))
    (or (second (assoc (intern (string-upcase dir-str) :sparser)
                       *json-corpus-paths*))
        (and (member dir-str *json-corpus-paths*
                     :key #'second :test #'equal)
             dir-str))))

(defgeneric encoded-dir (dir-name)
  (:documentation
   "Get the abbreviated handle for this json directory.")
  (:method ((dir-sym symbol))
    (encoded-dir (symbol-name dir-sym)))
  (:method ((dir-str string))
    (let ((entry
           (find-if
            #'(lambda (entry)
                (or (equal (second entry) dir-str)
                    (eq (first entry) (intern (string-upcase dir-str) :sparser))))
            *json-corpus-paths*)))
      (first entry))))

(defgeneric decoded-file (file-handle)
  (:documentation
   "Get the json file path namestring that this handle symbol or string denotes,
 if any such file is registered.")
  (:method ((file-sym symbol))
    (decoded-file (symbol-name file-sym)))
  (:method ((file-str string))
    (let* ((sym (intern (string-upcase file-str) :sparser))
           (rel-path (some #'(lambda (registry-tuple)
                               (let ((registry (cdr registry-tuple)))
                                 (second (find sym registry :key #'first :test #'equal))))
                           *corpus-handle-registries*)))
      (when rel-path
        (json-absolute-pathname rel-path))))
  (:method ((file-path pathname))
    file-path))

;; You can give it a list of corpus handles, which should be a subset of the
;; cars of the alist stored in *json-corpus-paths*.
;; By default, it will blow them all away.
(defun clear-corpus-registries (&optional specific-registries)
  (setf *corpus-handle-registries*
        (when specific-registries
          (reduce
           #'(lambda (registries-alist registry-handle)
               (remove registry-handle registries-alist :key #'car :test #'equal))
           specific-registries
           :initial-value *corpus-handle-registries*)))
  ;; Now write the cache
  (write-corpus-registry))
  
;; Returns a list of handles for the files.  The order of the handles returned
;; Does NOT neccessarily correpsond to the order of the paths argument.
;; We go by the order in the registry.
;; Note: A side-effect of this function is that ./json-corpus-registry.lisp will
;; get rewritten.
(defun register-corpus-filepaths (paths dir &key (write t)(quiet t))
  (let ((dir-handle (encoded-dir dir)))
    (macrolet ((registry-tuple () `(assoc dir-handle *corpus-handle-registries*))
               (registry () `(cdr (registry-tuple))))
      ;; add a registry for the dir-handle if it doesn't exist
      (unless (registry-tuple)
        (setf *corpus-handle-registries*
              (append *corpus-handle-registries* (list (list dir-handle)))))
      ;; The registry tuple is of the form: (<dir-handle> . <registry>)
      ;; where the registry is a list of file tuples of the form: (<file-handle> . <path-namestring>)
      (flet ((registered-file (str)
               ;; return the handle associated with this file, iff it's registered.
               (first (find str (registry) :key #'second :test #'equal)))
             (register-file (str)
               ;; register the file under the next new handle.
               ;; the list is one-indexed.
               (let* ((next-handle-str (format nil "~a-~a" dir-handle (length (registry-tuple))))
                      (next-handle (intern next-handle-str :sparser)))
                 (setf (registry)
                       (append (registry)
                               (list (list next-handle str))))
                 next-handle)))
        (let* ((handles (mapcar #'(lambda (path)
                                    (or (registered-file (json-relative-pathname path))
                                        (register-file (json-relative-pathname path))))
                                paths))
               (extra-registered
                (remove-if #'(lambda (file-tuple)
                               (member (car file-tuple) handles))
                           (registry))))
          (when extra-registered
            (unless quiet
              (warn "There are extra files in the registry that aren't in the provided path list:~%  ~a."
                    extra-registered)))
          (when write (write-corpus-registry))
          (sort handles #'string<))))))

(defun write-corpus-registry ()
  (cond ((not *corpus-registry-path*) (warn "Corpus registy not found."))
        (t
         (with-open-file (stream *corpus-registry-path*
                                 :direction :output
                                 :if-exists :supersede)
           (format stream "(in-package :sparser)")
           (let ((*package* (find-package :sparser)))
             (format stream "~%~%(defparameter *corpus-handle-registries* ~:[NIL~;~%  '~:*~S~])" *corpus-handle-registries*))))))

;; file name can be a pathname, a path namestring, or an abbreviated
;; symbol of string, e.g. (do-json 'com-1)
(defun do-json (file-handle &key (do-fn *default-json-processing-fn*))
  (let ((file-namestring (decoded-file file-handle)))
    (cond ((not file-namestring)
           (warn "No registered json path found for file handle ~a.  Run collect-json-directory to register a directory's files." file-handle)
           nil)
          (t
           (let ((rel-name (json-relative-pathname file-namestring))
                 (filepath (probe-file file-namestring)))
             (cond ((not filepath)
                    (error "probe-file returned nil for file path ~s" file-namestring))
                   (t
                    (format t "~%~% Processing file: ~s ~s~%" file-handle rel-name)
                    (let ((sexp (cl-json:decode-json-from-source filepath)))
                      (cond ((null sexp)
                             (warn "The json file looks empty."))
                            ((not (fboundp do-fn))
                             (error "~a (value for keyword :do-fn) is not fbound." do-fn))
                            (t
                             (let ((fn-obj (symbol-function do-fn)))
                               (funcall fn-obj sexp filepath))))))))))))


(defun do-next-json (&key (do-fn *default-json-processing-fn*))
  (let ((next-file (pop *json-files-to-read*)))
    (do-json next-file :do-fn do-fn)))

(defun peek-next-json ()
  (declare (type list *json-files-to-read*))
  (let* ((next-file-handle (car *json-files-to-read*))
         (next-file (decoded-file next-file-handle)))
    (cond ((not next-file-handle)
           (format t "The reading list is empty."))
          (t (format t "The next json file to process is ~a, at:~% ~s.~%  It is followed by ~a more."
                     next-file-handle next-file (- (length *json-files-to-read*) 1))
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

