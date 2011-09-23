;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "title lambdas"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  March 1991      system version 1.8.1

;; 3/25 wrote Extract-title-from-composite

(in-package :CTI-source)


(defun replace-rightmost-title (c      ;;a composite
                                title) ;;the replacement
  ;; returns the containing object
  (let ((former-title
         (case (cat-symbol (first c))
           (category::title+status
            (find/title_in_title+status c))
           (category::plural-title
            (last-item-in-plural c))
           (category::title+company
            (second c))
           (otherwise
            (break "New category for composite containing a ~
                    title: ~A" (first c))))))

    (if (composite? former-title)
      (replace-rightmost-title former-title title)
      (case (cat-symbol (first c))
        (category::title+status
         (replace/title_in_title+status c title))
        (category::plural-title
         (replace/last-item-in-plural c title))
        (category::title+company
         (replace-first-element-of-composite c title))
        (otherwise
         (break "New case for replacing a composite title: ~A"
                (first c)))))

    c ))


(defun extract-title-from-composite (title-composite)
  (etypecase title-composite
    (title title-composite)
    (list
     (unless (composite? title-composite)
       (error "Object passed to Extract-title-from-composite ~
               isn't a composite:~%  ~A" title-composite))
     (case (cat-symbol (first title-composite))
       (category::title+status
        (extract-title-from-composite (second title-composite)))
       (category::plural-title  title-composite)
       (category::title+company
        (extract-title-from-composite (second title-composite)))
       (otherwise
         (break "New case for extracting the title from a composite: ~A"
                (first title-composite)))))))

