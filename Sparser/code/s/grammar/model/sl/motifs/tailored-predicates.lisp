;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "tailored-predicates"
;;;  Module: "grammar/model/sl/motifs/
;;; version: December 2021

;; Started 12/2/21 to hold predicates, counters, etc of the sort
;; that would be in objects/doc/content-methods if they weren't
;; so specific.

(in-package :sparser)

;;--- coverage

(defgeneric motifs-spotted/count (article)
  (:documentation "Count the number of instances of motifs noted.
     Return that number and the number of other notes")
  (:method ((a article))
    (let* ((items-field (items (contents a)))
           (motific-instances (collect-germane-group-instances items-field))
           (other-instances (loop for group in items-field
                               unless (memq group motific-instances)
                               collect group)))
      (values (loop for group in motific-instances
                 sum (group-count group))
              (loop for group in other-instances
                 sum (group-count group))))))


;;;---------------------------------------
;;; invert functional entries on articles
;;;---------------------------------------

#| First call (compute-notes-to-articles) to run through all the
motif articles and tally their records. This populates the
hash table note-entries-to-where-used*.
   Then call (summarize-configuration-usage) to sort and print
the table.
|#

;;--- the table

(defvar *note-entries-to-where-used* (make-hash-table)
  "keyed on configuration symbol -> (count . articles)")

(defgeneric where-is-configuration-used (configuration)
  (:documentation "Retrieve the information on this configuration keyword")
  (:method ((config symbol))
    (gethash config *note-entries-to-where-used*)))

;; (hashtable-to-alist *note-entries-to-where-used*)
;; (all-hash-keys *note-entries-to-where-used*)
;;   (:object :isolated-common :scare-quoted :in-relation :subject :posessive
;;    :np-modifier :isolated-proper :part-of-a-name :np-head)

(defgeneric configuration-count (configuration)
  (:documentation "Get the entry for this configuration and return its count")
  (:method ((config-keyword symbol))
    (let ((entry (where-is-configuration-used config-keyword)))
      (if entry
        (car entry)
        (format nil "No entry for ~a" config-keyword)))))

(defun summarize-configuration-usage ()
  "Print out the counts for every recorded configuration"
  (let* ((keys (all-hash-keys *note-entries-to-where-used*))
         (sorted (sort (copy-list keys) 'sort-configuration-entries-by-count)))
    (loop for key in sorted
       do (format t "~& :~a ~a" key (configuration-count key)))
    keys))

(defun sort-configuration-entries-by-count (key-1 key-2)
  (let ((count-1 (configuration-count key-1))
        (count-2 (configuration-count key-2)))
    (cond
      ((> count-1 count-2) t)
      ((< count-1 count-2) nil)
      (t (string< key-1 key-2)))))

  
;;--- the computation

(defun compute-notes-to-articles ()
  "Walk through every presently parsed article and pass it on to
   the per-article note entry handler."
  (declare (special *acumen-motific-articles*))
  (clrhash *note-entries-to-where-used*)
  (loop for article in *acumen-motific-articles*
     do (compute-notes-to-article (cdr article))))

(defun compute-notes-to-article (article)
  "Go through each of the relevant note-group-instance objects.
   For each one, go through its edge-records objects and pass them on
   to get their configurations tallied."
  (let* ((contents (contents article))
         (items-field (items contents))
         (motific-group-instances (germaine-items contents))
         (note-entries (loop for instance in motific-group-instances
                          append (note-instances instance)))
         (edge-records (loop for entry in note-entries
                          append (text-strings entry))))
    (tally-record-configurations edge-records article)))

(defun tally-record-configurations (edge-records article)
  "For every configuration in the edge-records, look for an entry in
   the where-used table, and either increment the entry or make a new one"
  (flet ((manage-entry (config-keyword)
           (unless config-keyword (break "record w/o a configuration"))
           (let ((entry (where-is-configuration-used config-keyword)))
             (cond
               ((null entry)
                (setf (gethash config-keyword *note-entries-to-where-used*)
                      (list 1 (list article))))
               (entry
                (incf (car entry))
                (pushnew article (cdr entry)))
               (t (break "shouldn't get here"))))))
    (loop for record in edge-records
       when (edge-record-configuration record)
       do (manage-entry (edge-record-configuration record)))))
