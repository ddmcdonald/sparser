;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "indicators"
;;;   Module:  "model;core:names:companies:coc:"   ;; categories of companies
;;;  version:  May 1991

(in-package :CTI-source)

;;;----------
;;; category
;;;----------

(def-category  category-of-company/proper-name)


;;;----------
;;; def form
;;;----------

(defun define-company-indicator (capitalized-string
                                 &key abbreviations
                                      always-full-caps )

  (let ((uc-word (resolve/make capitalized-string)))

    (unless always-full-caps
      (define-cfr c::category-of-company/proper-name `(,uc-word)
        :referent uc-word))
    
    (let ((fc-word (if always-full-caps
                     uc-word
                     (resolve/make (string-upcase capitalized-string)))))
      (define-cfr c::category-of-company/proper-name `(,fc-word)
        :referent uc-word))
    
    (when abbreviations
      (let ( abbrev-word cfr )
        (dolist (abbrev-string abbreviations)
          (setq abbrev-word (resolve/make abbrev-string))
          (setq cfr (define-cfr c::category-of-company/proper-name
                      `(,abbrev-word ,w::period)
                      :referent uc-word))
          (disable-cfr cfr)
          (install-word-as-abbreviation abbrev-word cfr))))))


(defun delete/Company-indicator (capitalized-string)
  ;; n.b. no provisions for deleting abbreviations or handling
  ;; the always-full-caps situation
  ;;
  (let ((uc-word (resolve capitalized-string))
        (fc-word (resolve (string-upcase capitalized-string))))
    (unless uc-word
      (error "No word with the pname ~A has been defined"
             capitalized-string))
    (let ((rule1
           (lookup/cfr/resolved c::category-of-company/proper-name
                                (list uc-word)))
          (rule2
           (lookup/cfr/resolved c::category-of-company/proper-name
                                (list fc-word))))
      (unless rule1
        (error "There is no rule that takes ~A into ~A"
               uc-word c::category-of-company/proper-name))
      (delete/cfr rule1)
      (delete/cfr rule2))))

