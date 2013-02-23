;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "obj specific printers"
;;;   Module:  "model;core:collections:"
;;;  version:  0.1 April 1995

;; initiated 6/10/93 v2.3.  Moved in the generic routines 2/28/95
;; 0.1 (4/13) tweeked string/sequence to notice a null argument. 
;;     (5/22) tweeking collection

(in-package :sparser)

;;;------------------
;;; generic printers
;;;------------------

(define-special-printing-routine-for-category  sequence
  :full ((let ((*print-short* t))
           (write-string "#<sequence " stream)
           (format stream "~A " (indiv-id obj))
           (dolist (item (value-of 'items obj))
             (format stream "~A " item))
           (format stream "~A>" (indiv-id obj))))

  :short ((let ((*print-short* t))
            (write-string "#<" stream)
            (format stream "~A ...>"
                    (first (value-of 'items obj))))))


(define-special-printing-routine-for-category  collection
  ;; itentical to that of sequence
  :full ((let ((*print-short* t))
           (write-string "#<collection " stream)
           (dolist (item (value-of 'items obj))
             (format stream "~A " item))
           (format stream "~A>" (indiv-id obj))))

  :short ((let ((*print-short* t))
            (write-string "#<" stream)
            (format stream "~A ...>"
                    (first (value-of 'items obj))))))


(defun string/sequence (s)
  (if (null s)
    "nil"
    (else
      (unless (itype s 'sequence)
        (break "Argument isn't a sequence:~%   ~A" s))
      (let* ((items (value-of 'items s))
             (string (string-for (first items))))
        (dolist (item (rest items))
          (setq string (concatenate 'string
                                    string " "))
          (setq string (concatenate 'string
                                    string (string-for item))))
        string ))))



;;;--------------
;;; special case
;;;--------------

(defun print-collection-of-name-items (c stream)
  (let ((items (value-of 'items c))
        type  string )
    (dolist (item items)
      (setq type (first (indiv-type item)))
      (case (cat-symbol type)
        (name-word
         (setq string (word-pname
                       (value-of 'name item))))
        (initial
         (setq string (word-pname
                       (value-of 'word item))))
        (otherwise
         (setq string "#<>")
         (format t "~&~%New type of item in collection of name ~
                    items:~%  ~A~%   ~A~%" type item)))

      (write-string string stream)
      (write-char #\space stream))))

