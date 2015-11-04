;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "titles"
;;;   Module:  "model forms;sl:whos news:"
;;;  version:  1.10  March 1991

;; 1.1  Changed the indexing scheme in response to the change in
;;      the treatment of "polywords" from atomic objects to regular
;;      n-ary rules.
;; 1.2  (1/18 v1.8) Added a native version of Princ-title, rather than
;;      piggybacking off of princ-word.
;; 1.3  (1/21,23 v1.8)  Utterly changed the way title rules were constructed
;; 1.4  (1/24 v1.8)  Extended Lookup/title with capability to bury under
;;      the adjacent vector to find what it wants.
;; 1.5  (1/28 v1.8)  Fixed out-of-phase version of Delete-title
;; 1.6  (2/19 v1.8.1)  Added Assemble-new-title/anchor+key
;; 1.7  (3/7 v1.8.1)  Modified that routine to make the title by hand rather
;;      than by calling Define-title, which would setup a conflicting chart
;; 1.8  (3/11 v1.8.1) Fixed bug in Assemble-new-title/anchor+key
;; 1.9  (3/20 v1.8.1) Extended Lookup/title to handle the case of the
;;      anchor being a composite (i.e. title+company)
;; 1.10 (3/25) added a hack for a tricky case to Lookup/title

(in-package :CTI-source)


;;;------------
;;; the object
;;;------------

(define-category title)
; :slots
;   ((name polyword
;      :synonyms ))   ;; This sets up a synonyms keyword in the form
;                     ;; for words that all map to the title
; :index  (:hash/alist-on-word-sequence name)


(defstruct (title
            (:print-function print-title-structure))
  rules name extensions )


(defun print-title-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<title " stream)
  (princ-word (title-name obj) stream)
  (write-string ">" stream))

(defun princ-title (title stream)
  (etypecase title
    (word (display-word title stream))
    (polyword (display-polyword title stream))))


;;------- discourse-action

(leaves-anaphors (category-named 'title))


;;;------------
;;; ancilaries
;;;------------

(setf (cat-index (category-named 'title))
      (make-index/hash-on-slot))

(defun find/title (word)
  (gethash word (cat-index (category-named/c-symbol 'category::title))))

(defun title-named (string)
  (let ((word (resolve-string-to-word string)))
    (find/title word)))

(defun index/title (word title)
  (setf (gethash word (cat-index (category-named/c-symbol 'category::title)))
        title))

(defun all-Titles ()
  (let ( accumulating-titles )
    (maphash #'(lambda (word title)
                 (push title accumulating-titles))
             (cat-index (category-named/c-symbol 'category::title)))
    accumulating-titles))

(defun word-order (w1 w2)
  (string< (pname-for w1)
           (pname-for w2)))

(defun list-the-Titles ()
  (let ((the-titles (all-titles)))
    (pl (sort the-titles #'word-order :key #'title-name)
        nil)))


(defun delete-title (string)
  (let* ((title (title-named string)))
    (unless title
      (error "There is no title named ~A" string))
    (delete/title title)))

(defun delete/title (title
                     &optional (word (title-name title)) )
  ;; strand it -- remove it from the catalog
  (remhash word (cat-index (category-named/c-symbol 'category::title)))
  ;; delete the rules that invoke it
  (dolist (rule (title-rules title))
    (delete-cfr/cfr rule))
  title )

