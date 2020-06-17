;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1998,2012-2020 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "printers"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   May 2020

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
  (print-unreadable-object (obj stream)
    (format stream "~a " (symbol-name (cfr-symbol obj)))
    (princ-rewrite-rule obj stream)))


;;;---------------
;;; rewrite rule
;;;---------------

(defun princ-rewrite-rule (cfr stream)
  (case (rule-type cfr)
    (:syntactic
     (princ-syntactic-cfr cfr stream))
    (:form
     (princ-form-rule cfr stream))
    (:context-sensitive
     (princ-csr cfr stream))
    (:polyword
     (princ-polyword-cfr cfr stream))
    (:semantic
     (princ-cfr cfr stream))
    (t (princ (format nil "unexpected type of rule: ~a"
                      (rule-type cfr))
              stream))))
   
#|  original -- notice protocol on the completion field
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
        (t (princ-cfr cfr stream)))  |#


(defun expression-for-rule (rule)
  "Express the rule as a list of left/righthand
   sides from which we can recover the rule by calling
   find-cfr, which takes expressions."
  (labels ((sparser-intern (symbol)
             (intern (symbol-name symbol) (find-package :sparser)))
           (princ-item (item)
             (etypecase item
               (category (sparser-intern (cat-symbol item)))
               (word (format nil "\"~a\"" (pname item)))
               (polyword (format nil  "\"~a\"" (pw-pname item)))
               (symbol (sparser-intern item)))))
    (let ((lhs (cfr-category rule))
          (rhs (cfr-rhs rule)))
      (ecase (rule-type rule)
        (:semantic
         (let ((lhs-term (princ-item lhs))
               (rhs-terms (loop for item in rhs
                             collect (princ-item item))))
           `(,lhs-term ,rhs-terms)))
        (:form
         (let* ((completion-field (cfr-completion rule))
                (head-edge (if (consp completion-field)
                             (car completion-field) ;; (:right-edge . #<ref-category COPULAR-PP>)
                             completion-field))
                (right? (eq head-edge :right-edge))
                (lhs-term (if right?
                            (princ-item (second rhs))
                            (princ-item (first rhs))))
                (rhs-terms (loop for item in rhs
                              collect (princ-item item))))
           `(,lhs-term ,rhs-terms)))
        (:syntactic
         (let* ((head-edge (cfr-completion rule))
                (right? (ecase head-edge (:right-edge t) (:left-edge nil)))
                (lhs-term (if right?
                            (princ-item (second rhs))
                            (princ-item (first rhs))))
                (rhs-terms (loop for item in rhs
                              collect (princ-item item))))
           `(,lhs-term ,rhs-terms)))
        (:context-sensitive
         (let ((lhs-term (princ-item lhs))
               (rhs-terms (loop for item in rhs
                             collect (princ-item item))))
           `(,lhs-term ,rhs-terms)))


        ))))
           


;;;--------------------
;;; the specific cases
;;;--------------------

;;------ vanila

(defun princ-cfr (cfr stream)
  "No type-specific orthographic marking"
  (etypecase (cfr-category cfr)
    (category (princ-category (cfr-category cfr) stream))
    (word     (princ-word   (cfr-category cfr) stream))
    (polyword (display-polyword (cfr-category cfr) stream))
    (symbol   (princ (cfr-category cfr) stream)))
  (write-string " →" stream)
  (let ((rhs (cfr-rhs cfr)))
    (if (typep rhs 'polyword)
      (then (write-string "\"" stream)
            (display-polyword rhs stream)
            (write-string "\"" stream))
      (dolist (item (cfr-rhs cfr))
        (write-string " " stream)
        (etypecase item
          (category (princ-category item stream))
          (word     (princ-word   item stream))
          (polyword (write-string "\"" stream)
                    (display-polyword item stream)
                    (write-string "\"" stream))
          (symbol   (princ (cfr-category cfr) stream)))))))

(defun princ-rule-term (term stream)
  (etypecase term
    (category (princ-category term stream))
    (word     (princ-word term stream))
    (polyword (display-polyword term stream))
    (symbol   (princ term stream))))


;;------ polyword

(defun princ-polyword-cfr (cfr stream)
  (etypecase (cfr-category cfr)
    (category (princ-category (cfr-category cfr) stream))
    (word     (princ-word   (cfr-category cfr) stream))
    (polyword (display-polyword (cfr-category cfr) stream)))
  (write-string " → " stream)
  (let ((polyword-string (pw-pname (get-tag :polyword cfr))))
    (write-char #\" stream)
    (write-string polyword-string stream)
    (write-char #\" stream)))


;;------- csr

(defun princ-csr (csr stream)
  (if (eq (car (cfr-completion csr))
          :right-daughter)
    (princ-right-context-csr csr stream)
    (princ-left-context-csr csr stream)))

(defun princ-left-context-csr (csr stream)
  (princ-rule-term (first (cfr-rhs csr)) stream)
  (write-string " → " stream)
  (princ-rule-term (cdr (cfr-completion csr)) stream)
  (write-string " / ___ " stream)
  (princ-rule-term (second (cfr-rhs csr)) stream))

(defun princ-right-context-csr (csr stream)
  (princ-rule-term (second (cfr-rhs csr)) stream)
  (write-string " → " stream)
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
    (write-string "} → " stream)
    (princ-rule-term (first (cfr-rhs cfr)) stream)
    (write-string " " stream)
    (princ-rule-term (second (cfr-rhs cfr)) stream)))


;;-------- syntactic rule

(defun princ-syntactic-cfr (cfr stream)
  (princ-rule-term (cfr-form cfr) stream)
  (write-string " → {" stream)
  (princ-rule-term (first (cfr-rhs cfr)) stream)
  (write-string " " stream)
  (princ-rule-term (second (cfr-rhs cfr)) stream)
  (write-string "}" stream))


;;;---------------------------------------
;;; rules with their multiplication keys
;;;---------------------------------------

(defun princ-rewrite-rule/multipliers (cfr stream)
  (princ-category (cfr-category cfr) stream)
  (write-string " →" stream)
  (dolist (item (cfr-rhs cfr))
    (write-string " " stream)
    (etypecase item
      (category (princ-category item stream))
      (word     (display-word   item stream))
      (polyword (display-polyword item stream)))))


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
      (if (digit-char-p c)
        (push c accumulating-digits)
        (return)))
    (coerce accumulating-digits 'string)))

(defun rule-number-string (rule)
  ;; Depends upon rule symbols always having the same
  ;; structure. Lifted from tts code
  ;; Removes "PSR-"
  (subseq (symbol-name (cfr-symbol rule)) 4))



(defgeneric rule-name (rule)
  (:documentation "Return the string created by from string-for-rule
 as an uppercase symbol interned in the sparser package.
 The rule-symbol function returns the short form of the rule as
 as symbol in the rule package (e.g. rule::psr-751), where the number
 is dependent on exactly when the rule was defined as the system was
 loaded. This function shows its rewrite form, e.g. |S → {NP VP}|.")
  (:method ((rule cfr))
    (intern (string-upcase (string-for-rule rule))
            (find-package :sparser))))



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

