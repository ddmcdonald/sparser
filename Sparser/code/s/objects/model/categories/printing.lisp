;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-2005,2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "printing"
;;;   Module:  "objects;model:categories:"
;;;  version:  August 2021

;; print routines grouped 8/12/94. Added string/category 4/19/95
;; Added case for subtypes 2/7/05.
;; Added string/object 7/6/09, modified through 8/13/09.

(in-package :sparser)


(defmethod pname ((c category))
  (pname (cat-symbol c)))


;;;-------------------------------
;;; print routines for categories
;;;-------------------------------

(defun print-model-category-structures (c stream depth)
  (declare (ignore depth))
  (write-string "#<model-category " stream)
  (write-string (symbol-name (cat-symbol c)) stream)
  (write-string ">" stream))

(defun print-ref-category-structures (c stream depth)
  (declare (ignore depth))
  (write-string "#<ref-category " stream)
  (write-string (symbol-name (cat-symbol c)) stream)
  (write-string ">" stream))

(defun print-subtype-category-structures (c stream depth)
  (declare (ignore depth))
  (write-string "#<subtype-category " stream)
  (write-string (symbol-name (cat-symbol c)) stream)
  (write-string ">" stream))

(defun print-mixin-category-structures (c stream depth)
  (declare (ignore depth))
  (write-string "#<mixin " stream)
  (write-string (symbol-name (cat-symbol c)) stream)
  (write-string ">" stream))


(defun string/category (c)
  (string-downcase (symbol-name (cat-symbol c))))

(defun string/object (o)
  (string-downcase (symbol-name (var-name o))))

(defun string/object-as-list (o)
  (list (string-downcase (symbol-name (var-name o)))))


;;;-----------------------------------
;;; pretty print a full category form
;;;-----------------------------------

(defun pprint-category-form (form &optional (stream *standard-output*))
  "Given the category definition as an sexp, write it to the stream
   using reasonable indenting"
 #| Raw output from make-category-form-for-a-noun
  (define-category ox :instantiates :self :specializes endurant :mixins
                   (comlex-noun) :realization (:common-noun "ox" :plural "oxen")) |#
  (let ((operator (car form)) ; could be define-adjective
        (name (second form))
        (parameters (cddr form)))
    (format stream "~&~%(~a" operator)
    (if (stringp name) ; define-adjective
      (format stream " ~s" name)
      (format stream " ~a" name))
    
    (do ((parameter (first parameters) (first rest))
         (value (second parameters) (second rest))
         (rest (cddr parameters) (cddr rest)))
        ((null parameter))
      (if (eq parameter :realization)
        (pprint-realization-form value stream)
        (else
          (format stream "~&~2T:~a " parameter)
          (pprint-rterm value stream))))
    (write-string ")" stream)
    form))

(defun pprint-realization-form (data-alist stream)
  "Have to pay attention to keywords and strings as such since ~a will
   drop them"
  ;; e.g. :realization (:common-noun "ox" :plural "oxen"))
  (format stream "~&~2T:realization (")
  (do ((key (first data-alist) (first rest))
       (value (second data-alist) (second rest))
       (rest (cddr data-alist) (cddr rest))
       (first? t nil))
      ((null key))
    (if first?
      (format stream ":~a " key)
      (format stream "~&~12T:~a " key))
    (pprint-realization-value-form value stream))
  (format stream ")"))

(defun pprint-realization-value-form (value stream)
  "Walk through the terms in the realization form.
   We do the walking here, pprint-rterm does the actual printing"
  (let ((index 0))
    (typecase value
      (string (pprint-rterm value stream))
      (list (write-string "(" stream)            
            (loop for element in value
               do (progn
                    (pprint-rterm element stream)
                    (write-string " " stream)
                    (incf index)
                    (when (>= index 3)
                      (format stream "~&~15T")
                      (setq index 0))))
            (write-string ")" stream))
      (otherwise (break "realization value ~a~%is a ~a"
                        value (type-of value))))))

(defun pprint-rterm (term stream)
  (typecase term
    (string (format stream "~s" term))
    (keyword (format stream ":~a" term))
    (symbol (format stream "~a" term))
    (cons ;; present-participle of "equal" -- (equalling equaling)
     (let ((count (length term)))
       (write-string "(" stream)
       (dotimes (i count)
         (pprint-rterm (nth i term) stream)
         (write-string " " stream))
       (write-string ")" stream)))
    (otherwise (break "realization term ~a~%is a ~a"
                      term (type-of term)))))

;;;-----------------------------------
;;; print routines for cat-operations
;;;-----------------------------------

(defun print-operations-data-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<operations for " stream)
  (princ-category (cat-ops-category obj) stream)
  (write-string ">" stream))

;;;-----------------------------------------------
;;; printing the rules associated with a category
;;;-----------------------------------------------

(defmethod display-rules ((category-name symbol)
                          &optional (stream *standard-output*))
  (display-rules (category-named category-name :break) stream))

(defmethod display-rules ((category category)
                          &optional (stream *standard-output*))
  (let ((rules (collect-rules category)))
    (when rules
      (format stream "~&The phrase-structure rules for ~a are~%"
              (cat-symbol category))
      (format stream "~{~&   ~a~%~}" rules))))


(defmethod collect-rules ((i individual))
  (scrape-rules-out-of-property-list (indiv-plist i)))

(defmethod collect-rules ((c category))
  (scrape-rules-out-of-property-list (cat-plist c)))

(defun scrape-rules-out-of-property-list (plist)
  (let ((rule-blocks (loop for element on plist
                       as tag = (car element)
                       as value = (cadr element)
                       when (eq tag :rules)
                       collect value)))
    (apply #'append rule-blocks)))


