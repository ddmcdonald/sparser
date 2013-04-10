;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2012-2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "articles"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  January 2013

;; initiated 10/25/92 w/ mixin.  Given some content 5/17/95.  Added np cases
;; 4/1/05. Added common-noun 4/12/09. 10/14/12 Removed the 'that' rules 
;; because they preempt relative clause interpretation. 1/30/13 Added 
;; the+proper-name. 

(in-package :sparser)

;;;----------
;;; category
;;;----------

;; The categories indefinite, definite, and possessive are defined
;; as mixin's in /rules/tree-families/NP.lisp because that file
;; loads before this one.


(defun mark-instance-indefinite (arg)
  ;; See hack in record-any-determiner
  (push-debug `(,arg)) (break "indefinite stub"))


(define-lambda-variable 'has-determiner nil category::det)

;; too fine grained?
(define-lambda-variable 'definite nil category::definite)
(define-lambda-variable 'indefinite nil category::indefinite)


;;/// this should be checked with treatments in tree-families/NP

;; See pattern in rules/syntax/categories
;; and consumer in record-any-determiner
(defvar *indefinite-determiners* nil
  "Holds list of all the indefinite article words")
(defvar *definite-determiners* nil
  "Holds list of all the definite article words")
(defun populate-in/definite-articles ()
  (setq *indefinite-determiners*
        (mapcar #'word-named '("a" "an")))
  (setq *definite-determiners*
        ;; the other candiates are somewhat problematic
        (mapcar #'word-named '("the"))))

(defun definite-determiner? (word)
  (unless *indefinite-determiners* (populate-in/definite-articles))
  (memq word *definite-determiners*))
(defun indefinite-determiner? (word)
  (unless *indefinite-determiners* (populate-in/definite-articles))
  (memq word *indefinite-determiners*))

(defun determiner? (word)
  (or (definite-determiner word)
      (indefinite-determiner word)))


;;;------------
;;; form rules
;;;------------

;;--- a/an

(def-form-rule ("a" common-noun)
  :form np
  :referent (:daughter right-edge ;; fn not going into referent
         ;;    :function (mark-instance-indefinite right-edge))
                       ))

(def-form-rule ("an" common-noun)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("a" np-head)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("an" np-head)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("a" n-bar)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("an" n-bar)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("a" np)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("an" np)
  :form np
  :referent (:daughter right-edge))


;;--- the

(def-form-rule ("the" common-noun)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("the" np-head)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("the" n-bar)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("the" np)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("the" proper-name)
  :form proper-name
  :referent (:daughter right-edge))


;;--- this

(def-form-rule ("this" common-noun)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("this" np-head)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("this" n-bar)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("this" np)
  :form np
  :referent (:daughter right-edge))


;;--- that

;; (def-form-rule ("that" common-noun)
;;   :form np
;;   :referent (:daughter right-edge))

;; (def-form-rule ("that" np-head)
;;   :form np
;;   :referent (:daughter right-edge))

;; (def-form-rule ("that" n-bar)
;;   :form np
;;   :referent (:daughter right-edge))

;; (def-form-rule ("that" np)
;;   :form np
;;   :referent (:daughter right-edge))
