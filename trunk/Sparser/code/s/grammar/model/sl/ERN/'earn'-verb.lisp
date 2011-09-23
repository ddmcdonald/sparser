;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "'earn' verb"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  December 1995

;; initiated 12/26/95.

(in-package :sparser)

#|  The verb "earn" is different from most of the others in that it folds the
 identity of the financial-datum into the verb itself.  My (weak) intution
 is that there aren't many of these, so my inclination is to do them by hand
 rather than create a category and autodefinition capability so that they
 could be done directly from the workbench.  |#


(define-category  verb-embodying-a-fin-dat
  :specializes nil
  :instantiates self
  :binds ((datum . financial-data))
  :index (:permanent :key datum))



(defun define-verb-directly-incorporating-a-fin-dat (string
                                                     string-naming-fin-dat)

  (let ((fin-dat (find-individual 'financial-data
                   :name string-naming-fin-dat)))
    (unless fin-dat
      (break "No kind of financial-data has been defined that has ~
              the name~%   ~A~%" string-naming-fin-dat))

    (let ((obj-for-verb (define-individual 'verb-embodying-a-fin-dat
                          :datum fin-dat)))
 
      (let ((word (resolve-string-to-word/make string)))
             
        (make-verb-rules word
                         category::verb-embodying-a-fin-dat 
                         obj-for-verb)

        (values obj-for-verb word)))))


;;--- case
(define-financial-datum "earnings")
(define-verb-directly-incorporating-a-fin-dat "earned" "earnings")


;;--- rules

(def-cfr earned-amount (verb-embodying-a-fin-dat money)
  :form vp
  :referent (:instantiate-individual financial-data-with-value
             :with (datum left-edge)
                   (value right-edge)))


(def-cfr financial-report (company earned-amount)
  :form s
  :referent (:instantiate-individual financial-report
             :with (company left-edge)
                   (datum right-edge)))

