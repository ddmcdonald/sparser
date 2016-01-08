;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "forms"
;;;   Module:  "model forms;acts:arg str:"
;;;  version:  1.0  May 1991

;; initiated 3/6, added nominalization case 3/7, added bracket 5/1

(in-package :CTI-source)

#|  A possibly convenient special form for doing the grunt work that
comes with assigning verb forms to the subcategorization frames. |#


(defparameter *assigned-verbs* nil
  "An alist of ( <word> . ( <category> . <rule> ))
   Possibly a convenient table for display, etc..")


;;;--------------------------------------------
;;; syntactic sugar for the call to Define-cfr
;;;--------------------------------------------

(defun setup-&-assign-subcategorization (string-for-verb
                                         category-symbol
                                         form-category-symbol
                                         referent-object)
  (when (listp string-for-verb)
    (setq category-symbol (second string-for-verb))
    (setq string-for-verb (first string-for-verb)))

  (let ((verb          (resolve/make string-for-verb))
        (category      (resolve/make category-symbol))
        (form-category (resolve/make form-category-symbol)))

    (assign-bracket/expr verb ].verb)
    (assign-subcategorization verb category form-category referent-object)))


(defun assign-subcategorization (verb category form-category referent)
  (let ((rule (define-cfr category (list verb)
                :form form-category
                :referent referent))
        (entry (assoc verb *assigned-verbs*)))
    
    #|(if entry    ;; 5/20 removing deletion provision because it
                   ;; can take other meanings of the word unbeknownst
                   ;; e.g. for "head"
      (then ;; it's a redefinition
        (let ((old-rule (cdr (cdr entry))))
          (delete/cfr old-rule))
        (rplacd (cdr entry) rule))
      (else
        (push `(,verb . (,category . ,rule))
              *assigned-verbs*)))|#
    rule ))


;;;---------------------------------------
;;; a form to cover the whole conjugation
;;;---------------------------------------

(defun verb-assignments (referent default-category
                         &key infinitive
                              tensed/singular tensed/plural
                              past-participle present-participle
                              nominalization
                         &aux rules )
  (when infinitive
    (push (setup-&-assign-subcategorization
           infinitive default-category 'mvb referent)
          rules))

  (when tensed/singular
    (push (setup-&-assign-subcategorization
           tensed/singular default-category 'mvb+present referent)
          rules))

  (when tensed/plural
    (push (setup-&-assign-subcategorization
           tensed/plural default-category 'mvb+present+plural referent)
          rules))

  (when past-participle
    (push (setup-&-assign-subcategorization
           past-participle default-category 'mvb+ed referent)
          rules))

  (when present-participle
    (push (setup-&-assign-subcategorization
           present-participle default-category 'mvb+ing referent)
          rules)

    ;; These can occur sentence-initial, so we include the capitalized
    ;; version
    (push (setup-&-assign-subcategorization
           (string-capitalize present-participle)
           default-category 'mvb+ing referent)
          rules))

  (when nominalization
    (push (setup-&-assign-subcategorization
           nominalization 'nominalization/person 'mvb/nominalized referent)
          rules))

  rules)

