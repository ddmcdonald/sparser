;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1995,2013-2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "printing"
;;;   Module:  "model;core:names:"
;;;  version:  0.2 February 2014

;; initiated 2/1/94 v2.3, breaking the special fns out of specific files
;; (4/5) stubbed a generic printer.  10/3 added string-printers
;; 0.1 (1/25/95) gated the routine for initials.
;;     (2/28) added case for uncategorized names.
;;     (6/7/13) Tweaking for adjustments over the years. 7/4/13 more.
;; 0.2 (2/6/14) Found duplication in treatment of names that are individuals
;;      in print-individual-with-name so consolidating them here in one
;;      string-for routine. 

(in-package :sparser)

(defun string-for/name (n)
  ;; Called from String-for as a generic catch for any individual
  ;; that binds a slot called 'name' Returns a string
  (let ((w/pw (or (value-of 'name n) ;; normal name-is-a-word case
                  (value-of 'name/s n)))) ;; for name-is-a-name-object case
    (unless w/pw
      (error "The object ~a should should have a 'name' binding ~
             but doesn't.~%Probably an issue with the caller." n))
    (typecase w/pw
      (word (word-pname w/pw))
      (polyword (pw-pname w/pw))
      (individual
       (string-for/name/individual w/pw))
      (otherwise
       (push-debug `(,n ,w/pw))
       (format t "String-for/name -- new type: ~A~%" (itype-of w/pw))
       "" ))))


(defun string-for/name/individual (name)
  ;; Caller has to know this is an individual
  (case (cat-symbol (itype-of name))
    (category::name-word 
     (string/name-word name))
    (category::uncategorized-name
     (string/uncategorized-name name))
    (category::sequence ;; upstream should catch this quicker
     (string/sequence name))
             
    ((category::person-name/first-last
      category::person-name)
     (let ((string (string/person-name name)))
       (format nil "~a" string)))
    (category::name-of-location
     (let ((seq (value-of 'sequence name category::name-of-location)))
       (string/sequence seq)))
 
    (otherwise
     (push-debug `(,name))
     (format t "~&New type of name individual: ~a~%" (itype-of name))
     "")))


;;--- Name Words

(define-special-printing-routine-for-category  name-word
  :full ((write-string "#<name-word " stream)
         (princ-word (value-of 'name obj) stream)
         (write-string ">" stream))
  :short ((write-string "#<" stream)
          (princ-word (value-of 'name obj) stream)
          (write-string ">" stream))
  :string ((word-pname (value-of 'name obj))))

(defun string/name-word (nw)
  (let ((word (value-of 'name nw)))
    (if word
      (word-pname word)
      "")))

;;--- single capitalized letters

(define-special-printing-routine-for-category  single-capitalized-letter
  :full ((write-string "#<single-capitalized-letter " stream)
         (princ-word (value-of 'letter obj) stream)
         (write-string ">" stream))

  :short ((write-string "#<" stream)
          (princ-word (value-of 'letter obj) stream)
          (write-string ">" stream)))

(defun string/single-capitalized-letter (scl)
  (word-pname (value-of 'letter scl)))


;;--- initials

(when *initials*
  (define-special-printing-routine-for-category  initial
    :full ((write-string "#<initial " stream)
           (princ-word (value-of 'word obj) stream)
           (write-string "." stream)
           (write-string ">" stream))
    
    :short ((write-string "#<\"" stream)
            (write-string (word-pname (value-of 'word obj)) stream)
            (write-string "." stream)
            (write-string "\">" stream))))

(defun string/initial (i)
  (word-pname (value-of 'word i)))


;;--- uncategorized names

(define-special-printing-routine-for-category  uncategorized-name
  :full   ((write-string "#<uncategorized-name " stream)
           (write-string (string/sequence
                          (value-of 'name/s obj)) stream)
           (write-string ">" stream))
  :short  ((format stream "#<~A>"
                   (string/sequence (value-of 'name/s obj)))))

(defun string/uncategorized-name (ucn)
  (string/sequence (value-of 'name/s ucn)))
  
