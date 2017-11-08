;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: MUMBLE -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved

(in-package :mumble)

(defun pretty-bio-name (name)
  "Heuristically guess a nice name for a protein or other biological entity."
  (let ((syns (sp::get-bio-synonyms name)))
    (if syns
      (or (let ((human (search "_HUMAN" name))) ; prefer the synonym without the _HUMAN suffix
            (find (subseq name 0 human) syns :test #'string-equal))
          (first (stable-sort ; prefer shortest synonym
                  (cons name (copy-list syns))
                  #'< :key #'length)))
      ;; no synonyms, so look for removable parts
      (let ((index (search "_HUMAN" name)))
        (if index
          (subseq name 0 index)
          (subseq name (case (search "BIO-" name :test #'char-equal)
                         (0 4) ; elide bio-prefix
                         (t 0))))))))

(defun bio-complex-components (i)
  "Sparser produces KRISP individuals of category BIO-COMPLEX with
multiple bindings for the COMPONENT variable from text of the form
'BRAF-NRAS' (see SP::MAKE-BIO-COMPLEX). For text of the form 'BRAF/NRAS',
however, it forms a collection first, then binds a single COLLECTION
variable to that collection. We reverse that logic here."
  (let ((components (sp::binds-variable i 'sp::component :all t)))
    (flet ((pname (i) (pretty-bio-name (sp::pname (sp::value-of 'sp::name i)))))
      (cond ((null components)
             nil)
            ((cdr components)
             (format nil "~{~a~^-~}"
                     (mapcar #'pname
                             (mapcar #'sp::binding-value
                                     (reverse components)))))
            ((sp::itypep (sp::binding-value (car components)) 'sp::collection)
             (format nil "~{~a~^/~}"
                     (mapcar #'pname
                             (sp::value-of 'sp::items
                                           (sp::binding-value (car components))))))))))

(sp::def-k-method realize-individual ((i category::bio-complex))
  (let ((components (bio-complex-components i))
        (complex (word-for-string
                  (string-downcase
                   (pretty-bio-name (sp::pname (sp::category-of i))))))
        (dtn (make-dtn :referent i :resource (phrase-named 'common-noun))))
    (make-complement-node 'n complex dtn)
    (when components
      (attach-adjective (word-for-string components) dtn 'adjective))
    dtn))
