;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-2005,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "printers"
;;;   Module:  "model;core:people:"
;;;  version:  0.2 June 2013

;; file created 2/9/94 v2.3. Fleshed out 10/3.  Added string/person 2/24/95
;; 0.1 (7/7) revamped full version to do versions correctly.
;; 0.2 (1/17/96) Reorganized the whole thing to feed from the string-routine
;;      for person-name. Handles pathological case where there isn't a
;;      name sequence. (3/16/05) fixed formatting. 6/7/13 updated to get
;;      small shifts over time.

(in-package :sparser)

(defun string/person-name/first-last (name)
  (string/person-name name))

(defun string/person-name (name)
  (let ((last (value-of 'last-name name))
        (first-sequence (value-of 'first-name name))
        (name-sequence (value-of 'sequence name))
        (version-obj (value-of 'version name)))

    (let ((last-name
           (if last
             (string-for last)
             (if name-sequence
               (let ((last (last/iseq name-sequence)))
                 (string-for last))
               nil)))
          (first-names
           (if first-sequence
             (string-for first-sequence)
             (when name-sequence
               (let ((subseq (all-but-last/iseq name-sequence)))
                 (if subseq
                   (string-for subseq)
                   nil)))))
          (version
           (when version-obj
             (etypecase version-obj
               (individual
                (ecase (cat-symbol (i-type-of version-obj))
                  (category::person-version
                   (word-pname (value-of 'name version-obj)))))
               (referential-category
                ;; i.e. an ordinal
                (concatenate
                 'string "the "
                 (word-pname (value-of 'word version-obj))))))))
      (cond
       (version
        (if first-names
          (format nil "~A, ~A ~A"
                  last-name first-names version)
          (format nil "~A ~A" last-name version)))
       
       (first-names
        (format nil "~A, ~A" last-name first-names ))
       (t
        (format nil "~A" last-name))))))



(defun string/person (p)
  (let ((name (value-of 'name p)))
    (if name
      (string-for name)
      "no name" )))



(define-special-printing-routine-for-category   person
  :full
  ((let ((name (value-of 'name obj)))
     (if name
       (format stream "#<person ~A  ~A,~A>"
               (string-for name)
               (indiv-id obj) (indiv-uid obj))
       
       ;; else if there isn't a 'name', just give its ids
       (format stream "#<person \"\" ~A,~A>"
               (indiv-id obj) (indiv-uid obj)))))

  :short ((let ((name (value-of 'name obj)))
           (if name
             (format stream "#<~A>" (string-for name))
             (format stream "#<person ~A>"
                     (indiv-id obj))))))
