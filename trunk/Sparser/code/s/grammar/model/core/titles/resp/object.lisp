;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "responsibilities"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  February 1991      system version 1.8.1

;; initiated 2/13

(in-package :CTI-source)



;;;--------
;;; object
;;;--------

(define-category  responsibility )
;  :slots ((name word)
;  :index (:hash-on-slot name))

(defstruct (responsibility
            (:print-function print-responsibility-structure))
  rules name )


(defun print-responsibility-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<responsibility " stream)
  (princ-word (responsibility-name obj) stream)
  (write-string ">" stream))

(defun display-responsibility (responsibility stream)
  (display-word (responsibility-name responsibility) stream))

;;;------------
;;; ancilaries
;;;------------

(setf (cat-index (category-named 'category::responsibility))
      (make-index/hash-on-slot))

(defun find/responsibility (word)
  (gethash word (cat-index (category-named/c-symbol
                            'category::responsibility))))

(defun responsibility-named (string)
  (let ((word (resolve-string-to-word string)))
    (find/responsibility word)))

(defun index/responsibility (word responsibility)
  (setf (gethash word (cat-index (category-named/c-symbol
                                  'category::responsibility)))
        responsibility))

(defun all-responsibilitys ()
  (let ( accumulating-responsibilitys )
    (maphash #'(lambda (word responsibility)
                 (declare (ignore word))
                 (push responsibility
                       accumulating-responsibilitys))
             (cat-index (category-named/c-symbol
                         'category::responsibility)))
    accumulating-responsibilitys))


(defun list-the-responsibilitys ()
  (let ((the-responsibilitys (all-responsibilitys)))
    (pl (sort the-responsibilitys
              #'word-order :key #'responsibility-name)
        nil)))


(defun delete-responsibility (string)
  (let* ((word (word-named string))
         (responsibility (find/responsibility word)))
    (unless responsibility
      (error "There is no responsibility named ~A" string))
    (delete/responsibility responsibility word)))

(defun delete/responsibility (responsibility
                              &optional
                              (word (responsibility-name
                                           responsibility)) )
  ;; delete the rules that invoke it
  (dolist (rule (responsibility-rules responsibility))
    (delete-cfr/cfr rule))
  ;; strand it -- remove it from the catalog
  (remhash word (cat-index (category-named/c-symbol
                            'category::responsibility)))
  responsibility )


;;;---------------
;;; defining form
;;;---------------


(defun define-responsibility (string)

  (let ((word (resolve/make string))
        responsibility )

    (if (setq responsibility (find/responsibility word))
      responsibility
      (else
        (setq responsibility (make-responsibility
                      :name word))
        (let ( rules )
          (push (define-cfr category::responsibility `( ,word )
                  :form category::NP-head
                  :referent responsibility)
                rules)
          (setf (responsibility-rules responsibility) rules))

        (index/responsibility word responsibility)
        responsibility ))))

