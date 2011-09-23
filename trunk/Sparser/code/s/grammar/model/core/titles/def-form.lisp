;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "def form"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  May 1991      system version 1.8.5

(in-package :CTI-source)

;;;------------------
;;; finer categories
;;;------------------

(def-category  title/caps        :lattice-position :non-terminal)
(def-category  title/caps/plural :lattice-position :non-terminal)
(define-category  title/plural)

;;;--------------
;;; instantiator
;;;--------------

(defun define-title (string
                     &key real-name synonyms plural)

  (let ((name (resolve/make (or real-name string)))
        title  rules synonym-word)
    (if (setq title (find/title name))
      title
      (else
        (setq title (make-title :name name))

        (if real-name
          (then (push real-name synonyms)
                (push string synonyms))
          (make-rule/title string name title nil))

        (when plural
          (let ((plural-name (when plural (resolve/make plural))))
            (make-rule/title plural plural-name title t)))
        
        (when synonyms
          (dolist (synonym synonyms)
            (if (stringp synonym)
              (then (setq synonym-word (resolve/make synonym))
                    (make-rule/title synonym synonym-word title nil))
              (else
                (break/debug "non-string synonym to a title")
                (push (define-cfr category::title
                        (mapcar #'resolve/make synonym)
                        :referent title)
                      rules)))))
        
        (setf (title-rules title) rules)
        (index/title name title)
        title ))))


(defun make-rule/title (string name title plural?)
  (let ((word-list (tokens-in-short-string/no-whitespace string)))
    (if (cdr word-list)
      (make-polyword-rule/title
       word-list string name title plural?)
      (make-single-word-rule/title
       (first word-list) string title plural?))))


(defun make-single-word-rule/title (lc-word string title plural?)
  (let ((uc-word (define-word (string-capitalize string)))
        (fc-word (define-word string)))
    (if plural?
      (then
        (list
         (define-cfr category::title/plural `(,lc-word)
           :referent title)
         (define-cfr category::title/caps/plural `(,uc-word)
           :referent title)
         (define-cfr category::title/caps/plural `(,fc-word)
           :referent title) ))
      (else
        (list
         (define-cfr category::title `(,lc-word)
           :referent title)
         (define-cfr category::title/caps `(,uc-word)
           :referent title)
         (define-cfr category::title/caps `(,fc-word)
           :referent title) )))))


(defun make-polyword-rule/title (word-list string name title plural?)
  ;; /// have to make polywords in all the variant patterns
  (let ((rules
         (list (define-cfr category::title  `(,name)
                 :referent title)  )))
    rules ))

