;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2018 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "display-ontology"
;;;    Module:   interface/grammar/
;;;   Version:   February 2018

;; Adapted 10/22/16 from MAB's code for Trips.

(in-package :sparser)

(defun write-cat-org (category stream indent)
  "Iterate through the subcategories of category and write
   the lines to stream. This is the fixed point for writing 
   a full taxonomy -- doing the display of its input category
   and applying recursively to its subccategories. 
   Keeps track of what categories have already been displayed,
   announces any cases it finds, and keeps us from getting loops.
   Note that unlike display-categories-below, this enumeration 
   does not limit either the depth or breadth of its walk."
  (write-org-tree-cat-line category stream indent)
  (if (gethash category *category-was-displayed*)
    (format stream " **  already diplayed ~a" category)
    (else
      (setf (gethash category *category-was-displayed*) t)
      (let ((subs (subcategories-of category)))
        (when subs
          (loop for s in subs
             do (write-cat-org s stream (+ 2 indent))))))))

(defun write-org-tree-cat-line (category stream indent)
  "Write the line for one category to the stream. 
   If the category defines any variables (slots), include them 
   in the output, e.g. 
     + 1 endurant vars: {number, quantifier}
   The indent(ation) provides a visual index so it is easy to
   tell what depth you are looking at as well as how large to
   make the left margin intentation."
  (let* ((variables (cat-slots category))
         (var-names (when variables
                      (loop for v in variables
                         collect (var-name v)))))
    (format stream "~%~VT+ ~d ~a ~@[vars: {~{~A~^, ~}}~]"
            indent ;; provides an index 
            (round indent 2)
            (string-downcase (cat-symbol category))
            var-names)))


(defun display-cat-org (cat-name &optional (stream *standard-output*))
  "Intended for just looking at a small section of the category
   taxonomy in the REPL using the org format and indentation."
  (clrhash *category-was-displayed*)
  (write-cat-org (category-named cat-name :error-if-nil) stream 0))


(defun save-subcat-tree-to-file (category-name
                                 &key reference-system file-location file-name)
  "Using write-cat-org, write the subcategory tree from the specified
   category on down to a file. By default the file will be in the
   categories subdirectory of the sparser documentation directory.
   The filename is based on the current script, though if the category
   is not top it will be appended to the filename, e.g.
     ~/sparser/Sparser/documentation/categories/blocks-world-linguistic.org "
  (let ((category (category-named category-name :error-if-nil)))
    (unless reference-system
      (setq reference-system :sparser))
    (unless file-location
      (setq file-location "Sparser/documentation/categories/"))
    (unless file-name
      (setq file-name 
            (if (eq category-name 'top)
              (string-append (string-downcase (pname script)) ".org")
              (string-append (string-downcase (pname script)) "-"
                             (string-downcase (pname (cat-name category)))
                             ".org"))))
    (let* ((file-string (string-append file-location file-name))
           (pathname (asdf:system-relative-pathname reference-system file-string)))
      (with-open-file (stream pathname
                              :direction :output
                              :if-exists :supersede)
        (format stream "-*-org-*~
                    ~%#+TITLE: ~a~
                    ~%#+DATE: ~a~%" 
                (format nil "Subcategory tree for the ~a configuration" script)
                (date-&-time-as-formatted-string))
        (clrhash *category-was-displayed*)
        (write-cat-org category stream 0)
        pathname))))


;;======= Earlier version written by Mark for doing this with TRIPS

#|(display-with-subcs category::top t ) --> stash on a variable, tree
  (write-as-org-tree tree :reference-system :sparser)
|#

(defun write-as-org-tree (tree &key reference-system)
  "Takes a sexp tree like that produced by (display-with-subcs category::top t)
   and asdf system to define where to save the file. This defaults to :trips-ont-viewer
   which is r3/code/TRIPS-upper-ont/. Not the best but it will do."
  (unless reference-system
    (setq reference-system :trips-ont-viewer))
  (let* ((script (script))
         (filename (string-append (string-downcase (symbol-name script)) ".org"))
         (pathname
          (asdf::system-relative-pathname reference-system filename)))
    (with-open-file (stream pathname
                            :direction :output :if-exists :supersede)
      (format stream "-*-org-*-~
                   ~%#+DATE: ~a~%"
              (date-&-time-as-formatted-string))
      (recursive-write-org-lines stream tree 0))))

(defun recursive-write-org-lines (stream tree indent) ;; lang map)
  "Recursively walks down an sexpr (tree) that encode the super/sub class relationships
   and writes the incantation for rendering that as a file to be interpreted in org-mode.
   Eg.  
    + 2 KR::ORGANISM  
      + 3 KR::SPECIES  
        + 4 KR::HUMAN  "
  (flet ((write-tree-ln (cat vars)
           (format stream "~%~VT+ ~d ~s ~@[vars: {~{~A~^, ~}}~]" ;; ~@[~80T=> ~s~]"
                   indent (round indent 2) cat vars)))
    (when tree
      (let* ((cat (car tree))
             (subs nil)
             (vars nil))
        (cond ((eq (second tree) :variables)
               (setf vars (third tree)
                     subs (cdddr tree)))
              (t (setf vars nil
                       subs (cdr tree))))
        ;; Fixed multi-word preposition problem by redesigning their names qua categories
        (write-tree-ln cat vars)
        (dolist (subt subs)
          (recursive-write-org-lines stream subt (+ 2 indent) #|lang map|#))))))

