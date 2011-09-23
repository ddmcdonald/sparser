;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "printing"
;;;   Module:  "model;core:names:"
;;;  version:  0.1 February 1995

;; initiated 2/1/94 v2.3, breaking the special fns out of specific files
;; (4/5) stubbed a generic printer.  10/3 added string-printers
;; 0.1 (1/25/95) gated the routine for initials.
;;     (2/28) added case for uncategorized names

(in-package :sparser)


(defun try-PRINCing-name (name stream object-index)
  ;; called from print-individual-with-name when the name binding
  ;; of the individual is neither a word nor a polyword.
  ;; We look to see if we have a special printer with a 'princ'
  ;; value for this type of name (we're printing within a #<> for
  ;; the individual with this name, so full and short versions
  ;; would be too cluttered), otherwise we print the object's
  ;; index.
  (declare (ignore name)) ;; stub
  (princ object-index stream))


(define-special-printing-routine-for-category  name-word
  :full ((write-string "#<name-word " stream)
         (princ-word (value-of 'name obj) stream)
         (write-string ">" stream))
  :short ((write-string "#<" stream)
          (princ-word (value-of 'name obj) stream)
          (write-string ">" stream))
  :string ((word-pname (value-of 'name obj))))

(defun string/Name-Word (nw)
  (let ((word (value-of 'name nw)))
    (if word
      (word-pname word)
      "")))


(define-special-printing-routine-for-category  single-capitalized-letter
  :full ((write-string "#<single-capitalized-letter " stream)
         (princ-word (value-of 'letter obj) stream)
         (write-string ">" stream))

  :short ((write-string "#<" stream)
          (princ-word (value-of 'letter obj) stream)
          (write-string ">" stream)))

(defun string/single-capitalized-letter (scl)
  (word-pname (value-of 'letter scl)))



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



(define-special-printing-routine-for-category  uncategorized-name
  :full   ((write-string "#<uncategorized-name " stream)
           (write-string (string/sequence
                          (value-of 'name/s obj)) stream)
           (write-string ">" stream))
  :short  ((format stream "#<~A>"
                   (string/sequence (value-of 'name/s obj)))))

(defun string/uncategorized-name (ucn)
  (string/sequence (value-of 'name/s ucn)))
  
