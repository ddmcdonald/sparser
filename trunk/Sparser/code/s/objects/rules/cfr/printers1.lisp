;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1998,2012-2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "printers"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   1.5 May 2014

;; 1.1 (5/2/92 v2.2) Added short-forms
;; 1.2 (9/3 v2.3) added cases for referential categories and (9/7) for
;;      mixin categories
;; 1.3 (10/12) added case for form rules
;;     (6/15/93) tweeked it.
;; 1.4 (12/1/94) adjusted the menu version to new menu treatment
;; 1.5 (6/20/95) made the menu printer sensitive to the version in the grammar menu
;;     (2/14/98) added symbol case to Princ-rule-term so it could be used 
;;      for the cases in tree families. (3/16/12) quiet the compiler
;;     (5/16/14) cleaned up some ecases. 

(in-package :sparser)

;;;-----------------
;;; the structure
;;;-----------------

(defun print-cfr-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<" stream)
  (write-string (symbol-name (cfr-symbol obj)) stream)
  (write-string "  " stream)
  (princ-rewrite-rule obj stream)
  (write-string ">" stream))


(defun print-cfr-structure/just-symbol (obj stream depth)
  (declare (ignore depth))
  (write-string "#<" stream)
  (write-string (symbol-name (cfr-symbol obj)) stream)
  (write-string ">" stream))


;;;---------------
;;; rewrite rule
;;;---------------

(defun princ-rewrite-rule (cfr stream)
  (cond ((cfr-completion cfr)
         (let ((completion-field (cfr-completion cfr)))
           (etypecase completion-field
             (list (if (keywordp (car completion-field))
                     (ecase (car completion-field)
                       ((:left-daughter :right-daughter)
                        (princ-csr cfr stream))
                       ((:left-edge :right-edge)
                        (princ-form-rule cfr stream)))
                     (princ-csr cfr stream)))
             (keyword (princ-form-rule cfr stream)))))
        ((member :polyword (cfr-plist cfr))
         (princ-polyword-cfr cfr stream))
        ((nary-rule cfr)
         (princ-nary-cfr cfr stream))
        (t (princ-cfr cfr stream))))


;;;--------------------
;;; the specific cases
;;;--------------------

;;------ vanila

(defun princ-cfr (cfr stream)
  (typecase (cfr-category cfr)
    ((or category referential-category mixin-category)
     (princ-category (cfr-category cfr) stream))
    (word     (princ-word   (cfr-category cfr) stream))
    (polyword (display-polyword (cfr-category cfr) stream))
    (otherwise
     (push-debug `(,(cfr-category cfr)))
     (error "Unexpected type of lhs of cfr while printing")))
  (write-string " -> " stream)
  (let ((rhs (cfr-rhs cfr)))
    (if (typep rhs 'polyword)
      (then (write-string "\"" stream)
            (display-polyword rhs stream)
            (write-string "\"" stream))
      (dolist (item (cfr-rhs cfr))
        (write-string " " stream)
        (typecase item
          ((or category referential-category mixin-category)
           (princ-category item stream))
          (word     (princ-word   item stream))
          (polyword (write-string "\"" stream)
                    (display-polyword item stream)
                    (write-string "\"" stream))
          (otherwise
           (push-debug `(,item)) ; 
           (error "Unexpected item in rhs of cfr while printing")))))))

(defun princ-rule-term (term stream)
  (typecase term
    ((or category referential-category mixin-category)
     (princ-category term stream))
    (word     (princ-word term stream))
    (polyword (display-polyword term stream))
    (symbol (princ term stream))
    (otherwise
     (push-debug `(,term))
     (error "unexpected kind of term while printing"))))


;;------ polyword

(defun princ-polyword-cfr (cfr stream)
  (etypecase (cfr-category cfr)
    ((or category referential-category mixin-category)
     (princ-category (cfr-category cfr) stream))
    (word     (princ-word   (cfr-category cfr) stream))
    (polyword (display-polyword (cfr-category cfr) stream)))
  (write-string " -> " stream)
  (let ((polyword-string
         (pw-pname (cadr (member :polyword (cfr-plist cfr))))))
    (write-char #\" stream)
    (write-string polyword-string stream)
    (write-char #\" stream)))



;;------ n-ary

(defun princ-nary-cfr (cfr stream)
  ;; copied from Princ-cfr except for where the rhs comes form
  (princ-rule-term (cfr-category cfr) stream)
  (write-string " -> " stream)
  (dolist (item (original-rhs-of-nary-rule cfr))
    (write-string " " stream)
    (princ-rule-term item stream)))



;;------- csr

(defun princ-csr (csr stream)
  (if (eq (car (cfr-completion csr))
          :right-daughter)
    (princ-right-context-csr csr stream)
    (princ-left-context-csr csr stream)))

(defun princ-left-context-csr (csr stream)
  (princ-rule-term (first (cfr-rhs csr)) stream)
  (write-string " -> " stream)
  (princ-rule-term (cdr (cfr-completion csr)) stream)
  (write-string " / ___ " stream)
  (princ-rule-term (second (cfr-rhs csr)) stream))

(defun princ-right-context-csr (csr stream)
  (princ-rule-term (second (cfr-rhs csr)) stream)
  (write-string " -> " stream)
  (princ-rule-term (cdr (cfr-completion csr)) stream)
  (write-string " / " stream)
  (princ-rule-term (first (cfr-rhs csr)) stream)
  (write-string " ___" stream))


;;-------- form rule

(defun princ-form-rule (cfr stream)
  (let ((propagated-edge (cfr-completion cfr)))
    (write-string "{" stream)
    (if (eq propagated-edge :left-edge)
      (princ-rule-term (first (cfr-rhs cfr)) stream)
      (princ-rule-term (second (cfr-rhs cfr)) stream))
    (write-string "} -> " stream)
    (princ-rule-term (first (cfr-rhs cfr)) stream)
    (write-string " " stream)
    (princ-rule-term (second (cfr-rhs cfr)) stream)))



;;;---------------------------------------
;;; rules with their multiplication keys
;;;---------------------------------------

(defun princ-rewrite-rule/multipliers (cfr stream)
  (princ-category (cfr-category cfr) stream)
  (write-string " -> " stream)
  (dolist (item (cfr-rhs cfr))
    (etypecase item
      (category (princ-category item stream))
      (word     (display-word   item stream))
      (polyword (display-polyword item stream)))
    (write-string " " stream)))


;;;----------------------
;;; doing whole Catalogs
;;;----------------------

(defun display-all-cfrs (&optional (stream *standard-output*))
  (declare (special *context-free-rules-defined*))
  (dolist (cfr *context-free-rules-defined*)
    (terpri stream)
    (format stream "~A  " (rule-number/cfr cfr))
    (princ-rewrite-rule cfr stream))
  '*context-free-rules-defined*)

(export 'Display-all-cfrs)


(defun rule-number/cfr (cfr)
  (final-numbers-in-string (symbol-name (cfr-symbol cfr))))

(defun final-numbers-in-string (string)
  (let ( accumulating-digits )
    (dolist (c (nreverse (coerce string 'list)))
      (if (digit-character c)
        (push c accumulating-digits)
        (return)))
    (coerce accumulating-digits 'string)))


;;;--------------------------
;;; reduced length for menus
;;;--------------------------

(defparameter *max-length-of-rule-in-menu* 45
  "If a rule is to be printed in a menu and its pname is longer
   than this, then it is truncated.")

(defun string-for-rule (r)
  (with-output-to-string (string-stream)
    (princ-rewrite-rule r string-stream)))

(defun string-for-rule/short (r)
  (let* ((string (string-for-rule r))
         (length (length string)))
    (if (> length *max-length-of-rule-in-menu*)
      (subseq string 0 *max-length-of-rule-in-menu*)
      string)))

(defun print-short-rule (r  &optional (stream *standard-output*))
  (let ((string (string-for-rule/short r)))
    (write-string string stream)))


(defun print-for-menu/cfr (r  &optional (stream *standard-output*))
  (declare (special *cfr-selection-dialog*))
  (let ((*max-length-of-rule-in-menu*
         (if *cfr-selection-dialog*
           75
           50)))
    (print-short-rule r stream)))

