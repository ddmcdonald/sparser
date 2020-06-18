(in-package :sp)

(defparameter *covid-metadata-ht* (make-hash-table :size 100000 :test #'equal))

#|
(car *metadata*)
("cord_uid" "sha" "source_x" "title" "doi" "pmcid" "pubmed_id" "license" "abstract" "publish_time"
 "authors" "journal" "mag_id" "who_covidence_id" "arxiv_id" "pdf_json_files" "pmc_json_files" "url")
|#
(defun setup-metadata-ht (file)
  (let* ((metadata-list (cl-csv::read-csv file))
         (headers (car metadata-list)))
    (loop for row in (cdr metadata-list)
          do (let* ((art-plist (make-art-plist row headers))
                    (ht-id (cond ((> (length (getf art-plist :pdf_json_files)) 0)
                                  (getf art-plist :pdf_json_files))
                                 ((> (length (getf art-plist :pmc_json_files)) 0)
                                  (getf art-plist :pmc_json_files))
                                 (t (getf art-plist :cord_uid)))))
               (setf (gethash ht-id *covid-metadata-ht*)
                     art-plist)))))

(defun make-art-plist (row headers)
  (loop as i from 0 to (1- (length row))
        append `(,(intern (string-upcase (nth i headers)) (find-package 'keyword))
                  ,(nth i row))))
            
(defun get-art-plist (article)
  (let* ((source (article-source article))
         (split-pt (search "document_parses" source))
         (data-dir (subseq source 0 split-pt))
         (json-file (subseq source split-pt)))
    (unless (gethash "document_parses/pdf_json/f616fc58218452c55948631f421b119fda4f60df.json"
                     *covid-metadata-ht*)
      (setup-metadata-ht (pathname (concatenate 'string data-dir "metadata.csv"))))
    (gethash json-file *covid-metadata-ht*)))

(defun get-art-authors (article)
  (getf (get-art-plist article) :authors))

(defun get-art-date (article)
  (getf (get-art-plist article) :publish_time))

(defun get-art-journal (article)
  (getf (get-art-plist article) :journal)) ;; may be "" if it's preprint/biorxiv/medrxiv

(defun get-art-doi-link (article)
  ;; this will be useful if the user wants to see the original where they can also see figures and any other useful info from there
  (concatenate 'string "https://dx.doi.org/"
               (getf (get-art-plist article) :doi)))

(defun get-art-url (article) ;; for those that are free
  (getf (get-art-plist article) :url))

