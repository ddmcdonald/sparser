;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1995,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "printing"
;;;   Module:  "model;core:names:"
;;;  version:  0.1 June 2013

;; initiated 2/1/94 v2.3, breaking the special fns out of specific files
;; (4/5) stubbed a generic printer.  10/3 added string-printers
;; 0.1 (1/25/95) gated the routine for initials.
;;     (2/28) added case for uncategorized names.
;;     (6/7/13) Tweaking for adjustments over the years

(in-package :sparser)

(defun string-for/name (n)
  ;; Called from String-for as a generic catch for any individual
  ;; that binds a slot called 'name' Returns a string
  (let ((w/pw (value-of 'name n)))
    (typecase w/pw
      (word (word-pname w/pw))
      (polyword (pw-pname w/pw))
      (individual
       (case (cat-symbol (itype-of w/pw))
         (category::name-word (string/name-word w/pw))
         (category::uncategorized-name
          (string/uncategorized-name w/pw))
         (otherwise
          (push-debug `(,n ,w/pw))
          (error "Unexpected type of individual for a name: ~a~%~a"
                 (type-of w/pw) w/pw))))
      (otherwise
       (format t "String-for/name -- new type: ~A~%" (itype-of n))
       "" ))))


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
  
